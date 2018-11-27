CREATE TYPE number_array AS VARRAY(50) OF INTEGER;

-- Punto 1
CREATE OR REPLACE FUNCTION divisible_sum_pairs(Array1 number_array, K integer)
    RETURN String
    AS
    resul1 INTEGER;
    BEGIN
    FOR I IN 1..Array1.count loop
            for J in 1..Array1.count loop
                resul1 := (Array1(I) + Array1(J)) / K;
                if resul1=0 then
                    dbms_output.put_line(i + j); 
                    return 'hola';
                end if;
            end loop;    
    end loop;
END;
    
-- Prueba punto1
DECLARE
  Array1 number_array;
  K integer;
  VALOR string;
BEGIN
     Array1 := number_array(1,2,3,4,5);
     K := 5;

  VALOR := divisible_sum_pairs(Array1, K);
  DBMS_OUTPUT.PUT_LINE(VALOR);
END; 


-- punto 2
CREATE OR REPLACE FUNCTION find_digits(H integer)
    RETURN Integer
    AS
    resul1 INTEGER;
    tamano integer;
    contador integer;
BEGIN
    contador := 0;
    tamano := LENGTH(H);
    FOR I IN 1..tamano loop
          resul1 := substr(H,i,1); 
          if (mod(H,resul1) = 0) then
            contador := contador +1;
          end if;       
    end loop;
    return contador;
END;

-- prueba de punto 2
DECLARE
  K integer;
  VALOR integer;
BEGIN
     K := 1111;

  VALOR := find_digits(K);
  DBMS_OUTPUT.PUT_LINE(VALOR);
END; 

