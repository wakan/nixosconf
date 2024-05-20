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
    guest = (commonUserConfig);
    security = (commonUserConfig );
    perso = (commonUserConfig);
    achat = (commonUserConfig);
    hopps = (commonUserConfig);
    bank = (commonUserConfig);
    dev = (commonUserConfig);
  };
}
