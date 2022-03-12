Program EX7;

var number : array[1..100] of integer;
    i,output,input : integer;
    index1,index2,temp: integer;

begin 
    randomize;
    for i := 1 to 100 do 
        number[i] := i;

    for i := 1 to 1000 do 
    begin 
        index1 := random(100) +1;
        index2 := random(100) +1;
        temp := number[index1];
        number[index1] := number[index2];
        number[index2] := temp;
    end;

    for i := 1 to 100 do 
        writeln(number[i]);

    write('What do you want to search:');
    readln(input);
    for i := 1 to 100 do 
    begin 
        if (number[i]=input) then 
            writeln(i);
    end;

    write('What do you want to delete:');
    readln(input);
    for i := 1 to 100 do 
    begin 
        if (number[i]=input) then 
            output := i;
    end;

    for i := output to 100-1 do 
    begin 
        number[i] := number[i+1];
    end;

    number[100] := -1;
    for i := 1 to 100 do 
        writeln(number[i]);

end.