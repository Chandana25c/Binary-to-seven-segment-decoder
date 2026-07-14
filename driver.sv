class driver;
    virtual tb_if vif;
    mailbox gen2drv;
    function new(mailbox gen2drv, virtual tb_if vif);
        this.gen2drv = gen2drv;
        this.vif = vif;
    endfunction
    task run();
        transaction tr;
        forever begin
            gen2drv.get(tr);
            @(posedge vif.clk);
            vif.bin <= tr.bin;
           tr.display("DRIVER");
        end
    endtask
endclass
