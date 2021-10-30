grammar MxLite;

beginDef : (globalVarDefStmt | functionDef | classDef) ;
program : beginDef*;

builtinType : Int | Bool | String;
varType : builtinType | Identifier | varType '[' ']';
newVar : (builtinType | Identifier) (newSize*) ;
newSize : '[' expression? ']' ;
functionType : Void | varType;

varDef : varType varDeclaration (',' varDeclaration)*;
varDeclaration : Identifier ('=' expression)?;

functionDef : functionType Identifier '(' functionParameterDef ')' suite;
functionParameterDef : (parameter (',' parameter)* )?;
parameter : varType Identifier ;

classDef : Class Identifier '{' classConstructor? (varDefStmt | functionDef)* '}' ';';
classConstructor : Identifier '(' ')' suite;

suite: '{' statement* '}';

forInit : varDef | expression;
forCondition : expression;
forIncr : expression;

ifStmt : If '(' expression ')' trueStmt=statement (Else falseStmt=statement)? ;
forStmt : For '(' forInit? ';' forIncr? ';' forIncr? ')' statement ;
whileStmt : While '(' expression ')' statement;
loopStmt : forStmt | whileStmt ;
breakStmt : Break ';';
continueStmt : Continue ';';
returnStmt : Return expression? ';';
controlStmt : breakStmt | continueStmt | returnStmt ;

statement
    : suite
    | varDefStmt
    | ifStmt
    | loopStmt
    | controlStmt
    | expression ';'
    | ';'
    ;

globalVarDefStmt : varDef ';';
varDefStmt : varDef ';';

lambdaStmt : '[&]' '(' functionParameterDef ')' '->' suite '(' expressionList? ')'; 

expressionList : expression (',' expression)*;
expression
    : expression op = (Plus | Minus) expression                                 #binaryExpr
    | expression op = (Mul | Div | Mod) expression                              #binaryExpr
    | expression op = (Less | LessEqual | Greater | GreaterEqual) expression    #binaryExpr
    | expression op = (Equal | NotEqual) expression                             #binaryExpr
    | expression op = (LeftShift | RightShift) expression                       #binaryExpr
    | expression op = And expression                                            #binaryExpr
    | expression op = Caret expression                                          #binaryExpr
    | expression op = Or expression                                             #binaryExpr
    | expression op = AndAnd expression                                         #binaryExpr
    | expression op = OrOr expression                                           #binaryExpr
    | <assoc=right> (Plus | Minus) expression                                   #unaryExpr
    | <assoc=right> Tilde expression                                            #unaryExpr
    | <assoc=right> Not expression                                              #unaryExpr
    | <assoc=right> expression Assign expression                                #binaryExpr
    | <assoc=right> (SelfPlus | SelfMinus) expression                           #preIncExpr
    | <assoc=right> New newVar                                                  #newExpr
    | expression (SelfPlus | SelfMinus)                                         #postIncExpr
    | expression Dot expression                                                 #binaryExpr
    | expression '[' expression ']'                                             #arrayExpr
    | expression '(' expressionList? ')'                                        #functionCallExpr
    | primary                                                                   #atomExpr
    | lambdaStmt                                                                #lambdaExpr
    ;

primary
    : '(' expression ')'
    | Identifier
    | literal
    | This
    | Null
    ;

literal
    : DecimalInteger
    | StringObject
    | True
    | False
    ;

Int : 'int';
Bool : 'bool';
String : 'string';
Null : 'null';
Void : 'void';
True : 'true';
False : 'false';
If : 'if';
Else : 'else';
For : 'for';
While : 'while';
Break : 'break';
Continue : 'continue';
Return : 'return';
New : 'new';
Class : 'class';
This : 'this';

Dot : '.';
LeftParen : '(';
RightParen : ')'; 
LeftBracket : '['; 
RightBracket : ']'; 
LeftBrace : '{'; 
RightBrace : '}';

Less : '<';
LessEqual : '<=';
Greater : '>';
GreaterEqual : '>=';

LeftShift : '<<';
RightShift : '>>';

Plus : '+'; 
SelfPlus : '++'; 
Minus : '-'; 
SelfMinus : '--';

Mul : '*';
Div : '/';
Mod : '%';

And : '&';
Or : '|';
AndAnd : '&&';
OrOr : '||'; 
Caret : '^'; 
Not : '!'; 
Tilde : '~';

Question : '?';
Colon : ':';
Semi : ';';
Comma : ',';

Assign : '=';
Equal : '==';
NotEqual : '!=';

fragment EscapeCharacter : [\n\\] | '\\"';
fragment PrintableCharacter : ~[\\\r\n\f"];

DecimalInteger 
    : [1-9] [0-9]*
    | '0'
    ;

StringObject : '"' (' ' | PrintableCharacter | EscapeCharacter)* '"';

Identifier
    : [a-zA-Z] [a-zA-Z_0-9]* 
    ;

Whitespace : [ \t]+ -> skip;

Newline : ('\r' '\n'? | '\n') -> skip;

BlockComment : '/*' .*? '*/' -> skip;

LineComment : '//' ~[\r\n]* -> skip;