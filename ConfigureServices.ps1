
<#
  This script is designed to configure the startup options of services such as disable services that the user doesn't want running.
  The user specifies which services they would like changed and to what setting.

    For Powershell core V6
    -StartupType options: Automatic, Manual, Disabled, AutomaticDelayedStart, InvalidValue

    Link: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-service?view=powershell-6

    For Powershell V5 & V5.1
    Boot, System, Automatic, Manual, Disabled

    Link: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-service?view=powershell-5.1
#>

# specify list of service names and the startup type
#NOTE: Services that are used are only for demonstration purposes
$Services= @(
                ('SysMain', 'Disabled'),
                ('XboxGipSvc', 'Disabled')
             )

foreach ($Service in $Services) {
    write-host $Service[0] $Service[1]

    # Set service startup
    Set-Service $Service[0] -StartupType $Service[1]

    # Restart service to apply change
    Stop-Service $Service[0]

    # Start service if it has not been disabled
    if ($Service[1] -notmatch "Disabled"){
        Start-Service $Service[0]
    }
}
