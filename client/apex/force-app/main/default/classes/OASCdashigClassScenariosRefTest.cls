@isTest
private class OASCdashigClassScenariosRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassScenariosRef cdashigClassScenariosRef1 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef2 = cdashigClassScenariosRef1;
        OASCdashigClassScenariosRef cdashigClassScenariosRef3 = new OASCdashigClassScenariosRef();
        OASCdashigClassScenariosRef cdashigClassScenariosRef4 = cdashigClassScenariosRef3;

        System.assert(cdashigClassScenariosRef1.equals(cdashigClassScenariosRef2));
        System.assert(cdashigClassScenariosRef2.equals(cdashigClassScenariosRef1));
        System.assert(cdashigClassScenariosRef1.equals(cdashigClassScenariosRef1));
        System.assert(cdashigClassScenariosRef3.equals(cdashigClassScenariosRef4));
        System.assert(cdashigClassScenariosRef4.equals(cdashigClassScenariosRef3));
        System.assert(cdashigClassScenariosRef3.equals(cdashigClassScenariosRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassScenariosRef cdashigClassScenariosRef1 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef2 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef3 = new OASCdashigClassScenariosRef();
        OASCdashigClassScenariosRef cdashigClassScenariosRef4 = new OASCdashigClassScenariosRef();

        System.assert(cdashigClassScenariosRef1.equals(cdashigClassScenariosRef2));
        System.assert(cdashigClassScenariosRef2.equals(cdashigClassScenariosRef1));
        System.assert(cdashigClassScenariosRef3.equals(cdashigClassScenariosRef4));
        System.assert(cdashigClassScenariosRef4.equals(cdashigClassScenariosRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassScenariosRef cdashigClassScenariosRef1 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef2 = new OASCdashigClassScenariosRef();

        System.assertEquals(false, cdashigClassScenariosRef1.equals('foo'));
        System.assertEquals(false, cdashigClassScenariosRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassScenariosRef cdashigClassScenariosRef1 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef2 = new OASCdashigClassScenariosRef();
        OASCdashigClassScenariosRef cdashigClassScenariosRef3;

        System.assertEquals(false, cdashigClassScenariosRef1.equals(cdashigClassScenariosRef3));
        System.assertEquals(false, cdashigClassScenariosRef2.equals(cdashigClassScenariosRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassScenariosRef cdashigClassScenariosRef1 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef2 = new OASCdashigClassScenariosRef();

        System.assertEquals(cdashigClassScenariosRef1.hashCode(), cdashigClassScenariosRef1.hashCode());
        System.assertEquals(cdashigClassScenariosRef2.hashCode(), cdashigClassScenariosRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassScenariosRef cdashigClassScenariosRef1 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef2 = OASCdashigClassScenariosRef.getExample();
        OASCdashigClassScenariosRef cdashigClassScenariosRef3 = new OASCdashigClassScenariosRef();
        OASCdashigClassScenariosRef cdashigClassScenariosRef4 = new OASCdashigClassScenariosRef();

        System.assert(cdashigClassScenariosRef1.equals(cdashigClassScenariosRef2));
        System.assert(cdashigClassScenariosRef3.equals(cdashigClassScenariosRef4));
        System.assertEquals(cdashigClassScenariosRef1.hashCode(), cdashigClassScenariosRef2.hashCode());
        System.assertEquals(cdashigClassScenariosRef3.hashCode(), cdashigClassScenariosRef4.hashCode());
    }
}
