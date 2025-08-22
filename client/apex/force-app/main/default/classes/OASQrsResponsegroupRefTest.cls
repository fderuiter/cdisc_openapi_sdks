@isTest
private class OASQrsResponsegroupRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponsegroupRef qrsResponsegroupRef1 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef2 = qrsResponsegroupRef1;
        OASQrsResponsegroupRef qrsResponsegroupRef3 = new OASQrsResponsegroupRef();
        OASQrsResponsegroupRef qrsResponsegroupRef4 = qrsResponsegroupRef3;

        System.assert(qrsResponsegroupRef1.equals(qrsResponsegroupRef2));
        System.assert(qrsResponsegroupRef2.equals(qrsResponsegroupRef1));
        System.assert(qrsResponsegroupRef1.equals(qrsResponsegroupRef1));
        System.assert(qrsResponsegroupRef3.equals(qrsResponsegroupRef4));
        System.assert(qrsResponsegroupRef4.equals(qrsResponsegroupRef3));
        System.assert(qrsResponsegroupRef3.equals(qrsResponsegroupRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponsegroupRef qrsResponsegroupRef1 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef2 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef3 = new OASQrsResponsegroupRef();
        OASQrsResponsegroupRef qrsResponsegroupRef4 = new OASQrsResponsegroupRef();

        System.assert(qrsResponsegroupRef1.equals(qrsResponsegroupRef2));
        System.assert(qrsResponsegroupRef2.equals(qrsResponsegroupRef1));
        System.assert(qrsResponsegroupRef3.equals(qrsResponsegroupRef4));
        System.assert(qrsResponsegroupRef4.equals(qrsResponsegroupRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponsegroupRef qrsResponsegroupRef1 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef2 = new OASQrsResponsegroupRef();

        System.assertEquals(false, qrsResponsegroupRef1.equals('foo'));
        System.assertEquals(false, qrsResponsegroupRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponsegroupRef qrsResponsegroupRef1 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef2 = new OASQrsResponsegroupRef();
        OASQrsResponsegroupRef qrsResponsegroupRef3;

        System.assertEquals(false, qrsResponsegroupRef1.equals(qrsResponsegroupRef3));
        System.assertEquals(false, qrsResponsegroupRef2.equals(qrsResponsegroupRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponsegroupRef qrsResponsegroupRef1 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef2 = new OASQrsResponsegroupRef();

        System.assertEquals(qrsResponsegroupRef1.hashCode(), qrsResponsegroupRef1.hashCode());
        System.assertEquals(qrsResponsegroupRef2.hashCode(), qrsResponsegroupRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponsegroupRef qrsResponsegroupRef1 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef2 = OASQrsResponsegroupRef.getExample();
        OASQrsResponsegroupRef qrsResponsegroupRef3 = new OASQrsResponsegroupRef();
        OASQrsResponsegroupRef qrsResponsegroupRef4 = new OASQrsResponsegroupRef();

        System.assert(qrsResponsegroupRef1.equals(qrsResponsegroupRef2));
        System.assert(qrsResponsegroupRef3.equals(qrsResponsegroupRef4));
        System.assertEquals(qrsResponsegroupRef1.hashCode(), qrsResponsegroupRef2.hashCode());
        System.assertEquals(qrsResponsegroupRef3.hashCode(), qrsResponsegroupRef4.hashCode());
    }
}
