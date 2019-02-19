#01_temperature conversion
def ftoc farenheit
	((farenheit - 32) * (5/9.0))
end

def ctof celcius
	(celcius / (5/9.0)) + 32
end