library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity VGA_800x600_72Hz is
    Port ( clk50 : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pos_x : in  STD_LOGIC_VECTOR (10 downto 0);
           pos_y : in  STD_LOGIC_VECTOR (10 downto 0);
           slowing : in  STD_LOGIC;
           click : in  STD_LOGIC;
			  DataRdy : in STD_LOGIC;
           h_sync : out  STD_LOGIC;
           v_sync : out  STD_LOGIC;
           red : out  STD_LOGIC;
           green : out  STD_LOGIC;
           blue : out  STD_LOGIC;
           Line : out STD_LOGIC_VECTOR (63 downto 0);
           blank : out STD_LOGIC_VECTOR  (15 downto 0));
end VGA_800x600_72Hz;

architecture Behavioral of VGA_800x600_72Hz is

		signal hcs : unsigned(10 downto 0) := "00000000000";  --horizontal counter
		signal vcs : unsigned(10 downto 0) := "00000000000";  --vertical counter
		
		constant h_size : unsigned(10 downto 0) := "10000010000"; -- 1040 (64 + 120 + 800 + 56)   
		constant h_sync_start : unsigned(10 downto 0) := "01101011000"; -- 856 (800 + 56)
		constant h_sync_end : unsigned(10 downto 0) := "01111010000"; --(800 + 56 + 120)
    
		constant v_size : unsigned(10 downto 0) := "01010011010"; -- 666 (23 + 6 + 600 + 37)
		constant v_sync_start : unsigned(10 downto 0) := "01001111101"; --(600 + 37)
		constant v_sync_end : unsigned(10 downto 0) := "01010000011"; --(600 + 37 + 6)
		
		signal endline : std_logic := '0'; -- enable vertical counter
		signal visible : std_logic := '1'; -- 1 if hcs and vcs are in display area
		
		constant pointer_size : unsigned(10 downto 0) := "00000010100";
		constant bug_size : unsigned(10 downto 0) :=     "00000010111";
      
      signal x_bug : unsigned(10 downto 0) := "00011001000"; 
      signal y_bug : unsigned(10 downto 0) := "00000000000";  
      signal bug_counter : unsigned(16 downto 0) := "10100010110000101"; 
      signal x_counter : unsigned(10 downto 0) := "00000000000";
      signal lifes : unsigned(2 downto 0) := "111";
      signal life_signal : std_logic := '0';
      
      constant dragon_size_x : unsigned(10 downto 0) :=     "00000110010";
		constant dragon_size_y : unsigned(10 downto 0) :=     "00010110100";
		signal x_dragon : unsigned(10 downto 0) := "00011100000";
		signal y_dragon : unsigned(10 downto 0) := "00000000000";  
      signal dragon_counter : unsigned(16 downto 0) := "10101110110000101";
		signal y_dragon_counter : unsigned(10 downto 0) := "00000000000";
      

begin
      
      timer : process(clk50)
      begin
         if rising_edge(clk50) then
            if (hcs = 1039) then
               hcs <= "00000000000";
               if (vcs = 665) then
                  vcs <= "00000000000";
               else 
                  vcs <= vcs + 1;
               end if;
            else
               hcs <= hcs + 1;
            end if;
         end if;
      end process timer;
		
		h_sync <= '1' when (hcs >= h_sync_start and hcs < h_sync_end) else '0';
		v_sync <= '1' when (vcs >= v_sync_start and vcs < v_sync_end) else '0';
		visible <= '1' when (((hcs >= 0 ) and (hcs < 800)) and ((vcs >=0) and (vcs < 600))) else '0';
      
      blank <= "1111111111111110";	
    
      draw_pointer : process(clk50, pos_x, pos_y, click)
      begin
			if rising_edge(clk50) and visible = '1' then
				green <= '0';
            
				if (hcs > unsigned(pos_x) - 2 and 
            signed(hcs) < signed(pos_x) + 2 and 
            signed(vcs) > signed(pos_y) - signed(pointer_size) and 
            signed(vcs) < signed(pos_y) + signed(pointer_size)) or
            (vcs > unsigned(pos_y) - 2 and 
            signed(vcs) < signed(pos_y) + 2 and 
            signed(hcs) > signed(pos_x) - signed(pointer_size) and 
            signed(hcs) < signed(pos_x) + signed(pointer_size)) then
               if (click = '1') then
                  green <= '1';
               else
                  green <= '1';
               end if;
				end if;
			end if;
		end process draw_pointer;
      
      bug_move : process(clk50, pos_x, pos_y, click)
      begin
          if rising_edge(clk50) and visible = '1' then
            if (x_counter < 750) then
               x_counter <= x_counter + 1;
            else
               x_counter <= "00000000000";
            end if;
            if (bug_counter > 0) then
               bug_counter <= bug_counter -1;
            else
               bug_counter <="10100010110000101";
               y_bug <= y_bug +1;
            end if;
            if(hcs > x_bug and hcs < x_bug + bug_size and vcs > y_bug and vcs < y_bug + bug_size) then
               blue <= '1';
            else 
               blue <= '0';
            end if;

            if (y_bug > 570) then
               y_bug <= "00000000000";
               x_bug <= x_counter;
               lifes <= lifes -1;
               --life_signal <= '1';
            --else
            --life_signal <='0';
            end if;
            --event
            if (signed(pos_x) >= signed(x_bug) and signed(pos_x) <= signed(x_bug) + signed(bug_size) and
            signed(pos_y) >= signed(y_bug) and signed(pos_y) <= signed(y_bug) + signed(bug_size) and click = '1') then
               y_bug <= "00000000000";
               if (signed(x_bug)>680) then
                  x_bug <= "00000000000";
               else 
                  x_bug <= x_counter;
               end if;
            end if;
         end if;          
      end process bug_move;
      
    
      dragon_move : process(clk50, pos_x, pos_y, click)
      begin
          if rising_edge(clk50) and visible = '1' then
            if (y_dragon_counter < 420) then                --losowanie pozycji y do renderowania smoka
               y_dragon_counter <= y_dragon_counter + 1;
            else
               y_dragon_counter <= "00000000000";
            end if;
			
            if (dragon_counter > 0) then                    -- ruch smoka
               dragon_counter <= dragon_counter - 1;
            else
               dragon_counter <="11110100001001000"; -- to jakies 65000
               x_dragon <= x_dragon + 1;
            end if;
            
            if(hcs > x_dragon and hcs < x_dragon + dragon_size_x and    --rysowanie smoka
					vcs > y_dragon and vcs < y_dragon + dragon_size_y) then
					red <= '1';
				else
					red <= '0';
				end if;

            if (x_dragon > 750) then            --cofniecie pozycji smoka na krawedz ekranu
               x_dragon <= "00000000000";
               y_dragon <= y_dragon_counter;
            end if;
            --event
            if (signed(pos_x) >= signed(x_dragon) and signed(pos_x) <= signed(x_dragon) + signed(dragon_size_x) and
            signed(pos_y) >= signed(y_dragon) and signed(pos_y) <= signed(y_dragon) + signed(dragon_size_y) ) then
               x_dragon <= "00000000000";
               --lifes <= lifes - 1;
               --life_signal <= '1';
               if (signed(y_dragon) > 420) then
                  y_dragon <= "00000000000";
               else 
                  y_dragon <= y_dragon_counter;
               end if;
            else
               life_signal <= '0';
            end if;
         end if;          
      end process dragon_move;
      
      Line(2 downto 0) <= std_logic_vector(lifes);
      

end Behavioral;
