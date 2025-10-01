% mygcd.m

% Hugo Lindfors (huglih251)

% mygcd() accepts a dividend and a divisor as parameters and returns the greatest common divisor
function quotient = mygcd(dividend, divisor)

remainder = 1; % remainder has to be set to any non 0 value

while remainder ~= 0

    if divisor ~= 0
        quotient = floor(dividend/divisor);
        remainder = mod(dividend, divisor);
    else
        clc
        disp("ERROR! Dividing by 0 is undefined!")
    end

    if remainder ~= 0 && divisor ~= 0
        dividend = divisor;
        divisor = quotient;
    end
end
end