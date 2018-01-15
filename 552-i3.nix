{ pkgs, ... }:
{
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.configFile = /home/guest/git/nixosconf/conf/i3.conf;
  environment.systemPackages = with pkgs ; [ 
    dmenu 
    i3status 
  ];
}

