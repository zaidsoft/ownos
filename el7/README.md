# ownos
Your own CentOS Live CD / DVD build for Desktop / Server Usage

You need a CentOS 7 machine and root/sudo access.

## Preparation

Before starting the build/create process you need to prepare the environment.

You need livecd-tools package and qemu/kvm tools (for testing newly built iso):

````
yum install createrepo livecd-tools qemu -y
```



If you want chrome to be included for your personal use; Accept the license and download.
```
wget -P pkgs/misc/ -c https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
```


If you have downloaded packages in the pkgs/misc folder then run
```
createrepo pkgs/misc
```

### Optional:
If you have already downloaded the base repo packages already (say by extracting everything dvd); 
you can create a local repo. Be sure to uncomment the local base repo path in kickstart file.

```
createrepo -g c7-x86_64-comps.xml pkgs/base
```
c7-x86_64-comps.xml should be present in base folder



## Initial test of built livecd iso
```
qemu-kvm -m 512 -vga qxl -cdrom EL-Office-7.iso
```

If you are using nested virtualization you may face issues with above command, in that case you may try
```
qemu-system-x86_64 -no-kvm -no-acpi -no-hpet -m 512 -cdrom EL-Office-7.iso
```


If all goes well you can try installing this iso on a virtual/real machine to see if everything is working fine.




















Ref: 

1. https://github.com/CentOS/sig-core-livemedia
2. 

