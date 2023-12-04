module pwm_source
#(
  parameter int BIT_SIZE = 16
) (
  input [BIT_SIZE - 1:0] pwm_in,
  output [BIT_SIZE - 1:0] pwm_out
);

assign pwm_out[BIT_SIZE - 1:0] = pwm_in[BIT_SIZE - 1:0];

endmodule