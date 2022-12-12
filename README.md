# Cryptoescudo ledger app builder

 <img src="https://www.cryptoescudo.pt/images/logo.png" width="200">
 
 <a href="https://gitpod.io/#https://github.com/vdamas/app-cryptoescudo-builder" target="_blank"><img src="https://gitpod.io/button/open-in-gitpod.svg"></a>
  
Gitpod to build cryptoescudo ledger app<br/>

What does it do:
 - Opens a gitpod 
 - Clones @LedgerHQ ledger app builder - Docker (https://github.com/LedgerHQ/ledger-app-builder)
 - Builds docker image 
 - Clones cryptoescudo ledger app (git clone https://github.com/vdamas/app-cryptoescudo)
 - Invokes build on cryptoescudo app, and is expected to generate output in /workspace/app-cryptoescudo/bin
 - Adds /workspace/app-cryptoescudo/bin content to a app-cryptoescudoYYYYMMDDHHmm.tar.gz file in /workspace

What to do next:
 - Move the tar.gz to physical computer and install app on ledger device and test it

How to load to ledger (Nano S):
 - Install python
 - pip install ledgerblue

 - connect ledger and unlock it with pin
 - Untar the file to a desired location eg c:\temp\app-cryptoescudo
 
 ```
 python.exe -m ledgerblue.loadApp --targetId 0x31100004 --path "44'/111'" --fileName [path to the app.hex file] --appName "CryptoEscudo" --appVersion 2.1.0 --tlv --delete --icon 0100000000ffffff00ffffffffffffffff3ffc9ffb9fff9fff9fff9fff9ffb3ffcffffffffffffffff --dep Bitcoin
 ```
 
 the icon hex is created with https://github.com/LedgerHQ/nanos-secure-sdk, clone it and eg c:\temp 
 ```
 python.exe C:\temp\nanos-secure-sdk\icon.py 32 32 C:\temp\app-cryptoescudo\nanos_app_cryptoescudo.gif hexbitmaponly
 ```
