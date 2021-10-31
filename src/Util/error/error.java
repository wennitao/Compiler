package Util.error;

import Util.position;

public abstract class error extends RuntimeException {
    private position pos ;
    private String message ;
    
    public error (String _message, position _pos) {
        pos = _pos ;
        message = _message ;
    }

    public String toString() {
        return message + ": " + pos.toString() ;
    }
}
