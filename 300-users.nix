{ ... }:

{
  users.users = 
  let commonUserConfig =
  {
      extraGroups =
      [
        "wheel" "disk" "audio" "video"
        "camera"
        "networkmanager" "systemd-journal"
      ];
      isNormalUser = true;
      openssh.authorizedKeys.keys  =
        with import ./misc/ssh-keys.nix; [ guestportmsi ];
  }; in
  {
    guest = (commonUserConfig // { name = "guest"; });
    security = (commonUserConfig // { name = "security"; });
    perso = (commonUserConfig // { name = "perso"; });
    achat = (commonUserConfig // { name = "achat"; });
    hopps = (commonUserConfig // { name = "hopps"; });
    bank = (commonUserConfig // { name = "bank"; });
    dev = (commonUserConfig // { name = "dev"; });
  };
}
