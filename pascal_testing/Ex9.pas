Program EX9;

var board : array [1..3,1..3] of char;
    i,j :integer;
    conti : boolean;
    entered_time : integer;
    current_enter : integer;
    row: integer;
    column : char;
    int_colunm : integer;
    win :char;


procedure PrintBoard();
var x,y :integer;
begin
    writeln(' | A | B | C |');
    for x := 1 to 3 do 
    begin 
        write(x,'|');
        for y := 1 to 3 do 
        begin 
            write(' ', board[x][y],' |');
        end;
        writeln();
    end;
end;

function checkWin():char;
var temp :char;
begin 
    temp := 'N';
    if (board[1][1]= board[1][2]) and (board[1][2] = board[1][3]) and (board[1][1] <> '0') then temp := board[1][1]; 
    if (board[2][1]= board[2][2]) and (board[2][2] = board[2][3]) and (board[2][1] <> '0') then temp := board[2][1]; 
    if (board[3][1]= board[3][2]) and (board[3][2] = board[3][3]) and (board[3][1] <> '0') then temp := board[3][1]; 
    if (board[1][1]= board[2][1]) and (board[2][1] = board[3][1]) and (board[1][1] <> '0') then temp := board[1][1]; 
    if (board[1][2]= board[2][2]) and (board[2][2] = board[3][2]) and (board[1][2] <> '0') then temp := board[1][2]; 
    if (board[1][3]= board[2][3]) and (board[2][3] = board[3][3]) and (board[1][3] <> '0') then temp := board[1][3];  
    if (board[1][1]= board[2][2]) and (board[2][2] = board[3][3]) and (board[1][1] <> '0') then temp := board[1][1]; 
    if (board[3][1]= board[2][2]) and (board[2][2] = board[1][3]) and (board[1][3] <> '0') then temp := board[1][3]; 
    checkWin := temp;
end;

begin 

    for i := 1 to 3 do 
        for j := 1 to 3 do 
            board[i][j] := '0';
    entered_time := 0;
    current_enter:=0;
    conti:= True;
    while (conti) do
    begin
        PrintBoard();   
        writeln('Player ',current_enter+1,', please Enter');
        write('Row(1-3)? ');
        readln(row);
        write('Column(A-C)? ');
        readln(column);
        case column of 
            'A': int_colunm := 1;
            'B': int_colunm := 2;
            'C': int_colunm := 3;
        end;
        if board[row][int_colunm] = '0' then
            begin
                if current_enter = 0 then
                    board[row][int_colunm] := '1'
                else if current_enter = 1 then 
                    board[row][int_colunm] := '2';

                entered_time := entered_time + 1;
                current_enter := (current_enter +1) mod 2;
                
                win := checkWin();
                if win <> 'N' then
                begin
                    PrintBoard();
                    writeln('Player',win,' win');
                    conti := false;
                end;

                if entered_time = 9 then 
                    conti:= false;
            end
        else write('invaid input')

    end;
end.