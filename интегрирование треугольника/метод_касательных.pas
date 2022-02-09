program intg;
type TFunc = function(x:real):real;

// вычисляемая функция
function fx(x: real): real;
begin
  fx := x * x - 17;
end;

// производная функция от f(x)
function dfx(x: real): real;
begin
  dfx := 2 * x;
end;

function solve(fx, dfx: TFunc; x0: real): real;
const
  eps = 0.000001;
var
  x1: real;
begin
  x1 := x0 - fx(x0) / dfx(x0); // первое приближение
  while (Abs(x1-x0) > eps) do begin // пока не достигнута точность eps
    x0 := x1;
    x1 := x1 - fx(x1) / dfx(x1); // последующие приближения
  end;
  solve := x1;
end;


begin
// Вызов
writeln(solve(@fx, @dfx,4));

//переработан Delphi код с https://ru.wikipedia.org/w/index.php?title=%D0%9C%D0%B5%D1%82%D0%BE%D0%B4_%D0%9D%D1%8C%D1%8E%D1%82%D0%BE%D0%BD%D0%B0&stable=0#Delphi

end.
