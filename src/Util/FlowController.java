package Util;

import Util.error.semanticError;

public class FlowController {
    private int loopCount ;
    public Type returnType ;
    public boolean isReturned ;
    public String functionName ;

    public FlowController (String _functionName) {
        functionName = _functionName ;
        isReturned = false ;
        loopCount = 0 ;
    }

    public void inLoop () {
        loopCount ++ ;
    }

    public void outLoop () {
        loopCount -- ;
    }

    public void breakLoop (position pos) {
        if (loopCount <= 0)
            throw new semanticError("no loop to break", pos) ;
    }

    public void continueLoop (position pos) {
        if (loopCount <= 0)
            throw new semanticError("no loop to continue", pos) ;
    }
}
