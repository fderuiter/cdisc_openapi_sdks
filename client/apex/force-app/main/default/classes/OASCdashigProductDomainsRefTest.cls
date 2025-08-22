@isTest
private class OASCdashigProductDomainsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductDomainsRef cdashigProductDomainsRef1 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef2 = cdashigProductDomainsRef1;
        OASCdashigProductDomainsRef cdashigProductDomainsRef3 = new OASCdashigProductDomainsRef();
        OASCdashigProductDomainsRef cdashigProductDomainsRef4 = cdashigProductDomainsRef3;

        System.assert(cdashigProductDomainsRef1.equals(cdashigProductDomainsRef2));
        System.assert(cdashigProductDomainsRef2.equals(cdashigProductDomainsRef1));
        System.assert(cdashigProductDomainsRef1.equals(cdashigProductDomainsRef1));
        System.assert(cdashigProductDomainsRef3.equals(cdashigProductDomainsRef4));
        System.assert(cdashigProductDomainsRef4.equals(cdashigProductDomainsRef3));
        System.assert(cdashigProductDomainsRef3.equals(cdashigProductDomainsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductDomainsRef cdashigProductDomainsRef1 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef2 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef3 = new OASCdashigProductDomainsRef();
        OASCdashigProductDomainsRef cdashigProductDomainsRef4 = new OASCdashigProductDomainsRef();

        System.assert(cdashigProductDomainsRef1.equals(cdashigProductDomainsRef2));
        System.assert(cdashigProductDomainsRef2.equals(cdashigProductDomainsRef1));
        System.assert(cdashigProductDomainsRef3.equals(cdashigProductDomainsRef4));
        System.assert(cdashigProductDomainsRef4.equals(cdashigProductDomainsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductDomainsRef cdashigProductDomainsRef1 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef2 = new OASCdashigProductDomainsRef();

        System.assertEquals(false, cdashigProductDomainsRef1.equals('foo'));
        System.assertEquals(false, cdashigProductDomainsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductDomainsRef cdashigProductDomainsRef1 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef2 = new OASCdashigProductDomainsRef();
        OASCdashigProductDomainsRef cdashigProductDomainsRef3;

        System.assertEquals(false, cdashigProductDomainsRef1.equals(cdashigProductDomainsRef3));
        System.assertEquals(false, cdashigProductDomainsRef2.equals(cdashigProductDomainsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductDomainsRef cdashigProductDomainsRef1 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef2 = new OASCdashigProductDomainsRef();

        System.assertEquals(cdashigProductDomainsRef1.hashCode(), cdashigProductDomainsRef1.hashCode());
        System.assertEquals(cdashigProductDomainsRef2.hashCode(), cdashigProductDomainsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductDomainsRef cdashigProductDomainsRef1 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef2 = OASCdashigProductDomainsRef.getExample();
        OASCdashigProductDomainsRef cdashigProductDomainsRef3 = new OASCdashigProductDomainsRef();
        OASCdashigProductDomainsRef cdashigProductDomainsRef4 = new OASCdashigProductDomainsRef();

        System.assert(cdashigProductDomainsRef1.equals(cdashigProductDomainsRef2));
        System.assert(cdashigProductDomainsRef3.equals(cdashigProductDomainsRef4));
        System.assertEquals(cdashigProductDomainsRef1.hashCode(), cdashigProductDomainsRef2.hashCode());
        System.assertEquals(cdashigProductDomainsRef3.hashCode(), cdashigProductDomainsRef4.hashCode());
    }
}
