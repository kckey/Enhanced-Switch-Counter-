----------------------------------------------------------------------------------
-- Kaleb Key
-- CPE 3020
-- Lab 3 Lab3 test bench
-- Due 9/24
-- Test bench for binary input application
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;


entity MyChip_TB is
end MyChip_TB;

architecture MyChip_TB_ARCH of MyChip_TB is

--Unit-under-test-------------------------------------------------------------------
component MyChip
    port (
        clk: in std_logic;
        sw:  in std_logic_vector(15 downto 0);
        led: out std_logic_vector(15 downto 0);
        seg: out std_logic_vector(6 downto 0);
        an:  out std_logic_vector(3 downto 0);
        reset: in std_logic

      
        );
end component;



--UUT-signals---------------------------------------------------------------------------
signal clk: std_logic :='0';
signal sw:  std_logic_vector(15 downto 0);
signal led: std_logic_vector(15 downto 0);
signal seg: std_logic_vector(6 downto 0);
signal an:  std_logic_vector(3 downto 0);
signal btnD: std_logic :='1';
signal reset: std_logic;

begin
    --Unit-under-test----------------------------------------------------------
 --UNIT-UNDER_TEST---------------UUT
 UUT: MyChip port map(
 clk => clk,
 sw => sw,
 seg => seg,
 an => an,
 led => led,
 reset => btnD
 );
 
 clk <= not clk after 5ns;
 
 

 
    WAVEFORMS: process
 begin
 
 reset <= '1';
 wait for 20ns;
 
 

     sw(0) <= '0';
        sw(1) <= '0';
        sw(2) <= '0';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '0';
        sw(2) <= '0';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '0';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '0';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
        
        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '0';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '0';
        sw(6) <= '0';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '0';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '0';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;

        sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '0';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
		
		sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '0';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
		
		sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '1';
        sw(10) <= '0';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
		
		sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '1';
        sw(10) <= '1';
        sw(11) <= '0';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
		
		sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '1';
        sw(10) <= '1';
        sw(11) <= '1';
        sw(12) <= '0';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
		
		sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '1';
        sw(10) <= '1';
        sw(11) <= '1';
        sw(12) <= '1';
        sw(13) <= '0';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
		
		sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '1';
        sw(10) <= '1';
        sw(11) <= '1';
        sw(12) <= '1';
        sw(13) <= '1';
        sw(14) <= '0';
        sw(15) <= '0';
        wait for 50 ns;
		
		sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '1';
        sw(10) <= '1';
        sw(11) <= '1';
        sw(12) <= '1';
        sw(13) <= '1';
        sw(14) <= '1';
        sw(15) <= '0';
        wait for 50 ns;
		
			sw(0) <= '1';
        sw(1) <= '1';
        sw(2) <= '1';
        sw(3) <= '1';
        sw(4) <= '1';
        sw(5) <= '1';
        sw(6) <= '1';
        sw(7) <= '1';
		sw(8) <= '1';
        sw(9) <= '1';
        sw(10) <= '1';
        sw(11) <= '1';
        sw(12) <= '1';
        sw(13) <= '1';
        sw(14) <= '1';
        sw(15) <= '1';
        wait;
     end process;


end MyChip_TB_ARCH;
