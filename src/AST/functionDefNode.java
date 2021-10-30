package AST;

import Util.position;

public class functionDefNode extends BeginDefNode {
    public functionTypeNode functionType ;
    public String name ;
    public functionParameterDefNode parameters ;
    public suiteNode suite ;
    
    public functionDefNode (position pos, functionTypeNode _functionType, String _name, functionParameterDefNode _parameters, suiteNode _suite) {
        super (pos) ;
        functionType = _functionType ;
        name = _name ;
        parameters = _parameters ;
        suite = _suite ;
    }

    @Override
    public void accept (ASTVisitor visitor) {
        visitor.visit (this) ;
    }
}
