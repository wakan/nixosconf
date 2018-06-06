{ config, pkgs, ... }:

{
  system.autoUpgrade.enable = true;
  system.autoUpgrade.channel = https://nixos.org/channels/nixos-17.08;

    # The NixOS release to be compatible with for stateful data such as databases.
  system.nixos.stateVersion = "18.03";
}
