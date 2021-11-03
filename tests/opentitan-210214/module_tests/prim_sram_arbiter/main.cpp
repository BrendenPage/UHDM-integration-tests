#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vprim_sram_arbiter.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vprim_sram_arbiter *top = new Vprim_sram_arbiter();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->clk_i = 1;
  top->rst_ni = 0;

  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;
    top->clk_i ^= 1;

    if (main_time > 10) {
      top->rst_ni = 1;
    }

    if (main_time > 20) {
      top->req_wdata_i[0] = 3;
      top->req_i = 1;
    }

    if (main_time > 50) {
      top->req_write_i[0] = 1;
    }

    if (main_time > 70) {
      top->req_write_i[0] = 0;
    }

    if (main_time > 80) {
      top->req_wdata_i[3] = 5;
      top->req_i = 8;
    }

    if (main_time > 90) {
      top->req_write_i[3] = 1;
    }
  }
  top->final();
  tfp->close();
    delete top;

  return 0;
}
