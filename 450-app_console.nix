{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs = {
    fish.enable = true;
    git ={
      enable = true;
      config = {
        user.email = "wakan_powa_s01@hotmail.fr";
        user.name = "WaKaN";
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
    wget ripgrep killall
    curl jq
    inxi
    strace tcpdump
    btop iftop lsof
    ffmpeg
    x264
    mpv
    ntfs3g
    pciutils
    unzip
    wakelan
    inetutils
    libarchive
    fishPlugins.fzf
    python311Packages.ledger_agent
    ];

  users.defaultUserShell = pkgs.fish;

}
