{ config, pkgs, ... }:

{

  security.sudo.enable = true;
  security.sudo.configFile =
  			   ''
			   Defaults rootpw
			   ALL ALL=NOPASSWD: ALL
			   '';



  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  programs.ssh.startAgent = false;
  services.openssh.passwordAuthentication = false;


  # Enable CUPS to print documents.
  # services.printing.enable = true;

services.ntp = {
	enable = true;
	servers = [ "0.pool.ntp.org" "1.pool.ntp.org" "2.pool.ntp.org" ];
};


  services.cron = {
    enable = true;
    systemCronJobs = [
      "@weekly root nix-collect-garbage -d"
    ];
};


  virtualisation = {
    docker = {
      enable = true;
      
    };
};



}
