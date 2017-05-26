{ config, pkgs, ... }:

{


networking.hostName = "nixosfixe"; # Define your hostname. 
  networking.wireless.enable = true;
  networking.firewall.enable = false;



}
