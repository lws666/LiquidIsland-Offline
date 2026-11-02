from pathlib import Path
root=Path('/data/workspace/liquid/decoded6/smali')
p=root/'com/example/liquidisland/services/DynamicIslandService.smali'
s=p.read_text().replace('    const/4 v10, -0x1','    const/4 v10, -0x2').replace('    const/4 v11, -0x1','    const/4 v11, -0x2')
p.write_text(s)
p=root/'t3/c.smali'
s=p.read_text().replace('    const/4 v3, -0x1','    const/4 v3, -0x2').replace('    const/4 v4, -0x1','    const/4 v4, -0x2')
p.write_text(s)
print('overlay windows use wrap_content sizing')
