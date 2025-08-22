@isTest
private class OASQrsResponsegroupsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponsegroupsRef qrsResponsegroupsRef1 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef2 = qrsResponsegroupsRef1;
        OASQrsResponsegroupsRef qrsResponsegroupsRef3 = new OASQrsResponsegroupsRef();
        OASQrsResponsegroupsRef qrsResponsegroupsRef4 = qrsResponsegroupsRef3;

        System.assert(qrsResponsegroupsRef1.equals(qrsResponsegroupsRef2));
        System.assert(qrsResponsegroupsRef2.equals(qrsResponsegroupsRef1));
        System.assert(qrsResponsegroupsRef1.equals(qrsResponsegroupsRef1));
        System.assert(qrsResponsegroupsRef3.equals(qrsResponsegroupsRef4));
        System.assert(qrsResponsegroupsRef4.equals(qrsResponsegroupsRef3));
        System.assert(qrsResponsegroupsRef3.equals(qrsResponsegroupsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponsegroupsRef qrsResponsegroupsRef1 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef2 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef3 = new OASQrsResponsegroupsRef();
        OASQrsResponsegroupsRef qrsResponsegroupsRef4 = new OASQrsResponsegroupsRef();

        System.assert(qrsResponsegroupsRef1.equals(qrsResponsegroupsRef2));
        System.assert(qrsResponsegroupsRef2.equals(qrsResponsegroupsRef1));
        System.assert(qrsResponsegroupsRef3.equals(qrsResponsegroupsRef4));
        System.assert(qrsResponsegroupsRef4.equals(qrsResponsegroupsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponsegroupsRef qrsResponsegroupsRef1 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef2 = new OASQrsResponsegroupsRef();

        System.assertEquals(false, qrsResponsegroupsRef1.equals('foo'));
        System.assertEquals(false, qrsResponsegroupsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponsegroupsRef qrsResponsegroupsRef1 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef2 = new OASQrsResponsegroupsRef();
        OASQrsResponsegroupsRef qrsResponsegroupsRef3;

        System.assertEquals(false, qrsResponsegroupsRef1.equals(qrsResponsegroupsRef3));
        System.assertEquals(false, qrsResponsegroupsRef2.equals(qrsResponsegroupsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponsegroupsRef qrsResponsegroupsRef1 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef2 = new OASQrsResponsegroupsRef();

        System.assertEquals(qrsResponsegroupsRef1.hashCode(), qrsResponsegroupsRef1.hashCode());
        System.assertEquals(qrsResponsegroupsRef2.hashCode(), qrsResponsegroupsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponsegroupsRef qrsResponsegroupsRef1 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef2 = OASQrsResponsegroupsRef.getExample();
        OASQrsResponsegroupsRef qrsResponsegroupsRef3 = new OASQrsResponsegroupsRef();
        OASQrsResponsegroupsRef qrsResponsegroupsRef4 = new OASQrsResponsegroupsRef();

        System.assert(qrsResponsegroupsRef1.equals(qrsResponsegroupsRef2));
        System.assert(qrsResponsegroupsRef3.equals(qrsResponsegroupsRef4));
        System.assertEquals(qrsResponsegroupsRef1.hashCode(), qrsResponsegroupsRef2.hashCode());
        System.assertEquals(qrsResponsegroupsRef3.hashCode(), qrsResponsegroupsRef4.hashCode());
    }
}
