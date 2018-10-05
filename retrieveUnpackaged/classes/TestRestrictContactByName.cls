@isTest		
private class TestRestrictContactByName {
	
    @isTest Static void testInsert(){
        Contact d = new Contact(LastNAme= 'INVALIDNAME', FirstName= 'Error');
        Test.startTest();
        try{
            insert d;
        }catch(Exception e){
            Test.stopTest();
        }
    }
}