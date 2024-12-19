module pipe_MIPS32_tb;
    reg clk1, clk2;
    integer i;

    // Instantiate the processor module
    pipe_MIPS32 processor(clk1, clk2);

    initial begin
        // Initialize the clock signals
        clk1 = 0;
        clk2 = 0;

        // Generate clock signals
        forever begin
            #5 clk1 = ~clk1; // Toggle clk1 every 5 time units
            #5 clk2 = ~clk2; // Toggle clk2 every 5 time units
        end
    end

    initial begin
        // Initialize registers and memory
        for (i = 0; i < 32; i = i + 1) begin
            processor.Reg[i] = 0;
        end

        for (i = 0; i < 1024; i = i + 1) begin
            processor.Mem[i] = 0;
        end

        // Load instructions into memory
        // Assembly equivalent:
        // addi R1, R0, 10       # R1 = 10
        // addi R2, R0, 20       # R2 = 20
        // addi R3, R0, 30       # R3 = 30
        // add R4, R1, R2        # R4 = R1 + R2
        // add R5, R4, R3        # R5 = R4 + R3
        // hlt                  # Halt execution

        processor.Mem[0] = 32'h2801000a; // addi R1, R0, 10
        processor.Mem[1] = 32'h28020014; // addi R2, R0, 20
        processor.Mem[2] = 32'h2803001e; // addi R3, R0, 30
        processor.Mem[3] = 32'h0ce77800; // NOP (dummy)
        processor.Mem[4] = 32'h00222000; // add R4, R1, R2
        processor.Mem[5] = 32'h0ce77800; // NOP (dummy)
        processor.Mem[6] = 32'h00832800; // add R5, R4, R3
        processor.Mem[7] = 32'hfc000000; // hlt

        // Initialize PC and flags
        processor.PC = 0;
        processor.HALTED = 0;
        processor.TAKEN_BRANCH = 0;

        // Start simulation
        #2000;  // Allow time for all instructions to complete

        // Check register values
        for (i = 1; i <= 5; i = i + 1) begin
            $display("R%d = %d", i, processor.Reg[i]);
        end

        // End simulation
        $finish;
    end
endmodule
