program umeandpwd;

var i,j,k : integer;
    username : array[1..10] of string[12];
    password : array[1..10] of string[8];
    testing : string[12];

procedure change(var a,b : char);
var temp : char;
begin
    temp := a;
    a := b;
    b := temp;
end;

function usernamegen() : string;
var temp : string;
    index : integer;
begin
    randomize;
    temp := '';
    temp := temp + chr(random(10)+48);
    temp := temp + chr(random(26)+65);
    temp := temp + chr(random(26)+97);
    

    for i := 1 to 9 do 
    begin
        index := random(62);
        case (index) of
            0..9 : temp := temp + chr(random(10)+48);
            10..35: temp := temp + chr(random(26)+65);
            36..62: temp := temp + chr(random(26)+97);
        end;
    end;


    for i := 1 to 1000 do 
    begin
        change(temp[random(12)+1],temp[random(12)+1]);
    end;

    usernamegen := temp;

end;

function passwordgen() : string;
var temp : string;
    index : integer;
begin
    randomize;
    temp := '';
    temp := temp + chr(random(10)+48);
    temp := temp + chr(random(26)+65);
    temp := temp + chr(random(26)+97);
    

    for i := 1 to 5 do 
    begin
        index := random(62);
        case (index) of
            0..9 : temp := temp + chr(random(10)+48);
            10..35: temp := temp + chr(random(26)+65);
            36..62: temp := temp + chr(random(26)+97);
        end;
    end;


    for i := 1 to 1000 do 
    begin
        change(temp[random(8)+1],temp[random(8)+1]);
    end;

    passwordgen := temp;

end;



begin
    for i := 1 to 10 do
    begin
        username[i] := usernamegen();
        password[i] := passwordgen();
    end;

    for i := 1 to 10 do 
    begin
        writeln(username[i],' + ', password[i]);
    end;

end.