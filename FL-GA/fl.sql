SELECT Id, Name, Title, Position__c, Current_Status__r.Working_State__c,
  (SELECT Name, License_Number__c, License_Type__c, Days_to_Expiration__c, License_Activity__c, Date_of_Expiration__c, Employee_Email__c
  FROM Licensure__r
  WHERE License_Type__c IN ('Guard Card - Unarmed', 'Exposed Weapon','Private Investigator','Company ID Card')
    AND Is_Most_Recent__c = True
    AND Canceled__c = False)
FROM Contact
WHERE Employment_Status__c != 'Terminated'
  AND Title = 'Off Duty Officer'
  AND Current_Status__r.Working_State__c = 'FL'