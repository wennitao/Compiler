# read file_name
# /usr/bin/env /Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/bin/java -XX:+ShowCodeDetailsInExceptionMessages @/var/folders/c_/dfjbftln1bsf6mvs_xn0jjch0000gn/T/cp_3dujel278ptpgsahsriyrht7u.argfile main < ./codegen/${file_name}.mx
/usr/bin/env /Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home/bin/java -XX:+ShowCodeDetailsInExceptionMessages @/var/folders/c_/dfjbftln1bsf6mvs_xn0jjch0000gn/T/cp_3dujel278ptpgsahsriyrht7u.argfile main
llvm-as llvm-test.ll -o llvm-test.bc
llvm-link llvm-test.bc ./llvm/builtin.bc -o test.bc
clang test.bc -o test
# lli test.bc > test.out
# clang -o std ./codegen/${file_name}.c
# ./std > test.ans
# diff test.out test.ans