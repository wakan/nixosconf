{ config, pkgs, ... }:
{
  services.openvpn.servers = {
      my-home-vpn = {
        config = ''
          dev tun
          client
          proto tcp
          ca /home/guest/vpn/ca
          cert /home/guest/vpn/cert
          key /home/guest/vpn/key
          auth-user-pass /home/guest/vpn/cred
        '';
        autoStart = false;
        updateResolvConf = true;
      };
  };
}