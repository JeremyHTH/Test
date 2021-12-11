Program exam_test;

var a: array[0..7] of longint = (5,7,4,3,2,6,1,8);

function dinv(): LongInt;
var i,j,r :LongInt;
begin
    r:=0;
    for i := 0 to 7 do 
        for j := 0 to i-1 do 
            if (a[j] > a[i]) then 
                r:= r+1;
    dinv := r;
end;

function tinv() : LongInt;
var i,j,k,r:LongInt;
begin
    r:=0;
    for i:= 0 to 7 do
        for j:= 0 to i-1 do 
            for k := 0 to j-1 do 
                if ((a[k]>a[j]) and (a[j] > a[i])) then
                    begin
                        r := r + 1;
                        writeln(a[k],a[j],a[i]);
                    end;
                        
    tinv := r;
end;


begin
    writeln(dinv());
    WriteLn(tinv());
end.