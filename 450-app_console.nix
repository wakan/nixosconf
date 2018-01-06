{ pkgs, ... }:

{

  programs.vim.defaultEditor = true;
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget vim ftop git tmux ripgrep
    strace tcpdump htop iftop lsof
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
    libarchive
];

  programs.fish.enable = true;
  users.extraUsers.guest.shell = pkgs.fish;
}


