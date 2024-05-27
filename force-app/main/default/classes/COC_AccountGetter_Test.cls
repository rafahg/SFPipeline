@isTest
private  class COC_AccountGetter_Test {
  

 @isTest 
 static void getAccountByNameTest() {

    Account testAccount = new Account(Name='Test Name');
    insert testAccount;

    Test.startTest();
    Integer fetchedAccounts = COC_AccountGetter.getAccountsByName('Test Name').size();
    Integer IncorrectName = COC_AccountGetter.getAccountsByName('no name like this').size();
    Test.stopTest();

    Assert.areEqual(1, fetchedAccounts, 'Accounts found must be 1');
    Assert.areEqual(0, IncorrectName, 'No accounts must be found');
    Assert.areNotEqual(2,fetchedAccounts, 'Accounts Should be 2');

 }

}