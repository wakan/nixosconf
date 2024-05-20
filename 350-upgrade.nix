{ config, pkgs, ... }:

{
  system.autoUpgrade.enable = true;
  system.autoUpgrade.channel = https://nixos.org/channels/nixos-23.11;
  #/run/current-system/configuration.nix
  system.copySystemConfiguration = true;

  system.stateVersion = 23.11;
  
  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
  };
  
}
