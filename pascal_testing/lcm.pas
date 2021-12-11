program lcmhcf;
var a,b,c: integer; 
    n: array [1..3] of integer; 
    i,j,hcf,cnt,lcm : integer;
begin
    write('?');
    readln(a,b,c);
    n[1] := a;
    n[2] := b; 
    n[3] := c; 
    write('hcf = ');
    hcf := 1;
    i := 2;

    repeat 
        if (n[1] mod i = 0) and (n[2] mod i = 0) and (n[3] mod i = 0) then
            begin
                hcf:= hcf*i;
                for j := 1 to 3 do 
                    n[j] := n[j] div i
            end
        else 
            i:=i+1;
    until i > n[i];
    writeln(hcf);
end.
