{ pkgs, ... }:
{
  services.xserver.windowManager.i3.enable = true;
  environment.systemPackages = with pkgs ; [ 
    dmenu 
    i3status 
  ];
}

