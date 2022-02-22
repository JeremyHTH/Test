Program EX4;

type Student = record 
                    Student : string;
                    ID : string;
                    Elective: integer;
                end;
            
var Dataset : array[1..90] of Student;
    input,temp: string;
    posit,waste : integer;

function decoding(input:String):string;
var temp: String ;
    i : integer;
begin 
    for i := 1 to length(input) do 
        begin 
            
        end;

    decoding:=input;
end;


begin 
    write('input?');
    // readln(input);
    input:= 'jack#S200861#3';


    with Dataset[1] do
        begin
            Student := copy(input,1,pos('#',input)-1); 
            input := copy(input,pos('#',input)+1,length(input)-pos('#',input)); 
            ID := copy(input,1,pos('#',input)-1);
            val(copy(input,pos('#',input)+1,length(input)-pos('#',input)),Elective,waste);
        end;
    
    with Dataset[1] do
        begin
            write(Student+' '+ID+' ');
            writeln(Elective);
        end;

    write(decoding('a'))

end.