library ieee;
use ieee.std_logic_1164.all;

entity diviseur is

 Port ( 

        clk : in std_logic;
        clk_div : out std_logic

       );

end diviseur;

architecture diviseur of diviseur is

 constant MAXVAL : integer:=1;  --25000000; -- valeur de MAXVAL pour avoir une frÃ©quence de 1Hz

 signal ast : std_logic:='0'; -- We assume the FPGA have a reset

begin

 process (clk)

 variable conta : integer:=0;

 begin

 if clk 'event and clk='1' then --dÃ©tection des fronts montant du signal dâhorloge
 conta:=conta+1; -- Comptage des fronts montants
 if conta=MAXVAL then
 conta:=0;
 ast <= not(ast); -- la variable ast test complÃ©mentÃ©e
 end if;
 end if;
 end process;
 -- Output assignment
 clk_div<= ast;
end architecture diviseur; 
