# Option 1: with a usb

1. `disk utility` $>$ `view` $>$ `Show all Devices`
2. go to `External` $>$ **click on top level of the usb** $>$ `erase`
You'll see three options: 
  - `Name` : set the name you want (e.g "my_usb")
  - `Format`: select `Mac OS Extended (Journaled)`
  - `Scheme`: select `GUID Partition Map`
3. Go to [this link](https://github.com/dortania/OpenCore-Legacy-Patcher) and go to `releases` (on right hand side of screen a bit down) and click on the newest verison. When I was doing it today it was `0.4.2`
4. Download `OpenCore-Patcher-TUI.app.zip`
5. Open the `applications` folder on the mac and then move `OpenCore-Patcher` into the applications folder. Then open `OpenCore-Patcher`
6. `Patcher Settings(5)` $>$ `Allow OpenCore on native Models(8)` to be `True`
7. `Patcher Settings(5)` $>$ `Miscellaneous Settings(5)` $>$ `Set ShowPicker Mode` to be `False`
8. Go back to beginning menu and pick `Build OpenCore(1)` $>$ Then click enter
9. `Install OpenCore to USB/internal drive(2)` $>$ click on usb flash drive `(2)` $>$ You will encounter a "Missing paritions? Ensure..." and pick the EFI option`(1)` $>$ `Enter` 
10. We're done so quit out of it the application with `q`
11. When you click on the USB there will be nothing there because it created a hidden EFI partition. 
12. Restart then hold down option key and boot opencore. 
