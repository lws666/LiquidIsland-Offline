# 修改点与验证记录

## 开发者面板

- `v4/t.smali::i(String, boolean)`：读取 `dev_unlocked` 时直接返回 `true`。
- `f5/sa.smali::s1(...)`：原密钥 `LIQUID-DEV-2025` 比较分支改为无条件进入解锁成功路径。

## 完全离线

清单移除：

```text
android.permission.INTERNET
android.permission.ACCESS_NETWORK_STATE
android.permission.ACCESS_WIFI_STATE
android.permission.CHANGE_NETWORK_STATE
android.permission.CHANGE_WIFI_STATE
```

同时：

- `v4/t.smali::i(...)` 对 `analytics_enabled` 返回 `false`。
- `h5/t1.smali` 中 `/api/verify` 分支直接返回 `Boolean.TRUE`，不执行撤销。
- `e5/h.smali` 中 `/api/activate` 分支直接写入 `beta_is_activated=true` 并返回成功。

## 截图

`u2/r.smali` 的 `Window.setFlags(...)` 改为始终使用 `-0x2001` 清除 `FLAG_SECURE`，避免对话框或悬浮层禁止截图。

## 打包方式

不直接交付 apktool 全量重打包结果，而是：

1. apktool 仅用于生成修改后的 `classes.dex` 与二进制清单。
2. 原 APK 其他 ZIP 项逐项复制。
3. 仅替换 `classes.dex` 和 `AndroidManifest.xml`。
4. 删除旧签名后重新 zipalign + apksigner。

这样减少资源、原生库和清单兼容性问题。

## 验证

- `apksigner verify` 通过。
- 最终 `AndroidManifest.xml` 不含联网权限。
- 最终 `u2/r.smali` 不再设置 `FLAG_SECURE`。
- 最终 APK SHA-256：

```text
91b04494b5a2c58dd60bfff61905940f21a846d434b9b69ebf2efcecadb283f9
```
