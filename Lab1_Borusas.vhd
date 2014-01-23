----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:34:53 01/22/2014 
-- Design Name: 
-- Module Name:    Lab1_Borusas - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_Borusas is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
			  
end Lab1_Borusas;

architecture Behavioral of Lab1_Borusas is 

signal A_NOT , B_NOT , C_NOT , H , G , F , E , D : std_logic; 

begin

A_NOT <= not A;
B_NOT <= not B;
C_NOT <= not C;
H <= B_NOT and C;
G <= B and C_NOT;
F <= A and B_NOT and C_NOT;
E <= A_NOT and C;
D <= A_NOT and B;
X <= D or E or F;
Y <= G or H;
Z <= C;

end Behavioral;

