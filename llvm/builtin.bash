prefix='/opt/riscv'
rpath=${prefix}/bin/
#rm -rf test.s
${rpath}riscv32-unknown-elf-gcc -S -std=c99 -fno-section-anchors builtin.c