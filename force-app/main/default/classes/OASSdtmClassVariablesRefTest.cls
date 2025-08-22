@isTest
private class OASSdtmClassVariablesRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariablesRef sdtmClassVariablesRef1 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef2 = sdtmClassVariablesRef1;
        OASSdtmClassVariablesRef sdtmClassVariablesRef3 = new OASSdtmClassVariablesRef();
        OASSdtmClassVariablesRef sdtmClassVariablesRef4 = sdtmClassVariablesRef3;

        System.assert(sdtmClassVariablesRef1.equals(sdtmClassVariablesRef2));
        System.assert(sdtmClassVariablesRef2.equals(sdtmClassVariablesRef1));
        System.assert(sdtmClassVariablesRef1.equals(sdtmClassVariablesRef1));
        System.assert(sdtmClassVariablesRef3.equals(sdtmClassVariablesRef4));
        System.assert(sdtmClassVariablesRef4.equals(sdtmClassVariablesRef3));
        System.assert(sdtmClassVariablesRef3.equals(sdtmClassVariablesRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariablesRef sdtmClassVariablesRef1 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef2 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef3 = new OASSdtmClassVariablesRef();
        OASSdtmClassVariablesRef sdtmClassVariablesRef4 = new OASSdtmClassVariablesRef();

        System.assert(sdtmClassVariablesRef1.equals(sdtmClassVariablesRef2));
        System.assert(sdtmClassVariablesRef2.equals(sdtmClassVariablesRef1));
        System.assert(sdtmClassVariablesRef3.equals(sdtmClassVariablesRef4));
        System.assert(sdtmClassVariablesRef4.equals(sdtmClassVariablesRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariablesRef sdtmClassVariablesRef1 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef2 = new OASSdtmClassVariablesRef();

        System.assertEquals(false, sdtmClassVariablesRef1.equals('foo'));
        System.assertEquals(false, sdtmClassVariablesRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariablesRef sdtmClassVariablesRef1 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef2 = new OASSdtmClassVariablesRef();
        OASSdtmClassVariablesRef sdtmClassVariablesRef3;

        System.assertEquals(false, sdtmClassVariablesRef1.equals(sdtmClassVariablesRef3));
        System.assertEquals(false, sdtmClassVariablesRef2.equals(sdtmClassVariablesRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariablesRef sdtmClassVariablesRef1 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef2 = new OASSdtmClassVariablesRef();

        System.assertEquals(sdtmClassVariablesRef1.hashCode(), sdtmClassVariablesRef1.hashCode());
        System.assertEquals(sdtmClassVariablesRef2.hashCode(), sdtmClassVariablesRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariablesRef sdtmClassVariablesRef1 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef2 = OASSdtmClassVariablesRef.getExample();
        OASSdtmClassVariablesRef sdtmClassVariablesRef3 = new OASSdtmClassVariablesRef();
        OASSdtmClassVariablesRef sdtmClassVariablesRef4 = new OASSdtmClassVariablesRef();

        System.assert(sdtmClassVariablesRef1.equals(sdtmClassVariablesRef2));
        System.assert(sdtmClassVariablesRef3.equals(sdtmClassVariablesRef4));
        System.assertEquals(sdtmClassVariablesRef1.hashCode(), sdtmClassVariablesRef2.hashCode());
        System.assertEquals(sdtmClassVariablesRef3.hashCode(), sdtmClassVariablesRef4.hashCode());
    }
}
