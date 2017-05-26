{ config, pkgs, ... }:

{
  system.autoUpgrade.enable = true;
  system.autoUpgrade.channel = https://nixos.org/channels/nixos-17.03;


  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "17.03";
}
