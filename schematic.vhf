--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schematic.vhf
-- /___/   /\     Timestamp : 05/13/2019 13:45:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/Beza/AWP_GAME_FINAL/AWP_GAME2/schematic.vhf -w C:/Users/lab/Desktop/Beza/AWP_GAME_FINAL/AWP_GAME2/schematic.sch
--Design Name: schematic
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schematic is
   port ( clk50    : in    std_logic; 
          reset    : in    std_logic; 
          LCD_D    : out   std_logic_vector (3 downto 0); 
          LCD_E    : out   std_logic; 
          LCD_RS   : out   std_logic; 
          LCD_RW   : out   std_logic; 
          SF_CE    : out   std_logic; 
          VGA_B    : out   std_logic; 
          VGA_G    : out   std_logic; 
          VGA_HS   : out   std_logic; 
          VGA_R    : out   std_logic; 
          VGA_VS   : out   std_logic; 
          PS2_Clk  : inout std_logic; 
          PS2_Data : inout std_logic);
end schematic;

architecture BEHAVIORAL of schematic is
   signal XLXN_11     : std_logic_vector (7 downto 0);
   signal XLXN_12     : std_logic_vector (7 downto 0);
   signal XLXN_13     : std_logic_vector (7 downto 0);
   signal XLXN_16     : std_logic;
   signal XLXN_17     : std_logic;
   signal XLXN_18     : std_logic;
   signal XLXN_19     : std_logic_vector (10 downto 0);
   signal XLXN_20     : std_logic_vector (10 downto 0);
   signal XLXN_33     : std_logic_vector (15 downto 0);
   signal XLXN_37     : std_logic_vector (63 downto 0);
   signal LCD_D_DUMMY : std_logic_vector (3 downto 0);
   component PS2_Mouse
      port ( PS2_Data  : inout std_logic; 
             PS2_Clk   : inout std_logic; 
             InitOK    : out   std_logic; 
             DataRdy   : out   std_logic; 
             B1_Status : out   std_logic_vector (7 downto 0); 
             B2_X      : out   std_logic_vector (7 downto 0); 
             B3_Y      : out   std_logic_vector (7 downto 0); 
             Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Clk_Sys   : in    std_logic);
   end component;
   
   component VGA_800x600_72Hz
      port ( clk50   : in    std_logic; 
             reset   : in    std_logic; 
             slowing : in    std_logic; 
             click   : in    std_logic; 
             DataRdy : in    std_logic; 
             pos_x   : in    std_logic_vector (10 downto 0); 
             pos_y   : in    std_logic_vector (10 downto 0); 
             h_sync  : out   std_logic; 
             v_sync  : out   std_logic; 
             red     : out   std_logic; 
             green   : out   std_logic; 
             blue    : out   std_logic; 
             Line    : out   std_logic_vector (63 downto 0); 
             blank   : out   std_logic_vector (15 downto 0));
   end component;
   
   component pointer_move
      port ( clk50     : in    std_logic; 
             DataRdy   : in    std_logic; 
             B1_Status : in    std_logic_vector (7 downto 0); 
             B2_X      : in    std_logic_vector (7 downto 0); 
             B3_Y      : in    std_logic_vector (7 downto 0); 
             slowing   : out   std_logic; 
             click     : out   std_logic; 
             pos_x     : out   std_logic_vector (10 downto 0); 
             pos_y     : out   std_logic_vector (10 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   LCD_D(3 downto 0) <= LCD_D_DUMMY(3 downto 0);
   XLXI_1 : PS2_Mouse
      port map (Clk_Sys=>clk50,
                Clk_50MHz=>clk50,
                Reset=>reset,
                B1_Status(7 downto 0)=>XLXN_11(7 downto 0),
                B2_X(7 downto 0)=>XLXN_12(7 downto 0),
                B3_Y(7 downto 0)=>XLXN_13(7 downto 0),
                DataRdy=>XLXN_18,
                InitOK=>open,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data);
   
   XLXI_2 : VGA_800x600_72Hz
      port map (click=>XLXN_17,
                clk50=>clk50,
                DataRdy=>XLXN_18,
                pos_x(10 downto 0)=>XLXN_19(10 downto 0),
                pos_y(10 downto 0)=>XLXN_20(10 downto 0),
                reset=>reset,
                slowing=>XLXN_16,
                blank(15 downto 0)=>XLXN_33(15 downto 0),
                blue=>VGA_B,
                green=>VGA_G,
                h_sync=>VGA_HS,
                Line(63 downto 0)=>XLXN_37(63 downto 0),
                red=>VGA_R,
                v_sync=>VGA_VS);
   
   XLXI_3 : pointer_move
      port map (B1_Status(7 downto 0)=>XLXN_11(7 downto 0),
                B2_X(7 downto 0)=>XLXN_12(7 downto 0),
                B3_Y(7 downto 0)=>XLXN_13(7 downto 0),
                clk50=>clk50,
                DataRdy=>XLXN_18,
                click=>XLXN_17,
                pos_x(10 downto 0)=>XLXN_19(10 downto 0),
                pos_y(10 downto 0)=>XLXN_20(10 downto 0),
                slowing=>XLXN_16);
   
   XLXI_4 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_33(15 downto 0),
                Clk_50MHz=>clk50,
                Line(63 downto 0)=>XLXN_37(63 downto 0),
                Reset=>reset,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D_DUMMY(3 downto 0));
   
end BEHAVIORAL;


