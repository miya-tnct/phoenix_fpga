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

assign pwm = 1;// (counter >= cycle - duty);

wire enable;

assign enable = (reset && counter < cycle);

initial begin
  counter <= 1'b0;
end

always @(posedge clk) begin
  if (enable) begin
    counter <= counter + 1'b1;
  end
end

always @(negedge enable) begin
  counter <= 1'b0;
end

endmodule