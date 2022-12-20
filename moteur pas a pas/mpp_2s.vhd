
library ieee; 
use ieee.std_logic_1164.all; 


entity mpp_2S is 

             port(     H,S       : in        std_logic; 
                       SORTIES   : out std_logic_vector (3 downto 0)
					  ); 
end mpp_2S; 


architecture ARC_CDE OF mpp_2S is 

 type TYPE_ETAT is (E1, E2, E3, E4); 
 signal X:TYPE_ETAT; 

 
begin 
   
 process (H) 
 begin 
    if H'event and H = '1' then 
    
	 case X is 
         
			when E1 => 
         
			  if S='1'  then      X <= E2; 
                     else      X <= E4; 
           end if; 
			
			when E2 =>       
              
				if S='1'  then      X <= E3; 
                      else      X <= E1; 
            end if; 
        
		   when E3 =>  
			
            if S='1'  then      X <= E4; 
                      else      X <= E2; 
            end if; 
         
			when others =>  
           
			  if S='1'  then      X <= E1; 
                     else      X <= E3; 
           end if; 
    
	 end case; 
    
	 end if; 
 
 end process; 
 
 with  X select 
     
	 SORTIES  <= "1001"  when    E1, 
                "1010"  when    E2, 
                "0110"  when    E3, 
                "0101"  when    E4; 
end ARC_CDE; 