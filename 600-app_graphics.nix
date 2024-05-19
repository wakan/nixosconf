{ pkgs, ... }:
{

  programs.chromium.enable = true;
  programs.gphoto2.enable = true;
  programs.steam = { enable = true; };

  environment.systemPackages = with pkgs ; [
    rxvt_unicode
    filelight
    deltachat-desktop
    keepassxc
    xcompmgr
    zathura
    libreoffice-qt
    smplayer
    geeqie
    firefox
    glmark2
    vscode-with-extensions
    thunderbird
    (import ./610-my-hello.nix)
  ];
}
