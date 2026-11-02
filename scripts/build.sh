#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WORK="${LIQUID_WORK:-$ROOT/build}"
APK="${1:?用法: $0 /path/to/LiquidIsland_2.0.1b.apk}"
export LIQUID_WORK="$WORK"
mkdir -p "$WORK" "$ROOT/tools"

if [ ! -f "$ROOT/tools/apktool.jar" ]; then
  curl -L --fail -o "$ROOT/tools/apktool.jar" \
    https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar
fi

cp "$APK" "$WORK/LiquidIsland_2.0.1b.apk"
rm -rf "$WORK/decoded6"
java -jar "$ROOT/tools/apktool.jar" d -f -o "$WORK/decoded6" "$WORK/LiquidIsland_2.0.1b.apk"
python3 "$ROOT/scripts/patch_offline.py"
java -jar "$ROOT/tools/apktool.jar" b "$WORK/decoded6" -o "$WORK/LiquidIsland_2.0.1b-offline-build.apk"
unzip -p "$WORK/LiquidIsland_2.0.1b-offline-build.apk" classes.dex > "$WORK/classes-patched.dex"
python3 "$ROOT/scripts/make_offline.py"
zipalign -f 4 "$WORK/LiquidIsland_2.0.1b-offline.apk" "$WORK/LiquidIsland_2.0.1b-offline-aligned.apk"

if [ ! -f "$WORK/debug.keystore" ]; then
  keytool -genkeypair -keystore "$WORK/debug.keystore" -alias liquid \
    -keyalg RSA -keysize 2048 -validity 3650 \
    -storepass liquid123 -keypass liquid123 -dname "CN=Liquid Island"
fi

apksigner sign \
  --ks "$WORK/debug.keystore" \
  --ks-pass pass:liquid123 --key-pass pass:liquid123 \
  --out "$WORK/LiquidIsland_2.0.1b-offline-signed.apk" \
  "$WORK/LiquidIsland_2.0.1b-offline-aligned.apk"
apksigner verify "$WORK/LiquidIsland_2.0.1b-offline-signed.apk"

echo "完成: $WORK/LiquidIsland_2.0.1b-offline-signed.apk"
