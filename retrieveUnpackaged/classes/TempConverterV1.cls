@RestResource(urlMapping='/RestV1/*')
global class TempConverterV1 {
	
    @HttpPost
    global static Decimal getCelsius(Decimal toCelsius){
        toCelsius = TemperatureConverter.F2C(toCelsius);
        return toCelsius;
    }
}