$cmd = "dtexec /f `"F:\DBA\MIDOC\Interfaces\SSIS\10_GTLPhoneCredits\MIDOC_SSIS_Template\GTLPhoneCredits.dtsx`" /Conn MIDOC_INTF_DB;`"Data Source=ATGDSMSQ17;Initial Catalog=MIDOC_INTERFACE;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;`" /Conn MIDOC_IMPORT_FILE;`"F:\DBA\MIDOC\Interfaces\SSIS\10_GTLPhoneCredits\Input\GTLOUT2`" /Conn MIDOC_EXPORT_FILE;`"F:\DBA\MIDOC\Interfaces\SSIS\10_GTLPhoneCredits\Output\GTLOUT2`""  
cmd /C $cmd







#WORKS
#$cmd ="dtexec /FILE `"\`"F:\DBA\MIDOC\Interfaces\SSIS\10_GTLPhoneCredits\MIDOC_SSIS_Template\GTLPhoneCredits.dtsx\"" /CONNECTION `"\`"MIDOC_EXPORT_FILE\"";`"\`"F:\DBA\MIDOC\Interfaces\SSIS\10_GTLPhoneCredits\Output\GTLOUT2\"" /CONNECTION `"\`"MIDOC_IMPORT_FILE\"";`"\`"F:\DBA\MIDOC\Interfaces\SSIS\10_GTLPhoneCredits\Input\GTLOUT2\"" /CONNECTION `"\`"MIDOC_INTF_DB\"";`"\`"Data Source=ATGDSMSQ17;Initial Catalog=MIDOC_INTERFACE;Provider=SQLNCLI11.1;Integrated Security=SSPI;Auto Translate=False;\"""  
#cmd /C $cmd

