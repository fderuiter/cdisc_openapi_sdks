@isTest
private class OASQrsResponsegroupLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponsegroupLinks qrsResponsegroupLinks1 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks2 = qrsResponsegroupLinks1;
        OASQrsResponsegroupLinks qrsResponsegroupLinks3 = new OASQrsResponsegroupLinks();
        OASQrsResponsegroupLinks qrsResponsegroupLinks4 = qrsResponsegroupLinks3;

        System.assert(qrsResponsegroupLinks1.equals(qrsResponsegroupLinks2));
        System.assert(qrsResponsegroupLinks2.equals(qrsResponsegroupLinks1));
        System.assert(qrsResponsegroupLinks1.equals(qrsResponsegroupLinks1));
        System.assert(qrsResponsegroupLinks3.equals(qrsResponsegroupLinks4));
        System.assert(qrsResponsegroupLinks4.equals(qrsResponsegroupLinks3));
        System.assert(qrsResponsegroupLinks3.equals(qrsResponsegroupLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponsegroupLinks qrsResponsegroupLinks1 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks2 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks3 = new OASQrsResponsegroupLinks();
        OASQrsResponsegroupLinks qrsResponsegroupLinks4 = new OASQrsResponsegroupLinks();

        System.assert(qrsResponsegroupLinks1.equals(qrsResponsegroupLinks2));
        System.assert(qrsResponsegroupLinks2.equals(qrsResponsegroupLinks1));
        System.assert(qrsResponsegroupLinks3.equals(qrsResponsegroupLinks4));
        System.assert(qrsResponsegroupLinks4.equals(qrsResponsegroupLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponsegroupLinks qrsResponsegroupLinks1 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks2 = new OASQrsResponsegroupLinks();

        System.assertEquals(false, qrsResponsegroupLinks1.equals('foo'));
        System.assertEquals(false, qrsResponsegroupLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponsegroupLinks qrsResponsegroupLinks1 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks2 = new OASQrsResponsegroupLinks();
        OASQrsResponsegroupLinks qrsResponsegroupLinks3;

        System.assertEquals(false, qrsResponsegroupLinks1.equals(qrsResponsegroupLinks3));
        System.assertEquals(false, qrsResponsegroupLinks2.equals(qrsResponsegroupLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponsegroupLinks qrsResponsegroupLinks1 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks2 = new OASQrsResponsegroupLinks();

        System.assertEquals(qrsResponsegroupLinks1.hashCode(), qrsResponsegroupLinks1.hashCode());
        System.assertEquals(qrsResponsegroupLinks2.hashCode(), qrsResponsegroupLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponsegroupLinks qrsResponsegroupLinks1 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks2 = OASQrsResponsegroupLinks.getExample();
        OASQrsResponsegroupLinks qrsResponsegroupLinks3 = new OASQrsResponsegroupLinks();
        OASQrsResponsegroupLinks qrsResponsegroupLinks4 = new OASQrsResponsegroupLinks();

        System.assert(qrsResponsegroupLinks1.equals(qrsResponsegroupLinks2));
        System.assert(qrsResponsegroupLinks3.equals(qrsResponsegroupLinks4));
        System.assertEquals(qrsResponsegroupLinks1.hashCode(), qrsResponsegroupLinks2.hashCode());
        System.assertEquals(qrsResponsegroupLinks3.hashCode(), qrsResponsegroupLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQrsResponsegroupLinks qrsResponsegroupLinks = new OASQrsResponsegroupLinks();
        System.assertEquals(new List<OASQrsResponses>(), qrsResponsegroupLinks.responses);
        System.assertEquals(null, qrsResponsegroupLinks.self);
    }
}
