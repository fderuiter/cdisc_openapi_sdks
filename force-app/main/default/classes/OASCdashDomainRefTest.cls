@isTest
private class OASCdashDomainRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainRef cdashDomainRef1 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef2 = cdashDomainRef1;
        OASCdashDomainRef cdashDomainRef3 = new OASCdashDomainRef();
        OASCdashDomainRef cdashDomainRef4 = cdashDomainRef3;

        System.assert(cdashDomainRef1.equals(cdashDomainRef2));
        System.assert(cdashDomainRef2.equals(cdashDomainRef1));
        System.assert(cdashDomainRef1.equals(cdashDomainRef1));
        System.assert(cdashDomainRef3.equals(cdashDomainRef4));
        System.assert(cdashDomainRef4.equals(cdashDomainRef3));
        System.assert(cdashDomainRef3.equals(cdashDomainRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainRef cdashDomainRef1 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef2 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef3 = new OASCdashDomainRef();
        OASCdashDomainRef cdashDomainRef4 = new OASCdashDomainRef();

        System.assert(cdashDomainRef1.equals(cdashDomainRef2));
        System.assert(cdashDomainRef2.equals(cdashDomainRef1));
        System.assert(cdashDomainRef3.equals(cdashDomainRef4));
        System.assert(cdashDomainRef4.equals(cdashDomainRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainRef cdashDomainRef1 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef2 = new OASCdashDomainRef();

        System.assertEquals(false, cdashDomainRef1.equals('foo'));
        System.assertEquals(false, cdashDomainRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainRef cdashDomainRef1 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef2 = new OASCdashDomainRef();
        OASCdashDomainRef cdashDomainRef3;

        System.assertEquals(false, cdashDomainRef1.equals(cdashDomainRef3));
        System.assertEquals(false, cdashDomainRef2.equals(cdashDomainRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainRef cdashDomainRef1 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef2 = new OASCdashDomainRef();

        System.assertEquals(cdashDomainRef1.hashCode(), cdashDomainRef1.hashCode());
        System.assertEquals(cdashDomainRef2.hashCode(), cdashDomainRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainRef cdashDomainRef1 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef2 = OASCdashDomainRef.getExample();
        OASCdashDomainRef cdashDomainRef3 = new OASCdashDomainRef();
        OASCdashDomainRef cdashDomainRef4 = new OASCdashDomainRef();

        System.assert(cdashDomainRef1.equals(cdashDomainRef2));
        System.assert(cdashDomainRef3.equals(cdashDomainRef4));
        System.assertEquals(cdashDomainRef1.hashCode(), cdashDomainRef2.hashCode());
        System.assertEquals(cdashDomainRef3.hashCode(), cdashDomainRef4.hashCode());
    }
}
