@isTest
private class OASQrsItemsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsItemsLinks qrsItemsLinks1 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks2 = qrsItemsLinks1;
        OASQrsItemsLinks qrsItemsLinks3 = new OASQrsItemsLinks();
        OASQrsItemsLinks qrsItemsLinks4 = qrsItemsLinks3;

        System.assert(qrsItemsLinks1.equals(qrsItemsLinks2));
        System.assert(qrsItemsLinks2.equals(qrsItemsLinks1));
        System.assert(qrsItemsLinks1.equals(qrsItemsLinks1));
        System.assert(qrsItemsLinks3.equals(qrsItemsLinks4));
        System.assert(qrsItemsLinks4.equals(qrsItemsLinks3));
        System.assert(qrsItemsLinks3.equals(qrsItemsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsItemsLinks qrsItemsLinks1 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks2 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks3 = new OASQrsItemsLinks();
        OASQrsItemsLinks qrsItemsLinks4 = new OASQrsItemsLinks();

        System.assert(qrsItemsLinks1.equals(qrsItemsLinks2));
        System.assert(qrsItemsLinks2.equals(qrsItemsLinks1));
        System.assert(qrsItemsLinks3.equals(qrsItemsLinks4));
        System.assert(qrsItemsLinks4.equals(qrsItemsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsItemsLinks qrsItemsLinks1 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks2 = new OASQrsItemsLinks();

        System.assertEquals(false, qrsItemsLinks1.equals('foo'));
        System.assertEquals(false, qrsItemsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsItemsLinks qrsItemsLinks1 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks2 = new OASQrsItemsLinks();
        OASQrsItemsLinks qrsItemsLinks3;

        System.assertEquals(false, qrsItemsLinks1.equals(qrsItemsLinks3));
        System.assertEquals(false, qrsItemsLinks2.equals(qrsItemsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsItemsLinks qrsItemsLinks1 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks2 = new OASQrsItemsLinks();

        System.assertEquals(qrsItemsLinks1.hashCode(), qrsItemsLinks1.hashCode());
        System.assertEquals(qrsItemsLinks2.hashCode(), qrsItemsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsItemsLinks qrsItemsLinks1 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks2 = OASQrsItemsLinks.getExample();
        OASQrsItemsLinks qrsItemsLinks3 = new OASQrsItemsLinks();
        OASQrsItemsLinks qrsItemsLinks4 = new OASQrsItemsLinks();

        System.assert(qrsItemsLinks1.equals(qrsItemsLinks2));
        System.assert(qrsItemsLinks3.equals(qrsItemsLinks4));
        System.assertEquals(qrsItemsLinks1.hashCode(), qrsItemsLinks2.hashCode());
        System.assertEquals(qrsItemsLinks3.hashCode(), qrsItemsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQrsItemsLinks qrsItemsLinks = new OASQrsItemsLinks();
        System.assertEquals(new List<OASQrsItemRefElement>(), qrsItemsLinks.items);
        System.assertEquals(null, qrsItemsLinks.self);
        System.assertEquals(null, qrsItemsLinks.parentProduct);
    }
}
