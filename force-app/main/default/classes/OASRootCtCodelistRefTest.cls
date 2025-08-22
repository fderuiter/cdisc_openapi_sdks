@isTest
private class OASRootCtCodelistRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCtCodelistRef rootCtCodelistRef1 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef2 = rootCtCodelistRef1;
        OASRootCtCodelistRef rootCtCodelistRef3 = new OASRootCtCodelistRef();
        OASRootCtCodelistRef rootCtCodelistRef4 = rootCtCodelistRef3;

        System.assert(rootCtCodelistRef1.equals(rootCtCodelistRef2));
        System.assert(rootCtCodelistRef2.equals(rootCtCodelistRef1));
        System.assert(rootCtCodelistRef1.equals(rootCtCodelistRef1));
        System.assert(rootCtCodelistRef3.equals(rootCtCodelistRef4));
        System.assert(rootCtCodelistRef4.equals(rootCtCodelistRef3));
        System.assert(rootCtCodelistRef3.equals(rootCtCodelistRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCtCodelistRef rootCtCodelistRef1 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef2 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef3 = new OASRootCtCodelistRef();
        OASRootCtCodelistRef rootCtCodelistRef4 = new OASRootCtCodelistRef();

        System.assert(rootCtCodelistRef1.equals(rootCtCodelistRef2));
        System.assert(rootCtCodelistRef2.equals(rootCtCodelistRef1));
        System.assert(rootCtCodelistRef3.equals(rootCtCodelistRef4));
        System.assert(rootCtCodelistRef4.equals(rootCtCodelistRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCtCodelistRef rootCtCodelistRef1 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef2 = new OASRootCtCodelistRef();

        System.assertEquals(false, rootCtCodelistRef1.equals('foo'));
        System.assertEquals(false, rootCtCodelistRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCtCodelistRef rootCtCodelistRef1 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef2 = new OASRootCtCodelistRef();
        OASRootCtCodelistRef rootCtCodelistRef3;

        System.assertEquals(false, rootCtCodelistRef1.equals(rootCtCodelistRef3));
        System.assertEquals(false, rootCtCodelistRef2.equals(rootCtCodelistRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCtCodelistRef rootCtCodelistRef1 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef2 = new OASRootCtCodelistRef();

        System.assertEquals(rootCtCodelistRef1.hashCode(), rootCtCodelistRef1.hashCode());
        System.assertEquals(rootCtCodelistRef2.hashCode(), rootCtCodelistRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCtCodelistRef rootCtCodelistRef1 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef2 = OASRootCtCodelistRef.getExample();
        OASRootCtCodelistRef rootCtCodelistRef3 = new OASRootCtCodelistRef();
        OASRootCtCodelistRef rootCtCodelistRef4 = new OASRootCtCodelistRef();

        System.assert(rootCtCodelistRef1.equals(rootCtCodelistRef2));
        System.assert(rootCtCodelistRef3.equals(rootCtCodelistRef4));
        System.assertEquals(rootCtCodelistRef1.hashCode(), rootCtCodelistRef2.hashCode());
        System.assertEquals(rootCtCodelistRef3.hashCode(), rootCtCodelistRef4.hashCode());
    }
}
