library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;


entity DataMem is   
    port
    (
    data_mem_out  : out std_logic_vector(31 downto 0);
    data_mem_in   : in  std_logic_vector(31 downto 0);
    writeEnable   : in std_logic;
    address       : in std_logic_vector(13 downto 0);
    clk           : in std_logic
    );
end DataMem;

architecture behavioral of DataMem is
type registerFile is array(0 to 16383) of std_logic_vector(31 downto 0);
signal registers : registerFile;
begin


regFile: process(clk)
    begin
	 if rising_edge(clk) then 
data_mem_out <= registers(to_integer(unsigned(address)));
end if;
        if falling_edge(clk) then 
            if(writeEnable = '1') then
                registers(to_integer(unsigned(address))) <= data_mem_in;
            end if;
        end if;
    end process;
end behavioral;