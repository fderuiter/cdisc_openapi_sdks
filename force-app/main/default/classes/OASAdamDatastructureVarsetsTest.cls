@isTest
private class OASAdamDatastructureVarsetsTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureVarsets adamDatastructureVarsets1 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets2 = adamDatastructureVarsets1;
        OASAdamDatastructureVarsets adamDatastructureVarsets3 = new OASAdamDatastructureVarsets();
        OASAdamDatastructureVarsets adamDatastructureVarsets4 = adamDatastructureVarsets3;

        System.assert(adamDatastructureVarsets1.equals(adamDatastructureVarsets2));
        System.assert(adamDatastructureVarsets2.equals(adamDatastructureVarsets1));
        System.assert(adamDatastructureVarsets1.equals(adamDatastructureVarsets1));
        System.assert(adamDatastructureVarsets3.equals(adamDatastructureVarsets4));
        System.assert(adamDatastructureVarsets4.equals(adamDatastructureVarsets3));
        System.assert(adamDatastructureVarsets3.equals(adamDatastructureVarsets3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureVarsets adamDatastructureVarsets1 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets2 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets3 = new OASAdamDatastructureVarsets();
        OASAdamDatastructureVarsets adamDatastructureVarsets4 = new OASAdamDatastructureVarsets();

        System.assert(adamDatastructureVarsets1.equals(adamDatastructureVarsets2));
        System.assert(adamDatastructureVarsets2.equals(adamDatastructureVarsets1));
        System.assert(adamDatastructureVarsets3.equals(adamDatastructureVarsets4));
        System.assert(adamDatastructureVarsets4.equals(adamDatastructureVarsets3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureVarsets adamDatastructureVarsets1 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets2 = new OASAdamDatastructureVarsets();

        System.assertEquals(false, adamDatastructureVarsets1.equals('foo'));
        System.assertEquals(false, adamDatastructureVarsets2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureVarsets adamDatastructureVarsets1 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets2 = new OASAdamDatastructureVarsets();
        OASAdamDatastructureVarsets adamDatastructureVarsets3;

        System.assertEquals(false, adamDatastructureVarsets1.equals(adamDatastructureVarsets3));
        System.assertEquals(false, adamDatastructureVarsets2.equals(adamDatastructureVarsets3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureVarsets adamDatastructureVarsets1 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets2 = new OASAdamDatastructureVarsets();

        System.assertEquals(adamDatastructureVarsets1.hashCode(), adamDatastructureVarsets1.hashCode());
        System.assertEquals(adamDatastructureVarsets2.hashCode(), adamDatastructureVarsets2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureVarsets adamDatastructureVarsets1 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets2 = OASAdamDatastructureVarsets.getExample();
        OASAdamDatastructureVarsets adamDatastructureVarsets3 = new OASAdamDatastructureVarsets();
        OASAdamDatastructureVarsets adamDatastructureVarsets4 = new OASAdamDatastructureVarsets();

        System.assert(adamDatastructureVarsets1.equals(adamDatastructureVarsets2));
        System.assert(adamDatastructureVarsets3.equals(adamDatastructureVarsets4));
        System.assertEquals(adamDatastructureVarsets1.hashCode(), adamDatastructureVarsets2.hashCode());
        System.assertEquals(adamDatastructureVarsets3.hashCode(), adamDatastructureVarsets4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASAdamDatastructureVarsets adamDatastructureVarsets = new OASAdamDatastructureVarsets();
        Map<String, String> x-property-mappings = adamDatastructureVarsets.getx-property-mappings();
        System.assertEquals('propertyClass', x-property-mappings.get('class'));
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
