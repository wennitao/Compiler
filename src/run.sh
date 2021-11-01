source ~/.bash_profile
antlr4 Parser/MxLite.g4 -visitor -package Parser
javac Parser/*.java
javac AST/*.java
javac Util/*.java
javac Frontend/*.java
javac main.java
java main