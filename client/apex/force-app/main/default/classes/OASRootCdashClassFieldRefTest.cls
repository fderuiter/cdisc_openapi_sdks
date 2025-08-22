@isTest
private class OASRootCdashClassFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashClassFieldRef rootCdashClassFieldRef1 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef2 = rootCdashClassFieldRef1;
        OASRootCdashClassFieldRef rootCdashClassFieldRef3 = new OASRootCdashClassFieldRef();
        OASRootCdashClassFieldRef rootCdashClassFieldRef4 = rootCdashClassFieldRef3;

        System.assert(rootCdashClassFieldRef1.equals(rootCdashClassFieldRef2));
        System.assert(rootCdashClassFieldRef2.equals(rootCdashClassFieldRef1));
        System.assert(rootCdashClassFieldRef1.equals(rootCdashClassFieldRef1));
        System.assert(rootCdashClassFieldRef3.equals(rootCdashClassFieldRef4));
        System.assert(rootCdashClassFieldRef4.equals(rootCdashClassFieldRef3));
        System.assert(rootCdashClassFieldRef3.equals(rootCdashClassFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashClassFieldRef rootCdashClassFieldRef1 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef2 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef3 = new OASRootCdashClassFieldRef();
        OASRootCdashClassFieldRef rootCdashClassFieldRef4 = new OASRootCdashClassFieldRef();

        System.assert(rootCdashClassFieldRef1.equals(rootCdashClassFieldRef2));
        System.assert(rootCdashClassFieldRef2.equals(rootCdashClassFieldRef1));
        System.assert(rootCdashClassFieldRef3.equals(rootCdashClassFieldRef4));
        System.assert(rootCdashClassFieldRef4.equals(rootCdashClassFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashClassFieldRef rootCdashClassFieldRef1 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef2 = new OASRootCdashClassFieldRef();

        System.assertEquals(false, rootCdashClassFieldRef1.equals('foo'));
        System.assertEquals(false, rootCdashClassFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashClassFieldRef rootCdashClassFieldRef1 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef2 = new OASRootCdashClassFieldRef();
        OASRootCdashClassFieldRef rootCdashClassFieldRef3;

        System.assertEquals(false, rootCdashClassFieldRef1.equals(rootCdashClassFieldRef3));
        System.assertEquals(false, rootCdashClassFieldRef2.equals(rootCdashClassFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashClassFieldRef rootCdashClassFieldRef1 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef2 = new OASRootCdashClassFieldRef();

        System.assertEquals(rootCdashClassFieldRef1.hashCode(), rootCdashClassFieldRef1.hashCode());
        System.assertEquals(rootCdashClassFieldRef2.hashCode(), rootCdashClassFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashClassFieldRef rootCdashClassFieldRef1 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef2 = OASRootCdashClassFieldRef.getExample();
        OASRootCdashClassFieldRef rootCdashClassFieldRef3 = new OASRootCdashClassFieldRef();
        OASRootCdashClassFieldRef rootCdashClassFieldRef4 = new OASRootCdashClassFieldRef();

        System.assert(rootCdashClassFieldRef1.equals(rootCdashClassFieldRef2));
        System.assert(rootCdashClassFieldRef3.equals(rootCdashClassFieldRef4));
        System.assertEquals(rootCdashClassFieldRef1.hashCode(), rootCdashClassFieldRef2.hashCode());
        System.assertEquals(rootCdashClassFieldRef3.hashCode(), rootCdashClassFieldRef4.hashCode());
    }
}
