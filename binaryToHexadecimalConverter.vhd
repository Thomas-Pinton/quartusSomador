Library IEEE;
use IEEE.std_logic_1164.all;

entity binaryToHexadecimalConverter is
	port (
		A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		D: in std_logic;
		aSegment: out std_logic;
		bSegment: out std_logic;
		cSegment: out std_logic;
		dSegment: out std_logic;
		eSegment: out std_logic;
		fSegment: out std_logic;
		gSegment: out std_logic

	);
	end binaryToHexadecimalConverter;
	
architecture converterArch of binaryToHexadecimalConverter is
	begin 
		aSegment <= (NOT B AND NOT D) OR
			(A AND NOT C AND NOT D) OR
			(A AND NOT B AND NOT C) OR
			(NOT A AND B AND (C OR D)) OR
			(NOT A AND NOT B AND C) OR
			(A AND B AND C) OR
			(C AND NOT D);
		
		bSegment <= ((NOT A) AND ( ((NOT C) AND (NOT D)) OR (C AND D))) OR
			(A AND NOT B AND NOT C) OR
			(A AND NOT C AND D) OR
			(NOT A AND NOT B) OR
			(NOT B AND NOT D);
	end converterArch;