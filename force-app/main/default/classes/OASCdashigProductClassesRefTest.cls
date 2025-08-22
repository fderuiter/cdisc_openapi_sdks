@isTest
private class OASCdashigProductClassesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductClassesRef cdashigProductClassesRef1 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef2 = cdashigProductClassesRef1;
        OASCdashigProductClassesRef cdashigProductClassesRef3 = new OASCdashigProductClassesRef();
        OASCdashigProductClassesRef cdashigProductClassesRef4 = cdashigProductClassesRef3;

        System.assert(cdashigProductClassesRef1.equals(cdashigProductClassesRef2));
        System.assert(cdashigProductClassesRef2.equals(cdashigProductClassesRef1));
        System.assert(cdashigProductClassesRef1.equals(cdashigProductClassesRef1));
        System.assert(cdashigProductClassesRef3.equals(cdashigProductClassesRef4));
        System.assert(cdashigProductClassesRef4.equals(cdashigProductClassesRef3));
        System.assert(cdashigProductClassesRef3.equals(cdashigProductClassesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductClassesRef cdashigProductClassesRef1 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef2 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef3 = new OASCdashigProductClassesRef();
        OASCdashigProductClassesRef cdashigProductClassesRef4 = new OASCdashigProductClassesRef();

        System.assert(cdashigProductClassesRef1.equals(cdashigProductClassesRef2));
        System.assert(cdashigProductClassesRef2.equals(cdashigProductClassesRef1));
        System.assert(cdashigProductClassesRef3.equals(cdashigProductClassesRef4));
        System.assert(cdashigProductClassesRef4.equals(cdashigProductClassesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductClassesRef cdashigProductClassesRef1 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef2 = new OASCdashigProductClassesRef();

        System.assertEquals(false, cdashigProductClassesRef1.equals('foo'));
        System.assertEquals(false, cdashigProductClassesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductClassesRef cdashigProductClassesRef1 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef2 = new OASCdashigProductClassesRef();
        OASCdashigProductClassesRef cdashigProductClassesRef3;

        System.assertEquals(false, cdashigProductClassesRef1.equals(cdashigProductClassesRef3));
        System.assertEquals(false, cdashigProductClassesRef2.equals(cdashigProductClassesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductClassesRef cdashigProductClassesRef1 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef2 = new OASCdashigProductClassesRef();

        System.assertEquals(cdashigProductClassesRef1.hashCode(), cdashigProductClassesRef1.hashCode());
        System.assertEquals(cdashigProductClassesRef2.hashCode(), cdashigProductClassesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductClassesRef cdashigProductClassesRef1 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef2 = OASCdashigProductClassesRef.getExample();
        OASCdashigProductClassesRef cdashigProductClassesRef3 = new OASCdashigProductClassesRef();
        OASCdashigProductClassesRef cdashigProductClassesRef4 = new OASCdashigProductClassesRef();

        System.assert(cdashigProductClassesRef1.equals(cdashigProductClassesRef2));
        System.assert(cdashigProductClassesRef3.equals(cdashigProductClassesRef4));
        System.assertEquals(cdashigProductClassesRef1.hashCode(), cdashigProductClassesRef2.hashCode());
        System.assertEquals(cdashigProductClassesRef3.hashCode(), cdashigProductClassesRef4.hashCode());
    }
}
