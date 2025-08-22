@isTest
private class OASRootCdashigDomainFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef1 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef2 = rootCdashigDomainFieldRef1;
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef3 = new OASRootCdashigDomainFieldRef();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef4 = rootCdashigDomainFieldRef3;

        System.assert(rootCdashigDomainFieldRef1.equals(rootCdashigDomainFieldRef2));
        System.assert(rootCdashigDomainFieldRef2.equals(rootCdashigDomainFieldRef1));
        System.assert(rootCdashigDomainFieldRef1.equals(rootCdashigDomainFieldRef1));
        System.assert(rootCdashigDomainFieldRef3.equals(rootCdashigDomainFieldRef4));
        System.assert(rootCdashigDomainFieldRef4.equals(rootCdashigDomainFieldRef3));
        System.assert(rootCdashigDomainFieldRef3.equals(rootCdashigDomainFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef1 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef2 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef3 = new OASRootCdashigDomainFieldRef();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef4 = new OASRootCdashigDomainFieldRef();

        System.assert(rootCdashigDomainFieldRef1.equals(rootCdashigDomainFieldRef2));
        System.assert(rootCdashigDomainFieldRef2.equals(rootCdashigDomainFieldRef1));
        System.assert(rootCdashigDomainFieldRef3.equals(rootCdashigDomainFieldRef4));
        System.assert(rootCdashigDomainFieldRef4.equals(rootCdashigDomainFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef1 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef2 = new OASRootCdashigDomainFieldRef();

        System.assertEquals(false, rootCdashigDomainFieldRef1.equals('foo'));
        System.assertEquals(false, rootCdashigDomainFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef1 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef2 = new OASRootCdashigDomainFieldRef();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef3;

        System.assertEquals(false, rootCdashigDomainFieldRef1.equals(rootCdashigDomainFieldRef3));
        System.assertEquals(false, rootCdashigDomainFieldRef2.equals(rootCdashigDomainFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef1 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef2 = new OASRootCdashigDomainFieldRef();

        System.assertEquals(rootCdashigDomainFieldRef1.hashCode(), rootCdashigDomainFieldRef1.hashCode());
        System.assertEquals(rootCdashigDomainFieldRef2.hashCode(), rootCdashigDomainFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef1 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef2 = OASRootCdashigDomainFieldRef.getExample();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef3 = new OASRootCdashigDomainFieldRef();
        OASRootCdashigDomainFieldRef rootCdashigDomainFieldRef4 = new OASRootCdashigDomainFieldRef();

        System.assert(rootCdashigDomainFieldRef1.equals(rootCdashigDomainFieldRef2));
        System.assert(rootCdashigDomainFieldRef3.equals(rootCdashigDomainFieldRef4));
        System.assertEquals(rootCdashigDomainFieldRef1.hashCode(), rootCdashigDomainFieldRef2.hashCode());
        System.assertEquals(rootCdashigDomainFieldRef3.hashCode(), rootCdashigDomainFieldRef4.hashCode());
    }
}
