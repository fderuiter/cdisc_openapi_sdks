@isTest
private class OASSdtmigDatasetVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef1 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef2 = sdtmigDatasetVariableRef1;
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef3 = new OASSdtmigDatasetVariableRef();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef4 = sdtmigDatasetVariableRef3;

        System.assert(sdtmigDatasetVariableRef1.equals(sdtmigDatasetVariableRef2));
        System.assert(sdtmigDatasetVariableRef2.equals(sdtmigDatasetVariableRef1));
        System.assert(sdtmigDatasetVariableRef1.equals(sdtmigDatasetVariableRef1));
        System.assert(sdtmigDatasetVariableRef3.equals(sdtmigDatasetVariableRef4));
        System.assert(sdtmigDatasetVariableRef4.equals(sdtmigDatasetVariableRef3));
        System.assert(sdtmigDatasetVariableRef3.equals(sdtmigDatasetVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef1 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef2 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef3 = new OASSdtmigDatasetVariableRef();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef4 = new OASSdtmigDatasetVariableRef();

        System.assert(sdtmigDatasetVariableRef1.equals(sdtmigDatasetVariableRef2));
        System.assert(sdtmigDatasetVariableRef2.equals(sdtmigDatasetVariableRef1));
        System.assert(sdtmigDatasetVariableRef3.equals(sdtmigDatasetVariableRef4));
        System.assert(sdtmigDatasetVariableRef4.equals(sdtmigDatasetVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef1 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef2 = new OASSdtmigDatasetVariableRef();

        System.assertEquals(false, sdtmigDatasetVariableRef1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef1 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef2 = new OASSdtmigDatasetVariableRef();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef3;

        System.assertEquals(false, sdtmigDatasetVariableRef1.equals(sdtmigDatasetVariableRef3));
        System.assertEquals(false, sdtmigDatasetVariableRef2.equals(sdtmigDatasetVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef1 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef2 = new OASSdtmigDatasetVariableRef();

        System.assertEquals(sdtmigDatasetVariableRef1.hashCode(), sdtmigDatasetVariableRef1.hashCode());
        System.assertEquals(sdtmigDatasetVariableRef2.hashCode(), sdtmigDatasetVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef1 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef2 = OASSdtmigDatasetVariableRef.getExample();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef3 = new OASSdtmigDatasetVariableRef();
        OASSdtmigDatasetVariableRef sdtmigDatasetVariableRef4 = new OASSdtmigDatasetVariableRef();

        System.assert(sdtmigDatasetVariableRef1.equals(sdtmigDatasetVariableRef2));
        System.assert(sdtmigDatasetVariableRef3.equals(sdtmigDatasetVariableRef4));
        System.assertEquals(sdtmigDatasetVariableRef1.hashCode(), sdtmigDatasetVariableRef2.hashCode());
        System.assertEquals(sdtmigDatasetVariableRef3.hashCode(), sdtmigDatasetVariableRef4.hashCode());
    }
}
