grammar MxLite;

program : (varDefineStmt | functionDef | classDef)*;

builtinType : Int | Bool | String;
varType : builtinType | Identifier | varType '[' ']';
newVarType : builtinType | Identifier | newVarType '[' expression? ']';
functionType : Void | varType;

varDef : varType varDeclaration (',' varDeclaration)*;
varDeclaration : Identifier ('=' expression)?;

functionDef : functionType Identifier '(' functionParameterDef ')' suite;
functionParameterDef : (varType Identifier (',' varType Identifier)* )?;

classDef : Class Identifier '{' classConstructor? (varDefineStmt | functionDef)* '}' ';';
classConstructor : Identifier '(' ')' suite;

suite: '{' statement* '}';

statement
    : suite
    | varDefineStmt
    | If '(' expression ')' trueStmt=statement
        (Else falseStmt=statement)?
    | For '(' (varDef | expression)? ';' expression? ';' expression? ')' statement
    | While '(' expression ')' statement
    | Return expression? ';'
    | (Break | Continue) ';'
    | expression ';'
    | ';'
    ;
varDefineStmt : varDef ';';

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