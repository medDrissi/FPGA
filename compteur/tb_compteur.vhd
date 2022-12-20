library ieee;
use ieee.std_logic_1164.all;


entity tb_compteur is 
end tb_compteur;

architecture test of tb_compteur is 

component compteur 
port (
clk : in std_logic ;
 data_out : out std_logic_vector(2 downto 0)
);
end component ;

signal clk :std_logic := '0';
signal data_out :std_logic_vector(2 downto 0) := "000";

begin 

	instance : compteur port map (clk,data_out);
	

		clk<= not clk after 50 ns;
	

end test;

