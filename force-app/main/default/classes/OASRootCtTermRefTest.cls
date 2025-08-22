@isTest
private class OASRootCtTermRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCtTermRef rootCtTermRef1 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef2 = rootCtTermRef1;
        OASRootCtTermRef rootCtTermRef3 = new OASRootCtTermRef();
        OASRootCtTermRef rootCtTermRef4 = rootCtTermRef3;

        System.assert(rootCtTermRef1.equals(rootCtTermRef2));
        System.assert(rootCtTermRef2.equals(rootCtTermRef1));
        System.assert(rootCtTermRef1.equals(rootCtTermRef1));
        System.assert(rootCtTermRef3.equals(rootCtTermRef4));
        System.assert(rootCtTermRef4.equals(rootCtTermRef3));
        System.assert(rootCtTermRef3.equals(rootCtTermRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCtTermRef rootCtTermRef1 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef2 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef3 = new OASRootCtTermRef();
        OASRootCtTermRef rootCtTermRef4 = new OASRootCtTermRef();

        System.assert(rootCtTermRef1.equals(rootCtTermRef2));
        System.assert(rootCtTermRef2.equals(rootCtTermRef1));
        System.assert(rootCtTermRef3.equals(rootCtTermRef4));
        System.assert(rootCtTermRef4.equals(rootCtTermRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCtTermRef rootCtTermRef1 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef2 = new OASRootCtTermRef();

        System.assertEquals(false, rootCtTermRef1.equals('foo'));
        System.assertEquals(false, rootCtTermRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCtTermRef rootCtTermRef1 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef2 = new OASRootCtTermRef();
        OASRootCtTermRef rootCtTermRef3;

        System.assertEquals(false, rootCtTermRef1.equals(rootCtTermRef3));
        System.assertEquals(false, rootCtTermRef2.equals(rootCtTermRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCtTermRef rootCtTermRef1 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef2 = new OASRootCtTermRef();

        System.assertEquals(rootCtTermRef1.hashCode(), rootCtTermRef1.hashCode());
        System.assertEquals(rootCtTermRef2.hashCode(), rootCtTermRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCtTermRef rootCtTermRef1 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef2 = OASRootCtTermRef.getExample();
        OASRootCtTermRef rootCtTermRef3 = new OASRootCtTermRef();
        OASRootCtTermRef rootCtTermRef4 = new OASRootCtTermRef();

        System.assert(rootCtTermRef1.equals(rootCtTermRef2));
        System.assert(rootCtTermRef3.equals(rootCtTermRef4));
        System.assertEquals(rootCtTermRef1.hashCode(), rootCtTermRef2.hashCode());
        System.assertEquals(rootCtTermRef3.hashCode(), rootCtTermRef4.hashCode());
    }
}
