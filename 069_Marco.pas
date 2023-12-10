program tugas_2;
uses crt, sysutils;

type
    kuliah=record
    matkul:string;
    sks:byte;
end;

type
    mahasiswa=record
    nama:string;
    nim:string;
    huruf:string;
    total:real;
    indek:real;
end;

var
    f: textfile;
    namafile: string; 
    i, j, banyak: integer; 
    mahasiswi : mahasiswa;
    kulia: array [1..20] of kuliah;
    total_sks: integer;
    nilai_kuliah: array [1..20] of string; 

function Nilai(huruf: string): real;
    begin
        case huruf of
            'A': Nilai := 4.0;
            'B+':Nilai := 3.5;
            'B': Nilai := 3.0;
            'C+':Nilai := 2.5;
            'C': Nilai := 2.0;
            'D': Nilai := 1.0;
            'E': Nilai := 0.0;
        else
            begin
                writeln('Nilai yang dicara tidak valid');
                Nilai := 0.0;
            end;
        end;
    end;

begin
     total_sks := 0;
    write('input banyak matkul: ');
    readln(banyak);
    for i:= 1 to banyak do
        begin
            with kulia[i] do
                begin
                writeln('Matkul [', i, ']');
                write('Nama Matkul: ');
                readln(matkul);
                write('SKS: ');
                readln(sks);
                total_sks := total_sks + sks;
                end;
        end;

    with mahasiswi do
        begin
            write('Nama: ');
            readln(nama);
            write('NIM: ');
            readln(nim);
        end;
    
    mahasiswi.total:= 0;
    
    for i := 1 to banyak do
        begin
            write('Nilai ', kulia[i].matkul, ': ');
            readln(nilai_kuliah[i]);
            mahasiswi.total:= mahasiswi.total + (nilai(nilai_kuliah[i]) * kulia[i].sks);
        end;
    mahasiswi.indek := mahasiswi.total / total_sks;

    namafile:= 'KHS_231401069_Marco Aprilian Leonard.txt';
    Assign(f, namafile);

    rewrite(f);
    writeln(f, 'Kartu Hasil Studi');
    writeln(f, '=================');
    writeln;
    with mahasiswi do 
    begin
        writeln(f, 'Nama      : ', nama);
        writeln(f, 'NIM       : ', nim);
    end;
    writeln(f);
    writeln(f,'|=================================================|');
    writeln(f,'|No   | Matkul                              |Nilai|');
    writeln(f,'|=================================================|');
    for i := 1 to banyak do
    begin
        with kulia[i] do 
        begin
            write(f, '|', i,'.');
            for j := 1 to (4 - Length(IntToStr(i))) do
                write(f, ' ');

            write(f, '| ', matkul);

            for j := 1 to (36 - Length(matkul)) do
                write(f, ' ');

            write(f, '|', nilai_kuliah[i]);

            for j := 1 to (5 - Length(nilai_kuliah[i])) do
                write(f, ' ');

            writeln(f, '|');
        end;
    end;
    writeln(f,'|=================================================|');
    writeln(f);
    writeln(f, 'Total SKS  : ', total_sks);
    writeln(f, 'IP Semester: ', mahasiswi.indek:0:2);
    close(f);
end.