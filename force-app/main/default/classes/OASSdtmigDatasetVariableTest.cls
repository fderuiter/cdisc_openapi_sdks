@isTest
private class OASSdtmigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable1 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable2 = sdtmigDatasetVariable1;
        OASSdtmigDatasetVariable sdtmigDatasetVariable3 = new OASSdtmigDatasetVariable();
        OASSdtmigDatasetVariable sdtmigDatasetVariable4 = sdtmigDatasetVariable3;

        System.assert(sdtmigDatasetVariable1.equals(sdtmigDatasetVariable2));
        System.assert(sdtmigDatasetVariable2.equals(sdtmigDatasetVariable1));
        System.assert(sdtmigDatasetVariable1.equals(sdtmigDatasetVariable1));
        System.assert(sdtmigDatasetVariable3.equals(sdtmigDatasetVariable4));
        System.assert(sdtmigDatasetVariable4.equals(sdtmigDatasetVariable3));
        System.assert(sdtmigDatasetVariable3.equals(sdtmigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable1 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable2 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable3 = new OASSdtmigDatasetVariable();
        OASSdtmigDatasetVariable sdtmigDatasetVariable4 = new OASSdtmigDatasetVariable();

        System.assert(sdtmigDatasetVariable1.equals(sdtmigDatasetVariable2));
        System.assert(sdtmigDatasetVariable2.equals(sdtmigDatasetVariable1));
        System.assert(sdtmigDatasetVariable3.equals(sdtmigDatasetVariable4));
        System.assert(sdtmigDatasetVariable4.equals(sdtmigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable1 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable2 = new OASSdtmigDatasetVariable();

        System.assertEquals(false, sdtmigDatasetVariable1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable1 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable2 = new OASSdtmigDatasetVariable();
        OASSdtmigDatasetVariable sdtmigDatasetVariable3;

        System.assertEquals(false, sdtmigDatasetVariable1.equals(sdtmigDatasetVariable3));
        System.assertEquals(false, sdtmigDatasetVariable2.equals(sdtmigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable1 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable2 = new OASSdtmigDatasetVariable();

        System.assertEquals(sdtmigDatasetVariable1.hashCode(), sdtmigDatasetVariable1.hashCode());
        System.assertEquals(sdtmigDatasetVariable2.hashCode(), sdtmigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable1 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable2 = OASSdtmigDatasetVariable.getExample();
        OASSdtmigDatasetVariable sdtmigDatasetVariable3 = new OASSdtmigDatasetVariable();
        OASSdtmigDatasetVariable sdtmigDatasetVariable4 = new OASSdtmigDatasetVariable();

        System.assert(sdtmigDatasetVariable1.equals(sdtmigDatasetVariable2));
        System.assert(sdtmigDatasetVariable3.equals(sdtmigDatasetVariable4));
        System.assertEquals(sdtmigDatasetVariable1.hashCode(), sdtmigDatasetVariable2.hashCode());
        System.assertEquals(sdtmigDatasetVariable3.hashCode(), sdtmigDatasetVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable = new OASSdtmigDatasetVariable();
        Map<String, String> x-property-mappings = sdtmigDatasetVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigDatasetVariable sdtmigDatasetVariable = new OASSdtmigDatasetVariable();
        System.assertEquals(new List<String>(), sdtmigDatasetVariable.valueList);
        System.assertEquals(null, sdtmigDatasetVariable.ordinal);
        System.assertEquals(null, sdtmigDatasetVariable.name);
        System.assertEquals(null, sdtmigDatasetVariable.label);
        System.assertEquals(null, sdtmigDatasetVariable.description);
        System.assertEquals(null, sdtmigDatasetVariable.role);
        System.assertEquals(null, sdtmigDatasetVariable.simpleDatatype);
        System.assertEquals(null, sdtmigDatasetVariable.core);
        System.assertEquals(null, sdtmigDatasetVariable.describedValueDomain);
        System.assertEquals(null, sdtmigDatasetVariable.links);
    }
}
