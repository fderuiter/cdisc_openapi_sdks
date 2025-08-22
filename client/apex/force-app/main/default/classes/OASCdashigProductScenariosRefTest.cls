@isTest
private class OASCdashigProductScenariosRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductScenariosRef cdashigProductScenariosRef1 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef2 = cdashigProductScenariosRef1;
        OASCdashigProductScenariosRef cdashigProductScenariosRef3 = new OASCdashigProductScenariosRef();
        OASCdashigProductScenariosRef cdashigProductScenariosRef4 = cdashigProductScenariosRef3;

        System.assert(cdashigProductScenariosRef1.equals(cdashigProductScenariosRef2));
        System.assert(cdashigProductScenariosRef2.equals(cdashigProductScenariosRef1));
        System.assert(cdashigProductScenariosRef1.equals(cdashigProductScenariosRef1));
        System.assert(cdashigProductScenariosRef3.equals(cdashigProductScenariosRef4));
        System.assert(cdashigProductScenariosRef4.equals(cdashigProductScenariosRef3));
        System.assert(cdashigProductScenariosRef3.equals(cdashigProductScenariosRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductScenariosRef cdashigProductScenariosRef1 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef2 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef3 = new OASCdashigProductScenariosRef();
        OASCdashigProductScenariosRef cdashigProductScenariosRef4 = new OASCdashigProductScenariosRef();

        System.assert(cdashigProductScenariosRef1.equals(cdashigProductScenariosRef2));
        System.assert(cdashigProductScenariosRef2.equals(cdashigProductScenariosRef1));
        System.assert(cdashigProductScenariosRef3.equals(cdashigProductScenariosRef4));
        System.assert(cdashigProductScenariosRef4.equals(cdashigProductScenariosRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductScenariosRef cdashigProductScenariosRef1 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef2 = new OASCdashigProductScenariosRef();

        System.assertEquals(false, cdashigProductScenariosRef1.equals('foo'));
        System.assertEquals(false, cdashigProductScenariosRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductScenariosRef cdashigProductScenariosRef1 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef2 = new OASCdashigProductScenariosRef();
        OASCdashigProductScenariosRef cdashigProductScenariosRef3;

        System.assertEquals(false, cdashigProductScenariosRef1.equals(cdashigProductScenariosRef3));
        System.assertEquals(false, cdashigProductScenariosRef2.equals(cdashigProductScenariosRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductScenariosRef cdashigProductScenariosRef1 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef2 = new OASCdashigProductScenariosRef();

        System.assertEquals(cdashigProductScenariosRef1.hashCode(), cdashigProductScenariosRef1.hashCode());
        System.assertEquals(cdashigProductScenariosRef2.hashCode(), cdashigProductScenariosRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductScenariosRef cdashigProductScenariosRef1 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef2 = OASCdashigProductScenariosRef.getExample();
        OASCdashigProductScenariosRef cdashigProductScenariosRef3 = new OASCdashigProductScenariosRef();
        OASCdashigProductScenariosRef cdashigProductScenariosRef4 = new OASCdashigProductScenariosRef();

        System.assert(cdashigProductScenariosRef1.equals(cdashigProductScenariosRef2));
        System.assert(cdashigProductScenariosRef3.equals(cdashigProductScenariosRef4));
        System.assertEquals(cdashigProductScenariosRef1.hashCode(), cdashigProductScenariosRef2.hashCode());
        System.assertEquals(cdashigProductScenariosRef3.hashCode(), cdashigProductScenariosRef4.hashCode());
    }
}
