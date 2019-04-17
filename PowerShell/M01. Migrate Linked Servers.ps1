$sourceServer=''
$destServer='pdmsql15'


#Copy the Linked server over and test to see if connection is valid.
Copy-DbaLinkedServer -Source pdmsql12 -Destination pdmsql15
Test-DbaLinkedServerConnection -SqlInstance $destServer
