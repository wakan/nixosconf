{ ... }:
{
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  boot.loader.grub.default = 1;
    
  fileSystems."/" = {
    device = "/dev/sda1";
    fsType = "ext4";
    neededForBoot = true;
  };

 # fileSystems."/windata" = {
 #   device = "/dev/disk/by-label/HDD";
 #   fsType = "ntfs";
 # };

}


