import zipfile, os
base=os.environ.get('LIQUID_WORK','/data/workspace/liquid')
src=base+'/LiquidIsland_2.0.1b.apk'
dst=base+'/LiquidIsland_2.0.1b-offline.apk'
with zipfile.ZipFile(src) as zin, zipfile.ZipFile(dst,'w',zipfile.ZIP_DEFLATED) as zout:
    for item in zin.infolist():
        n=item.filename
        if n in ('classes.dex','AndroidManifest.xml','META-INF/MANIFEST.MF','META-INF/By_Xiaohei.SF','META-INF/By_Xiaohei.RSA'):
            continue
        zout.writestr(item,zin.read(n))
    zout.write(base+'/classes-patched.dex','classes.dex')
    with zipfile.ZipFile(base+'/LiquidIsland_2.0.1b-offline-build.apk') as built:
        zout.writestr('AndroidManifest.xml',built.read('AndroidManifest.xml'))
print(dst)
