global class TempSoapV2 {
	
    Webservice static Decimal converter(Decimal temp, string type){
        if(type == 'F'){
            temp = TemperatureConverter.F2C(temp);
        }
        if(type == 'C'){
            temp = TemperatureConverter.C2F(temp);
        }
         return temp;
    }
}