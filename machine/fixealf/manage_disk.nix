{ ... }:
{
  boot.loader.grub.device = "/dev/sdb"; # or "nodev" for efi only
  boot.loader.grub.default = 1;
    
  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
    neededForBoot = true;
  };

 # fileSystems."/windata" = {
 #   device = "/dev/disk/by-label/HDD";
 #   fsType = "ntfs";
 # };

}


