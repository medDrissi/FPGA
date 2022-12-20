
library ieee ; 
use ieee.std_logic_1164.all ; 

entity tb_pwm is 
end tb_pwm ; 



architecture arch_tb_pwm of tb_pwm is 

component pwm 
port(
clk : in std_logic ; 
consigne : in  std_logic_vector(7 downto 0 ) ;
pwm_out  : out std_logic 
);
end component ; 

signal clk,data_out :std_logic := '0';
signal consigne :std_logic_vector(7 downto 0) := "01000000";

begin 

	u : pwm port map (clk,consigne,data_out);
	
stimuli : process
begin
clk<= '1';
wait for 10 us ;
clk<= '0';

clk<= '1';
wait for 10 us ;
clk<= '0';

clk<= '1';
wait for 10 us ;
clk<= '0';

clk<= '1';
wait for 10 us ;
clk<= '0';
clk<= '1';
wait for 10 us ;
clk<= '0';


clk<= '1';
wait for 10 us ;
clk<= '0';


clk<= '1';
wait for 10 us ;
clk<= '0';


clk<= '1';
wait for 10 us ;
clk<= '0';


clk<= '1';
wait for 10 us ;
clk<= '0';
wait for 10 us ;

	end process;

end ;
