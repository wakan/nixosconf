{ pkgs, ... }:
{

  programs.gphoto2.enable = true;
  programs.steam = { enable = true; };
  #services.flameshot.enable = true;

  environment.systemPackages = with pkgs ; [
    arandr
    xdotool
    filelight
    libsForQt5.kcalc
    libsForQt5.kdenlive
    appimage-run
    deltachat-desktop
    keepassxc
    xcompmgr
    zathura
    libreoffice-qt
    geeqie
    mullvad-browser
    chromium
    partition-manager
    glmark2
    vscode-with-extensions
    thunderbird
    freemind
    ledger-live-desktop
    discord
    lutris
    calibre
    freetube
    (import ./610-my-hello.nix)
  ];
}
