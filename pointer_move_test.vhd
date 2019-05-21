--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:34:41 03/31/2019
-- Design Name:   
-- Module Name:   C:/Users/Marcin/Desktop/Studia/Semestr 6/UCISW2/AWP/AWPGame/pointer_move_test.vhd
-- Project Name:  AWPGame
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pointer_move
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
USE ieee.numeric_std.ALL;
 
ENTITY pointer_move_test IS
END pointer_move_test;
 
ARCHITECTURE behavior OF pointer_move_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pointer_move
    PORT(
         clk50 : IN  std_logic;
         DataRdy : IN  std_logic;
         B1_Status : IN  std_logic_vector(7 downto 0);
         B2_X : IN  std_logic_vector(7 downto 0);
         B3_Y : IN  std_logic_vector(7 downto 0);
         pos_x : OUT  std_logic_vector(10 downto 0);
         pos_y : OUT  std_logic_vector(10 downto 0);
         slowing : OUT  std_logic;
         click : OUT  std_logic
        );
    END COMPONENT;
     

   --Inputs
   signal clk50 : std_logic := '0';
   signal DataRdy : std_logic := '0';
   signal B1_Status : std_logic_vector(7 downto 0) := (others => '0');
   signal B2_X : std_logic_vector(7 downto 0) := (others => '0');
   signal B3_Y : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal pos_x : std_logic_vector(10 downto 0);
   signal pos_y : std_logic_vector(10 downto 0);
   signal slowing : std_logic;
   signal click : std_logic;

   -- Clock period definitions
   constant clk50_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pointer_move PORT MAP (
          clk50 => clk50,
          DataRdy => DataRdy,
          B1_Status => B1_Status,
          B2_X => B2_X,
          B3_Y => B3_Y,
          pos_x => pos_x,
          pos_y => pos_y,
          slowing => slowing,
          click => click
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
	DataRdy <= '1' after 30ns, '0' after 40ns, '1' after 70ns, '0' after 80ns, '1' after 120ns, '0' after 130ns;
	B1_Status <= "00000010" after 40ns , "00000000" after 50ns, "00000001" after 70ns, "00000000" after 110ns, "00000001" after 150ns;

      wait;
   end process;

END;
