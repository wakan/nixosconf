{ config, pkgs, ... }:

{
  system.autoUpgrade.enable = true;
  system.autoUpgrade.channel = https://nixos.org/channels/nixos-20.03;
}
