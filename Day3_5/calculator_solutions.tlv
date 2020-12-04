\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   m4_include_lib(['https://raw.githubusercontent.com/stevehoover/RISC-V_MYTH_Workshop/bd1f186fde018ff9e3fd80597b7397a1c862cf15/tlv_lib/calculator_shell_lib.tlv'])

\SV   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
   //m4+cal_viz(@3)
\TLV
   |calc
      @0
         $reset = *reset;
      @1
         $val2[31:0]  = $rand2[3:0];
        // $op[1:0]     = $rand1[1:0];
         $valid = ($reset)? 0 :  (>>1$valid+1);
         
         $val1[31:0]  =  >>2$out;            
                   
                  // $val1[31:0]  = $rand1[3:0];
         $sum[31:0]   = $val1 + $val2;
         $sub[31:0]   = $val1 - $val2;
         $mul[31:0]   = $val1 * $val2;
         $quotient[31:0] = $val1 / $val2;
            
      @2
         $valid_reset = ($reset || (!($valid)));   
         $mem[31:0]   = ($reset)?  0 : (($op[2:0] == 3'b101)?  $val1 : >>2$mem) ;
         $out[31:0]   =  ($reset)? 32'b0 :
                         ($op[2:0] == 3'b000)? $quotient :
                         ($op[2:0] == 3'b001)? $mul :
                         ($op[2:0] == 3'b010)? $sub :
                         ($op[2:0] == 3'b011)? $sum :
                         ($op[2:0] == 3'b100)? >>2$mem : >>2$out ;  

   m4+cal_viz(@2) // Arg: Pipeline stage represented by viz, should be atleast equal to last stage of CALCULATOR logic.           
      // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule


