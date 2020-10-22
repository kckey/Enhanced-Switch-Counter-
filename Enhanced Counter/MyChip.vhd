library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--******************************************************************************
-- Designer: Kaleb Key
-- Description: This application is an extension of switch counter where switches were used to light 
-- the LEDs and the seven segment display. This is a combination of code from switch counter
-- and Mychip code. It is the top layer of the application
-- with the SevenSegmentDriver being the bottom layer. 
--******************************************************************************


entity MyChip is
    port(
        clk: in std_logic;
        sw: in std_logic_vector(15 downto 0);
        
        led: out std_logic_vector(15 downto 0); --leds
         
        seg: out std_logic_vector(6 downto 0);
        an:  out std_logic_vector(3 downto 0);
        
        btnD: in std_logic :='1';
        
        reset: in std_logic

   
    );
end MyChip;



architecture MyChip_ARCH of MyChip is
 ----general definitions----------------------------------------------CONSTANTS
constant ACTIVE: std_logic := '1';
constant NOT_ACTIVE: std_logic := '0';
constant ONDisplay: std_logic_vector(3 downto 0) := "0001";

--LED lights in order-----------------------------------------CONSTANTS
constant LED_0:  std_logic_vector(15 downto 0):= "0000000000000000";
constant LED_1:  std_logic_vector(15 downto 0):= "0000000000000001";
constant LED_2:  std_logic_vector(15 downto 0):= "0000000000000011";
constant LED_3:  std_logic_vector(15 downto 0):= "0000000000000111";
constant LED_4:  std_logic_vector(15 downto 0):= "0000000000001111";
constant LED_5:  std_logic_vector(15 downto 0):= "0000000000011111";
constant LED_6:  std_logic_vector(15 downto 0):= "0000000000111111";
constant LED_7:  std_logic_vector(15 downto 0):= "0000000001111111";
constant LED_8:  std_logic_vector(15 downto 0):= "0000000011111111";
constant LED_9:  std_logic_vector(15 downto 0):= "0000000111111111";
constant LED_10: std_logic_vector(15 downto 0):= "0000001111111111";
constant LED_11: std_logic_vector(15 downto 0):= "0000011111111111";
constant LED_12: std_logic_vector(15 downto 0):= "0000111111111111";
constant LED_13: std_logic_vector(15 downto 0):= "0001111111111111";
constant LED_14: std_logic_vector(15 downto 0):= "0011111111111111";
constant LED_15: std_logic_vector(15 downto 0):= "0111111111111111";
constant LED_16: std_logic_vector(15 downto 0):= "1111111111111111";

--states for LEDS Activity------------------------------------CONSTANTS
constant LED_ON:  std_logic := '1';
constant LED_OFF: std_logic := '0';

 ----normal seven segment display-------------------------------------CONSTANTS
constant ZERO_7SEG: std_logic_vector(3 downto 0)  := "0000";
constant ONE_7SEG: std_logic_vector(3 downto 0)   := "0001";
constant TWO_7SEG: std_logic_vector(3 downto 0)   := "0010";
constant THREE_7SEG: std_logic_vector(3 downto 0) := "0011";
constant FOUR_7SEG: std_logic_vector(3 downto 0)  := "0100";
constant FIVE_7SEG: std_logic_vector(3 downto 0)  := "0101";
constant SIX_7SEG: std_logic_vector(3 downto 0)   := "0110";
constant SEVEN_7SEG: std_logic_vector(3 downto 0) := "0111";
constant EIGHT_7SEG: std_logic_vector(3 downto 0) := "1000";
constant NINE_7SEG: std_logic_vector(3 downto 0)  := "1001";
 
    --internal connections------------------------------------SIGNALS
signal digit1_blank: std_logic;
signal digit0_value: std_logic_vector(3 downto 0);



    component SevenSegmentDriver
        port (
            reset: in std_logic;
            clock: in std_logic;
        
--          digit3: in std_logic_vector(3 downto 0);  --leftmost digit
--          digit2: in std_logic_vector(3 downto 0);  --2nd from left digit
            digit1: in std_logic_vector(3 downto 0);  --3rd from left digit
            digit0: in std_logic_vector(3 downto 0);  --rightmost digit
        
            blank3: in std_logic;    --leftmost digit
            blank2: in std_logic;    --2nd from left digit
            blank1: in std_logic;    --3rd from left digit
            blank0: in std_logic;    --rightmost digit
        
            sevenSegs: out std_logic_vector(6 downto 0);  --MSB=a, LSB=g
            anodes:    out std_logic_vector(3 downto 0)   --MSB=leftmost digit
        );
    end component;

begin
    MY_SEGMENTS: SevenSegmentDriver port map (
        reset  => btnD,
        clock  => clk,
--        digit3 => sw(15 downto 12),
--        digit2 => sw(11 downto 8),
        digit1 => ONDisplay,
        digit0 => digit0_value,
        blank3 => ACTIVE,
        blank2 => ACTIVE,
        blank1 => digit1_blank,
        blank0 => NOT_ACTIVE,
        sevenSegs => seg,
        anodes    => an
    );
    
    --Bar display is updated when a switch is pressed--------------PROCESS
BAR_DISPLAY: process(sw)
	variable count: integer RANGE 0 TO 16:=0;
begin
--count is the number of time a switch is activated-------------------
	count := 0;
	if (sw(0) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(1) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(2) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(3) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(4) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(5) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(6) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(7) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(8) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(9) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(10) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(11) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(12) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(13) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(14) = ACTIVE) then
		count := count + 1;
	end if;
	if (sw(15) = ACTIVE) then
		count := count + 1;
	end if;
	
	case (count) is --activates the LEDs and selects which number is shown
	when 0 =>
		led <= led_0;
		digit1_blank <= ACTIVE;
        digit0_value <= ZERO_7SEG;
				
	when 1 =>
		led <= LED_1;
		digit1_blank <= ACTIVE;
        digit0_value <= ONE_7SEG;
				
	when 2 =>
		led <= LED_2;
		digit1_blank <= ACTIVE;
        digit0_value <= TWO_7SEG;
		
			
	when 3 =>
		led <= LED_3;
		digit1_blank <= ACTIVE;
        digit0_value <= THREE_7SEG;
		
			
	when 4 =>
		led <= LED_4;
		digit1_blank <= ACTIVE;
        digit0_value <= FOUR_7SEG;
			
	when 5 =>
		led <= LED_5;
		digit1_blank <= ACTIVE;
         digit0_value <= FIVE_7SEG;
		
	when 6 =>
		led <= LED_6;
		digit1_blank <= ACTIVE;
         digit0_value <= SIX_7SEG;
		
	when 7 =>
		led <= LED_7;
		digit1_blank <= ACTIVE;
        digit0_value <= SEVEN_7SEG;
		
	when 8 =>
		led <= LED_8;
		digit1_blank <= ACTIVE;
        digit0_value <= EIGHT_7SEG;
		
	when 9 =>
		led <= LED_9;
		digit1_blank <= ACTIVE;
        digit0_value <= NINE_7SEG;
		
	when 10 =>
		led <= LED_10;
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= ZERO_7SEG;
		
	when 11 =>
		led <= LED_11;
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= ONE_7SEG;
	
	when 12 =>
		led <= LED_12;
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= TWO_7SEG;
		
	when 13 =>
		led <= LED_13;
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= THREE_7SEG;
	
	when 14 =>
		led <= LED_14;
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= FOUR_7SEG;
	
	when 15 =>
		led <= LED_15;	
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= FIVE_7SEG;
		
		when 16 =>
		led <= LED_16;
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= SIX_7SEG;
		
		when others => -- covers all other eventualities
		digit1_blank <= NOT_ACTIVE;
        digit0_value <= SIX_7SEG;
		end case;
		end process;
    

end MyChip_ARCH;


