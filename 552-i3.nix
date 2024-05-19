{ pkgs, ... }:
{


  services.xserver.desktopManager.default = "none+i3";
  services.xserver.desktopManager.xterm.enable = false;

  services.xserver.windowManager.i3.enable = true;
  environment.systemPackages = with pkgs ; [ 
    dmenu 
    i3status 
  ];
}

