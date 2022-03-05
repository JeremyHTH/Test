Program EX6;
type Student = record 
                    StudentName : string;
                    ID : string;
                    Elective: integer;
                end;
            
var Dataset : array[1..90] of Student;
    input,temp: string;
    posit,waste, count,i: integer;
    inf : text;

function decoding(input:String):string;
var output : String ;
    temp, i : integer;
begin 
    output := '';
    for i := 1 to length(input) do 
        begin 
            if (input[i] >= 'A') and (input[i] <= 'Z') then 
                temp := ord(input[i]) - 65
            else if (input[i] >= 'a') and (input[i] <= 'z') then
                temp := ord(input[i]) - 97 + 26
            else if (input[i] >= '0') and (input[i] <= '9') then
                temp := ord(input[i]) - 48 + 52;
            
            temp := (temp+3) mod 62;

            if (temp <26) then 
                output := output + chr(temp+65)
            else if (temp < 52) then
                output := output + chr(temp+97-26)
            else output := output + chr(temp+48-52);
        end;

    decoding:=output;
end;

function check(input:Student): boolean;
var i,j :integer;
    output : boolean;
begin 
    output := True;
    with input do 
    begin 
        for i := 1 to length(StudentName) do 
            if not (((StudentName[i] >= 'A') and (StudentName[i] <= 'Z')) or ((StudentName[i] >= 'a') and (StudentName[i] <= 'z'))) then
                output := false;

        if length(ID) <> 7 then 
            output := false;

        if not((ID[1] = 'S') or (ID[1] = 's')) then 
            output := false;

        for i := 2 to length(ID) do
            if not ((ID[i] >= '0') and (ID[i] <= '9')) then
                output := false;

        if (Elective < 0) or (Elective >= 10) then
            output := false;

    end;
    check := output
end;

begin 
    count := 0;
    temp := '';
    assign(inf,'question.txt');
    reset(inf);
    while not eof(inf) do
    begin 
        count := count + 1;
        readln(inf,temp);
        writeln(temp);
        with Dataset[count] do
        begin
            StudentName := copy(temp,1,pos('#',temp)-1); 
            temp := copy(temp,pos('#',temp)+1,length(temp)-pos('#',temp)); 
            ID := copy(temp,1,pos('#',temp)-1);
            temp:= copy(temp,pos('#',temp)+1,length(temp)-pos('#',temp));
            StudentName := decoding(StudentName);
            ID := decoding(ID);
            temp := decoding(temp);
            val(temp,Elective,waste);
        end;
    end;
    close(inf);

    for i := 1 to count do 
    begin 
        with Dataset[i] do 
        begin 
            write(StudentName+' '+ID+' ');
            writeln(Elective);
        end;
    end;

end. 