program q3;

var i,j,temp : integer;
    a : array [1..5] of integer;
    found : Boolean;


begin
    Write('input? ');
    for i:= 1 to 5 do 
        read(a[i]);
    
    for i := 1 to 5 do 
        for j := 1 to 5-i do 
            begin
                if (a[j] > a[j+1]) then
                    begin
                        temp := a[j];
                        a[j] := a[j+1];
                        a[j] := temp;
                    end;
            end;
    
    for i := 1 to 5 do 
    begin
        if (a[i] mod 6 = 0) then
        begin
            Write('Answer: ');
            Writeln(a[i]);
            found := True;
            break;
        end;
    end;

    if (not found) then
    begin
        Write('not found');
    end;

end.