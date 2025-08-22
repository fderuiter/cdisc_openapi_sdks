@isTest
private class OASCdashClassDomainsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassDomainsRef cdashClassDomainsRef1 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef2 = cdashClassDomainsRef1;
        OASCdashClassDomainsRef cdashClassDomainsRef3 = new OASCdashClassDomainsRef();
        OASCdashClassDomainsRef cdashClassDomainsRef4 = cdashClassDomainsRef3;

        System.assert(cdashClassDomainsRef1.equals(cdashClassDomainsRef2));
        System.assert(cdashClassDomainsRef2.equals(cdashClassDomainsRef1));
        System.assert(cdashClassDomainsRef1.equals(cdashClassDomainsRef1));
        System.assert(cdashClassDomainsRef3.equals(cdashClassDomainsRef4));
        System.assert(cdashClassDomainsRef4.equals(cdashClassDomainsRef3));
        System.assert(cdashClassDomainsRef3.equals(cdashClassDomainsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassDomainsRef cdashClassDomainsRef1 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef2 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef3 = new OASCdashClassDomainsRef();
        OASCdashClassDomainsRef cdashClassDomainsRef4 = new OASCdashClassDomainsRef();

        System.assert(cdashClassDomainsRef1.equals(cdashClassDomainsRef2));
        System.assert(cdashClassDomainsRef2.equals(cdashClassDomainsRef1));
        System.assert(cdashClassDomainsRef3.equals(cdashClassDomainsRef4));
        System.assert(cdashClassDomainsRef4.equals(cdashClassDomainsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassDomainsRef cdashClassDomainsRef1 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef2 = new OASCdashClassDomainsRef();

        System.assertEquals(false, cdashClassDomainsRef1.equals('foo'));
        System.assertEquals(false, cdashClassDomainsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassDomainsRef cdashClassDomainsRef1 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef2 = new OASCdashClassDomainsRef();
        OASCdashClassDomainsRef cdashClassDomainsRef3;

        System.assertEquals(false, cdashClassDomainsRef1.equals(cdashClassDomainsRef3));
        System.assertEquals(false, cdashClassDomainsRef2.equals(cdashClassDomainsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassDomainsRef cdashClassDomainsRef1 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef2 = new OASCdashClassDomainsRef();

        System.assertEquals(cdashClassDomainsRef1.hashCode(), cdashClassDomainsRef1.hashCode());
        System.assertEquals(cdashClassDomainsRef2.hashCode(), cdashClassDomainsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassDomainsRef cdashClassDomainsRef1 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef2 = OASCdashClassDomainsRef.getExample();
        OASCdashClassDomainsRef cdashClassDomainsRef3 = new OASCdashClassDomainsRef();
        OASCdashClassDomainsRef cdashClassDomainsRef4 = new OASCdashClassDomainsRef();

        System.assert(cdashClassDomainsRef1.equals(cdashClassDomainsRef2));
        System.assert(cdashClassDomainsRef3.equals(cdashClassDomainsRef4));
        System.assertEquals(cdashClassDomainsRef1.hashCode(), cdashClassDomainsRef2.hashCode());
        System.assertEquals(cdashClassDomainsRef3.hashCode(), cdashClassDomainsRef4.hashCode());
    }
}
