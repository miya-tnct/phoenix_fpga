module PhoenixLedController
#(
  parameter integer CLOCK_FREQUENCY = 25_000_000,
  parameter integer PWM_COUNTER_BITS = 32,
  parameter integer PWM_CYCLE = CLOCK_FREQUENCY * 0.001,
  parameter integer INITIALIZE_BLINKING_CYCLE    = CLOCK_FREQUENCY * 1.0,
  parameter integer INITIALIZE_BLINKING_ON_COUNT = INITIALIZE_BLINKING_CYCLE * 0.5
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
  pwm_duty <= 0;
end

wire local_reset = reset & (counter < cycle);

always @(posedge clk | !reset) begin
  if (!reset) begin
    counter <= 0;
    cycle <= INITIALIZE_BLINKING_CYCLE;
    pwm_cycle <= PWM_CYCLE;
    pwm_duty <= 0;
  end
  else begin
    if (counter < cycle - 1) begin
      counter <= counter + 1;
    end
    else begin
      counter <= 0;
    end

    if (counter >= INITIALIZE_BLINKING_CYCLE - INITIALIZE_BLINKING_ON_COUNT) begin
      pwm_duty <= PWM_CYCLE;
    end
    else begin
      pwm_duty <= 0;
    end
  end
end

endmodule
