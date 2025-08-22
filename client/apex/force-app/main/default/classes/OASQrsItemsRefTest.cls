@isTest
private class OASQrsItemsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsItemsRef qrsItemsRef1 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef2 = qrsItemsRef1;
        OASQrsItemsRef qrsItemsRef3 = new OASQrsItemsRef();
        OASQrsItemsRef qrsItemsRef4 = qrsItemsRef3;

        System.assert(qrsItemsRef1.equals(qrsItemsRef2));
        System.assert(qrsItemsRef2.equals(qrsItemsRef1));
        System.assert(qrsItemsRef1.equals(qrsItemsRef1));
        System.assert(qrsItemsRef3.equals(qrsItemsRef4));
        System.assert(qrsItemsRef4.equals(qrsItemsRef3));
        System.assert(qrsItemsRef3.equals(qrsItemsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsItemsRef qrsItemsRef1 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef2 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef3 = new OASQrsItemsRef();
        OASQrsItemsRef qrsItemsRef4 = new OASQrsItemsRef();

        System.assert(qrsItemsRef1.equals(qrsItemsRef2));
        System.assert(qrsItemsRef2.equals(qrsItemsRef1));
        System.assert(qrsItemsRef3.equals(qrsItemsRef4));
        System.assert(qrsItemsRef4.equals(qrsItemsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsItemsRef qrsItemsRef1 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef2 = new OASQrsItemsRef();

        System.assertEquals(false, qrsItemsRef1.equals('foo'));
        System.assertEquals(false, qrsItemsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsItemsRef qrsItemsRef1 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef2 = new OASQrsItemsRef();
        OASQrsItemsRef qrsItemsRef3;

        System.assertEquals(false, qrsItemsRef1.equals(qrsItemsRef3));
        System.assertEquals(false, qrsItemsRef2.equals(qrsItemsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsItemsRef qrsItemsRef1 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef2 = new OASQrsItemsRef();

        System.assertEquals(qrsItemsRef1.hashCode(), qrsItemsRef1.hashCode());
        System.assertEquals(qrsItemsRef2.hashCode(), qrsItemsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsItemsRef qrsItemsRef1 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef2 = OASQrsItemsRef.getExample();
        OASQrsItemsRef qrsItemsRef3 = new OASQrsItemsRef();
        OASQrsItemsRef qrsItemsRef4 = new OASQrsItemsRef();

        System.assert(qrsItemsRef1.equals(qrsItemsRef2));
        System.assert(qrsItemsRef3.equals(qrsItemsRef4));
        System.assertEquals(qrsItemsRef1.hashCode(), qrsItemsRef2.hashCode());
        System.assertEquals(qrsItemsRef3.hashCode(), qrsItemsRef4.hashCode());
    }
}
