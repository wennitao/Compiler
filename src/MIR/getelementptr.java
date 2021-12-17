package MIR;

public class getelementptr extends statement {
    public register from, to ;
    public constant value ;
    public getelementptr (register _from, constant _value, register _to) {
        from = _from; to = _to; value = _value ;
    }
    @Override
    public String toString() {
        return to + " = getelementptr inbounds " + to.type + ", " + from.type + " " + from + ", " + value.type + " " + value ;
    }
}
