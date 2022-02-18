#include <iostream>
#include <verilated_vcd_c.h>

#define VL_DEBUG
#include "Vtop.h"
#include "verilated.h"

static vluint64_t main_time = 0;

double
sc_time_stamp()
{
  return main_time;
}

int main (int argc, char **argv) {
  Verilated::commandArgs(argc, argv);
  Vtop *top = new Vtop();

  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace(tfp, 99);
  tfp->open("dump.vcd");

  top->i = 0;
  while (!Verilated::gotFinish() && (main_time < 100)) {
    top->eval();
    tfp->dump(main_time);

    main_time += 1;

    if (!(main_time % 5)) {
      top->i ^=1;
    }

    std::cout << "time: " << main_time
      << " i: " << (top->i?1:0)
      << " o1: " << (top->o1?1:0)
      << " o2: " << (top->o2?1:0)
      << std::endl;
  }
  top->final();
  tfp->close();
  delete top;

  return 0;
}
