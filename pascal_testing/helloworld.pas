Program helloworld;

var i,j : integer;

begin
    writeln('helloworld');
    for i:= 1 to 7 do 
        begin
            for j:= 1 to i do 
            begin
                write('*');
            end;
            writeln();
        end;
end.        