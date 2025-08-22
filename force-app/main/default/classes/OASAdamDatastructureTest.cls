@isTest
private class OASAdamDatastructureTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructure adamDatastructure1 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure2 = adamDatastructure1;
        OASAdamDatastructure adamDatastructure3 = new OASAdamDatastructure();
        OASAdamDatastructure adamDatastructure4 = adamDatastructure3;

        System.assert(adamDatastructure1.equals(adamDatastructure2));
        System.assert(adamDatastructure2.equals(adamDatastructure1));
        System.assert(adamDatastructure1.equals(adamDatastructure1));
        System.assert(adamDatastructure3.equals(adamDatastructure4));
        System.assert(adamDatastructure4.equals(adamDatastructure3));
        System.assert(adamDatastructure3.equals(adamDatastructure3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructure adamDatastructure1 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure2 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure3 = new OASAdamDatastructure();
        OASAdamDatastructure adamDatastructure4 = new OASAdamDatastructure();

        System.assert(adamDatastructure1.equals(adamDatastructure2));
        System.assert(adamDatastructure2.equals(adamDatastructure1));
        System.assert(adamDatastructure3.equals(adamDatastructure4));
        System.assert(adamDatastructure4.equals(adamDatastructure3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructure adamDatastructure1 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure2 = new OASAdamDatastructure();

        System.assertEquals(false, adamDatastructure1.equals('foo'));
        System.assertEquals(false, adamDatastructure2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructure adamDatastructure1 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure2 = new OASAdamDatastructure();
        OASAdamDatastructure adamDatastructure3;

        System.assertEquals(false, adamDatastructure1.equals(adamDatastructure3));
        System.assertEquals(false, adamDatastructure2.equals(adamDatastructure3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructure adamDatastructure1 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure2 = new OASAdamDatastructure();

        System.assertEquals(adamDatastructure1.hashCode(), adamDatastructure1.hashCode());
        System.assertEquals(adamDatastructure2.hashCode(), adamDatastructure2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructure adamDatastructure1 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure2 = OASAdamDatastructure.getExample();
        OASAdamDatastructure adamDatastructure3 = new OASAdamDatastructure();
        OASAdamDatastructure adamDatastructure4 = new OASAdamDatastructure();

        System.assert(adamDatastructure1.equals(adamDatastructure2));
        System.assert(adamDatastructure3.equals(adamDatastructure4));
        System.assertEquals(adamDatastructure1.hashCode(), adamDatastructure2.hashCode());
        System.assertEquals(adamDatastructure3.hashCode(), adamDatastructure4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdamDatastructure adamDatastructure = new OASAdamDatastructure();
        Map<String, String> x-property-mappings = adamDatastructure.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAdamDatastructure adamDatastructure = new OASAdamDatastructure();
        System.assertEquals(new List<OASAdamVarset>(), adamDatastructure.analysisVariableSets);
        System.assertEquals(null, adamDatastructure.ordinal);
        System.assertEquals(null, adamDatastructure.name);
        System.assertEquals(null, adamDatastructure.label);
        System.assertEquals(null, adamDatastructure.description);
        System.assertEquals(null, adamDatastructure.propertyClass);
        System.assertEquals(null, adamDatastructure.links);
    }
}
