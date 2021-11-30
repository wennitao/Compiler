package MIR;

public class label extends entity {
    int labelID ;
    public label (int _labelID) {
        labelID = _labelID ;
    }

    @Override
    public String toString () {
        return "%" + labelID ;
    }
}
