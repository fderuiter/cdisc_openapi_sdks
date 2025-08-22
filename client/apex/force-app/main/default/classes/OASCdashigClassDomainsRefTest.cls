@isTest
private class OASCdashigClassDomainsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassDomainsRef cdashigClassDomainsRef1 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef2 = cdashigClassDomainsRef1;
        OASCdashigClassDomainsRef cdashigClassDomainsRef3 = new OASCdashigClassDomainsRef();
        OASCdashigClassDomainsRef cdashigClassDomainsRef4 = cdashigClassDomainsRef3;

        System.assert(cdashigClassDomainsRef1.equals(cdashigClassDomainsRef2));
        System.assert(cdashigClassDomainsRef2.equals(cdashigClassDomainsRef1));
        System.assert(cdashigClassDomainsRef1.equals(cdashigClassDomainsRef1));
        System.assert(cdashigClassDomainsRef3.equals(cdashigClassDomainsRef4));
        System.assert(cdashigClassDomainsRef4.equals(cdashigClassDomainsRef3));
        System.assert(cdashigClassDomainsRef3.equals(cdashigClassDomainsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassDomainsRef cdashigClassDomainsRef1 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef2 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef3 = new OASCdashigClassDomainsRef();
        OASCdashigClassDomainsRef cdashigClassDomainsRef4 = new OASCdashigClassDomainsRef();

        System.assert(cdashigClassDomainsRef1.equals(cdashigClassDomainsRef2));
        System.assert(cdashigClassDomainsRef2.equals(cdashigClassDomainsRef1));
        System.assert(cdashigClassDomainsRef3.equals(cdashigClassDomainsRef4));
        System.assert(cdashigClassDomainsRef4.equals(cdashigClassDomainsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassDomainsRef cdashigClassDomainsRef1 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef2 = new OASCdashigClassDomainsRef();

        System.assertEquals(false, cdashigClassDomainsRef1.equals('foo'));
        System.assertEquals(false, cdashigClassDomainsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassDomainsRef cdashigClassDomainsRef1 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef2 = new OASCdashigClassDomainsRef();
        OASCdashigClassDomainsRef cdashigClassDomainsRef3;

        System.assertEquals(false, cdashigClassDomainsRef1.equals(cdashigClassDomainsRef3));
        System.assertEquals(false, cdashigClassDomainsRef2.equals(cdashigClassDomainsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassDomainsRef cdashigClassDomainsRef1 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef2 = new OASCdashigClassDomainsRef();

        System.assertEquals(cdashigClassDomainsRef1.hashCode(), cdashigClassDomainsRef1.hashCode());
        System.assertEquals(cdashigClassDomainsRef2.hashCode(), cdashigClassDomainsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassDomainsRef cdashigClassDomainsRef1 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef2 = OASCdashigClassDomainsRef.getExample();
        OASCdashigClassDomainsRef cdashigClassDomainsRef3 = new OASCdashigClassDomainsRef();
        OASCdashigClassDomainsRef cdashigClassDomainsRef4 = new OASCdashigClassDomainsRef();

        System.assert(cdashigClassDomainsRef1.equals(cdashigClassDomainsRef2));
        System.assert(cdashigClassDomainsRef3.equals(cdashigClassDomainsRef4));
        System.assertEquals(cdashigClassDomainsRef1.hashCode(), cdashigClassDomainsRef2.hashCode());
        System.assertEquals(cdashigClassDomainsRef3.hashCode(), cdashigClassDomainsRef4.hashCode());
    }
}
