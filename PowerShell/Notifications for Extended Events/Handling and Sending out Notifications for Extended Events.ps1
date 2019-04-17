#Specify these three parameters.
$SharedPath = "C:\Program Files\Microsoft SQL Server\140\Shared";
$SqlInstanceName = ".\";
$xeSessionName = "system_health";

$xeCore = [System.IO.Path]::Combine($SharedPath, "Microsoft.SqlServer.XE.Core.dll");
$xeLinq = [System.IO.Path]::Combine($SharedPath, 
    "Microsoft.SqlServer.XEvent.Linq.dll");
Add-Type -Path $xeLinq;

# Notes on "Microsoft.SqlServer.XE.Core.dll":
#  • For SQL 2014, it is a dependency of "Microsoft.SqlServer.XEvent.Linq.dll".
#  • For SQL 2012, the file does not exist.
if( [System.IO.File]::Exists($xeCore) )
{
    Add-Type -Path $xeCore;
}

[Microsoft.SqlServer.XEvent.Linq.QueryableXEventData] $xEvents = $null;

try
{
    #Connection string builder for SQL (Windows Authentication is assumed).
    $csb = New-Object System.Data.SqlClient.SqlConnectionStringBuilder;
    $csb["Data Source"] = $SqlInstanceName;
    $csb["Initial Catalog"] = "master";
    $csb["Integrated Security"] = $true;

    $xEvents = 
        New-Object -TypeName Microsoft.SqlServer.XEvent.Linq.QueryableXEventData(
            $csb.ConnectionString,
            $xeSessionName,
            [Microsoft.SqlServer.XEvent.Linq.EventStreamSourceOptions]::EventStream,
            [Microsoft.SqlServer.XEvent.Linq.EventStreamCacheOptions]::DoNotCache
        );

    foreach($publishedEvent in $xEvents)
    {
        Write-Host $publishedEvent.Name -ForegroundColor Green;

        foreach ($fld in $publishedEvent.Fields)
        {
            Write-Host "`tField: " $fld.Name " = " $fld.Value -ForegroundColor Yellow;
        }

        foreach ($act in $publishedEvent.Actions)
        {
            Write-Host "`tField: " $act.Name " = " $act.Value -ForegroundColor Yellow;
        }

        Write-Host "`n";    #Whitespace

        #TODO: 
        #Handle the event here. (Send email, log to database/file, etc.)
        #This could be done entirely via PowerShell.
        #Another option is to invoke a stored proc and 
        #handle the event from within SQL Server.

        #This simple example plays a "beep" 
        #when an event is received.
        [System.Media.SystemSounds]::Beep.Play();
    }
}
catch
{
    write-host "Exception Message: $($_.Exception.Message)" -ForegroundColor Red
}
finally
{
    if ($xEvents -is [IDisposable]) 
    { 
        $xEvents.Dispose();
    }
}
