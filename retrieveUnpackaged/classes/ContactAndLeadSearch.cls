public class ContactAndLeadSearch {
    
    public static List<List< SObject>> searchContactsAndLeads(String fol){
        List<List< SObject>> sList = [FIND 'Smith' IN ALL FIELDS
                                      RETURNING Account(Name), Contact(FirstName,LastName)];
        
        return sList;
    }
}