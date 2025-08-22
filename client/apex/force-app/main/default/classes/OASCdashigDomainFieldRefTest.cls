@isTest
private class OASCdashigDomainFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainFieldRef cdashigDomainFieldRef1 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef2 = cdashigDomainFieldRef1;
        OASCdashigDomainFieldRef cdashigDomainFieldRef3 = new OASCdashigDomainFieldRef();
        OASCdashigDomainFieldRef cdashigDomainFieldRef4 = cdashigDomainFieldRef3;

        System.assert(cdashigDomainFieldRef1.equals(cdashigDomainFieldRef2));
        System.assert(cdashigDomainFieldRef2.equals(cdashigDomainFieldRef1));
        System.assert(cdashigDomainFieldRef1.equals(cdashigDomainFieldRef1));
        System.assert(cdashigDomainFieldRef3.equals(cdashigDomainFieldRef4));
        System.assert(cdashigDomainFieldRef4.equals(cdashigDomainFieldRef3));
        System.assert(cdashigDomainFieldRef3.equals(cdashigDomainFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainFieldRef cdashigDomainFieldRef1 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef2 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef3 = new OASCdashigDomainFieldRef();
        OASCdashigDomainFieldRef cdashigDomainFieldRef4 = new OASCdashigDomainFieldRef();

        System.assert(cdashigDomainFieldRef1.equals(cdashigDomainFieldRef2));
        System.assert(cdashigDomainFieldRef2.equals(cdashigDomainFieldRef1));
        System.assert(cdashigDomainFieldRef3.equals(cdashigDomainFieldRef4));
        System.assert(cdashigDomainFieldRef4.equals(cdashigDomainFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainFieldRef cdashigDomainFieldRef1 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef2 = new OASCdashigDomainFieldRef();

        System.assertEquals(false, cdashigDomainFieldRef1.equals('foo'));
        System.assertEquals(false, cdashigDomainFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainFieldRef cdashigDomainFieldRef1 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef2 = new OASCdashigDomainFieldRef();
        OASCdashigDomainFieldRef cdashigDomainFieldRef3;

        System.assertEquals(false, cdashigDomainFieldRef1.equals(cdashigDomainFieldRef3));
        System.assertEquals(false, cdashigDomainFieldRef2.equals(cdashigDomainFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainFieldRef cdashigDomainFieldRef1 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef2 = new OASCdashigDomainFieldRef();

        System.assertEquals(cdashigDomainFieldRef1.hashCode(), cdashigDomainFieldRef1.hashCode());
        System.assertEquals(cdashigDomainFieldRef2.hashCode(), cdashigDomainFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainFieldRef cdashigDomainFieldRef1 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef2 = OASCdashigDomainFieldRef.getExample();
        OASCdashigDomainFieldRef cdashigDomainFieldRef3 = new OASCdashigDomainFieldRef();
        OASCdashigDomainFieldRef cdashigDomainFieldRef4 = new OASCdashigDomainFieldRef();

        System.assert(cdashigDomainFieldRef1.equals(cdashigDomainFieldRef2));
        System.assert(cdashigDomainFieldRef3.equals(cdashigDomainFieldRef4));
        System.assertEquals(cdashigDomainFieldRef1.hashCode(), cdashigDomainFieldRef2.hashCode());
        System.assertEquals(cdashigDomainFieldRef3.hashCode(), cdashigDomainFieldRef4.hashCode());
    }
}
