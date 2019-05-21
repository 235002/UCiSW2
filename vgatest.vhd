--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:52:09 04/01/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/Beza/AWP_GAME2/vgatest.vhd
-- Project Name:  AWP_GAME2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_800x600_72Hz
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY vgatest IS
END vgatest;
 
ARCHITECTURE behavior OF vgatest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_800x600_72Hz
    PORT(
         clk50 : IN  std_logic;
         reset : IN  std_logic;
         pos_x : IN  std_logic_vector(10 downto 0);
         pos_y : IN  std_logic_vector(10 downto 0);
         slowing : IN  std_logic;
         click : IN  std_logic;
         DataRdy : IN  std_logic;
         h_sync : OUT  std_logic;
         v_sync : OUT  std_logic;
         red : OUT  std_logic;
         green : OUT  std_logic;
         blue : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk50 : std_logic := '0';
   signal reset : std_logic := '0';
   signal pos_x : std_logic_vector(10 downto 0) := (others => '0');
   signal pos_y : std_logic_vector(10 downto 0) := (others => '0');
   signal slowing : std_logic := '0';
   signal click : std_logic := '0';
   signal DataRdy : std_logic := '0';

 	--Outputs
   signal h_sync : std_logic;
   signal v_sync : std_logic;
   signal red : std_logic;
   signal green : std_logic;
   signal blue : std_logic;

   -- Clock period definitions
   constant clk50_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_800x600_72Hz PORT MAP (
          clk50 => clk50,
          reset => reset,
          pos_x => pos_x,
          pos_y => pos_y,
          slowing => slowing,
          click => click,
          DataRdy => DataRdy,
          h_sync => h_sync,
          v_sync => v_sync,
          red => red,
          green => green,
          blue => blue
        );

   -- Clock process definitions
   clk50_process :process
   begin
		clk50 <= '0';
		wait for clk50_period/2;
		clk50 <= '1';
		wait for clk50_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk50_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
