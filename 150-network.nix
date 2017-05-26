{ config, pkgs, ... }:

{


networking.hostName = "nixos"; # Define your hostname. 
  networking.wireless.enable = true;
  networking.firewall.enable = false;



}
