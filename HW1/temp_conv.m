%User defined function to convert temperature from Farenheit F to Celsius C

function C = temp_conv(F)
    C = (5/9)*(F-32);  %calculate F to C conversion
end