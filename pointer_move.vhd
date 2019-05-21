library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity pointer_move is
    Port ( clk50 : in  STD_LOGIC;
           DataRdy : in  STD_LOGIC;
           B1_Status : in  STD_LOGIC_VECTOR (7 downto 0);
           B2_X : in  STD_LOGIC_VECTOR (7 downto 0);
           B3_Y : in  STD_LOGIC_VECTOR (7 downto 0);
           pos_x : out  STD_LOGIC_VECTOR (10 downto 0);
           pos_y : out  STD_LOGIC_VECTOR (10 downto 0);
           slowing : out  STD_LOGIC;
			  click : out STD_LOGIC);
end pointer_move;

architecture Behavioral of pointer_move is

	signal pointer_x : signed(10 downto 0) := "00110010000";		-- 400
	signal pointer_y : signed(10 downto 0) := "00100101100"; 	-- 300
	constant x_min : signed(10 downto 0) := 	"00000010100";   --20
	constant x_max : signed(10 downto 0) := 	"01100001100";   --780
	constant y_min : signed(10 downto 0) := 	"00000010100";   --20
	constant y_max : signed(10 downto 0) := 	"01001000100";   --580
	
	signal leftBtn : std_logic := '0';									--state of pressing left button mouse
	signal rightBtn : std_logic := '0';									--state of pressing right button mouse	
	signal slowReady : std_logic := '1';
	signal slowCounter : unsigned(27 downto 0) := (others => '0');
	constant slowMax : unsigned(27 downto 0) := to_unsigned(150000000, 28);	-- 150mln ticks of 50MHz clock = 3s
	
	begin
----------------------------------------------------------------------------------------------------------------------
		button_clicked : process(clk50, DataRdy, B1_Status)
		begin
		
			if DataRdy = '1' and rising_edge(clk50) then
			
				leftBtn <= B1_Status(0);
				rightBtn <= B1_Status(1);
		
			end if;
		end process button_clicked;	
------------------------------------------------------------------------------------------------------------------------
		mouse_move : process(clk50, DataRdy)
		begin
		if rising_edge(clk50) then
			if slowReady = '1' then
				if rightBtn = '1' then	--right button has been pressed
					slowReady <= '0';				
				end if;
				
			else
				slowCounter <= slowCounter + 1;
				if slowCounter = slowMax then
					slowCounter <= to_unsigned(0,28);
					slowReady <= '1';
				end if;
				
			end if;
			
			--move of pointer
			if DataRdy = '1' then
				pointer_x <= pointer_x + signed(B2_X);		--horizontal move
				pointer_y <= pointer_y - signed(B3_Y);		--vertical move
				
				if pointer_x < x_min then
                pointer_x <= x_min;
            elsif pointer_x > x_max then
                pointer_x <= x_max;
				end if;
				
				if pointer_y < y_min then
                pointer_y <= y_min;
            elsif pointer_y > y_max then
                pointer_y <= y_max;
				end if;				
								
				
			end if;
		
		
		end if;
		
		end process mouse_move;
----------------------------------------------------------------------------------------------------------------	
		slowing <= not slowReady;
		click <= leftBtn;

		pos_x <= std_logic_vector(pointer_x);
		pos_y <= std_logic_vector(pointer_y);
end Behavioral;

