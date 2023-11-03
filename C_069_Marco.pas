program soal3;
    var
    x,n,m,hasil,b:real;
    a:string;
    const
    musuh=8;
    
    begin
        write('jumlah kabel: ');
        readln(n);
        write('jumlah musuh: ');
        readln(m);
        write('penggunaan energi per kabel: ');
        readln(x);
        write('apakah ada buff? ');
        readln(a);
        if (lowercase(a)) = 'true' then
            b:=0.5
        else
        b:=1;
        hasil:=(n*x*b+m*15*b)-8*m;
        writeln(hasil);
    end.