Code:
\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   |calc
      @0
         $reset = *reset;
      @1
         $val1[31:0]  =  >>1$out;
      // $val1[31:0]  = $rand1[3:0];
         $val2[31:0]  = $rand2[3:0];
         $sum[31:0]   = $val1 + $val2;
         $sub[31:0]   = $val1 - $val2;
         $mul[31:0]   = $val1 * $val2;
         $quotient[31:0] = $val1 / $val2;
         $out[31:0]  = $reset? 0 :  ($op[1]? ($op[0]? ($sum) : ($sub)): ($op[0]? ($mul) : ($quotient))); 
         $op[1:0]    = $reset? 0 :(>>1$op+1);      
      // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
	
