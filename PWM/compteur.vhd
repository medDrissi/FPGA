
library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;

entity compteur is 
port (
clk : in std_logic ;
 data_out : out std_logic_vector(7 downto 0)
);
end compteur;



architecture compteur_arch of compteur is



signal sortie : std_logic_vector(7 downto 0):="00000000" ;



begin
p : process (clk)

begin

 
	if (clk 'event  and clk = '1' ) then 

	sortie<= sortie + 1;

	end if;


end process p;

data_out <= sortie;

		

end compteur_arch;