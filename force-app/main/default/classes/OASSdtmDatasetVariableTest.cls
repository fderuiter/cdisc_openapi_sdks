@isTest
private class OASSdtmDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariable sdtmDatasetVariable1 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable2 = sdtmDatasetVariable1;
        OASSdtmDatasetVariable sdtmDatasetVariable3 = new OASSdtmDatasetVariable();
        OASSdtmDatasetVariable sdtmDatasetVariable4 = sdtmDatasetVariable3;

        System.assert(sdtmDatasetVariable1.equals(sdtmDatasetVariable2));
        System.assert(sdtmDatasetVariable2.equals(sdtmDatasetVariable1));
        System.assert(sdtmDatasetVariable1.equals(sdtmDatasetVariable1));
        System.assert(sdtmDatasetVariable3.equals(sdtmDatasetVariable4));
        System.assert(sdtmDatasetVariable4.equals(sdtmDatasetVariable3));
        System.assert(sdtmDatasetVariable3.equals(sdtmDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariable sdtmDatasetVariable1 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable2 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable3 = new OASSdtmDatasetVariable();
        OASSdtmDatasetVariable sdtmDatasetVariable4 = new OASSdtmDatasetVariable();

        System.assert(sdtmDatasetVariable1.equals(sdtmDatasetVariable2));
        System.assert(sdtmDatasetVariable2.equals(sdtmDatasetVariable1));
        System.assert(sdtmDatasetVariable3.equals(sdtmDatasetVariable4));
        System.assert(sdtmDatasetVariable4.equals(sdtmDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariable sdtmDatasetVariable1 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable2 = new OASSdtmDatasetVariable();

        System.assertEquals(false, sdtmDatasetVariable1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariable sdtmDatasetVariable1 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable2 = new OASSdtmDatasetVariable();
        OASSdtmDatasetVariable sdtmDatasetVariable3;

        System.assertEquals(false, sdtmDatasetVariable1.equals(sdtmDatasetVariable3));
        System.assertEquals(false, sdtmDatasetVariable2.equals(sdtmDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariable sdtmDatasetVariable1 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable2 = new OASSdtmDatasetVariable();

        System.assertEquals(sdtmDatasetVariable1.hashCode(), sdtmDatasetVariable1.hashCode());
        System.assertEquals(sdtmDatasetVariable2.hashCode(), sdtmDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariable sdtmDatasetVariable1 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable2 = OASSdtmDatasetVariable.getExample();
        OASSdtmDatasetVariable sdtmDatasetVariable3 = new OASSdtmDatasetVariable();
        OASSdtmDatasetVariable sdtmDatasetVariable4 = new OASSdtmDatasetVariable();

        System.assert(sdtmDatasetVariable1.equals(sdtmDatasetVariable2));
        System.assert(sdtmDatasetVariable3.equals(sdtmDatasetVariable4));
        System.assertEquals(sdtmDatasetVariable1.hashCode(), sdtmDatasetVariable2.hashCode());
        System.assertEquals(sdtmDatasetVariable3.hashCode(), sdtmDatasetVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmDatasetVariable sdtmDatasetVariable = new OASSdtmDatasetVariable();
        Map<String, String> x-property-mappings = sdtmDatasetVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
