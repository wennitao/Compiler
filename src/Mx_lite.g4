grammar Mx_lite;

program : (declarationStmt | functionDef)*;

functionDef : returnType Identifier '(' functionParameterDef ')' suite;

functionParameterDef : (varType Identifier (',' varType Identifier)* )?;

expressionList : expression (',' expression)*;

suite : '{' statement* '}';

statement
    : suite
    | declarationStmt
    | If '(' expression ')' trueStmt=statement
        (Else falseStmt=statement)?
    | Return expression? ';'
    | expression ';'
    | ';'
    ;

declarationStmt : varDef ';';

expression
    : primary
    | expression '[' expression ']'
    | expression '(' expressionList? ')'
    | expression op = ('*' | '/' | '%') expression
    | expression op = ('+' | '-') expression
    | expression op = ('<<' | '>>') expression
    | expression op = ('<' | '<=' | '>' | '>=') expression
    | expression op = ('==' | '!=') expression
    | expression op = '&' expression
    | expression op = '^' expression
    | expression op = '|' expression
    | expression op = '&&' expression
    | expression op = '||' expression
    | <assoc=right> expression '=' expression
    ;

varDef : varType varDeclaration (',' varDeclaration)*;

varDeclaration : Identifier ('=' expression)?;

returnType: Void | varType;
varType : (builtinType | Identifier);
builtinType : Int | Bool;

primary
    : '(' expression ')'
    | Identifier
    | literal
    | functionCall
    | string
    ;

literal
    : DecimalInteger
    | True
    | False
    ;

Int : 'int';
Bool : 'bool';
Void : 'void';
True : 'true';
False : 'false';
If : 'if';
Else : 'else';
Return : 'return';

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

BackSlash : '\\\\';
DbQuotation : '\\"';

Identifier
    : [a-zA-Z] [a-zA-Z_0-9]* 
    ;

DecimalInteger
    : [1-9] [0-9]* 
    | '0'
    ;

Whitespace
    :   [ \t]+ 
        -> skip
    ;

Newline
    :   (   '\r' '\n'?
        |   '\n'
        )
        -> skip
    ;

BlockComment
    :   '/*' .*? '*/' 
        -> skip
    ;

LineComment
    :   '//' ~[\r\n]* 
        -> skip
    ;

builtinFunctionName
    : builtin_print
    | builtin_println
    | builtin_printInt
    | builtin_printlnInt
    | builtin_getString
    | builtin_getInt
    | builtin_toString
    ;

builtin_print : 'print';
builtin_println : 'println';
builtin_printInt : 'printInt';
builtin_printlnInt : 'printlnInt';
builtin_getString : 'getString';
builtin_getInt : 'getInt';
builtin_toString : 'toString';

functionParameter : expression;

functionCall : (builtinFunctionName | Identifier) '(' (expression (',' expression)* )? ')';

anyString : .*?;

string : '"' anyString '"';