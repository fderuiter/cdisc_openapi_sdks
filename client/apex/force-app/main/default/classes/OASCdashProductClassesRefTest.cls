@isTest
private class OASCdashProductClassesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductClassesRef cdashProductClassesRef1 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef2 = cdashProductClassesRef1;
        OASCdashProductClassesRef cdashProductClassesRef3 = new OASCdashProductClassesRef();
        OASCdashProductClassesRef cdashProductClassesRef4 = cdashProductClassesRef3;

        System.assert(cdashProductClassesRef1.equals(cdashProductClassesRef2));
        System.assert(cdashProductClassesRef2.equals(cdashProductClassesRef1));
        System.assert(cdashProductClassesRef1.equals(cdashProductClassesRef1));
        System.assert(cdashProductClassesRef3.equals(cdashProductClassesRef4));
        System.assert(cdashProductClassesRef4.equals(cdashProductClassesRef3));
        System.assert(cdashProductClassesRef3.equals(cdashProductClassesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductClassesRef cdashProductClassesRef1 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef2 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef3 = new OASCdashProductClassesRef();
        OASCdashProductClassesRef cdashProductClassesRef4 = new OASCdashProductClassesRef();

        System.assert(cdashProductClassesRef1.equals(cdashProductClassesRef2));
        System.assert(cdashProductClassesRef2.equals(cdashProductClassesRef1));
        System.assert(cdashProductClassesRef3.equals(cdashProductClassesRef4));
        System.assert(cdashProductClassesRef4.equals(cdashProductClassesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductClassesRef cdashProductClassesRef1 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef2 = new OASCdashProductClassesRef();

        System.assertEquals(false, cdashProductClassesRef1.equals('foo'));
        System.assertEquals(false, cdashProductClassesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductClassesRef cdashProductClassesRef1 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef2 = new OASCdashProductClassesRef();
        OASCdashProductClassesRef cdashProductClassesRef3;

        System.assertEquals(false, cdashProductClassesRef1.equals(cdashProductClassesRef3));
        System.assertEquals(false, cdashProductClassesRef2.equals(cdashProductClassesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductClassesRef cdashProductClassesRef1 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef2 = new OASCdashProductClassesRef();

        System.assertEquals(cdashProductClassesRef1.hashCode(), cdashProductClassesRef1.hashCode());
        System.assertEquals(cdashProductClassesRef2.hashCode(), cdashProductClassesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductClassesRef cdashProductClassesRef1 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef2 = OASCdashProductClassesRef.getExample();
        OASCdashProductClassesRef cdashProductClassesRef3 = new OASCdashProductClassesRef();
        OASCdashProductClassesRef cdashProductClassesRef4 = new OASCdashProductClassesRef();

        System.assert(cdashProductClassesRef1.equals(cdashProductClassesRef2));
        System.assert(cdashProductClassesRef3.equals(cdashProductClassesRef4));
        System.assertEquals(cdashProductClassesRef1.hashCode(), cdashProductClassesRef2.hashCode());
        System.assertEquals(cdashProductClassesRef3.hashCode(), cdashProductClassesRef4.hashCode());
    }
}
