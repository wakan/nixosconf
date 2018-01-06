{ pkgs, ... }:
{
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
}
