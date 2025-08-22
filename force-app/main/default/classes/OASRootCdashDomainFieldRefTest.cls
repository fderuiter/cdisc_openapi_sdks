@isTest
private class OASRootCdashDomainFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef1 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef2 = rootCdashDomainFieldRef1;
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef3 = new OASRootCdashDomainFieldRef();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef4 = rootCdashDomainFieldRef3;

        System.assert(rootCdashDomainFieldRef1.equals(rootCdashDomainFieldRef2));
        System.assert(rootCdashDomainFieldRef2.equals(rootCdashDomainFieldRef1));
        System.assert(rootCdashDomainFieldRef1.equals(rootCdashDomainFieldRef1));
        System.assert(rootCdashDomainFieldRef3.equals(rootCdashDomainFieldRef4));
        System.assert(rootCdashDomainFieldRef4.equals(rootCdashDomainFieldRef3));
        System.assert(rootCdashDomainFieldRef3.equals(rootCdashDomainFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef1 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef2 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef3 = new OASRootCdashDomainFieldRef();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef4 = new OASRootCdashDomainFieldRef();

        System.assert(rootCdashDomainFieldRef1.equals(rootCdashDomainFieldRef2));
        System.assert(rootCdashDomainFieldRef2.equals(rootCdashDomainFieldRef1));
        System.assert(rootCdashDomainFieldRef3.equals(rootCdashDomainFieldRef4));
        System.assert(rootCdashDomainFieldRef4.equals(rootCdashDomainFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef1 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef2 = new OASRootCdashDomainFieldRef();

        System.assertEquals(false, rootCdashDomainFieldRef1.equals('foo'));
        System.assertEquals(false, rootCdashDomainFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef1 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef2 = new OASRootCdashDomainFieldRef();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef3;

        System.assertEquals(false, rootCdashDomainFieldRef1.equals(rootCdashDomainFieldRef3));
        System.assertEquals(false, rootCdashDomainFieldRef2.equals(rootCdashDomainFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef1 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef2 = new OASRootCdashDomainFieldRef();

        System.assertEquals(rootCdashDomainFieldRef1.hashCode(), rootCdashDomainFieldRef1.hashCode());
        System.assertEquals(rootCdashDomainFieldRef2.hashCode(), rootCdashDomainFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef1 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef2 = OASRootCdashDomainFieldRef.getExample();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef3 = new OASRootCdashDomainFieldRef();
        OASRootCdashDomainFieldRef rootCdashDomainFieldRef4 = new OASRootCdashDomainFieldRef();

        System.assert(rootCdashDomainFieldRef1.equals(rootCdashDomainFieldRef2));
        System.assert(rootCdashDomainFieldRef3.equals(rootCdashDomainFieldRef4));
        System.assertEquals(rootCdashDomainFieldRef1.hashCode(), rootCdashDomainFieldRef2.hashCode());
        System.assertEquals(rootCdashDomainFieldRef3.hashCode(), rootCdashDomainFieldRef4.hashCode());
    }
}
