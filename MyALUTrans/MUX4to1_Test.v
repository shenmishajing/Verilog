// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

  module MUX4to1_Test;
          reg I0, I1, I2, I3;
          reg [1:0] s;
          wire o;
			 
			 
          MUX4to1 MUX4to10 (
                  .I0(I0),
						.I1(I1),
						.I2(I2),
						.I3(I3),
						.s(s),
						.o(o)
          );


  // Initialize Inputs
      `define auto_init

      `ifdef auto_init

			integer i, j;
          initial begin
					for (i = 0;i < 4;i = i + 1) begin
						s = i;
						{I3, I2, I1, I0} = 0;
						for (j = 0; j < 4; j = j + 1) begin
							{I3, I2, I1, I0} = 1 << j;
							#50;
						end
					end
          end

      `endif
  endmodule
