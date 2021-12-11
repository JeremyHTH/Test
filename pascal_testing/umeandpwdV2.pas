program umeandpwdV2;
var num, sum : integer;
begin
    write('input ?');
    readln(num);

    while (num  > 10) do
    begin
        sum := 0;
        while(num <> 0) do
        begin
            sum := sum + num mod 10;
            num := num div 10;

        end;
        num := sum;
    end;
    writeln(num);

end.