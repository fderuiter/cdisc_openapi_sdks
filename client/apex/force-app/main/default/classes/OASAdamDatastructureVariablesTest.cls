@isTest
private class OASAdamDatastructureVariablesTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureVariables adamDatastructureVariables1 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables2 = adamDatastructureVariables1;
        OASAdamDatastructureVariables adamDatastructureVariables3 = new OASAdamDatastructureVariables();
        OASAdamDatastructureVariables adamDatastructureVariables4 = adamDatastructureVariables3;

        System.assert(adamDatastructureVariables1.equals(adamDatastructureVariables2));
        System.assert(adamDatastructureVariables2.equals(adamDatastructureVariables1));
        System.assert(adamDatastructureVariables1.equals(adamDatastructureVariables1));
        System.assert(adamDatastructureVariables3.equals(adamDatastructureVariables4));
        System.assert(adamDatastructureVariables4.equals(adamDatastructureVariables3));
        System.assert(adamDatastructureVariables3.equals(adamDatastructureVariables3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureVariables adamDatastructureVariables1 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables2 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables3 = new OASAdamDatastructureVariables();
        OASAdamDatastructureVariables adamDatastructureVariables4 = new OASAdamDatastructureVariables();

        System.assert(adamDatastructureVariables1.equals(adamDatastructureVariables2));
        System.assert(adamDatastructureVariables2.equals(adamDatastructureVariables1));
        System.assert(adamDatastructureVariables3.equals(adamDatastructureVariables4));
        System.assert(adamDatastructureVariables4.equals(adamDatastructureVariables3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureVariables adamDatastructureVariables1 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables2 = new OASAdamDatastructureVariables();

        System.assertEquals(false, adamDatastructureVariables1.equals('foo'));
        System.assertEquals(false, adamDatastructureVariables2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureVariables adamDatastructureVariables1 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables2 = new OASAdamDatastructureVariables();
        OASAdamDatastructureVariables adamDatastructureVariables3;

        System.assertEquals(false, adamDatastructureVariables1.equals(adamDatastructureVariables3));
        System.assertEquals(false, adamDatastructureVariables2.equals(adamDatastructureVariables3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureVariables adamDatastructureVariables1 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables2 = new OASAdamDatastructureVariables();

        System.assertEquals(adamDatastructureVariables1.hashCode(), adamDatastructureVariables1.hashCode());
        System.assertEquals(adamDatastructureVariables2.hashCode(), adamDatastructureVariables2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureVariables adamDatastructureVariables1 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables2 = OASAdamDatastructureVariables.getExample();
        OASAdamDatastructureVariables adamDatastructureVariables3 = new OASAdamDatastructureVariables();
        OASAdamDatastructureVariables adamDatastructureVariables4 = new OASAdamDatastructureVariables();

        System.assert(adamDatastructureVariables1.equals(adamDatastructureVariables2));
        System.assert(adamDatastructureVariables3.equals(adamDatastructureVariables4));
        System.assertEquals(adamDatastructureVariables1.hashCode(), adamDatastructureVariables2.hashCode());
        System.assertEquals(adamDatastructureVariables3.hashCode(), adamDatastructureVariables4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdamDatastructureVariables adamDatastructureVariables = new OASAdamDatastructureVariables();
        Map<String, String> x-property-mappings = adamDatastructureVariables.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
