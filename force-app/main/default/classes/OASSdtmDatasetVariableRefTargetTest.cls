@isTest
private class OASSdtmDatasetVariableRefTargetTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget1 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget2 = sdtmDatasetVariableRefTarget1;
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget3 = new OASSdtmDatasetVariableRefTarget();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget4 = sdtmDatasetVariableRefTarget3;

        System.assert(sdtmDatasetVariableRefTarget1.equals(sdtmDatasetVariableRefTarget2));
        System.assert(sdtmDatasetVariableRefTarget2.equals(sdtmDatasetVariableRefTarget1));
        System.assert(sdtmDatasetVariableRefTarget1.equals(sdtmDatasetVariableRefTarget1));
        System.assert(sdtmDatasetVariableRefTarget3.equals(sdtmDatasetVariableRefTarget4));
        System.assert(sdtmDatasetVariableRefTarget4.equals(sdtmDatasetVariableRefTarget3));
        System.assert(sdtmDatasetVariableRefTarget3.equals(sdtmDatasetVariableRefTarget3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget1 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget2 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget3 = new OASSdtmDatasetVariableRefTarget();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget4 = new OASSdtmDatasetVariableRefTarget();

        System.assert(sdtmDatasetVariableRefTarget1.equals(sdtmDatasetVariableRefTarget2));
        System.assert(sdtmDatasetVariableRefTarget2.equals(sdtmDatasetVariableRefTarget1));
        System.assert(sdtmDatasetVariableRefTarget3.equals(sdtmDatasetVariableRefTarget4));
        System.assert(sdtmDatasetVariableRefTarget4.equals(sdtmDatasetVariableRefTarget3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget1 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget2 = new OASSdtmDatasetVariableRefTarget();

        System.assertEquals(false, sdtmDatasetVariableRefTarget1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariableRefTarget2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget1 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget2 = new OASSdtmDatasetVariableRefTarget();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget3;

        System.assertEquals(false, sdtmDatasetVariableRefTarget1.equals(sdtmDatasetVariableRefTarget3));
        System.assertEquals(false, sdtmDatasetVariableRefTarget2.equals(sdtmDatasetVariableRefTarget3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget1 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget2 = new OASSdtmDatasetVariableRefTarget();

        System.assertEquals(sdtmDatasetVariableRefTarget1.hashCode(), sdtmDatasetVariableRefTarget1.hashCode());
        System.assertEquals(sdtmDatasetVariableRefTarget2.hashCode(), sdtmDatasetVariableRefTarget2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget1 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget2 = OASSdtmDatasetVariableRefTarget.getExample();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget3 = new OASSdtmDatasetVariableRefTarget();
        OASSdtmDatasetVariableRefTarget sdtmDatasetVariableRefTarget4 = new OASSdtmDatasetVariableRefTarget();

        System.assert(sdtmDatasetVariableRefTarget1.equals(sdtmDatasetVariableRefTarget2));
        System.assert(sdtmDatasetVariableRefTarget3.equals(sdtmDatasetVariableRefTarget4));
        System.assertEquals(sdtmDatasetVariableRefTarget1.hashCode(), sdtmDatasetVariableRefTarget2.hashCode());
        System.assertEquals(sdtmDatasetVariableRefTarget3.hashCode(), sdtmDatasetVariableRefTarget4.hashCode());
    }
}
