## Mx Compiler

A Compiler from Mx* language (C++ like) to RV32I Assembly, with static optimizations on LLVM IR, implemented in Java.

Mx* Syntax is introduced in the [course project](https://github.com/ACMClassCourses/Compiler-Design-Implementation).

### Features

1. Use Antlr library for front-end parser and lexer. Middle-end LLVM IR generation, back-end RV32I assembly codegen, static optimizations are all handwritten.

2. Static optimizations include Static Single-Assignment Form (SSA), Sparse Conditional Const Propagation (SCCP), Aggressive Dead Code Elimination (ADCE) and loop inline, following *Modern Compiler Implenentation in C*. 

3. A naive JIT interpreter. 

### Design

```mermaid
graph TD
A[src: .mx file]
B[ParseTree]
C[AST]
D[IR]
E[Optimized IR]
F[Naive Assembly]
G[Assembly]
H[Scope]
I[.ll file]
J[.ll file]
K[.s file]
L[Raise Semantic Error]
A ==FrontEnd:Antlr v4==> B
B ==FrontEnd:ASTBuilder==>C
C ==BackEnd:IRBuilder==>D
D ==Optimize==>E
E ==BackEnd:AssemblyBuilder==>F
F ==BackEnd:RegisterAllocation==>G
C ==FrontEnd:SymbolCollector==>H
H ==FrontEnd:SemanticChecker==>L
D ==MiddleEnd:IRPrinter==>I
E ==MiddleEnd:IRPrinter==>J
G ==BackEnd:AssemblyPrinter==>K

```