@isTest
private class OASSdtmProductRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmProductRef sdtmProductRef1 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef2 = sdtmProductRef1;
        OASSdtmProductRef sdtmProductRef3 = new OASSdtmProductRef();
        OASSdtmProductRef sdtmProductRef4 = sdtmProductRef3;

        System.assert(sdtmProductRef1.equals(sdtmProductRef2));
        System.assert(sdtmProductRef2.equals(sdtmProductRef1));
        System.assert(sdtmProductRef1.equals(sdtmProductRef1));
        System.assert(sdtmProductRef3.equals(sdtmProductRef4));
        System.assert(sdtmProductRef4.equals(sdtmProductRef3));
        System.assert(sdtmProductRef3.equals(sdtmProductRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmProductRef sdtmProductRef1 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef2 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef3 = new OASSdtmProductRef();
        OASSdtmProductRef sdtmProductRef4 = new OASSdtmProductRef();

        System.assert(sdtmProductRef1.equals(sdtmProductRef2));
        System.assert(sdtmProductRef2.equals(sdtmProductRef1));
        System.assert(sdtmProductRef3.equals(sdtmProductRef4));
        System.assert(sdtmProductRef4.equals(sdtmProductRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmProductRef sdtmProductRef1 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef2 = new OASSdtmProductRef();

        System.assertEquals(false, sdtmProductRef1.equals('foo'));
        System.assertEquals(false, sdtmProductRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmProductRef sdtmProductRef1 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef2 = new OASSdtmProductRef();
        OASSdtmProductRef sdtmProductRef3;

        System.assertEquals(false, sdtmProductRef1.equals(sdtmProductRef3));
        System.assertEquals(false, sdtmProductRef2.equals(sdtmProductRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmProductRef sdtmProductRef1 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef2 = new OASSdtmProductRef();

        System.assertEquals(sdtmProductRef1.hashCode(), sdtmProductRef1.hashCode());
        System.assertEquals(sdtmProductRef2.hashCode(), sdtmProductRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmProductRef sdtmProductRef1 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef2 = OASSdtmProductRef.getExample();
        OASSdtmProductRef sdtmProductRef3 = new OASSdtmProductRef();
        OASSdtmProductRef sdtmProductRef4 = new OASSdtmProductRef();

        System.assert(sdtmProductRef1.equals(sdtmProductRef2));
        System.assert(sdtmProductRef3.equals(sdtmProductRef4));
        System.assertEquals(sdtmProductRef1.hashCode(), sdtmProductRef2.hashCode());
        System.assertEquals(sdtmProductRef3.hashCode(), sdtmProductRef4.hashCode());
    }
}
