@isTest
private class OASAdamVarsetTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVarset adamVarset1 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset2 = adamVarset1;
        OASAdamVarset adamVarset3 = new OASAdamVarset();
        OASAdamVarset adamVarset4 = adamVarset3;

        System.assert(adamVarset1.equals(adamVarset2));
        System.assert(adamVarset2.equals(adamVarset1));
        System.assert(adamVarset1.equals(adamVarset1));
        System.assert(adamVarset3.equals(adamVarset4));
        System.assert(adamVarset4.equals(adamVarset3));
        System.assert(adamVarset3.equals(adamVarset3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVarset adamVarset1 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset2 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset3 = new OASAdamVarset();
        OASAdamVarset adamVarset4 = new OASAdamVarset();

        System.assert(adamVarset1.equals(adamVarset2));
        System.assert(adamVarset2.equals(adamVarset1));
        System.assert(adamVarset3.equals(adamVarset4));
        System.assert(adamVarset4.equals(adamVarset3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVarset adamVarset1 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset2 = new OASAdamVarset();

        System.assertEquals(false, adamVarset1.equals('foo'));
        System.assertEquals(false, adamVarset2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVarset adamVarset1 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset2 = new OASAdamVarset();
        OASAdamVarset adamVarset3;

        System.assertEquals(false, adamVarset1.equals(adamVarset3));
        System.assertEquals(false, adamVarset2.equals(adamVarset3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVarset adamVarset1 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset2 = new OASAdamVarset();

        System.assertEquals(adamVarset1.hashCode(), adamVarset1.hashCode());
        System.assertEquals(adamVarset2.hashCode(), adamVarset2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVarset adamVarset1 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset2 = OASAdamVarset.getExample();
        OASAdamVarset adamVarset3 = new OASAdamVarset();
        OASAdamVarset adamVarset4 = new OASAdamVarset();

        System.assert(adamVarset1.equals(adamVarset2));
        System.assert(adamVarset3.equals(adamVarset4));
        System.assertEquals(adamVarset1.hashCode(), adamVarset2.hashCode());
        System.assertEquals(adamVarset3.hashCode(), adamVarset4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdamVarset adamVarset = new OASAdamVarset();
        Map<String, String> x-property-mappings = adamVarset.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAdamVarset adamVarset = new OASAdamVarset();
        System.assertEquals(new List<OASAdamVariable>(), adamVarset.analysisVariables);
        System.assertEquals(null, adamVarset.ordinal);
        System.assertEquals(null, adamVarset.name);
        System.assertEquals(null, adamVarset.label);
        System.assertEquals(null, adamVarset.description);
        System.assertEquals(null, adamVarset.links);
    }
}
