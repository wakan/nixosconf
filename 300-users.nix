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
	openssh.authorizedKeys.keys  =
	    with import ./misc/ssh-keys.nix; [ guestportmsi ];
    };
  };
}
