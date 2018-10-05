@isTest
private class TestVerifyDate {
    @isTest Static void checkDatesTestTrue(){
        Date date1 = date.today();
        Date date2 = date1.addDays(29);
        Date t = VerifyDate.checkDates(date1,date2);
        system.assertEquals(t,date2);
    }
    @isTest Static void dateOver(){
        date date1 = date.today();
        date date2 = date1.addDays(31);
        date t = verifyDate.checkDates(date1, date2);
        system.assertNotEquals(t, date1);
    }
}