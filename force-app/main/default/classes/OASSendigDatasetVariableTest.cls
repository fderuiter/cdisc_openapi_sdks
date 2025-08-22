@isTest
private class OASSendigDatasetVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASSendigDatasetVariable sendigDatasetVariable1 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable2 = sendigDatasetVariable1;
        OASSendigDatasetVariable sendigDatasetVariable3 = new OASSendigDatasetVariable();
        OASSendigDatasetVariable sendigDatasetVariable4 = sendigDatasetVariable3;

        System.assert(sendigDatasetVariable1.equals(sendigDatasetVariable2));
        System.assert(sendigDatasetVariable2.equals(sendigDatasetVariable1));
        System.assert(sendigDatasetVariable1.equals(sendigDatasetVariable1));
        System.assert(sendigDatasetVariable3.equals(sendigDatasetVariable4));
        System.assert(sendigDatasetVariable4.equals(sendigDatasetVariable3));
        System.assert(sendigDatasetVariable3.equals(sendigDatasetVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSendigDatasetVariable sendigDatasetVariable1 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable2 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable3 = new OASSendigDatasetVariable();
        OASSendigDatasetVariable sendigDatasetVariable4 = new OASSendigDatasetVariable();

        System.assert(sendigDatasetVariable1.equals(sendigDatasetVariable2));
        System.assert(sendigDatasetVariable2.equals(sendigDatasetVariable1));
        System.assert(sendigDatasetVariable3.equals(sendigDatasetVariable4));
        System.assert(sendigDatasetVariable4.equals(sendigDatasetVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSendigDatasetVariable sendigDatasetVariable1 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable2 = new OASSendigDatasetVariable();

        System.assertEquals(false, sendigDatasetVariable1.equals('foo'));
        System.assertEquals(false, sendigDatasetVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSendigDatasetVariable sendigDatasetVariable1 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable2 = new OASSendigDatasetVariable();
        OASSendigDatasetVariable sendigDatasetVariable3;

        System.assertEquals(false, sendigDatasetVariable1.equals(sendigDatasetVariable3));
        System.assertEquals(false, sendigDatasetVariable2.equals(sendigDatasetVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSendigDatasetVariable sendigDatasetVariable1 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable2 = new OASSendigDatasetVariable();

        System.assertEquals(sendigDatasetVariable1.hashCode(), sendigDatasetVariable1.hashCode());
        System.assertEquals(sendigDatasetVariable2.hashCode(), sendigDatasetVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSendigDatasetVariable sendigDatasetVariable1 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable2 = OASSendigDatasetVariable.getExample();
        OASSendigDatasetVariable sendigDatasetVariable3 = new OASSendigDatasetVariable();
        OASSendigDatasetVariable sendigDatasetVariable4 = new OASSendigDatasetVariable();

        System.assert(sendigDatasetVariable1.equals(sendigDatasetVariable2));
        System.assert(sendigDatasetVariable3.equals(sendigDatasetVariable4));
        System.assertEquals(sendigDatasetVariable1.hashCode(), sendigDatasetVariable2.hashCode());
        System.assertEquals(sendigDatasetVariable3.hashCode(), sendigDatasetVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASSendigDatasetVariable sendigDatasetVariable = new OASSendigDatasetVariable();
        Map<String, String> x-property-mappings = sendigDatasetVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSendigDatasetVariable sendigDatasetVariable = new OASSendigDatasetVariable();
        System.assertEquals(new List<String>(), sendigDatasetVariable.valueList);
        System.assertEquals(null, sendigDatasetVariable.ordinal);
        System.assertEquals(null, sendigDatasetVariable.name);
        System.assertEquals(null, sendigDatasetVariable.label);
        System.assertEquals(null, sendigDatasetVariable.description);
        System.assertEquals(null, sendigDatasetVariable.role);
        System.assertEquals(null, sendigDatasetVariable.simpleDatatype);
        System.assertEquals(null, sendigDatasetVariable.core);
        System.assertEquals(null, sendigDatasetVariable.describedValueDomain);
        System.assertEquals(null, sendigDatasetVariable.links);
    }
}
