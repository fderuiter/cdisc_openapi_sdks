@isTest
private class OASQrsResponseLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponseLinks qrsResponseLinks1 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks2 = qrsResponseLinks1;
        OASQrsResponseLinks qrsResponseLinks3 = new OASQrsResponseLinks();
        OASQrsResponseLinks qrsResponseLinks4 = qrsResponseLinks3;

        System.assert(qrsResponseLinks1.equals(qrsResponseLinks2));
        System.assert(qrsResponseLinks2.equals(qrsResponseLinks1));
        System.assert(qrsResponseLinks1.equals(qrsResponseLinks1));
        System.assert(qrsResponseLinks3.equals(qrsResponseLinks4));
        System.assert(qrsResponseLinks4.equals(qrsResponseLinks3));
        System.assert(qrsResponseLinks3.equals(qrsResponseLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponseLinks qrsResponseLinks1 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks2 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks3 = new OASQrsResponseLinks();
        OASQrsResponseLinks qrsResponseLinks4 = new OASQrsResponseLinks();

        System.assert(qrsResponseLinks1.equals(qrsResponseLinks2));
        System.assert(qrsResponseLinks2.equals(qrsResponseLinks1));
        System.assert(qrsResponseLinks3.equals(qrsResponseLinks4));
        System.assert(qrsResponseLinks4.equals(qrsResponseLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponseLinks qrsResponseLinks1 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks2 = new OASQrsResponseLinks();

        System.assertEquals(false, qrsResponseLinks1.equals('foo'));
        System.assertEquals(false, qrsResponseLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponseLinks qrsResponseLinks1 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks2 = new OASQrsResponseLinks();
        OASQrsResponseLinks qrsResponseLinks3;

        System.assertEquals(false, qrsResponseLinks1.equals(qrsResponseLinks3));
        System.assertEquals(false, qrsResponseLinks2.equals(qrsResponseLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponseLinks qrsResponseLinks1 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks2 = new OASQrsResponseLinks();

        System.assertEquals(qrsResponseLinks1.hashCode(), qrsResponseLinks1.hashCode());
        System.assertEquals(qrsResponseLinks2.hashCode(), qrsResponseLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponseLinks qrsResponseLinks1 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks2 = OASQrsResponseLinks.getExample();
        OASQrsResponseLinks qrsResponseLinks3 = new OASQrsResponseLinks();
        OASQrsResponseLinks qrsResponseLinks4 = new OASQrsResponseLinks();

        System.assert(qrsResponseLinks1.equals(qrsResponseLinks2));
        System.assert(qrsResponseLinks3.equals(qrsResponseLinks4));
        System.assertEquals(qrsResponseLinks1.hashCode(), qrsResponseLinks2.hashCode());
        System.assertEquals(qrsResponseLinks3.hashCode(), qrsResponseLinks4.hashCode());
    }
}
