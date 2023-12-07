module PhoenixLedController
#(
  parameter CLOCK_FREQUENCY = 25_000_000,
  parameter PWM_COUNTER_BITS = 32,
  parameter PWM_CYCLE = CLOCK_FREQUENCY * 0.001,
  parameter INITIALIZE_BLINKING_CYCLE    = CLOCK_FREQUENCY * 1.0,
  parameter INITIALIZE_BLINKING_ON_COUNT = CLOCK_FREQUENCY * 0.5
) (
  output reg [PWM_COUNTER_BITS - 1 : 0] pwm_cycle,
  output reg [PWM_COUNTER_BITS - 1 : 0] pwm_duty,
  input wire clk,
  input wire reset
);

reg [PWM_COUNTER_BITS - 1 : 0] counter, cycle;

initial begin
  counter <= 0;
  cycle <= INITIALIZE_BLINKING_CYCLE;
  pwm_cycle <= PWM_CYCLE;
  pwm_duty <= PWM_CYCLE;
end

// wire local_reset = reset & (counter < cycle);

// always @(posedge clk & local_reset) begin
//   counter <= counter + 1;
//   if (counter >= INITIALIZE_BLINKING_CYCLE - INITIALIZE_BLINKING_ON_COUNT) begin
//     pwm_duty <= PWM_CYCLE;
//   end
//   else begin
//     pwm_duty <= 0;
//   end
// end

// always @(negedge local_reset) begin
//   counter <= 0;
//   cycle <= INITIALIZE_BLINKING_CYCLE;
// end

endmodule
