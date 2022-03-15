public class EmployeesPerDayHelper {    
    
	 @AuraEnabled(cacheable=true)
    public static List<DayInOffice__c> getDInOffice(String accId) {
        Date d = system.today();
		return [select 
                	Id, 
                	Name, 
                	Office__r.name,
					Office__r.Account__r.name,
					Office__r.Account__r.Id,
					ScheduledDate__c,
					Contact__r.name
                from DayInOffice__c
				where Office__r.Account__r.Id = :accId and
						ScheduledDate__c > :d 
                order by ScheduledDate__c ASC];
    }
}