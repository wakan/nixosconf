{ ... } :
{
  boot.blacklistedKernelModules = 
  [ 
    #https://www.dell.com/support/kbdoc/en-us/000177028/edac-errors-in-messages-log-in-redhat-enterprise-linux-rhel-and-poweredge
    "igen6_edac"
    "edac_core" 
  ];
}
