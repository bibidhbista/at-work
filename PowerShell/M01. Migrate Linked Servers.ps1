$sourceServer=''
$destServer='pfhlbdmsql15'


#Copy the Linked server over and test to see if connection is valid.
Copy-DbaLinkedServer -Source pfhlbdmsql12 -Destination pfhlbdmsql15
Test-DbaLinkedServerConnection -SqlInstance $destServer