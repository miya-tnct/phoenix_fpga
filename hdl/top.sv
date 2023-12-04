module phoenix_fpga
(
  input	clk_25mhz,
  output [4:0] leds
);

logic reset = 1'b1;

controller controller
(
  .clk_clk(clk_25mhz),
	.reset_reset_n(reset),
  .led0_pio(leds[0]),
	.led1_pio(leds[1]),
	.led2_pio(leds[2]),
	.led3_pio(leds[3]),
	.led4_pio(leds[4])
);

endmodule