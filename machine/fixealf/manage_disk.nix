{ config, pkgs, ... }:
{
  boot.loader.grub.device = "/dev/sdb"; # or "nodev" for efi only
  boot.loader.grub.default = 1;

 # fileSystems."/windata" = {
 #   device = "/dev/disk/by-label/HDD";
 #   fsType = "ntfs";
 # };

}


