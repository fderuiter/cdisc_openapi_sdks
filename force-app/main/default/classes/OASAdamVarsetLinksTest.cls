@isTest
private class OASAdamVarsetLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamVarsetLinks adamVarsetLinks1 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks2 = adamVarsetLinks1;
        OASAdamVarsetLinks adamVarsetLinks3 = new OASAdamVarsetLinks();
        OASAdamVarsetLinks adamVarsetLinks4 = adamVarsetLinks3;

        System.assert(adamVarsetLinks1.equals(adamVarsetLinks2));
        System.assert(adamVarsetLinks2.equals(adamVarsetLinks1));
        System.assert(adamVarsetLinks1.equals(adamVarsetLinks1));
        System.assert(adamVarsetLinks3.equals(adamVarsetLinks4));
        System.assert(adamVarsetLinks4.equals(adamVarsetLinks3));
        System.assert(adamVarsetLinks3.equals(adamVarsetLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamVarsetLinks adamVarsetLinks1 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks2 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks3 = new OASAdamVarsetLinks();
        OASAdamVarsetLinks adamVarsetLinks4 = new OASAdamVarsetLinks();

        System.assert(adamVarsetLinks1.equals(adamVarsetLinks2));
        System.assert(adamVarsetLinks2.equals(adamVarsetLinks1));
        System.assert(adamVarsetLinks3.equals(adamVarsetLinks4));
        System.assert(adamVarsetLinks4.equals(adamVarsetLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamVarsetLinks adamVarsetLinks1 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks2 = new OASAdamVarsetLinks();

        System.assertEquals(false, adamVarsetLinks1.equals('foo'));
        System.assertEquals(false, adamVarsetLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamVarsetLinks adamVarsetLinks1 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks2 = new OASAdamVarsetLinks();
        OASAdamVarsetLinks adamVarsetLinks3;

        System.assertEquals(false, adamVarsetLinks1.equals(adamVarsetLinks3));
        System.assertEquals(false, adamVarsetLinks2.equals(adamVarsetLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamVarsetLinks adamVarsetLinks1 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks2 = new OASAdamVarsetLinks();

        System.assertEquals(adamVarsetLinks1.hashCode(), adamVarsetLinks1.hashCode());
        System.assertEquals(adamVarsetLinks2.hashCode(), adamVarsetLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamVarsetLinks adamVarsetLinks1 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks2 = OASAdamVarsetLinks.getExample();
        OASAdamVarsetLinks adamVarsetLinks3 = new OASAdamVarsetLinks();
        OASAdamVarsetLinks adamVarsetLinks4 = new OASAdamVarsetLinks();

        System.assert(adamVarsetLinks1.equals(adamVarsetLinks2));
        System.assert(adamVarsetLinks3.equals(adamVarsetLinks4));
        System.assertEquals(adamVarsetLinks1.hashCode(), adamVarsetLinks2.hashCode());
        System.assertEquals(adamVarsetLinks3.hashCode(), adamVarsetLinks4.hashCode());
    }
}
