global class TempSoapV1 {
	
    webservice static Decimal getCelsius(Decimal toCelsius){
        toCelsius = TemperatureConverter.F2C(toCelsius);
        return toCelsius;
    }
}