{ ... }:

{
  users.extraUsers = {
    guest = {
        name = "m";
        extraGroups =
          [
            "wheel" "disk" "audio" "video"
	          "camera"
            "networkmanager" "systemd-journal"
          ];
        isNormalUser = true;
        uid = 1000;
	openssh.authorizedKeys.keys  =
	    with import ./misc/ssh-keys.nix; [ guestportmsi ];
    };
  };
}
