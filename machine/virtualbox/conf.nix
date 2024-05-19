{ ... }:

{
  imports = [
      ./hostname.nix
      ../../120-boot.nix
      ./manage_disk.nix
      ../../150-firewall.nix
      ../../200-geographie.nix
      ../../300-users.nix
      ../../350-upgrade.nix
      ../../360-security.nix
      ../../400-services.nix
      ../../450-app_console.nix
      ../../480-audio.nix
      ../../500-xserver.nix
  ]; 
}
