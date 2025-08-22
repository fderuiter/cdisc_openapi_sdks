@isTest
private class OASCdashigProductRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductRef cdashigProductRef1 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef2 = cdashigProductRef1;
        OASCdashigProductRef cdashigProductRef3 = new OASCdashigProductRef();
        OASCdashigProductRef cdashigProductRef4 = cdashigProductRef3;

        System.assert(cdashigProductRef1.equals(cdashigProductRef2));
        System.assert(cdashigProductRef2.equals(cdashigProductRef1));
        System.assert(cdashigProductRef1.equals(cdashigProductRef1));
        System.assert(cdashigProductRef3.equals(cdashigProductRef4));
        System.assert(cdashigProductRef4.equals(cdashigProductRef3));
        System.assert(cdashigProductRef3.equals(cdashigProductRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductRef cdashigProductRef1 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef2 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef3 = new OASCdashigProductRef();
        OASCdashigProductRef cdashigProductRef4 = new OASCdashigProductRef();

        System.assert(cdashigProductRef1.equals(cdashigProductRef2));
        System.assert(cdashigProductRef2.equals(cdashigProductRef1));
        System.assert(cdashigProductRef3.equals(cdashigProductRef4));
        System.assert(cdashigProductRef4.equals(cdashigProductRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductRef cdashigProductRef1 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef2 = new OASCdashigProductRef();

        System.assertEquals(false, cdashigProductRef1.equals('foo'));
        System.assertEquals(false, cdashigProductRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductRef cdashigProductRef1 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef2 = new OASCdashigProductRef();
        OASCdashigProductRef cdashigProductRef3;

        System.assertEquals(false, cdashigProductRef1.equals(cdashigProductRef3));
        System.assertEquals(false, cdashigProductRef2.equals(cdashigProductRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductRef cdashigProductRef1 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef2 = new OASCdashigProductRef();

        System.assertEquals(cdashigProductRef1.hashCode(), cdashigProductRef1.hashCode());
        System.assertEquals(cdashigProductRef2.hashCode(), cdashigProductRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductRef cdashigProductRef1 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef2 = OASCdashigProductRef.getExample();
        OASCdashigProductRef cdashigProductRef3 = new OASCdashigProductRef();
        OASCdashigProductRef cdashigProductRef4 = new OASCdashigProductRef();

        System.assert(cdashigProductRef1.equals(cdashigProductRef2));
        System.assert(cdashigProductRef3.equals(cdashigProductRef4));
        System.assertEquals(cdashigProductRef1.hashCode(), cdashigProductRef2.hashCode());
        System.assertEquals(cdashigProductRef3.hashCode(), cdashigProductRef4.hashCode());
    }
}
