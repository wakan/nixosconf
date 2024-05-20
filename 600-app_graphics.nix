{ pkgs, ... }:
{

  programs.gphoto2.enable = true;
  programs.steam = { enable = true; };
  #services.flameshot.enable = true;

  environment.systemPackages = with pkgs ; [
    filelight
    deltachat-desktop
    keepassxc
    xcompmgr
    zathura
    libreoffice-qt
    smplayer
    geeqie
    mullvad-browser
    chromium
    partition-manager
    glmark2
    vscode-with-extensions
    thunderbird
    freemind
    ledger-live-desktop
    (import ./610-my-hello.nix)
  ];
}
