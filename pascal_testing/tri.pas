program tri;

var n,i,j,cnt : integer;

begin
    write('number ?');
    cnt := 1;
    readln(n);
    for i := 1 to n do 
    begin
        for j := 1 to n-i do  write(' ');
        for j := 1 to i do  
        begin
            write(cnt,' ');
            cnt := cnt + 1;
        end;
        writeln;
    end;

end.