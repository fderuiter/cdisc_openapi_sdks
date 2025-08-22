@isTest
private class OASCdashigDomainRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainRef cdashigDomainRef1 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef2 = cdashigDomainRef1;
        OASCdashigDomainRef cdashigDomainRef3 = new OASCdashigDomainRef();
        OASCdashigDomainRef cdashigDomainRef4 = cdashigDomainRef3;

        System.assert(cdashigDomainRef1.equals(cdashigDomainRef2));
        System.assert(cdashigDomainRef2.equals(cdashigDomainRef1));
        System.assert(cdashigDomainRef1.equals(cdashigDomainRef1));
        System.assert(cdashigDomainRef3.equals(cdashigDomainRef4));
        System.assert(cdashigDomainRef4.equals(cdashigDomainRef3));
        System.assert(cdashigDomainRef3.equals(cdashigDomainRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainRef cdashigDomainRef1 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef2 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef3 = new OASCdashigDomainRef();
        OASCdashigDomainRef cdashigDomainRef4 = new OASCdashigDomainRef();

        System.assert(cdashigDomainRef1.equals(cdashigDomainRef2));
        System.assert(cdashigDomainRef2.equals(cdashigDomainRef1));
        System.assert(cdashigDomainRef3.equals(cdashigDomainRef4));
        System.assert(cdashigDomainRef4.equals(cdashigDomainRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainRef cdashigDomainRef1 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef2 = new OASCdashigDomainRef();

        System.assertEquals(false, cdashigDomainRef1.equals('foo'));
        System.assertEquals(false, cdashigDomainRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainRef cdashigDomainRef1 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef2 = new OASCdashigDomainRef();
        OASCdashigDomainRef cdashigDomainRef3;

        System.assertEquals(false, cdashigDomainRef1.equals(cdashigDomainRef3));
        System.assertEquals(false, cdashigDomainRef2.equals(cdashigDomainRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainRef cdashigDomainRef1 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef2 = new OASCdashigDomainRef();

        System.assertEquals(cdashigDomainRef1.hashCode(), cdashigDomainRef1.hashCode());
        System.assertEquals(cdashigDomainRef2.hashCode(), cdashigDomainRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainRef cdashigDomainRef1 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef2 = OASCdashigDomainRef.getExample();
        OASCdashigDomainRef cdashigDomainRef3 = new OASCdashigDomainRef();
        OASCdashigDomainRef cdashigDomainRef4 = new OASCdashigDomainRef();

        System.assert(cdashigDomainRef1.equals(cdashigDomainRef2));
        System.assert(cdashigDomainRef3.equals(cdashigDomainRef4));
        System.assertEquals(cdashigDomainRef1.hashCode(), cdashigDomainRef2.hashCode());
        System.assertEquals(cdashigDomainRef3.hashCode(), cdashigDomainRef4.hashCode());
    }
}
