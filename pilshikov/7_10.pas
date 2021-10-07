type
cif = (nol,odin,dva,tri,cheture,pyat);
var
  d: char;
  i: char;
  n: cif;
begin
  read(d);
  n:= nol;
  for i:= d downto 1 do
    n:= succ(n);
case n of
  nol: writeln(nol);
  odin: writeln(odin);
  dva: writeln(dva);
  tri: writeln(tri);
  cheture: writeln(cheture);
  pyat: writeln(pyat);
    
    
    
end.
