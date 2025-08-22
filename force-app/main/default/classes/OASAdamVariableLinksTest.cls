@isTest
private class OASAdamVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVariableLinks adamVariableLinks1 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks2 = adamVariableLinks1;
        OASAdamVariableLinks adamVariableLinks3 = new OASAdamVariableLinks();
        OASAdamVariableLinks adamVariableLinks4 = adamVariableLinks3;

        System.assert(adamVariableLinks1.equals(adamVariableLinks2));
        System.assert(adamVariableLinks2.equals(adamVariableLinks1));
        System.assert(adamVariableLinks1.equals(adamVariableLinks1));
        System.assert(adamVariableLinks3.equals(adamVariableLinks4));
        System.assert(adamVariableLinks4.equals(adamVariableLinks3));
        System.assert(adamVariableLinks3.equals(adamVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVariableLinks adamVariableLinks1 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks2 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks3 = new OASAdamVariableLinks();
        OASAdamVariableLinks adamVariableLinks4 = new OASAdamVariableLinks();

        System.assert(adamVariableLinks1.equals(adamVariableLinks2));
        System.assert(adamVariableLinks2.equals(adamVariableLinks1));
        System.assert(adamVariableLinks3.equals(adamVariableLinks4));
        System.assert(adamVariableLinks4.equals(adamVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVariableLinks adamVariableLinks1 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks2 = new OASAdamVariableLinks();

        System.assertEquals(false, adamVariableLinks1.equals('foo'));
        System.assertEquals(false, adamVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVariableLinks adamVariableLinks1 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks2 = new OASAdamVariableLinks();
        OASAdamVariableLinks adamVariableLinks3;

        System.assertEquals(false, adamVariableLinks1.equals(adamVariableLinks3));
        System.assertEquals(false, adamVariableLinks2.equals(adamVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVariableLinks adamVariableLinks1 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks2 = new OASAdamVariableLinks();

        System.assertEquals(adamVariableLinks1.hashCode(), adamVariableLinks1.hashCode());
        System.assertEquals(adamVariableLinks2.hashCode(), adamVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVariableLinks adamVariableLinks1 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks2 = OASAdamVariableLinks.getExample();
        OASAdamVariableLinks adamVariableLinks3 = new OASAdamVariableLinks();
        OASAdamVariableLinks adamVariableLinks4 = new OASAdamVariableLinks();

        System.assert(adamVariableLinks1.equals(adamVariableLinks2));
        System.assert(adamVariableLinks3.equals(adamVariableLinks4));
        System.assertEquals(adamVariableLinks1.hashCode(), adamVariableLinks2.hashCode());
        System.assertEquals(adamVariableLinks3.hashCode(), adamVariableLinks4.hashCode());
    }
}
