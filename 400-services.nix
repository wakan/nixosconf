{ ... }:

{

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    startWhenNeeded = true;
    settings = {
      KbdInteractiveAuthentication = false;
      PasswordAuthentication = false;
    };
  };

  # https://fwupd.org/
  services.fwupd.enable = true;

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

services.clamav = {
  updater.enable = true;
  updater.frequency = 1; #nb check by day
};

systemd.tmpfiles.rules = [ "d /tmp 1777 root root 7d" ];

services.redshift.enable = true;
location.latitude = 43.5283000;
location.longitude = 5.4497300;


}
