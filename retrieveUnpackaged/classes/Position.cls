public class Position {
    public List<Position__c> positionSearch(String P){
        List<Position__c> pList= [SELECT Name FROM Position__c WHERE Name = :p];
        
        return pList;
    }
}