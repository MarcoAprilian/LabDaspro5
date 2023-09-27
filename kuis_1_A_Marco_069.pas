program kuis_1_A_Marco_069;
uses crt;
var
    a,b,c,d:string;

begin
    write('Masukkan Nama Anda: ');
    readln(a);
    write('Masukkan NIM Anda: ');
    readln(b);
    write('Masukkan Kom Anda: ');
    readln(c);
    write('Masukkan Alamat Anda: ');
    readln(d);
    write('Hallo', 'Nama saya',a, ' NIM saya ',b, ' saya di kom ',c, ' alamat saya di ',d, ' Salam Kenal Semua!');
end.