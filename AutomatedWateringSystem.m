clear all; close all; 

a = arduino('COM3', 'uno');

while (true)
       moisture = readVoltage(a, 'A3');
       disp(moisture)
    if moisture > 3.3
        writeDigitalPin(a, 'D2', 1);
        pause(3);
        writeDigitalPin(a, 'D2', 0);
    elseif moisture < 3.3
        disp("IM ALREADY WET")   
    end 
   
end





 


