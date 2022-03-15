public class ScheduleManagerHelper {
    
    @AuraEnabled(cacheable=true)
    public static List<DayInOffice__c> getDInOffice(String accId) {
         system.debug('accId >> ' + accId);
		return [select 
                	Id, 
                	Name, 
                	Office__r.name,
					Office__r.Account__r.name,
					ScheduledDate__c,
					Contact__r.name
                from DayInOffice__c
				where Office__r.Account__r.Id = :accId
                order by ScheduledDate__c ASC];
    }

}