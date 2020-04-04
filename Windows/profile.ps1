$foregroundColor = 'white'
$time = Get-Date
$psVersion= $host.Version.Major
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value

Write-Host "Greetings, $curUser!" -foregroundColor $foregroundColor
Write-Host "It is: $($time.ToLongDateString())"
Write-Host "You're running PowerShell version: $psVersion" -foregroundColor Green
Write-Host "Your computer name is: $curComp" -foregroundColor Green
Write-Host "Happy scripting!" `n

function Prompt {

$curtime = Get-Date

Write-Host -NoNewLine "p" -foregroundColor $foregroundColor
Write-Host -NoNewLine "$" -foregroundColor Green
Write-Host -NoNewLine "[" -foregroundColor Yellow
Write-Host -NoNewLine ("" -f (Get-Date)) -foregroundColor $foregroundColor
Write-Host -NoNewLine "]" -foregroundColor Yellow
Write-Host -NoNewLine ">" -foregroundColor Red

$host.UI.RawUI.WindowTitle = "PS >> User: $curUser >> Current DIR: $((Get-Location).Path)"

Return " "

}
