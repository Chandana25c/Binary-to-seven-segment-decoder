class environment;

    generator gen;
    driver drv;
    monitor mon;
    scoreboard scb;

    mailbox gen2drv;
    mailbox mon2scb;

    virtual tb_if vif;

    function new(virtual tb_if vif);
        this.vif = vif;

        gen2drv = new();
        mon2scb = new();

        gen = new(gen2drv);
        drv = new(gen2drv, vif);
        mon = new(mon2scb, vif);
        scb = new(mon2scb);
    endfunction

    task run();
        fork
            gen.run();
            drv.run();
            mon.run();
            scb.run();
        join_none
    endtask

endclass