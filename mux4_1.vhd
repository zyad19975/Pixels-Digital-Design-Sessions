----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:07:52 07/28/2018 
-- Design Name: 
-- Module Name:    mux4_1 - Behavioral 
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

entity mux4_1 is
    Port ( B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end mux4_1;

architecture Behavioral of mux4_1 is

COMPONENT mux2_1
	PORT(
		A0 : IN std_logic;
		A1 : IN std_logic;
		S : IN std_logic;          
		Z : OUT std_logic
		);
	END COMPONENT;
	
	signal v,w : STD_LOGIC;

begin

M1: mux2_1
PORT MAP(
		A0 => B0,
		A1 => B1,
		S => S0,
		Z => v 
	);
	
M2: mux2_1
PORT MAP(
		A0 => B2,
		A1 => B3,
		S => S0,
		Z => w 
	);
M3: mux2_1
PORT MAP(
		A0 => w,
		A1 => v,
		S => S1,
		Z => Y 
	);

end Behavioral;

