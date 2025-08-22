@isTest
private class OASSdtmigProductRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigProductRef sdtmigProductRef1 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef2 = sdtmigProductRef1;
        OASSdtmigProductRef sdtmigProductRef3 = new OASSdtmigProductRef();
        OASSdtmigProductRef sdtmigProductRef4 = sdtmigProductRef3;

        System.assert(sdtmigProductRef1.equals(sdtmigProductRef2));
        System.assert(sdtmigProductRef2.equals(sdtmigProductRef1));
        System.assert(sdtmigProductRef1.equals(sdtmigProductRef1));
        System.assert(sdtmigProductRef3.equals(sdtmigProductRef4));
        System.assert(sdtmigProductRef4.equals(sdtmigProductRef3));
        System.assert(sdtmigProductRef3.equals(sdtmigProductRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigProductRef sdtmigProductRef1 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef2 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef3 = new OASSdtmigProductRef();
        OASSdtmigProductRef sdtmigProductRef4 = new OASSdtmigProductRef();

        System.assert(sdtmigProductRef1.equals(sdtmigProductRef2));
        System.assert(sdtmigProductRef2.equals(sdtmigProductRef1));
        System.assert(sdtmigProductRef3.equals(sdtmigProductRef4));
        System.assert(sdtmigProductRef4.equals(sdtmigProductRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigProductRef sdtmigProductRef1 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef2 = new OASSdtmigProductRef();

        System.assertEquals(false, sdtmigProductRef1.equals('foo'));
        System.assertEquals(false, sdtmigProductRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigProductRef sdtmigProductRef1 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef2 = new OASSdtmigProductRef();
        OASSdtmigProductRef sdtmigProductRef3;

        System.assertEquals(false, sdtmigProductRef1.equals(sdtmigProductRef3));
        System.assertEquals(false, sdtmigProductRef2.equals(sdtmigProductRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigProductRef sdtmigProductRef1 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef2 = new OASSdtmigProductRef();

        System.assertEquals(sdtmigProductRef1.hashCode(), sdtmigProductRef1.hashCode());
        System.assertEquals(sdtmigProductRef2.hashCode(), sdtmigProductRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigProductRef sdtmigProductRef1 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef2 = OASSdtmigProductRef.getExample();
        OASSdtmigProductRef sdtmigProductRef3 = new OASSdtmigProductRef();
        OASSdtmigProductRef sdtmigProductRef4 = new OASSdtmigProductRef();

        System.assert(sdtmigProductRef1.equals(sdtmigProductRef2));
        System.assert(sdtmigProductRef3.equals(sdtmigProductRef4));
        System.assertEquals(sdtmigProductRef1.hashCode(), sdtmigProductRef2.hashCode());
        System.assertEquals(sdtmigProductRef3.hashCode(), sdtmigProductRef4.hashCode());
    }
}
