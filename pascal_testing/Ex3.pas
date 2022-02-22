Program Ex3;

var i,temp :integer;
    input : string;

begin
    write('input?');
    readln(input);

    for i := 1 to length(input) do
        begin 
            if (input[i] >= 'A') and (input[i] <= 'Z') then 
                temp := ord(input[i]) - 64
            else if (input[i] >= 'a') and (input[i] <= 'z') then
                temp := ord(input[i]) - 96 + 26;
            
            temp := temp -3;
            if temp <1 then 
                temp := temp + 52; 

            if (temp <=26) then 
                write(chr(temp+64))
            else 
                write(chr(temp+96-26));
        end;
    writeln();
end.    