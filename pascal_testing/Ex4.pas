Program EX4;

var i,posit : integer; 
    input,temp : string;
    

begin
    write('The given sentence is :');
    // readln(input);
    input := 'Hello i am Mr Hung. Wellcome!!';
    while (pos(' ',input) <> 0) do
        begin 
            posit := pos(' ',input); 
            temp :=  copy(input,1,posit-1); 
            
            
            if (temp[1]>= 'A') and (temp[1] <= 'Z') then 
                temp[1] := chr(ord(temp[1]) -64 + 96);  

            for i := 2 to length(temp) do
                if (temp[i]>= 'a') and (temp[i] <= 'z') then 
                temp[i] := chr(ord(temp[i]) -97+65);  
            write(temp + ' '); 

            input := copy(input,posit+1,length(input)-posit) 
        end;




    // temp :=  Copy(input,1,length(input));
    if (input[1]>= 'A') and (input[1] <= 'Z') then 
        input[1] := chr(ord(input[1])-64 +96);
    for i := 2 to length(input) do
        if (input[i]>= 'a') and (input[i] <= 'z') then 
            input[i] := chr(ord(input[i]) -97+65);
    writeln(input)
    
    
end.