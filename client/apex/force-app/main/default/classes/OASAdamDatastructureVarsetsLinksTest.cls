@isTest
private class OASAdamDatastructureVarsetsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks1 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks2 = adamDatastructureVarsetsLinks1;
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks3 = new OASAdamDatastructureVarsetsLinks();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks4 = adamDatastructureVarsetsLinks3;

        System.assert(adamDatastructureVarsetsLinks1.equals(adamDatastructureVarsetsLinks2));
        System.assert(adamDatastructureVarsetsLinks2.equals(adamDatastructureVarsetsLinks1));
        System.assert(adamDatastructureVarsetsLinks1.equals(adamDatastructureVarsetsLinks1));
        System.assert(adamDatastructureVarsetsLinks3.equals(adamDatastructureVarsetsLinks4));
        System.assert(adamDatastructureVarsetsLinks4.equals(adamDatastructureVarsetsLinks3));
        System.assert(adamDatastructureVarsetsLinks3.equals(adamDatastructureVarsetsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks1 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks2 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks3 = new OASAdamDatastructureVarsetsLinks();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks4 = new OASAdamDatastructureVarsetsLinks();

        System.assert(adamDatastructureVarsetsLinks1.equals(adamDatastructureVarsetsLinks2));
        System.assert(adamDatastructureVarsetsLinks2.equals(adamDatastructureVarsetsLinks1));
        System.assert(adamDatastructureVarsetsLinks3.equals(adamDatastructureVarsetsLinks4));
        System.assert(adamDatastructureVarsetsLinks4.equals(adamDatastructureVarsetsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks1 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks2 = new OASAdamDatastructureVarsetsLinks();

        System.assertEquals(false, adamDatastructureVarsetsLinks1.equals('foo'));
        System.assertEquals(false, adamDatastructureVarsetsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks1 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks2 = new OASAdamDatastructureVarsetsLinks();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks3;

        System.assertEquals(false, adamDatastructureVarsetsLinks1.equals(adamDatastructureVarsetsLinks3));
        System.assertEquals(false, adamDatastructureVarsetsLinks2.equals(adamDatastructureVarsetsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks1 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks2 = new OASAdamDatastructureVarsetsLinks();

        System.assertEquals(adamDatastructureVarsetsLinks1.hashCode(), adamDatastructureVarsetsLinks1.hashCode());
        System.assertEquals(adamDatastructureVarsetsLinks2.hashCode(), adamDatastructureVarsetsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks1 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks2 = OASAdamDatastructureVarsetsLinks.getExample();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks3 = new OASAdamDatastructureVarsetsLinks();
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks4 = new OASAdamDatastructureVarsetsLinks();

        System.assert(adamDatastructureVarsetsLinks1.equals(adamDatastructureVarsetsLinks2));
        System.assert(adamDatastructureVarsetsLinks3.equals(adamDatastructureVarsetsLinks4));
        System.assertEquals(adamDatastructureVarsetsLinks1.hashCode(), adamDatastructureVarsetsLinks2.hashCode());
        System.assertEquals(adamDatastructureVarsetsLinks3.hashCode(), adamDatastructureVarsetsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAdamDatastructureVarsetsLinks adamDatastructureVarsetsLinks = new OASAdamDatastructureVarsetsLinks();
        System.assertEquals(new List<OASAdamVarsetRefElement>(), adamDatastructureVarsetsLinks.analysisVariableSets);
        System.assertEquals(null, adamDatastructureVarsetsLinks.self);
        System.assertEquals(null, adamDatastructureVarsetsLinks.parentProduct);
        System.assertEquals(null, adamDatastructureVarsetsLinks.priorVersion);
    }
}
