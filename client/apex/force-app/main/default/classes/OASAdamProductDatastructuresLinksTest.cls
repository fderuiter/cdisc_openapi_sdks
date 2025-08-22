@isTest
private class OASAdamProductDatastructuresLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks1 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks2 = adamProductDatastructuresLinks1;
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks3 = new OASAdamProductDatastructuresLinks();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks4 = adamProductDatastructuresLinks3;

        System.assert(adamProductDatastructuresLinks1.equals(adamProductDatastructuresLinks2));
        System.assert(adamProductDatastructuresLinks2.equals(adamProductDatastructuresLinks1));
        System.assert(adamProductDatastructuresLinks1.equals(adamProductDatastructuresLinks1));
        System.assert(adamProductDatastructuresLinks3.equals(adamProductDatastructuresLinks4));
        System.assert(adamProductDatastructuresLinks4.equals(adamProductDatastructuresLinks3));
        System.assert(adamProductDatastructuresLinks3.equals(adamProductDatastructuresLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks1 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks2 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks3 = new OASAdamProductDatastructuresLinks();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks4 = new OASAdamProductDatastructuresLinks();

        System.assert(adamProductDatastructuresLinks1.equals(adamProductDatastructuresLinks2));
        System.assert(adamProductDatastructuresLinks2.equals(adamProductDatastructuresLinks1));
        System.assert(adamProductDatastructuresLinks3.equals(adamProductDatastructuresLinks4));
        System.assert(adamProductDatastructuresLinks4.equals(adamProductDatastructuresLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks1 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks2 = new OASAdamProductDatastructuresLinks();

        System.assertEquals(false, adamProductDatastructuresLinks1.equals('foo'));
        System.assertEquals(false, adamProductDatastructuresLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks1 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks2 = new OASAdamProductDatastructuresLinks();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks3;

        System.assertEquals(false, adamProductDatastructuresLinks1.equals(adamProductDatastructuresLinks3));
        System.assertEquals(false, adamProductDatastructuresLinks2.equals(adamProductDatastructuresLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks1 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks2 = new OASAdamProductDatastructuresLinks();

        System.assertEquals(adamProductDatastructuresLinks1.hashCode(), adamProductDatastructuresLinks1.hashCode());
        System.assertEquals(adamProductDatastructuresLinks2.hashCode(), adamProductDatastructuresLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks1 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks2 = OASAdamProductDatastructuresLinks.getExample();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks3 = new OASAdamProductDatastructuresLinks();
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks4 = new OASAdamProductDatastructuresLinks();

        System.assert(adamProductDatastructuresLinks1.equals(adamProductDatastructuresLinks2));
        System.assert(adamProductDatastructuresLinks3.equals(adamProductDatastructuresLinks4));
        System.assertEquals(adamProductDatastructuresLinks1.hashCode(), adamProductDatastructuresLinks2.hashCode());
        System.assertEquals(adamProductDatastructuresLinks3.hashCode(), adamProductDatastructuresLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASAdamProductDatastructuresLinks adamProductDatastructuresLinks = new OASAdamProductDatastructuresLinks();
        System.assertEquals(new List<OASAdamDatastructureRefElement>(), adamProductDatastructuresLinks.dataStructures);
        System.assertEquals(null, adamProductDatastructuresLinks.self);
        System.assertEquals(null, adamProductDatastructuresLinks.priorVersion);
    }
}
