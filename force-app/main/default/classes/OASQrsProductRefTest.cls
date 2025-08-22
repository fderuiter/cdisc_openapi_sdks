@isTest
private class OASQrsProductRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsProductRef qrsProductRef1 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef2 = qrsProductRef1;
        OASQrsProductRef qrsProductRef3 = new OASQrsProductRef();
        OASQrsProductRef qrsProductRef4 = qrsProductRef3;

        System.assert(qrsProductRef1.equals(qrsProductRef2));
        System.assert(qrsProductRef2.equals(qrsProductRef1));
        System.assert(qrsProductRef1.equals(qrsProductRef1));
        System.assert(qrsProductRef3.equals(qrsProductRef4));
        System.assert(qrsProductRef4.equals(qrsProductRef3));
        System.assert(qrsProductRef3.equals(qrsProductRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsProductRef qrsProductRef1 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef2 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef3 = new OASQrsProductRef();
        OASQrsProductRef qrsProductRef4 = new OASQrsProductRef();

        System.assert(qrsProductRef1.equals(qrsProductRef2));
        System.assert(qrsProductRef2.equals(qrsProductRef1));
        System.assert(qrsProductRef3.equals(qrsProductRef4));
        System.assert(qrsProductRef4.equals(qrsProductRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsProductRef qrsProductRef1 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef2 = new OASQrsProductRef();

        System.assertEquals(false, qrsProductRef1.equals('foo'));
        System.assertEquals(false, qrsProductRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsProductRef qrsProductRef1 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef2 = new OASQrsProductRef();
        OASQrsProductRef qrsProductRef3;

        System.assertEquals(false, qrsProductRef1.equals(qrsProductRef3));
        System.assertEquals(false, qrsProductRef2.equals(qrsProductRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsProductRef qrsProductRef1 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef2 = new OASQrsProductRef();

        System.assertEquals(qrsProductRef1.hashCode(), qrsProductRef1.hashCode());
        System.assertEquals(qrsProductRef2.hashCode(), qrsProductRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsProductRef qrsProductRef1 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef2 = OASQrsProductRef.getExample();
        OASQrsProductRef qrsProductRef3 = new OASQrsProductRef();
        OASQrsProductRef qrsProductRef4 = new OASQrsProductRef();

        System.assert(qrsProductRef1.equals(qrsProductRef2));
        System.assert(qrsProductRef3.equals(qrsProductRef4));
        System.assertEquals(qrsProductRef1.hashCode(), qrsProductRef2.hashCode());
        System.assertEquals(qrsProductRef3.hashCode(), qrsProductRef4.hashCode());
    }
}
