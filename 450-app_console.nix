{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs = {
    fish.enable = true;
    git ={
      enable = true;
      userEmail = "wakan_powa_s01@hotmail.fr";
      userName = "WaKaN";
      extraConfig = {
          safe = { directory = "/etc/nixos"; };
      };
    };
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    htop = {
      enable = true;
      settings = {
        hide_kernel_threads = true;
        hide_userland_threads = true;
      };
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
  };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget ripgrep
    strace tcpdump
    btop iftop lsof
    ffmpeg
    x264
    mplayer
    ntfs3g
    pciutils
    unzip
    wakelan
    inetutils
    libarchive
  ];

  users.extraUsers.guest.shell = pkgs.fish;
}
