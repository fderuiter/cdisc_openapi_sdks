@isTest
private class OASCdashDomainFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainFieldRef cdashDomainFieldRef1 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef2 = cdashDomainFieldRef1;
        OASCdashDomainFieldRef cdashDomainFieldRef3 = new OASCdashDomainFieldRef();
        OASCdashDomainFieldRef cdashDomainFieldRef4 = cdashDomainFieldRef3;

        System.assert(cdashDomainFieldRef1.equals(cdashDomainFieldRef2));
        System.assert(cdashDomainFieldRef2.equals(cdashDomainFieldRef1));
        System.assert(cdashDomainFieldRef1.equals(cdashDomainFieldRef1));
        System.assert(cdashDomainFieldRef3.equals(cdashDomainFieldRef4));
        System.assert(cdashDomainFieldRef4.equals(cdashDomainFieldRef3));
        System.assert(cdashDomainFieldRef3.equals(cdashDomainFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainFieldRef cdashDomainFieldRef1 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef2 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef3 = new OASCdashDomainFieldRef();
        OASCdashDomainFieldRef cdashDomainFieldRef4 = new OASCdashDomainFieldRef();

        System.assert(cdashDomainFieldRef1.equals(cdashDomainFieldRef2));
        System.assert(cdashDomainFieldRef2.equals(cdashDomainFieldRef1));
        System.assert(cdashDomainFieldRef3.equals(cdashDomainFieldRef4));
        System.assert(cdashDomainFieldRef4.equals(cdashDomainFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainFieldRef cdashDomainFieldRef1 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef2 = new OASCdashDomainFieldRef();

        System.assertEquals(false, cdashDomainFieldRef1.equals('foo'));
        System.assertEquals(false, cdashDomainFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainFieldRef cdashDomainFieldRef1 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef2 = new OASCdashDomainFieldRef();
        OASCdashDomainFieldRef cdashDomainFieldRef3;

        System.assertEquals(false, cdashDomainFieldRef1.equals(cdashDomainFieldRef3));
        System.assertEquals(false, cdashDomainFieldRef2.equals(cdashDomainFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainFieldRef cdashDomainFieldRef1 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef2 = new OASCdashDomainFieldRef();

        System.assertEquals(cdashDomainFieldRef1.hashCode(), cdashDomainFieldRef1.hashCode());
        System.assertEquals(cdashDomainFieldRef2.hashCode(), cdashDomainFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainFieldRef cdashDomainFieldRef1 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef2 = OASCdashDomainFieldRef.getExample();
        OASCdashDomainFieldRef cdashDomainFieldRef3 = new OASCdashDomainFieldRef();
        OASCdashDomainFieldRef cdashDomainFieldRef4 = new OASCdashDomainFieldRef();

        System.assert(cdashDomainFieldRef1.equals(cdashDomainFieldRef2));
        System.assert(cdashDomainFieldRef3.equals(cdashDomainFieldRef4));
        System.assertEquals(cdashDomainFieldRef1.hashCode(), cdashDomainFieldRef2.hashCode());
        System.assertEquals(cdashDomainFieldRef3.hashCode(), cdashDomainFieldRef4.hashCode());
    }
}
