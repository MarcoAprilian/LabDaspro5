program bangun_ruang;
var
    r,t,v,lp:real;
const
    pi=3.1416;

begin
    write('masukkan jari jari bangun ruang: ');
    readln(r);
    write('masukkan tinggi bangun ruang: ');
    readln(t);
    v:=pi*r*r*t;
    lp:=2*pi*r*(r+t);
    writeln('volume dari bangun ruang tersebut adalah: ',v);
    writeln('luas permukaan dari bangun ruang tersebut adalah: ',lp);
end.
    