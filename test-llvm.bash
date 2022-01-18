# /usr/bin/env /Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/bin/java -XX:+ShowCodeDetailsInExceptionMessages @/var/folders/c_/dfjbftln1bsf6mvs_xn0jjch0000gn/T/cp_3dujel278ptpgsahsriyrht7u.argfile main
# llc llvm-test.ll --march=riscv32 --mattr=+m -o test-ans.s
# ravel --print-instructions --keep-debug-info --input-file=test.in --output-file=test.out riscv-test.s /llvm/builtin.s
# ravel --oj-mode --print-instructions --keep-debug-info
read file_name
/usr/bin/env /Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/bin/java -XX:+ShowCodeDetailsInExceptionMessages @/var/folders/c_/dfjbftln1bsf6mvs_xn0jjch0000gn/T/cp_3dujel278ptpgsahsriyrht7u.argfile main < ./codegen/${file_name}.mx
llc llvm-test.ll --march=riscv32 --mattr=+m -o test-ans.s
# # /usr/bin/env /Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/bin/java -XX:+ShowCodeDetailsInExceptionMessages @/var/folders/c_/dfjbftln1bsf6mvs_xn0jjch0000gn/T/cp_3dujel278ptpgsahsriyrht7u.argfile main
# clang llvm-test.ll ./llvm/builtin.ll -o test
# echo running test
# ./test
# llvm-as llvm-test.ll -o llvm-test.bc
# llvm-link llvm-test.bc ./llvm/builtin.bc -o test.bc
# clang test.bc -o test
# lli test.bc > test.out
# clang -o std ./codegen/${file_name}.c
# ./std > test.ans
# diff test.out test.ans
# llc llvm-test.ll --march=riscv32 --mattr=+m -o test.s
ravel --oj-mode --print-instructions --keep-debug-info