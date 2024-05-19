{ pkgs, ... }:
{

  programs.chromium.enable = true;
  programs.gphoto2.enable = true;
  programs.steam = { enable = true; };

  environment.systemPackages = with pkgs ; [
    rxvt_unicode
    xcompmgr
    zathura
    libreoffice
    smplayer
    geeqie
    firefox
    glmark2
    vscode-with-extensions
    thunderbird
    (import ./610-my-hello.nix)
  ];
}
