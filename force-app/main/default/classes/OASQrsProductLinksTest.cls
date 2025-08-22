@isTest
private class OASQrsProductLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsProductLinks qrsProductLinks1 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks2 = qrsProductLinks1;
        OASQrsProductLinks qrsProductLinks3 = new OASQrsProductLinks();
        OASQrsProductLinks qrsProductLinks4 = qrsProductLinks3;

        System.assert(qrsProductLinks1.equals(qrsProductLinks2));
        System.assert(qrsProductLinks2.equals(qrsProductLinks1));
        System.assert(qrsProductLinks1.equals(qrsProductLinks1));
        System.assert(qrsProductLinks3.equals(qrsProductLinks4));
        System.assert(qrsProductLinks4.equals(qrsProductLinks3));
        System.assert(qrsProductLinks3.equals(qrsProductLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsProductLinks qrsProductLinks1 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks2 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks3 = new OASQrsProductLinks();
        OASQrsProductLinks qrsProductLinks4 = new OASQrsProductLinks();

        System.assert(qrsProductLinks1.equals(qrsProductLinks2));
        System.assert(qrsProductLinks2.equals(qrsProductLinks1));
        System.assert(qrsProductLinks3.equals(qrsProductLinks4));
        System.assert(qrsProductLinks4.equals(qrsProductLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsProductLinks qrsProductLinks1 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks2 = new OASQrsProductLinks();

        System.assertEquals(false, qrsProductLinks1.equals('foo'));
        System.assertEquals(false, qrsProductLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsProductLinks qrsProductLinks1 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks2 = new OASQrsProductLinks();
        OASQrsProductLinks qrsProductLinks3;

        System.assertEquals(false, qrsProductLinks1.equals(qrsProductLinks3));
        System.assertEquals(false, qrsProductLinks2.equals(qrsProductLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsProductLinks qrsProductLinks1 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks2 = new OASQrsProductLinks();

        System.assertEquals(qrsProductLinks1.hashCode(), qrsProductLinks1.hashCode());
        System.assertEquals(qrsProductLinks2.hashCode(), qrsProductLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsProductLinks qrsProductLinks1 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks2 = OASQrsProductLinks.getExample();
        OASQrsProductLinks qrsProductLinks3 = new OASQrsProductLinks();
        OASQrsProductLinks qrsProductLinks4 = new OASQrsProductLinks();

        System.assert(qrsProductLinks1.equals(qrsProductLinks2));
        System.assert(qrsProductLinks3.equals(qrsProductLinks4));
        System.assertEquals(qrsProductLinks1.hashCode(), qrsProductLinks2.hashCode());
        System.assertEquals(qrsProductLinks3.hashCode(), qrsProductLinks4.hashCode());
    }
}
