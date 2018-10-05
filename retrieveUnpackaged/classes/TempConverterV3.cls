@RestResource(urlMapping='/RestV3/*')
global class TempConverterV3 {
    
    @HttpPost
    global static List<Decimal> converter(Decimal temp, string type){
        List<Decimal> dec = new List<Decimal>();
        for(Decimal d : dec){
            if(type == 'F'){
                temp = TemperatureConverter.F2C(temp);
            }
            if(type == 'C'){
                temp = TemperatureConverter.C2F(temp);
            }
            dec.add(temp);
        }
        return dec;
    }
}