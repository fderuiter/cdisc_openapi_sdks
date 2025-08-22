@isTest
private class OASQrsItemLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsItemLinks qrsItemLinks1 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks2 = qrsItemLinks1;
        OASQrsItemLinks qrsItemLinks3 = new OASQrsItemLinks();
        OASQrsItemLinks qrsItemLinks4 = qrsItemLinks3;

        System.assert(qrsItemLinks1.equals(qrsItemLinks2));
        System.assert(qrsItemLinks2.equals(qrsItemLinks1));
        System.assert(qrsItemLinks1.equals(qrsItemLinks1));
        System.assert(qrsItemLinks3.equals(qrsItemLinks4));
        System.assert(qrsItemLinks4.equals(qrsItemLinks3));
        System.assert(qrsItemLinks3.equals(qrsItemLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsItemLinks qrsItemLinks1 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks2 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks3 = new OASQrsItemLinks();
        OASQrsItemLinks qrsItemLinks4 = new OASQrsItemLinks();

        System.assert(qrsItemLinks1.equals(qrsItemLinks2));
        System.assert(qrsItemLinks2.equals(qrsItemLinks1));
        System.assert(qrsItemLinks3.equals(qrsItemLinks4));
        System.assert(qrsItemLinks4.equals(qrsItemLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsItemLinks qrsItemLinks1 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks2 = new OASQrsItemLinks();

        System.assertEquals(false, qrsItemLinks1.equals('foo'));
        System.assertEquals(false, qrsItemLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsItemLinks qrsItemLinks1 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks2 = new OASQrsItemLinks();
        OASQrsItemLinks qrsItemLinks3;

        System.assertEquals(false, qrsItemLinks1.equals(qrsItemLinks3));
        System.assertEquals(false, qrsItemLinks2.equals(qrsItemLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsItemLinks qrsItemLinks1 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks2 = new OASQrsItemLinks();

        System.assertEquals(qrsItemLinks1.hashCode(), qrsItemLinks1.hashCode());
        System.assertEquals(qrsItemLinks2.hashCode(), qrsItemLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsItemLinks qrsItemLinks1 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks2 = OASQrsItemLinks.getExample();
        OASQrsItemLinks qrsItemLinks3 = new OASQrsItemLinks();
        OASQrsItemLinks qrsItemLinks4 = new OASQrsItemLinks();

        System.assert(qrsItemLinks1.equals(qrsItemLinks2));
        System.assert(qrsItemLinks3.equals(qrsItemLinks4));
        System.assertEquals(qrsItemLinks1.hashCode(), qrsItemLinks2.hashCode());
        System.assertEquals(qrsItemLinks3.hashCode(), qrsItemLinks4.hashCode());
    }
}
