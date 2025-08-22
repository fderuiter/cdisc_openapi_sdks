@isTest
private class OASAdamProductLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamProductLinks adamProductLinks1 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks2 = adamProductLinks1;
        OASAdamProductLinks adamProductLinks3 = new OASAdamProductLinks();
        OASAdamProductLinks adamProductLinks4 = adamProductLinks3;

        System.assert(adamProductLinks1.equals(adamProductLinks2));
        System.assert(adamProductLinks2.equals(adamProductLinks1));
        System.assert(adamProductLinks1.equals(adamProductLinks1));
        System.assert(adamProductLinks3.equals(adamProductLinks4));
        System.assert(adamProductLinks4.equals(adamProductLinks3));
        System.assert(adamProductLinks3.equals(adamProductLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamProductLinks adamProductLinks1 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks2 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks3 = new OASAdamProductLinks();
        OASAdamProductLinks adamProductLinks4 = new OASAdamProductLinks();

        System.assert(adamProductLinks1.equals(adamProductLinks2));
        System.assert(adamProductLinks2.equals(adamProductLinks1));
        System.assert(adamProductLinks3.equals(adamProductLinks4));
        System.assert(adamProductLinks4.equals(adamProductLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamProductLinks adamProductLinks1 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks2 = new OASAdamProductLinks();

        System.assertEquals(false, adamProductLinks1.equals('foo'));
        System.assertEquals(false, adamProductLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamProductLinks adamProductLinks1 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks2 = new OASAdamProductLinks();
        OASAdamProductLinks adamProductLinks3;

        System.assertEquals(false, adamProductLinks1.equals(adamProductLinks3));
        System.assertEquals(false, adamProductLinks2.equals(adamProductLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamProductLinks adamProductLinks1 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks2 = new OASAdamProductLinks();

        System.assertEquals(adamProductLinks1.hashCode(), adamProductLinks1.hashCode());
        System.assertEquals(adamProductLinks2.hashCode(), adamProductLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamProductLinks adamProductLinks1 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks2 = OASAdamProductLinks.getExample();
        OASAdamProductLinks adamProductLinks3 = new OASAdamProductLinks();
        OASAdamProductLinks adamProductLinks4 = new OASAdamProductLinks();

        System.assert(adamProductLinks1.equals(adamProductLinks2));
        System.assert(adamProductLinks3.equals(adamProductLinks4));
        System.assertEquals(adamProductLinks1.hashCode(), adamProductLinks2.hashCode());
        System.assertEquals(adamProductLinks3.hashCode(), adamProductLinks4.hashCode());
    }
}
