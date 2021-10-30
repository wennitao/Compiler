grammar MxLite;

program : (globalVarDefStmt | functionDef | classDef)*;

builtinType : Int | Bool | String;
varType : builtinType | Identifier | varType '[' ']';
newVarType : builtinType | Identifier | newVarType '[' expression? ']';
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
    : expression op = ('+' | '-') expression
    | expression op = ('*' | '/' | '%') expression
    | expression op = ('<' | '<=' | '>' | '>=') expression
    | expression op = ('==' | '!=') expression
    | expression op = ('<<' | '>>') expression
    | expression op = '&' expression
    | expression op = '^' expression
    | expression op = '|' expression
    | expression op = '&&' expression
    | expression op = '||' expression
    | <assoc=right> ('+' | '-') expression
    | <assoc=right> '~' expression
    | <assoc=right> '!' expression
    | <assoc=right> expression '=' expression
    | <assoc=right> (SelfPlus | SelfMinus) expression
    | <assoc=right> New newVarType
    | expression (SelfPlus | SelfMinus)
    | expression Dot expression
    | expression '[' expression ']'
    | expression '(' expressionList? ')'
    | primary
    | lambdaStmt
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