{ config, pkgs, ... }:
{

  imports = [
	./510-touchpad.nix
	./520-font.nix
#./i3.nix
	./550-xfce.nix
  ];

  services.xserver.enable = true;
  services.xserver.layout = "fr";
  services.xserver.xkbOptions = "eurosign:e";

services.acpid.enable = true;

  environment.systemPackages = with pkgs ; [
    glxinfo

  ];
#services.xserver.videoDrivers = [ "nvidia" ];
#hardware.opengl.driSupport32Bit = true;


}
