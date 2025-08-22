@isTest
private class OASQrsResponsegroupRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement1 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement2 = qrsResponsegroupRefElement1;
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement3 = new OASQrsResponsegroupRefElement();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement4 = qrsResponsegroupRefElement3;

        System.assert(qrsResponsegroupRefElement1.equals(qrsResponsegroupRefElement2));
        System.assert(qrsResponsegroupRefElement2.equals(qrsResponsegroupRefElement1));
        System.assert(qrsResponsegroupRefElement1.equals(qrsResponsegroupRefElement1));
        System.assert(qrsResponsegroupRefElement3.equals(qrsResponsegroupRefElement4));
        System.assert(qrsResponsegroupRefElement4.equals(qrsResponsegroupRefElement3));
        System.assert(qrsResponsegroupRefElement3.equals(qrsResponsegroupRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement1 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement2 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement3 = new OASQrsResponsegroupRefElement();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement4 = new OASQrsResponsegroupRefElement();

        System.assert(qrsResponsegroupRefElement1.equals(qrsResponsegroupRefElement2));
        System.assert(qrsResponsegroupRefElement2.equals(qrsResponsegroupRefElement1));
        System.assert(qrsResponsegroupRefElement3.equals(qrsResponsegroupRefElement4));
        System.assert(qrsResponsegroupRefElement4.equals(qrsResponsegroupRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement1 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement2 = new OASQrsResponsegroupRefElement();

        System.assertEquals(false, qrsResponsegroupRefElement1.equals('foo'));
        System.assertEquals(false, qrsResponsegroupRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement1 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement2 = new OASQrsResponsegroupRefElement();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement3;

        System.assertEquals(false, qrsResponsegroupRefElement1.equals(qrsResponsegroupRefElement3));
        System.assertEquals(false, qrsResponsegroupRefElement2.equals(qrsResponsegroupRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement1 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement2 = new OASQrsResponsegroupRefElement();

        System.assertEquals(qrsResponsegroupRefElement1.hashCode(), qrsResponsegroupRefElement1.hashCode());
        System.assertEquals(qrsResponsegroupRefElement2.hashCode(), qrsResponsegroupRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement1 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement2 = OASQrsResponsegroupRefElement.getExample();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement3 = new OASQrsResponsegroupRefElement();
        OASQrsResponsegroupRefElement qrsResponsegroupRefElement4 = new OASQrsResponsegroupRefElement();

        System.assert(qrsResponsegroupRefElement1.equals(qrsResponsegroupRefElement2));
        System.assert(qrsResponsegroupRefElement3.equals(qrsResponsegroupRefElement4));
        System.assertEquals(qrsResponsegroupRefElement1.hashCode(), qrsResponsegroupRefElement2.hashCode());
        System.assertEquals(qrsResponsegroupRefElement3.hashCode(), qrsResponsegroupRefElement4.hashCode());
    }
}
