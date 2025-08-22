@isTest
private class OASCdashigClassRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassRef cdashigClassRef1 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef2 = cdashigClassRef1;
        OASCdashigClassRef cdashigClassRef3 = new OASCdashigClassRef();
        OASCdashigClassRef cdashigClassRef4 = cdashigClassRef3;

        System.assert(cdashigClassRef1.equals(cdashigClassRef2));
        System.assert(cdashigClassRef2.equals(cdashigClassRef1));
        System.assert(cdashigClassRef1.equals(cdashigClassRef1));
        System.assert(cdashigClassRef3.equals(cdashigClassRef4));
        System.assert(cdashigClassRef4.equals(cdashigClassRef3));
        System.assert(cdashigClassRef3.equals(cdashigClassRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassRef cdashigClassRef1 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef2 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef3 = new OASCdashigClassRef();
        OASCdashigClassRef cdashigClassRef4 = new OASCdashigClassRef();

        System.assert(cdashigClassRef1.equals(cdashigClassRef2));
        System.assert(cdashigClassRef2.equals(cdashigClassRef1));
        System.assert(cdashigClassRef3.equals(cdashigClassRef4));
        System.assert(cdashigClassRef4.equals(cdashigClassRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassRef cdashigClassRef1 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef2 = new OASCdashigClassRef();

        System.assertEquals(false, cdashigClassRef1.equals('foo'));
        System.assertEquals(false, cdashigClassRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassRef cdashigClassRef1 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef2 = new OASCdashigClassRef();
        OASCdashigClassRef cdashigClassRef3;

        System.assertEquals(false, cdashigClassRef1.equals(cdashigClassRef3));
        System.assertEquals(false, cdashigClassRef2.equals(cdashigClassRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassRef cdashigClassRef1 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef2 = new OASCdashigClassRef();

        System.assertEquals(cdashigClassRef1.hashCode(), cdashigClassRef1.hashCode());
        System.assertEquals(cdashigClassRef2.hashCode(), cdashigClassRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassRef cdashigClassRef1 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef2 = OASCdashigClassRef.getExample();
        OASCdashigClassRef cdashigClassRef3 = new OASCdashigClassRef();
        OASCdashigClassRef cdashigClassRef4 = new OASCdashigClassRef();

        System.assert(cdashigClassRef1.equals(cdashigClassRef2));
        System.assert(cdashigClassRef3.equals(cdashigClassRef4));
        System.assertEquals(cdashigClassRef1.hashCode(), cdashigClassRef2.hashCode());
        System.assertEquals(cdashigClassRef3.hashCode(), cdashigClassRef4.hashCode());
    }
}
