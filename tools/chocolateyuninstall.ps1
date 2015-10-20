$ErrorActionPreference = 'Stop';


$packageName = 'splunkforwarder'
$registryUninstallerKeyName = '{1A9F240C-44EC-46AA-A135-C865CC29401B}' #ensure this is the value in the registry
$installerType = 'MSI'
$silentArgs = "$registryUninstallerKeyname /quiet"
$validExitCodes = @(0)

Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $registryUninstallerKeyName