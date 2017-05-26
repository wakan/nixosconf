{ config, pkgs, ... }:

{

	
# Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  # boot.loader.grub.efiSupport = true;
  # boot.loader.grub.efiInstallAsRemovable = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # Define on which hard drive you want to install Grub.
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only
  boot.loader.grub.extraEntries = ''
	menuentry "Windows" {
		  chainloader (hd0,1)+1
	}
  '';
  boot.loader.grub.default = 1;
  boot.loader.grub.configurationLimit = 21;

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

