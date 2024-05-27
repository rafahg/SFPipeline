// Example class to test github actions and pipeline
public with sharing class COC_AccountGetter {

    public static List<Account> getAccountsByName(String name) {
        return [SELECT Id, Name from Account where Name =:name LIMIT 100];
    }

}
