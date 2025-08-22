@isTest
private class OASQrsResponsegroupsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks1 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks2 = qrsResponsegroupsLinks1;
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks3 = new OASQrsResponsegroupsLinks();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks4 = qrsResponsegroupsLinks3;

        System.assert(qrsResponsegroupsLinks1.equals(qrsResponsegroupsLinks2));
        System.assert(qrsResponsegroupsLinks2.equals(qrsResponsegroupsLinks1));
        System.assert(qrsResponsegroupsLinks1.equals(qrsResponsegroupsLinks1));
        System.assert(qrsResponsegroupsLinks3.equals(qrsResponsegroupsLinks4));
        System.assert(qrsResponsegroupsLinks4.equals(qrsResponsegroupsLinks3));
        System.assert(qrsResponsegroupsLinks3.equals(qrsResponsegroupsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks1 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks2 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks3 = new OASQrsResponsegroupsLinks();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks4 = new OASQrsResponsegroupsLinks();

        System.assert(qrsResponsegroupsLinks1.equals(qrsResponsegroupsLinks2));
        System.assert(qrsResponsegroupsLinks2.equals(qrsResponsegroupsLinks1));
        System.assert(qrsResponsegroupsLinks3.equals(qrsResponsegroupsLinks4));
        System.assert(qrsResponsegroupsLinks4.equals(qrsResponsegroupsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks1 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks2 = new OASQrsResponsegroupsLinks();

        System.assertEquals(false, qrsResponsegroupsLinks1.equals('foo'));
        System.assertEquals(false, qrsResponsegroupsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks1 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks2 = new OASQrsResponsegroupsLinks();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks3;

        System.assertEquals(false, qrsResponsegroupsLinks1.equals(qrsResponsegroupsLinks3));
        System.assertEquals(false, qrsResponsegroupsLinks2.equals(qrsResponsegroupsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks1 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks2 = new OASQrsResponsegroupsLinks();

        System.assertEquals(qrsResponsegroupsLinks1.hashCode(), qrsResponsegroupsLinks1.hashCode());
        System.assertEquals(qrsResponsegroupsLinks2.hashCode(), qrsResponsegroupsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks1 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks2 = OASQrsResponsegroupsLinks.getExample();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks3 = new OASQrsResponsegroupsLinks();
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks4 = new OASQrsResponsegroupsLinks();

        System.assert(qrsResponsegroupsLinks1.equals(qrsResponsegroupsLinks2));
        System.assert(qrsResponsegroupsLinks3.equals(qrsResponsegroupsLinks4));
        System.assertEquals(qrsResponsegroupsLinks1.hashCode(), qrsResponsegroupsLinks2.hashCode());
        System.assertEquals(qrsResponsegroupsLinks3.hashCode(), qrsResponsegroupsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASQrsResponsegroupsLinks qrsResponsegroupsLinks = new OASQrsResponsegroupsLinks();
        System.assertEquals(new List<OASQrsResponsegroupRefElement>(), qrsResponsegroupsLinks.responsegroups);
        System.assertEquals(null, qrsResponsegroupsLinks.self);
    }
}
