@isTest
private class OASAdamDatastructureLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamDatastructureLinks adamDatastructureLinks1 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks2 = adamDatastructureLinks1;
        OASAdamDatastructureLinks adamDatastructureLinks3 = new OASAdamDatastructureLinks();
        OASAdamDatastructureLinks adamDatastructureLinks4 = adamDatastructureLinks3;

        System.assert(adamDatastructureLinks1.equals(adamDatastructureLinks2));
        System.assert(adamDatastructureLinks2.equals(adamDatastructureLinks1));
        System.assert(adamDatastructureLinks1.equals(adamDatastructureLinks1));
        System.assert(adamDatastructureLinks3.equals(adamDatastructureLinks4));
        System.assert(adamDatastructureLinks4.equals(adamDatastructureLinks3));
        System.assert(adamDatastructureLinks3.equals(adamDatastructureLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamDatastructureLinks adamDatastructureLinks1 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks2 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks3 = new OASAdamDatastructureLinks();
        OASAdamDatastructureLinks adamDatastructureLinks4 = new OASAdamDatastructureLinks();

        System.assert(adamDatastructureLinks1.equals(adamDatastructureLinks2));
        System.assert(adamDatastructureLinks2.equals(adamDatastructureLinks1));
        System.assert(adamDatastructureLinks3.equals(adamDatastructureLinks4));
        System.assert(adamDatastructureLinks4.equals(adamDatastructureLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamDatastructureLinks adamDatastructureLinks1 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks2 = new OASAdamDatastructureLinks();

        System.assertEquals(false, adamDatastructureLinks1.equals('foo'));
        System.assertEquals(false, adamDatastructureLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamDatastructureLinks adamDatastructureLinks1 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks2 = new OASAdamDatastructureLinks();
        OASAdamDatastructureLinks adamDatastructureLinks3;

        System.assertEquals(false, adamDatastructureLinks1.equals(adamDatastructureLinks3));
        System.assertEquals(false, adamDatastructureLinks2.equals(adamDatastructureLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamDatastructureLinks adamDatastructureLinks1 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks2 = new OASAdamDatastructureLinks();

        System.assertEquals(adamDatastructureLinks1.hashCode(), adamDatastructureLinks1.hashCode());
        System.assertEquals(adamDatastructureLinks2.hashCode(), adamDatastructureLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamDatastructureLinks adamDatastructureLinks1 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks2 = OASAdamDatastructureLinks.getExample();
        OASAdamDatastructureLinks adamDatastructureLinks3 = new OASAdamDatastructureLinks();
        OASAdamDatastructureLinks adamDatastructureLinks4 = new OASAdamDatastructureLinks();

        System.assert(adamDatastructureLinks1.equals(adamDatastructureLinks2));
        System.assert(adamDatastructureLinks3.equals(adamDatastructureLinks4));
        System.assertEquals(adamDatastructureLinks1.hashCode(), adamDatastructureLinks2.hashCode());
        System.assertEquals(adamDatastructureLinks3.hashCode(), adamDatastructureLinks4.hashCode());
    }
}
