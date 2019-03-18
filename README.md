This script is designed to configure the startup options of services such as disable services that the user doesn't want running. The user specifies which services they would like changed and to what startup type.

For windows 10 depending on which version of powershell the possible settings can be:
   For Powershell core V6
   -StartupType options: Automatic, Manual, Disabled, AutomaticDelayedStart, InvalidValue

    Reference Link: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-service?view=powershell-6
    
   For Powershell V5 & V5.1
    -StartupType options: Boot, System, Automatic, Manual, Disabled

    Reference Link: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-service?view=powershell-5.1
