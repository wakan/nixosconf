{ pkgs, ... }:
{

  imports = [
	./520-font.nix
	#./551-xmonad.nix
	#./550-xfce.nix
	./551-kde.nix
	#./552-i3.nix
	./600-app_graphics.nix
  ];

  services.xserver.enable = true;
  services.xserver.layout = "fr";
  services.xserver.xkbOptions = "eurosign:e";
  
  virtualisation.virtualbox.guest.enable = true;

  environment.systemPackages = with pkgs ; [
    xorg.xbacklight
  ];

}

