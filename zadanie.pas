var
  k,i,l :integer;
  begin
    read (k);
    l:= k mod 100;
    case l of
    11,12,13,14:  begin writeln('my nashli ' ,k, ' gribov v lesu');
    exit;
    end;

      
      
    end;
    
    i:= k mod 10;
    case i of
      1: writeln('my nashli', k, ' grib v lesu');
      2,3,4 :writeln('my nashli ' ,k ,' griba v lesu');
      5,6,7,8,9,0: writeln('my nashli ' ,k, ' gribov v lesu');
    end;
    
    
    
  end.