program soal2;
    var
    i,j,n,x: integer;
    
    begin
        write('masukkan angka anda ');
        readln(n);
        j:=3;
        x:=0;
        while j<= n do
            begin
                writeln(j);
                j:=j+6;
                x:=x+1;
            end;
        writeln(x);
        writeln(j);
    end.
