{ pkgs, ... }:
{

  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  environment.systemPackages = with pkgs ; [
    rxvt_unicode
    xcompmgr
    zathura
    #libreoffice
    skype
    vlc
    smplayer
    gimp
    geeqie
    firefox
    chromium
    glmark2
    atom
    clipgrab

    qsynth
    jack2Full
    qjackctl
    vmpk
    (import ./610-my-hello.nix)
  ];

  nixpkgs.config.firefox.enableAdobeFlash = true;
}
