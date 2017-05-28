{ config, pkgs, ... }:
{
  boot.loader.grub.default = 1;
  
  fileSystems."/data" = {
    device = "/dev/disk/by-label/linuxdata";
    fsType = "ext4";
    neededForBoot = true;
  };
  fileSystems."/windata" = {
    device = "/dev/disk/by-label/HDD";
    fsType = "ntfs";
  };
  fileSystems."/home" = {
    device = "/data/home";
    options = ["bind"];
  };
  fileSystems."/nix" = {
    device = "/data/nix";
    fsType = "none";
    options = ["bind"];
  };
}
