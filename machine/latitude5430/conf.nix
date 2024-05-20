{ ... }:

{
  imports = [
      ../../hardware-configuration.nix
      ./blacklist.nix
      ./hostname.nix
      ../../110-powermanagement.nix
      ../../111-bluetooth.nix
      ../../120-boot.nix
      ../../150-firewall.nix
      ../../151-wifi.nix
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
