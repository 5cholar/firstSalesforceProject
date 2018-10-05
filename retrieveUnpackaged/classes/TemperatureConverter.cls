global class TemperatureConverter {
    
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.
    global static Decimal F2C(Decimal fh){
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
    }
    // Takes a Celsius temperature and returns the Fahrenheit equivalent.
    global static Decimal C2F(Decimal cel){
        Decimal fh = (cel * 9/5) + 32;
        return fh.setScale(2);
    }
}