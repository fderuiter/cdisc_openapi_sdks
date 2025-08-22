@isTest
private class OASQrsItemRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsItemRefElement qrsItemRefElement1 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement2 = qrsItemRefElement1;
        OASQrsItemRefElement qrsItemRefElement3 = new OASQrsItemRefElement();
        OASQrsItemRefElement qrsItemRefElement4 = qrsItemRefElement3;

        System.assert(qrsItemRefElement1.equals(qrsItemRefElement2));
        System.assert(qrsItemRefElement2.equals(qrsItemRefElement1));
        System.assert(qrsItemRefElement1.equals(qrsItemRefElement1));
        System.assert(qrsItemRefElement3.equals(qrsItemRefElement4));
        System.assert(qrsItemRefElement4.equals(qrsItemRefElement3));
        System.assert(qrsItemRefElement3.equals(qrsItemRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsItemRefElement qrsItemRefElement1 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement2 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement3 = new OASQrsItemRefElement();
        OASQrsItemRefElement qrsItemRefElement4 = new OASQrsItemRefElement();

        System.assert(qrsItemRefElement1.equals(qrsItemRefElement2));
        System.assert(qrsItemRefElement2.equals(qrsItemRefElement1));
        System.assert(qrsItemRefElement3.equals(qrsItemRefElement4));
        System.assert(qrsItemRefElement4.equals(qrsItemRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsItemRefElement qrsItemRefElement1 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement2 = new OASQrsItemRefElement();

        System.assertEquals(false, qrsItemRefElement1.equals('foo'));
        System.assertEquals(false, qrsItemRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsItemRefElement qrsItemRefElement1 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement2 = new OASQrsItemRefElement();
        OASQrsItemRefElement qrsItemRefElement3;

        System.assertEquals(false, qrsItemRefElement1.equals(qrsItemRefElement3));
        System.assertEquals(false, qrsItemRefElement2.equals(qrsItemRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsItemRefElement qrsItemRefElement1 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement2 = new OASQrsItemRefElement();

        System.assertEquals(qrsItemRefElement1.hashCode(), qrsItemRefElement1.hashCode());
        System.assertEquals(qrsItemRefElement2.hashCode(), qrsItemRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsItemRefElement qrsItemRefElement1 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement2 = OASQrsItemRefElement.getExample();
        OASQrsItemRefElement qrsItemRefElement3 = new OASQrsItemRefElement();
        OASQrsItemRefElement qrsItemRefElement4 = new OASQrsItemRefElement();

        System.assert(qrsItemRefElement1.equals(qrsItemRefElement2));
        System.assert(qrsItemRefElement3.equals(qrsItemRefElement4));
        System.assertEquals(qrsItemRefElement1.hashCode(), qrsItemRefElement2.hashCode());
        System.assertEquals(qrsItemRefElement3.hashCode(), qrsItemRefElement4.hashCode());
    }
}
