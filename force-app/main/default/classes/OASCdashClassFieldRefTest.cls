@isTest
private class OASCdashClassFieldRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassFieldRef cdashClassFieldRef1 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef2 = cdashClassFieldRef1;
        OASCdashClassFieldRef cdashClassFieldRef3 = new OASCdashClassFieldRef();
        OASCdashClassFieldRef cdashClassFieldRef4 = cdashClassFieldRef3;

        System.assert(cdashClassFieldRef1.equals(cdashClassFieldRef2));
        System.assert(cdashClassFieldRef2.equals(cdashClassFieldRef1));
        System.assert(cdashClassFieldRef1.equals(cdashClassFieldRef1));
        System.assert(cdashClassFieldRef3.equals(cdashClassFieldRef4));
        System.assert(cdashClassFieldRef4.equals(cdashClassFieldRef3));
        System.assert(cdashClassFieldRef3.equals(cdashClassFieldRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassFieldRef cdashClassFieldRef1 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef2 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef3 = new OASCdashClassFieldRef();
        OASCdashClassFieldRef cdashClassFieldRef4 = new OASCdashClassFieldRef();

        System.assert(cdashClassFieldRef1.equals(cdashClassFieldRef2));
        System.assert(cdashClassFieldRef2.equals(cdashClassFieldRef1));
        System.assert(cdashClassFieldRef3.equals(cdashClassFieldRef4));
        System.assert(cdashClassFieldRef4.equals(cdashClassFieldRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassFieldRef cdashClassFieldRef1 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef2 = new OASCdashClassFieldRef();

        System.assertEquals(false, cdashClassFieldRef1.equals('foo'));
        System.assertEquals(false, cdashClassFieldRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassFieldRef cdashClassFieldRef1 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef2 = new OASCdashClassFieldRef();
        OASCdashClassFieldRef cdashClassFieldRef3;

        System.assertEquals(false, cdashClassFieldRef1.equals(cdashClassFieldRef3));
        System.assertEquals(false, cdashClassFieldRef2.equals(cdashClassFieldRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassFieldRef cdashClassFieldRef1 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef2 = new OASCdashClassFieldRef();

        System.assertEquals(cdashClassFieldRef1.hashCode(), cdashClassFieldRef1.hashCode());
        System.assertEquals(cdashClassFieldRef2.hashCode(), cdashClassFieldRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassFieldRef cdashClassFieldRef1 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef2 = OASCdashClassFieldRef.getExample();
        OASCdashClassFieldRef cdashClassFieldRef3 = new OASCdashClassFieldRef();
        OASCdashClassFieldRef cdashClassFieldRef4 = new OASCdashClassFieldRef();

        System.assert(cdashClassFieldRef1.equals(cdashClassFieldRef2));
        System.assert(cdashClassFieldRef3.equals(cdashClassFieldRef4));
        System.assertEquals(cdashClassFieldRef1.hashCode(), cdashClassFieldRef2.hashCode());
        System.assertEquals(cdashClassFieldRef3.hashCode(), cdashClassFieldRef4.hashCode());
    }
}
