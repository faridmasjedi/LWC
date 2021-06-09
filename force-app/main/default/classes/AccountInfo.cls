public with sharing class AccountInfo {
    public String accountId{get;set;}
    public Account actObj{get;set;}
    public AccountInfo() {
        actObj = new Account();
    }  
    @AuraEnabled(cacheable=true)    
    public static List<Account> getAccounts(){
        return [select id,name,type,phone,industry from Account limit 30];
    }
    // @AuraEnabled
    // public static List<Account> getAccountRecordsList(){
    //     return [select id,name,type,phone,industry from Account limit 30];
    // }
    // public pageReference retrieveAccountDetail(){
    //     if(accountId!=null){
    //          actObj = [select id,name,type,industry from Account where id=:accountId];
            
    //     }       
	// 	return null;        
    // }

}