Program Ex3;

var i,temp :integer;
    input : string;

begin
    write('input?');
    readln(input);

    for i := 1 to length(input) do
        begin 
            if (input[i] >= 'A') and (input[i] <= 'Z') then 
                temp := ord(input[i]) - 65
            else if (input[i] >= 'a') and (input[i] <= 'z') then
                temp := ord(input[i]) - 97 + 26
            else if (input[i] >= '0') and (input[i] <= '9') then
                temp := ord(input[i]) - 48 + 52;
            
            temp := (temp+62-3) mod 62;

            if (temp <26) then 
                write(chr(temp+65))
            else if (temp < 52) then
                write(chr(temp+97-26))
            else write(chr(temp+48-52));
        end;
    writeln();
end.    