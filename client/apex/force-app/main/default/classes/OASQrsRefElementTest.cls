@isTest
private class OASQrsRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsRefElement qrsRefElement1 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement2 = qrsRefElement1;
        OASQrsRefElement qrsRefElement3 = new OASQrsRefElement();
        OASQrsRefElement qrsRefElement4 = qrsRefElement3;

        System.assert(qrsRefElement1.equals(qrsRefElement2));
        System.assert(qrsRefElement2.equals(qrsRefElement1));
        System.assert(qrsRefElement1.equals(qrsRefElement1));
        System.assert(qrsRefElement3.equals(qrsRefElement4));
        System.assert(qrsRefElement4.equals(qrsRefElement3));
        System.assert(qrsRefElement3.equals(qrsRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsRefElement qrsRefElement1 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement2 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement3 = new OASQrsRefElement();
        OASQrsRefElement qrsRefElement4 = new OASQrsRefElement();

        System.assert(qrsRefElement1.equals(qrsRefElement2));
        System.assert(qrsRefElement2.equals(qrsRefElement1));
        System.assert(qrsRefElement3.equals(qrsRefElement4));
        System.assert(qrsRefElement4.equals(qrsRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsRefElement qrsRefElement1 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement2 = new OASQrsRefElement();

        System.assertEquals(false, qrsRefElement1.equals('foo'));
        System.assertEquals(false, qrsRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsRefElement qrsRefElement1 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement2 = new OASQrsRefElement();
        OASQrsRefElement qrsRefElement3;

        System.assertEquals(false, qrsRefElement1.equals(qrsRefElement3));
        System.assertEquals(false, qrsRefElement2.equals(qrsRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsRefElement qrsRefElement1 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement2 = new OASQrsRefElement();

        System.assertEquals(qrsRefElement1.hashCode(), qrsRefElement1.hashCode());
        System.assertEquals(qrsRefElement2.hashCode(), qrsRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsRefElement qrsRefElement1 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement2 = OASQrsRefElement.getExample();
        OASQrsRefElement qrsRefElement3 = new OASQrsRefElement();
        OASQrsRefElement qrsRefElement4 = new OASQrsRefElement();

        System.assert(qrsRefElement1.equals(qrsRefElement2));
        System.assert(qrsRefElement3.equals(qrsRefElement4));
        System.assertEquals(qrsRefElement1.hashCode(), qrsRefElement2.hashCode());
        System.assertEquals(qrsRefElement3.hashCode(), qrsRefElement4.hashCode());
    }
}
