program kuis_1_B_Marco_069;
uses crt;
var
    a,b,c,d:string;

begin
    write('Masukkan Jalan Anda: ');
    readln(a);
    write('Masukkan No Rumah Anda: ');
    readln(b);
    write('Masukkan Kota Anda: ');
    readln(c);
    write('Masukkan Kode Pos Anda: ');
    readln(d);
    write('Alamat: Jalan ',a,' No. ',b,' ',c,' ',d);
end.