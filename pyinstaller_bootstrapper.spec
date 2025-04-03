# PyInstaller spec file for bootstrapper.py

from PyInstaller.utils.hooks import collect_all

# Collect all dependencies automatically
datas, binaries, hiddenimports = collect_all('requests')

block_cipher = None

a = Analysis(
    ['bootstrapper.py'],  # Main script to package
    pathex=['c:\\code\\github\\nemo_library'],  # Path to the script
    binaries=binaries,
    datas=datas,
    hiddenimports=hiddenimports,
    hookspath=[],
    runtime_hooks=[],
    excludes=[],
    win_no_prefer_redirects=False,
    win_private_assemblies=False,
    cipher=block_cipher,
)

pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.zipfiles,
    a.datas,
    [],
    name='bootstrapper',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=True,  # Set to False if you want a GUI application
)
