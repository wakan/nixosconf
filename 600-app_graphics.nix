{ pkgs, ... }:
{

  programs.chromium.enable = true;
  programs.gphoto2.enable = true;

  environment.systemPackages = with pkgs ; [
    rxvt_unicode
    xcompmgr
    zathura
    libreoffice
    vlc
    smplayer
    gimp
    geeqie
    firefox
    glmark2
    vscode-with-extensions
    jetbrains.datagrip
    thunderbird
    (import ./610-my-hello.nix)
  ];
}
