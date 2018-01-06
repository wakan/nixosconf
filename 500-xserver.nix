{ pkgs, ... }:
{

  imports = [
	./510-touchpad.nix
	./520-font.nix
	#./551-xmonad.nix
	#./550-xfce.nix
	./552-i3.nix
	./600-app_graphics.nix
  ];

  services.xserver.enable = true;
  services.xserver.layout = "fr";
  services.xserver.xkbOptions = "eurosign:e";
}
