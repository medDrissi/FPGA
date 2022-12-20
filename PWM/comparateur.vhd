

library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;

entity comparateur is 
port (
clk : in std_logic ;
consigne : in std_logic_vector(7 downto 0) ;
 input: in std_logic_vector(7 downto 0) ;
 data_out : out std_logic
);
end comparateur;



architecture comparateur_arch of comparateur is





begin
p : process (clk, consigne,input)

begin

 
	if (clk 'event  and clk = '1' ) then 

		if (input > consigne) then
			data_out <= '1';
		else

			data_out <= '0';
		end if;
	end if;


end process p;



		

end comparateur_arch;