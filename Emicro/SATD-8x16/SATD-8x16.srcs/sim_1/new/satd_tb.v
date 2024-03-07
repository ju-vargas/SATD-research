`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2024 01:25:08 PM
// Design Name: 
// Module Name: satd_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module satd_tb;

  // Module parameters
  parameter LENGTH = 11;
  parameter WIDTH = 8;
  parameter HEIGHT = 16;

  // Module inputs
  reg clk;
  reg rst;
  reg ena;
  reg [(LENGTH+1)*WIDTH-1:0] ORG;
  reg [(LENGTH+1)*WIDTH-1:0] CUR;

  // DUT (Device Under Test) instance
  SATD #(
    .LENGTH(LENGTH),
    .WIDTH(WIDTH),
    .HEIGHT(HEIGHT)
  ) dut (
    .clk(clk),
    .rst(rst),
    .ena(ena),
    .ORG(ORG),
    .CUR(CUR)
    // (Add output connections here if the module has any)
  );

  // Gerador de clock
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end


  // Stimulus generation
  initial begin
    // Reset activation
    ena <= 1'b1;
    rst <= 1'b1;
    #(20); // Hold reset for 20 clock cycles
    rst <= 1'b0;
    ena <= 1'b1;
    #5
    ORG <= {12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000};
    CUR <= {12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111};

    #5
    ORG <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};
    CUR <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};

    #5
    ORG <= {12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111};
    CUR <= {12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000};

    #5
    ORG <= {12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110};
    CUR <= {12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001};

    #5
    ORG <= {12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111};
    CUR <= {12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000};

    #5
    ORG <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};


    #5
    ORG <= {12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000};
    CUR <= {12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111};

    #5
    ORG <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};

    #5
    ORG <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};
    CUR <= {12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000};

    #5
    ORG <= {12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000};
    CUR <= {12'b101010101010, 12'b111111111111, 12'b101010101010, 12'b111111111111, 12'b101010101010, 12'b111111111111, 12'b101010101010, 12'b111111111111};

    #5
    ORG <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};

    #5
    ORG <= {12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000};
    CUR <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};

    #5
    ORG <= {12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000};
    CUR <= {12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000};

    #5
    ORG <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};
    CUR <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};

    #5
    ORG <= {12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000};
    CUR <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};

    #5
    ORG <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};

    #5
    ORG <= {12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000, 12'b000000000000};
    CUR <= {12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111, 12'b111111111111};

    #5
    ORG <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};
    CUR <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};

    #5
    ORG <= {12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111, 12'b000111000111};
    CUR <= {12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000, 12'b111000111000};

    #5
    ORG <= {12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110, 12'b110110110110};
    CUR <= {12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001, 12'b001001001001};

    #5
    ORG <= {12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111, 12'b111100001111};
    CUR <= {12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000, 12'b000011110000};

    #5
    ORG <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};


    #5
    ORG <= {12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000, 12'b111111111000};
    CUR <= {12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111, 12'b000000000111};

    #5
    ORG <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};

    #5
    ORG <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};
    CUR <= {12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000};

    #5
    ORG <= {12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000};
    CUR <= {12'b101010101010, 12'b111111111111, 12'b101010101010, 12'b111111111111, 12'b101010101010, 12'b111111111111, 12'b101010101010, 12'b111111111111};

    #5
    ORG <= {12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010, 12'b101010101010};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};

    #5
    ORG <= {12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000};
    CUR <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};

    #5
    ORG <= {12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000};
    CUR <= {12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000, 12'b010101010101, 12'b000000000000};

    #5
    ORG <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};
    CUR <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};

    #5
    ORG <= {12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000};
    CUR <= {12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111, 12'b000000000000, 12'b111111111111};

    #5
    ORG <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};
    CUR <= {12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101, 12'b010101010101};

    // Stop simulation after some time
    #(1000);
    $finish;
  end

  // Monitor outputs (if any)
  always @(posedge clk) begin
    // You can add monitoring code here to analyze the module's outputs
    // based on your specific verification goals (if the module has any)
  end

endmodule