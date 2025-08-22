@isTest
private class OASSdtmigDatasetVariableRefTargetTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget1 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget2 = sdtmigDatasetVariableRefTarget1;
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget3 = new OASSdtmigDatasetVariableRefTarget();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget4 = sdtmigDatasetVariableRefTarget3;

        System.assert(sdtmigDatasetVariableRefTarget1.equals(sdtmigDatasetVariableRefTarget2));
        System.assert(sdtmigDatasetVariableRefTarget2.equals(sdtmigDatasetVariableRefTarget1));
        System.assert(sdtmigDatasetVariableRefTarget1.equals(sdtmigDatasetVariableRefTarget1));
        System.assert(sdtmigDatasetVariableRefTarget3.equals(sdtmigDatasetVariableRefTarget4));
        System.assert(sdtmigDatasetVariableRefTarget4.equals(sdtmigDatasetVariableRefTarget3));
        System.assert(sdtmigDatasetVariableRefTarget3.equals(sdtmigDatasetVariableRefTarget3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget1 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget2 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget3 = new OASSdtmigDatasetVariableRefTarget();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget4 = new OASSdtmigDatasetVariableRefTarget();

        System.assert(sdtmigDatasetVariableRefTarget1.equals(sdtmigDatasetVariableRefTarget2));
        System.assert(sdtmigDatasetVariableRefTarget2.equals(sdtmigDatasetVariableRefTarget1));
        System.assert(sdtmigDatasetVariableRefTarget3.equals(sdtmigDatasetVariableRefTarget4));
        System.assert(sdtmigDatasetVariableRefTarget4.equals(sdtmigDatasetVariableRefTarget3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget1 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget2 = new OASSdtmigDatasetVariableRefTarget();

        System.assertEquals(false, sdtmigDatasetVariableRefTarget1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariableRefTarget2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget1 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget2 = new OASSdtmigDatasetVariableRefTarget();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget3;

        System.assertEquals(false, sdtmigDatasetVariableRefTarget1.equals(sdtmigDatasetVariableRefTarget3));
        System.assertEquals(false, sdtmigDatasetVariableRefTarget2.equals(sdtmigDatasetVariableRefTarget3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget1 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget2 = new OASSdtmigDatasetVariableRefTarget();

        System.assertEquals(sdtmigDatasetVariableRefTarget1.hashCode(), sdtmigDatasetVariableRefTarget1.hashCode());
        System.assertEquals(sdtmigDatasetVariableRefTarget2.hashCode(), sdtmigDatasetVariableRefTarget2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget1 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget2 = OASSdtmigDatasetVariableRefTarget.getExample();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget3 = new OASSdtmigDatasetVariableRefTarget();
        OASSdtmigDatasetVariableRefTarget sdtmigDatasetVariableRefTarget4 = new OASSdtmigDatasetVariableRefTarget();

        System.assert(sdtmigDatasetVariableRefTarget1.equals(sdtmigDatasetVariableRefTarget2));
        System.assert(sdtmigDatasetVariableRefTarget3.equals(sdtmigDatasetVariableRefTarget4));
        System.assertEquals(sdtmigDatasetVariableRefTarget1.hashCode(), sdtmigDatasetVariableRefTarget2.hashCode());
        System.assertEquals(sdtmigDatasetVariableRefTarget3.hashCode(), sdtmigDatasetVariableRefTarget4.hashCode());
    }
}
