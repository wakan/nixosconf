{ pkgs, ... }:
{
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.configFile = ./conf/i3.conf;
  environment.systemPackages = with pkgs ; [
    dmenu
  ];
}

