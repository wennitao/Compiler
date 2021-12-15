package MIR;

public class label {
    public String labelID ;
    public label (String _labelID) {
        labelID = _labelID ;
    }

    @Override
    public String toString () {
        return "%" + labelID ;
    }
}
