@isTest
private class OASAdamDatastructureVariablesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks1 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks2 = adamDatastructureVariablesLinks1;
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks3 = new OASAdamDatastructureVariablesLinks();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks4 = adamDatastructureVariablesLinks3;

        System.assert(adamDatastructureVariablesLinks1.equals(adamDatastructureVariablesLinks2));
        System.assert(adamDatastructureVariablesLinks2.equals(adamDatastructureVariablesLinks1));
        System.assert(adamDatastructureVariablesLinks1.equals(adamDatastructureVariablesLinks1));
        System.assert(adamDatastructureVariablesLinks3.equals(adamDatastructureVariablesLinks4));
        System.assert(adamDatastructureVariablesLinks4.equals(adamDatastructureVariablesLinks3));
        System.assert(adamDatastructureVariablesLinks3.equals(adamDatastructureVariablesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks1 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks2 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks3 = new OASAdamDatastructureVariablesLinks();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks4 = new OASAdamDatastructureVariablesLinks();

        System.assert(adamDatastructureVariablesLinks1.equals(adamDatastructureVariablesLinks2));
        System.assert(adamDatastructureVariablesLinks2.equals(adamDatastructureVariablesLinks1));
        System.assert(adamDatastructureVariablesLinks3.equals(adamDatastructureVariablesLinks4));
        System.assert(adamDatastructureVariablesLinks4.equals(adamDatastructureVariablesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks1 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks2 = new OASAdamDatastructureVariablesLinks();

        System.assertEquals(false, adamDatastructureVariablesLinks1.equals('foo'));
        System.assertEquals(false, adamDatastructureVariablesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks1 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks2 = new OASAdamDatastructureVariablesLinks();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks3;

        System.assertEquals(false, adamDatastructureVariablesLinks1.equals(adamDatastructureVariablesLinks3));
        System.assertEquals(false, adamDatastructureVariablesLinks2.equals(adamDatastructureVariablesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks1 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks2 = new OASAdamDatastructureVariablesLinks();

        System.assertEquals(adamDatastructureVariablesLinks1.hashCode(), adamDatastructureVariablesLinks1.hashCode());
        System.assertEquals(adamDatastructureVariablesLinks2.hashCode(), adamDatastructureVariablesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks1 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks2 = OASAdamDatastructureVariablesLinks.getExample();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks3 = new OASAdamDatastructureVariablesLinks();
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks4 = new OASAdamDatastructureVariablesLinks();

        System.assert(adamDatastructureVariablesLinks1.equals(adamDatastructureVariablesLinks2));
        System.assert(adamDatastructureVariablesLinks3.equals(adamDatastructureVariablesLinks4));
        System.assertEquals(adamDatastructureVariablesLinks1.hashCode(), adamDatastructureVariablesLinks2.hashCode());
        System.assertEquals(adamDatastructureVariablesLinks3.hashCode(), adamDatastructureVariablesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAdamDatastructureVariablesLinks adamDatastructureVariablesLinks = new OASAdamDatastructureVariablesLinks();
        System.assertEquals(new List<OASAdamVariableRefElement>(), adamDatastructureVariablesLinks.analysisVariables);
        System.assertEquals(null, adamDatastructureVariablesLinks.self);
        System.assertEquals(null, adamDatastructureVariablesLinks.parentProduct);
        System.assertEquals(null, adamDatastructureVariablesLinks.priorVersion);
    }
}
