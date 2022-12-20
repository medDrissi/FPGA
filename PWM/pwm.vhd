library ieee ;
use ieee.std_logic_1164.all ;


entity pwm is 
port(
clk : in std_logic ; 
consigne : in  std_logic_vector(7 downto 0 ) ;
pwm_out  : out std_logic 
);
end pwm ;

architecture pwm_arch of pwm is

component comparateur 
port (
clk : in std_logic ;
consigne  : in std_logic_vector(7 downto 0) ;
 input:in std_logic_vector(7 downto 0) ;
 data_out : out std_logic
);
end component ;


component diviseur 
 Port ( 
        clk : in std_logic;
        clk_div : out std_logic

       );
end component ;



component compteur 
port (
clk : in std_logic ;
 data_out : out std_logic_vector(7 downto 0)
);
end component ;


signal s1 : std_logic_vector(7 downto 0 );
signal s2 : std_logic ;

begin 
u1 : compteur port map(clk ,s1 );
u2 : diviseur port map(clk ,s2 );
u3 : comparateur port map (s2,consigne , s1 , pwm_out);

end ; 
