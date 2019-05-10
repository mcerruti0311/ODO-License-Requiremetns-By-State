SELECT ReportsTo.Name, Count(Id)
FROM Contact
WHERE Employment_Status__c != 'Terminated'
  AND RecordType.Name = 'SIS Employee'
  AND Last_Hire_Date__c != null
  AND Employment_Status__c != ''
  And System_Account__c = False
  AND ReportsTo.Employment_Status__c = 'Active'
  And ReportsTo.Position__c != 'Owner/President'
  AND Title = 'Off Duty Officer'
  AND Current_Status__r.Working_State__c = 'FL'
  And (Not Employee_Number__c Like 'BR%')
GROUP BY ReportsTo.Name