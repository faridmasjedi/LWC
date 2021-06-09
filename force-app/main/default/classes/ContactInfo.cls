public with sharing class ContactInfo {
    @AuraEnabled(cacheable=true)
    public static List<Contact> displayContact(String accountId){
        try {
            return [
                SELECT Id, FirstName, LastName, Email, Phone
                FROM Contact
                WHERE AccountId=:accountId

                LIMIT 30
            ];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
