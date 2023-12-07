	component controller is
		port (
			clk_clk       : in  std_logic := 'X'; -- clk
			led0_pio      : out std_logic;        -- pio
			led1_pio      : out std_logic;        -- pio
			led2_pio      : out std_logic;        -- pio
			led3_pio      : out std_logic;        -- pio
			led4_pio      : out std_logic;        -- pio
			reset_reset_n : in  std_logic := 'X'  -- reset_n
		);
	end component controller;

	u0 : component controller
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			led0_pio      => CONNECTED_TO_led0_pio,      --  led0.pio
			led1_pio      => CONNECTED_TO_led1_pio,      --  led1.pio
			led2_pio      => CONNECTED_TO_led2_pio,      --  led2.pio
			led3_pio      => CONNECTED_TO_led3_pio,      --  led3.pio
			led4_pio      => CONNECTED_TO_led4_pio,      --  led4.pio
			reset_reset_n => CONNECTED_TO_reset_reset_n  -- reset.reset_n
		);

