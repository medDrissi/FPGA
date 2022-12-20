library ieee; 
use ieee.std_logic_1164.all ;


entity compt_div is 
port (
	clk : in std_logic ;
 	compt_div_out : out std_logic_vector(2 downto 0)
);
end compt_div;



architecture compt of compt_div is


component compteur is
port (
clk : in std_logic ;
 data_out : out std_logic_vector(2 downto 0)
);
		 
end component;

component diviseur is
 Port ( 

        clk : in std_logic;
        clk_div : out std_logic

       );
		 
end component;

signal s1 : std_logic ;

begin 
u1 : diviseur port map(clk , s1);
u2 : compteur port map(s1 ,compt_div_out ); 

end ;