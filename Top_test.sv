module tb_top;
   tb_if vif();
    bin_to_7seg_decoder dut(
        .clk(vif.clk),
        .rst(vif.rst),
        .bin(vif.bin),
        .seg(vif.seg)
    );
    environment env;
    always #5 vif.clk = ~vif.clk;
    initial begin
        vif.clk = 0;
        vif.rst = 1;
        #10;
        vif.rst = 0;
env = new(vif);
        env.run();
        #300 $finish;
    end
endmodule