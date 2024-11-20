
`timescale 1ns / 1ps

module tb_shift_reg;

    // Declare signals to connect to the shift_reg module
    logic clk;
    logic reset_n;
    logic en;
    logic in;
    logic [7:0] q;

    // Instantiate the shift_reg module
    shift_reg uut (
        .clk(clk),
        .reset_n(reset_n),
        .en(en),
        .in(in),
        .q(q)
    );

    // Generate clock signal
    always begin
        #5 clk = ~clk;  // Toggle clock every 5 ns (clock period = 10ns)
    end

    // Stimulus process
    initial begin
        // Initialize signals
        clk = 0;
        reset_n = 1;
        en = 1;
        in = 0;
        
        // Apply reset
        $display("Applying reset");
        #10;
        reset_n = 1;  // Release reset after 10 ns
        
        // Test case 1: Shift operation with enable
        $display("Testing shift operation with enable");
        en = 1;
        in = 1;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        #10;
        in = 0;
        #10;
        in = 1;
        #10;
        in = 0;
        #10;
        
        
        



$finish;
        // End the simulation
        
    end

    // Monitor changes to the output
    initial begin
        $monitor("At time %t, q = %b", $time, q);
    end

endmodule
