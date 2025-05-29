Write-Host "Información de CPU:"
Get-Counter -Counter '\Processor(_Total)\% Processor Time' | Select-Object -ExpandProperty CounterSamples