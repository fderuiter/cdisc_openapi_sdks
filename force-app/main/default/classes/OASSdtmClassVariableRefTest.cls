@isTest
private class OASSdtmClassVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariableRef sdtmClassVariableRef1 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef2 = sdtmClassVariableRef1;
        OASSdtmClassVariableRef sdtmClassVariableRef3 = new OASSdtmClassVariableRef();
        OASSdtmClassVariableRef sdtmClassVariableRef4 = sdtmClassVariableRef3;

        System.assert(sdtmClassVariableRef1.equals(sdtmClassVariableRef2));
        System.assert(sdtmClassVariableRef2.equals(sdtmClassVariableRef1));
        System.assert(sdtmClassVariableRef1.equals(sdtmClassVariableRef1));
        System.assert(sdtmClassVariableRef3.equals(sdtmClassVariableRef4));
        System.assert(sdtmClassVariableRef4.equals(sdtmClassVariableRef3));
        System.assert(sdtmClassVariableRef3.equals(sdtmClassVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariableRef sdtmClassVariableRef1 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef2 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef3 = new OASSdtmClassVariableRef();
        OASSdtmClassVariableRef sdtmClassVariableRef4 = new OASSdtmClassVariableRef();

        System.assert(sdtmClassVariableRef1.equals(sdtmClassVariableRef2));
        System.assert(sdtmClassVariableRef2.equals(sdtmClassVariableRef1));
        System.assert(sdtmClassVariableRef3.equals(sdtmClassVariableRef4));
        System.assert(sdtmClassVariableRef4.equals(sdtmClassVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariableRef sdtmClassVariableRef1 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef2 = new OASSdtmClassVariableRef();

        System.assertEquals(false, sdtmClassVariableRef1.equals('foo'));
        System.assertEquals(false, sdtmClassVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariableRef sdtmClassVariableRef1 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef2 = new OASSdtmClassVariableRef();
        OASSdtmClassVariableRef sdtmClassVariableRef3;

        System.assertEquals(false, sdtmClassVariableRef1.equals(sdtmClassVariableRef3));
        System.assertEquals(false, sdtmClassVariableRef2.equals(sdtmClassVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariableRef sdtmClassVariableRef1 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef2 = new OASSdtmClassVariableRef();

        System.assertEquals(sdtmClassVariableRef1.hashCode(), sdtmClassVariableRef1.hashCode());
        System.assertEquals(sdtmClassVariableRef2.hashCode(), sdtmClassVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariableRef sdtmClassVariableRef1 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef2 = OASSdtmClassVariableRef.getExample();
        OASSdtmClassVariableRef sdtmClassVariableRef3 = new OASSdtmClassVariableRef();
        OASSdtmClassVariableRef sdtmClassVariableRef4 = new OASSdtmClassVariableRef();

        System.assert(sdtmClassVariableRef1.equals(sdtmClassVariableRef2));
        System.assert(sdtmClassVariableRef3.equals(sdtmClassVariableRef4));
        System.assertEquals(sdtmClassVariableRef1.hashCode(), sdtmClassVariableRef2.hashCode());
        System.assertEquals(sdtmClassVariableRef3.hashCode(), sdtmClassVariableRef4.hashCode());
    }
}
