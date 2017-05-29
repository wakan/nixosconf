{ ... }:

{
  users.extraUsers = {
    guest = {
        name = "guest";
        extraGroups =
          [
            "wheel" "disk" "audio" "video"
            "networkmanager" "systemd-journal"
            "docker"
          ];
        isNormalUser = true;
        uid = 1000;
        shell = "/run/current-system/sw/bin/zsh";
	openssh.authorizedKeys.keys  =
	    with import ./misc/ssh-keys.nix; [ guestportmsi ];
    };
  };
}
