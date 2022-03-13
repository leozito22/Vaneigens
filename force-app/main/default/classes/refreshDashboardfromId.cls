public Class refreshDashboardfromId {
    
	@future(callout=true)
    public static void refreshDash(){
    
    List<Id> dashIds = new List<Id>();
	dashIds.add('01Z8c000000GLnSEAW');
    System.debug('dashIds are --> '+dashIds);
    
	
        For (Id dashid:dashIds) {
             System.debug('dashid is --> '+dashid);
    
             HttpRequest req = new HttpRequest();
            
             
             req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionId());
             req.setMethod('PUT');
             req.setEndpoint(URL.getSalesforceBaseUrl().toExternalForm() + '/services/data/v53.0/analytics/dashboards/'+dashid);
                
             System.debug('request is --> '+req);

                    
             Http http = new Http();
             HttpResponse res = http.send(req);
        }
    
   
	}
}