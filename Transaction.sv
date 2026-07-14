
class transaction;
    rand bit [3:0] bin;
    bit [6:0] seg;
    constraint valid_range {
        bin inside {[0:15]};
    }
    function void display(string tag);
        $display("[%s] bin=%h seg=%b", tag, bin, seg);
    endfunction
endclass