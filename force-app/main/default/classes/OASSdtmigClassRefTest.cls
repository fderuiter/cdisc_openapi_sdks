@isTest
private class OASSdtmigClassRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassRef sdtmigClassRef1 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef2 = sdtmigClassRef1;
        OASSdtmigClassRef sdtmigClassRef3 = new OASSdtmigClassRef();
        OASSdtmigClassRef sdtmigClassRef4 = sdtmigClassRef3;

        System.assert(sdtmigClassRef1.equals(sdtmigClassRef2));
        System.assert(sdtmigClassRef2.equals(sdtmigClassRef1));
        System.assert(sdtmigClassRef1.equals(sdtmigClassRef1));
        System.assert(sdtmigClassRef3.equals(sdtmigClassRef4));
        System.assert(sdtmigClassRef4.equals(sdtmigClassRef3));
        System.assert(sdtmigClassRef3.equals(sdtmigClassRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassRef sdtmigClassRef1 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef2 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef3 = new OASSdtmigClassRef();
        OASSdtmigClassRef sdtmigClassRef4 = new OASSdtmigClassRef();

        System.assert(sdtmigClassRef1.equals(sdtmigClassRef2));
        System.assert(sdtmigClassRef2.equals(sdtmigClassRef1));
        System.assert(sdtmigClassRef3.equals(sdtmigClassRef4));
        System.assert(sdtmigClassRef4.equals(sdtmigClassRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassRef sdtmigClassRef1 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef2 = new OASSdtmigClassRef();

        System.assertEquals(false, sdtmigClassRef1.equals('foo'));
        System.assertEquals(false, sdtmigClassRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassRef sdtmigClassRef1 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef2 = new OASSdtmigClassRef();
        OASSdtmigClassRef sdtmigClassRef3;

        System.assertEquals(false, sdtmigClassRef1.equals(sdtmigClassRef3));
        System.assertEquals(false, sdtmigClassRef2.equals(sdtmigClassRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassRef sdtmigClassRef1 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef2 = new OASSdtmigClassRef();

        System.assertEquals(sdtmigClassRef1.hashCode(), sdtmigClassRef1.hashCode());
        System.assertEquals(sdtmigClassRef2.hashCode(), sdtmigClassRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassRef sdtmigClassRef1 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef2 = OASSdtmigClassRef.getExample();
        OASSdtmigClassRef sdtmigClassRef3 = new OASSdtmigClassRef();
        OASSdtmigClassRef sdtmigClassRef4 = new OASSdtmigClassRef();

        System.assert(sdtmigClassRef1.equals(sdtmigClassRef2));
        System.assert(sdtmigClassRef3.equals(sdtmigClassRef4));
        System.assertEquals(sdtmigClassRef1.hashCode(), sdtmigClassRef2.hashCode());
        System.assertEquals(sdtmigClassRef3.hashCode(), sdtmigClassRef4.hashCode());
    }
}
