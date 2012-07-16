Param($environment, $task)

if($environment -eq $null) {
	$environment = read-host "Enter Environment"
}

if($task -eq $null) {
	$task = read-host "Enter Task"
}

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.path)

. .\build\psake.ps1 -scriptPath $scriptPath -t $task -parameters @{ Environment=$environment; }

read-host "Press enter to exit" | out-null