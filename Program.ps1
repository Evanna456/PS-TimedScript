$hour = 0
$minutes = 0
$second = 10
$totalseconds = $hour * 3600 + $minutes * 60 + $second
[string]$string_totalseconds = $totalseconds
$timer = [Diagnostics.Stopwatch]::StartNew()
While ($timer.elapsed.totalseconds -lt $totalseconds) {
   Write-Output "Im Running for $string_totalseconds seconds"
}
$timer.stop() 
Write-Output `n"Press Any Key to Exit the Console"
Read-Host