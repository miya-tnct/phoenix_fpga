module PwmDriver
#(
  parameter COUNTER_BITS = 32
) (
  output wire pwm,
  input wire clk,
  input wire reset,
  input reg [COUNTER_BITS - 1 : 0] cycle,
  input reg [COUNTER_BITS - 1 : 0] duty
);

reg [COUNTER_BITS - 1 : 0] counter;

assign pwm = (counter >= cycle - duty) & reset;

initial begin
  counter <= 1'b0;
end

always @(posedge clk | !reset) begin
  if (reset & counter < cycle - 1) begin
    counter <= counter + 1'b1;
  end
  else begin
    counter <= 0;
  end
end

endmodule