@isTest
private class OASAdamVariableTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVariable adamVariable1 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable2 = adamVariable1;
        OASAdamVariable adamVariable3 = new OASAdamVariable();
        OASAdamVariable adamVariable4 = adamVariable3;

        System.assert(adamVariable1.equals(adamVariable2));
        System.assert(adamVariable2.equals(adamVariable1));
        System.assert(adamVariable1.equals(adamVariable1));
        System.assert(adamVariable3.equals(adamVariable4));
        System.assert(adamVariable4.equals(adamVariable3));
        System.assert(adamVariable3.equals(adamVariable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVariable adamVariable1 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable2 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable3 = new OASAdamVariable();
        OASAdamVariable adamVariable4 = new OASAdamVariable();

        System.assert(adamVariable1.equals(adamVariable2));
        System.assert(adamVariable2.equals(adamVariable1));
        System.assert(adamVariable3.equals(adamVariable4));
        System.assert(adamVariable4.equals(adamVariable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVariable adamVariable1 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable2 = new OASAdamVariable();

        System.assertEquals(false, adamVariable1.equals('foo'));
        System.assertEquals(false, adamVariable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVariable adamVariable1 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable2 = new OASAdamVariable();
        OASAdamVariable adamVariable3;

        System.assertEquals(false, adamVariable1.equals(adamVariable3));
        System.assertEquals(false, adamVariable2.equals(adamVariable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVariable adamVariable1 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable2 = new OASAdamVariable();

        System.assertEquals(adamVariable1.hashCode(), adamVariable1.hashCode());
        System.assertEquals(adamVariable2.hashCode(), adamVariable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVariable adamVariable1 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable2 = OASAdamVariable.getExample();
        OASAdamVariable adamVariable3 = new OASAdamVariable();
        OASAdamVariable adamVariable4 = new OASAdamVariable();

        System.assert(adamVariable1.equals(adamVariable2));
        System.assert(adamVariable3.equals(adamVariable4));
        System.assertEquals(adamVariable1.hashCode(), adamVariable2.hashCode());
        System.assertEquals(adamVariable3.hashCode(), adamVariable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdamVariable adamVariable = new OASAdamVariable();
        Map<String, String> x-property-mappings = adamVariable.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAdamVariable adamVariable = new OASAdamVariable();
        System.assertEquals(new List<String>(), adamVariable.valueList);
        System.assertEquals(null, adamVariable.ordinal);
        System.assertEquals(null, adamVariable.name);
        System.assertEquals(null, adamVariable.label);
        System.assertEquals(null, adamVariable.description);
        System.assertEquals(null, adamVariable.core);
        System.assertEquals(null, adamVariable.simpleDatatype);
        System.assertEquals(null, adamVariable.describedValueDomain);
        System.assertEquals(null, adamVariable.links);
    }
}
