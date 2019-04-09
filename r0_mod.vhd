LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY r0_mod IS
PORT(
	r0_in				:	IN std_logic_vector(31 downto 0);
	clr,clk,reg_in	:	IN std_logic;
	r0_out			:	OUT std_logic_vector(31 downto 0)
);
END r0_mod;


ARCHITECTURE behavioural OF r0_mod IS
BEGIN
	Reg32r0_mod: PROCESS(clk,clr)
	BEGIN
		IF (clr = '1') THEN
				r0_out <= b"0000_0000_0000_0000_0000_0000_0000_0000";
		ELSIF rising_edge(clk) THEN
			IF (reg_in = '1') THEN
				r0_out <= r0_in;
			END IF;
		END IF;
	END PROCESS;
END behavioural;