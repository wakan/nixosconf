{ ... }:
{
  boot.loader.grub.default = 1;
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
    
  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
    neededForBoot = true;
  };
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
#  fileSystems."/nix" = {
#    device = "/data/nix";
#    options = ["bind"];
#  };
}
