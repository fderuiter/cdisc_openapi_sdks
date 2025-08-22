@isTest
private class OASSdtmDatasetVariableRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef1 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef2 = sdtmDatasetVariableRef1;
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef3 = new OASSdtmDatasetVariableRef();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef4 = sdtmDatasetVariableRef3;

        System.assert(sdtmDatasetVariableRef1.equals(sdtmDatasetVariableRef2));
        System.assert(sdtmDatasetVariableRef2.equals(sdtmDatasetVariableRef1));
        System.assert(sdtmDatasetVariableRef1.equals(sdtmDatasetVariableRef1));
        System.assert(sdtmDatasetVariableRef3.equals(sdtmDatasetVariableRef4));
        System.assert(sdtmDatasetVariableRef4.equals(sdtmDatasetVariableRef3));
        System.assert(sdtmDatasetVariableRef3.equals(sdtmDatasetVariableRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef1 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef2 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef3 = new OASSdtmDatasetVariableRef();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef4 = new OASSdtmDatasetVariableRef();

        System.assert(sdtmDatasetVariableRef1.equals(sdtmDatasetVariableRef2));
        System.assert(sdtmDatasetVariableRef2.equals(sdtmDatasetVariableRef1));
        System.assert(sdtmDatasetVariableRef3.equals(sdtmDatasetVariableRef4));
        System.assert(sdtmDatasetVariableRef4.equals(sdtmDatasetVariableRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef1 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef2 = new OASSdtmDatasetVariableRef();

        System.assertEquals(false, sdtmDatasetVariableRef1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariableRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef1 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef2 = new OASSdtmDatasetVariableRef();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef3;

        System.assertEquals(false, sdtmDatasetVariableRef1.equals(sdtmDatasetVariableRef3));
        System.assertEquals(false, sdtmDatasetVariableRef2.equals(sdtmDatasetVariableRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef1 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef2 = new OASSdtmDatasetVariableRef();

        System.assertEquals(sdtmDatasetVariableRef1.hashCode(), sdtmDatasetVariableRef1.hashCode());
        System.assertEquals(sdtmDatasetVariableRef2.hashCode(), sdtmDatasetVariableRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef1 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef2 = OASSdtmDatasetVariableRef.getExample();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef3 = new OASSdtmDatasetVariableRef();
        OASSdtmDatasetVariableRef sdtmDatasetVariableRef4 = new OASSdtmDatasetVariableRef();

        System.assert(sdtmDatasetVariableRef1.equals(sdtmDatasetVariableRef2));
        System.assert(sdtmDatasetVariableRef3.equals(sdtmDatasetVariableRef4));
        System.assertEquals(sdtmDatasetVariableRef1.hashCode(), sdtmDatasetVariableRef2.hashCode());
        System.assertEquals(sdtmDatasetVariableRef3.hashCode(), sdtmDatasetVariableRef4.hashCode());
    }
}
