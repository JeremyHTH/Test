Program EX8;
var i,b,input: integer;

function isPrime(a:integer):boolean;
var check :boolean;
    j :integer;
    
begin 
    check := true;
    for j := 2 to round(sqrt(a)) do 
    begin 
        if a mod j = 0 then 
            check := false;
    end;
    isPrime := check;

end; 


begin 
    write('input?');
    readln(input);

    for i := 2 to input div 2 do 
    begin 
        b := input - i;
        if (isPrime(b)) and (isPrime(i)) then 
            writeln(input,' = ',i,' + ',b);

    end; 

end.