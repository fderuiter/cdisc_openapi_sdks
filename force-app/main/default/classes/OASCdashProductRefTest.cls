@isTest
private class OASCdashProductRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductRef cdashProductRef1 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef2 = cdashProductRef1;
        OASCdashProductRef cdashProductRef3 = new OASCdashProductRef();
        OASCdashProductRef cdashProductRef4 = cdashProductRef3;

        System.assert(cdashProductRef1.equals(cdashProductRef2));
        System.assert(cdashProductRef2.equals(cdashProductRef1));
        System.assert(cdashProductRef1.equals(cdashProductRef1));
        System.assert(cdashProductRef3.equals(cdashProductRef4));
        System.assert(cdashProductRef4.equals(cdashProductRef3));
        System.assert(cdashProductRef3.equals(cdashProductRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductRef cdashProductRef1 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef2 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef3 = new OASCdashProductRef();
        OASCdashProductRef cdashProductRef4 = new OASCdashProductRef();

        System.assert(cdashProductRef1.equals(cdashProductRef2));
        System.assert(cdashProductRef2.equals(cdashProductRef1));
        System.assert(cdashProductRef3.equals(cdashProductRef4));
        System.assert(cdashProductRef4.equals(cdashProductRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductRef cdashProductRef1 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef2 = new OASCdashProductRef();

        System.assertEquals(false, cdashProductRef1.equals('foo'));
        System.assertEquals(false, cdashProductRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductRef cdashProductRef1 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef2 = new OASCdashProductRef();
        OASCdashProductRef cdashProductRef3;

        System.assertEquals(false, cdashProductRef1.equals(cdashProductRef3));
        System.assertEquals(false, cdashProductRef2.equals(cdashProductRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductRef cdashProductRef1 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef2 = new OASCdashProductRef();

        System.assertEquals(cdashProductRef1.hashCode(), cdashProductRef1.hashCode());
        System.assertEquals(cdashProductRef2.hashCode(), cdashProductRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductRef cdashProductRef1 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef2 = OASCdashProductRef.getExample();
        OASCdashProductRef cdashProductRef3 = new OASCdashProductRef();
        OASCdashProductRef cdashProductRef4 = new OASCdashProductRef();

        System.assert(cdashProductRef1.equals(cdashProductRef2));
        System.assert(cdashProductRef3.equals(cdashProductRef4));
        System.assertEquals(cdashProductRef1.hashCode(), cdashProductRef2.hashCode());
        System.assertEquals(cdashProductRef3.hashCode(), cdashProductRef4.hashCode());
    }
}
