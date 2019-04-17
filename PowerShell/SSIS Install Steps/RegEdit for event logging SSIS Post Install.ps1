icm -ComputerName tdmsql15 {& set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\130\SSIS' -Name LogPackageExecutionToEventLog -Value 1}
