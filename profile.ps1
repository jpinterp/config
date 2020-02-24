
# Use Windows shortcut to set the background and foreground colors,
# and the font name and size

$colors = $host.PrivateData
$colors.VerboseForegroundColor = "white"
$colors.VerboseBackgroundColor = "blue"
$colors.WarningForegroundColor = "yellow"
#$colors.WarningBackgroundColor = "darkgreen"
$colors.ErrorForegroundColor = "white"
$colors.ErrorBackgroundColor = "red"

$console = $host.UI.RawUI
$buffer = $console.BufferSize
$buffer.Width = 120
$buffer.Height = 9999
#$console.BufferSize = $buffer

$size = $console.WindowSize
$size.Width = 120
$size.Height = 50
$console.WindowSize = $size

$identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$principal = New-Object Security.Principal.WindowsPrincipal($identity)
if ($principal.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator))
{
	$console.BackgroundColor = 'DarkRed'
	$console.ForegroundColor = 'White'
}

# Clear-Host
Set-StrictMode -Version Latest
Write-Host "Powershell v$($PSVersionTable.PSVersion)"
