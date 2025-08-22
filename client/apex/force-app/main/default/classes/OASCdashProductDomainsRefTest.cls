@isTest
private class OASCdashProductDomainsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductDomainsRef cdashProductDomainsRef1 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef2 = cdashProductDomainsRef1;
        OASCdashProductDomainsRef cdashProductDomainsRef3 = new OASCdashProductDomainsRef();
        OASCdashProductDomainsRef cdashProductDomainsRef4 = cdashProductDomainsRef3;

        System.assert(cdashProductDomainsRef1.equals(cdashProductDomainsRef2));
        System.assert(cdashProductDomainsRef2.equals(cdashProductDomainsRef1));
        System.assert(cdashProductDomainsRef1.equals(cdashProductDomainsRef1));
        System.assert(cdashProductDomainsRef3.equals(cdashProductDomainsRef4));
        System.assert(cdashProductDomainsRef4.equals(cdashProductDomainsRef3));
        System.assert(cdashProductDomainsRef3.equals(cdashProductDomainsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductDomainsRef cdashProductDomainsRef1 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef2 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef3 = new OASCdashProductDomainsRef();
        OASCdashProductDomainsRef cdashProductDomainsRef4 = new OASCdashProductDomainsRef();

        System.assert(cdashProductDomainsRef1.equals(cdashProductDomainsRef2));
        System.assert(cdashProductDomainsRef2.equals(cdashProductDomainsRef1));
        System.assert(cdashProductDomainsRef3.equals(cdashProductDomainsRef4));
        System.assert(cdashProductDomainsRef4.equals(cdashProductDomainsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductDomainsRef cdashProductDomainsRef1 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef2 = new OASCdashProductDomainsRef();

        System.assertEquals(false, cdashProductDomainsRef1.equals('foo'));
        System.assertEquals(false, cdashProductDomainsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductDomainsRef cdashProductDomainsRef1 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef2 = new OASCdashProductDomainsRef();
        OASCdashProductDomainsRef cdashProductDomainsRef3;

        System.assertEquals(false, cdashProductDomainsRef1.equals(cdashProductDomainsRef3));
        System.assertEquals(false, cdashProductDomainsRef2.equals(cdashProductDomainsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductDomainsRef cdashProductDomainsRef1 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef2 = new OASCdashProductDomainsRef();

        System.assertEquals(cdashProductDomainsRef1.hashCode(), cdashProductDomainsRef1.hashCode());
        System.assertEquals(cdashProductDomainsRef2.hashCode(), cdashProductDomainsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductDomainsRef cdashProductDomainsRef1 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef2 = OASCdashProductDomainsRef.getExample();
        OASCdashProductDomainsRef cdashProductDomainsRef3 = new OASCdashProductDomainsRef();
        OASCdashProductDomainsRef cdashProductDomainsRef4 = new OASCdashProductDomainsRef();

        System.assert(cdashProductDomainsRef1.equals(cdashProductDomainsRef2));
        System.assert(cdashProductDomainsRef3.equals(cdashProductDomainsRef4));
        System.assertEquals(cdashProductDomainsRef1.hashCode(), cdashProductDomainsRef2.hashCode());
        System.assertEquals(cdashProductDomainsRef3.hashCode(), cdashProductDomainsRef4.hashCode());
    }
}
