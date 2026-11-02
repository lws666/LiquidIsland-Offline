# LiquidIsland Offline / Developer Unlocked

LiquidIsland 2.0.1b 的本地离线改造补丁与构建脚本。

## 功能

- 开发者面板永久解锁：`dev_unlocked` 读取时始终为已解锁，任意密钥均通过。
- 完全离线：移除 `INTERNET`、网络状态、WiFi 状态及网络切换权限。
- 本地通过 Beta 激活与定期校验，跳过 `/api/activate`、`/api/verify` 和撤销逻辑。
- 关闭 `analytics_enabled`，避免统计后台联网。
- 修复截图/录屏：清除窗口 `FLAG_SECURE`。
- 保留原 APK 的资源与原生库，仅替换 `classes.dex` 和 `AndroidManifest.xml`。

## 构建

依赖：JDK、Python 3、`zipalign`、`apksigner`。

```bash
git clone <this-repo>
cd LiquidIsland-Offline
./scripts/build.sh /path/to/LiquidIsland_2.0.1b.apk
```

首次构建会在 `tools/` 下载 apktool，并在 `build/` 生成用于测试签名的 keystore。产物：

```text
build/LiquidIsland_2.0.1b-offline-signed.apk
```

正式使用请替换为自己的签名密钥：

```bash
apksigner sign \
  --ks YOUR_KEYSTORE \
  --ks-pass pass:YOUR_PASSWORD \
  --out release.apk \
  build/LiquidIsland_2.0.1b-offline-aligned.apk
```

## 目录

```text
scripts/
  build.sh             一键构建
  patch_offline.py     离线、截图、Beta 与开发者面板补丁
  patch_dev_panel.py   仅开发者面板补丁
  make_offline.py      将修改后的 DEX/清单回写到原 APK
patches/
  smali/               修改后的关键 smali 文件，便于审阅
  manifest/            修改后的清单
docs/
  ANALYSIS.md          修改点与验证记录
dist/
  LiquidIsland_2.0.1b-offline.apk
```

## 验证

- `apksigner verify` 通过。
- 最终清单不含 `android.permission.INTERNET` 及 WiFi/网络切换权限。
- `u2/r.smali` 的窗口标志改为始终清除 `FLAG_SECURE`。
- 原 APK 其他 ZIP 项逐项复制，减少全量重打包导致的兼容性问题。

补丁代码以 MIT 发布；原应用及其资源仍归原开发者所有。
