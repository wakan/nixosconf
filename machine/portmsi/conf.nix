{ ... }:

{
  imports = [
      ./hardware-configuration.nix
      ./hostname.nix
      ../../110-powermanagement.nix
      ../../111-bluetooth.nix
      ../../120-grub.nix
      ../../121-grubwindowsentry.nix
      ./manage_disk.nix
      ../../150-firewall.nix
      ../../151-wifi.nix
      ../../200-geographie.nix
      ../../300-users.nix
      ../../350-upgrade.nix
      ../../400-services.nix
      ../../450-app_console.nix
      ../../500-xserver.nix
  ]; 
}
