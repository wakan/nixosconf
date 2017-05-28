{ config, pkgs, ... }:

{

  environment.variables = {
    EDITOR = "emacs";
  };

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget vim htop ftop lsof git tmux ripgrep
    ffmpeg
    x264
    mplayer
    sox
    #nix-zsh-completions
    ntfs3g
    udevil #mount umount remote device
    xflux # change color temperature for eye
    pciutils
    nix-repl
    cargo rustc
    unzip
    wakelan
    inetutils
];

  programs.zsh.enable = true;
  services.emacs.enable = true;
  #services.emacs.package = import /home/guest/.emacs.d {pkgs = pkgs; };
}


