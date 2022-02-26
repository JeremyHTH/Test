Program Ex2;

var i,j,n :integer;

begin 
    write('number?');
    readln(n);
    for i := 1 to (n-1)div 2 do 
        begin 
            writeln('*':i,'*':n+1-2*i);
        end;
    writeln('*':(n+1) div 2);

    for i := 1 to n do 
        begin 
            for j := 1 to n-i do write(' ');
            for j := 1 to i*2-1 do write('*');
            writeln;
        end;

end.