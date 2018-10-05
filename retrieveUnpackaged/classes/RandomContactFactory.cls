public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numOfContacts, String lastNameGen){
        list<Contact> con = New List<Contact>();
        for(Integer i = 0; i < numOfContacts; i++){
            lastNameGen = 'Test' + i;
            Contact a = new Contact(FirstName= lastNameGen, LastName= lastNameGen);
            con.add(a);
        }
        return con;
    }
}