{ ... }:

{
  imports = [
      ./hostname.nix
      ../../120-grub.nix
      ./manage_disk.nix
      ../../150-firewall.nix
      ../../200-geographie.nix
      ../../300-users.nix
      ../../350-upgrade.nix
      ../../400-services.nix
      ../../450-app_console.nix
      ../../500-xserver.nix
  ]; 
}
