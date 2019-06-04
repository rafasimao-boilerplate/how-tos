# Debian Setup

### Download
There are many ways to install boot debian in a system.
Here we will use a DVD iso mounted in a USB. This is a great way to go when you may or may not have good Internet connection and avoids problems due to lack of packages(for instance the driver to recognize your network board).

**Download website:** `https://www.debian.org/CD/http-ftp/`

**Choosing the architcture**:
There are many debian architctures you may want to use. However for pcs you are probably use `i386` if you are using a 32 bits processor or `amd64` if you are using a 64 bits processor.

*As most computers nowadays are 64 we will be using the amd64:*

- [ISO download link](https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/)
- [BitTorrent ISO download link](https://cdimage.debian.org/debian-cd/current/amd64/bt-dvd/) (Recomended)


### Mounting the Image
#### On MacOS X:
If you have a MacOS then you are lucky 'cause you may use the out of the box `diskutil` tool to do so. Just follow these steps:

1. Insert the USB drive;
2. Start the terminal;
3. Enter `diskutil list` to find out your USB drive mount point(example `disk3`);
4. Enter `sudo diskutil eraseDisk FAT32 USB /dev/disk3`;(WARNING!! USB drive data will be erased!)
5. Enter `sudo diskutil unmountDisk /dev/disk3`;
6. Go to your iso directory;
7. Enter `sudo dd if=./debian-9.9.0-amd64-DVD-1.iso of=/dev/disk3 bs=1m`;
8. Enter `diskutil eject /dev/disk3`.

Done, now you have a mounted image in your USB drive.


### Freeing space from your WinOS

Go to your disk management window. You may use the Start > Execute window write `diskmgmt.msc` and open it.

![Opening Disk Management](images/Windows_7_Gerenciamento_de_Disco_1.jpg?raw=true "Opening Disk Management")

Click with the right button in the in your HD and choose *Decrease Volume*, this will free space from your WinOS so that you can boot another.

![Decreasing Disk Volume](images/Windows_7_Gerenciamento_de_Disco_2.jpg?raw=true "Decreasing Disk Volume")

Choose some size for your new partition, you might want to reserve at least 60 GB (61440 MB) for your linux OS.

![Choosing Disk Volume](images/Windows_7_Gerenciamento_de_Disco_3.jpg?raw=true "Choosing Disk Volume")

Okay, now you are ready to boot your new OS.


### Booting the Debian OS from USB Media

1. Insert your USB drive and restart the computer;
2. During the startup screen, press ESC, F1, F2, F8 or F10. (Depending on the company that created your version of BIOS, a menu may appear.)
3. Set the BIOS as bootable from USB, change the boot order and restart the PC;
4. **Stay alert!** Depending on your BIOS, you may be prompted with a message to Press any key to boot from external device and you will only have a few seconds to respond. If you do nothing, your computer will go to the next device in the boot sequence list, which will likely be your hard drive.

After this you may use the Debian graphical interface to install your Debian OS.
