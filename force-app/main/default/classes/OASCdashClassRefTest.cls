@isTest
private class OASCdashClassRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassRef cdashClassRef1 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef2 = cdashClassRef1;
        OASCdashClassRef cdashClassRef3 = new OASCdashClassRef();
        OASCdashClassRef cdashClassRef4 = cdashClassRef3;

        System.assert(cdashClassRef1.equals(cdashClassRef2));
        System.assert(cdashClassRef2.equals(cdashClassRef1));
        System.assert(cdashClassRef1.equals(cdashClassRef1));
        System.assert(cdashClassRef3.equals(cdashClassRef4));
        System.assert(cdashClassRef4.equals(cdashClassRef3));
        System.assert(cdashClassRef3.equals(cdashClassRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassRef cdashClassRef1 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef2 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef3 = new OASCdashClassRef();
        OASCdashClassRef cdashClassRef4 = new OASCdashClassRef();

        System.assert(cdashClassRef1.equals(cdashClassRef2));
        System.assert(cdashClassRef2.equals(cdashClassRef1));
        System.assert(cdashClassRef3.equals(cdashClassRef4));
        System.assert(cdashClassRef4.equals(cdashClassRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassRef cdashClassRef1 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef2 = new OASCdashClassRef();

        System.assertEquals(false, cdashClassRef1.equals('foo'));
        System.assertEquals(false, cdashClassRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassRef cdashClassRef1 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef2 = new OASCdashClassRef();
        OASCdashClassRef cdashClassRef3;

        System.assertEquals(false, cdashClassRef1.equals(cdashClassRef3));
        System.assertEquals(false, cdashClassRef2.equals(cdashClassRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassRef cdashClassRef1 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef2 = new OASCdashClassRef();

        System.assertEquals(cdashClassRef1.hashCode(), cdashClassRef1.hashCode());
        System.assertEquals(cdashClassRef2.hashCode(), cdashClassRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassRef cdashClassRef1 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef2 = OASCdashClassRef.getExample();
        OASCdashClassRef cdashClassRef3 = new OASCdashClassRef();
        OASCdashClassRef cdashClassRef4 = new OASCdashClassRef();

        System.assert(cdashClassRef1.equals(cdashClassRef2));
        System.assert(cdashClassRef3.equals(cdashClassRef4));
        System.assertEquals(cdashClassRef1.hashCode(), cdashClassRef2.hashCode());
        System.assertEquals(cdashClassRef3.hashCode(), cdashClassRef4.hashCode());
    }
}
