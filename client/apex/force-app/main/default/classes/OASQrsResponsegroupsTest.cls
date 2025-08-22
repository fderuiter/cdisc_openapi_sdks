@isTest
private class OASQrsResponsegroupsTest {
    @isTest
    private static void equalsSameInstance() {
        OASQrsResponsegroups qrsResponsegroups1 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups2 = qrsResponsegroups1;
        OASQrsResponsegroups qrsResponsegroups3 = new OASQrsResponsegroups();
        OASQrsResponsegroups qrsResponsegroups4 = qrsResponsegroups3;

        System.assert(qrsResponsegroups1.equals(qrsResponsegroups2));
        System.assert(qrsResponsegroups2.equals(qrsResponsegroups1));
        System.assert(qrsResponsegroups1.equals(qrsResponsegroups1));
        System.assert(qrsResponsegroups3.equals(qrsResponsegroups4));
        System.assert(qrsResponsegroups4.equals(qrsResponsegroups3));
        System.assert(qrsResponsegroups3.equals(qrsResponsegroups3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASQrsResponsegroups qrsResponsegroups1 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups2 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups3 = new OASQrsResponsegroups();
        OASQrsResponsegroups qrsResponsegroups4 = new OASQrsResponsegroups();

        System.assert(qrsResponsegroups1.equals(qrsResponsegroups2));
        System.assert(qrsResponsegroups2.equals(qrsResponsegroups1));
        System.assert(qrsResponsegroups3.equals(qrsResponsegroups4));
        System.assert(qrsResponsegroups4.equals(qrsResponsegroups3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASQrsResponsegroups qrsResponsegroups1 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups2 = new OASQrsResponsegroups();

        System.assertEquals(false, qrsResponsegroups1.equals('foo'));
        System.assertEquals(false, qrsResponsegroups2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASQrsResponsegroups qrsResponsegroups1 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups2 = new OASQrsResponsegroups();
        OASQrsResponsegroups qrsResponsegroups3;

        System.assertEquals(false, qrsResponsegroups1.equals(qrsResponsegroups3));
        System.assertEquals(false, qrsResponsegroups2.equals(qrsResponsegroups3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASQrsResponsegroups qrsResponsegroups1 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups2 = new OASQrsResponsegroups();

        System.assertEquals(qrsResponsegroups1.hashCode(), qrsResponsegroups1.hashCode());
        System.assertEquals(qrsResponsegroups2.hashCode(), qrsResponsegroups2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASQrsResponsegroups qrsResponsegroups1 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups2 = OASQrsResponsegroups.getExample();
        OASQrsResponsegroups qrsResponsegroups3 = new OASQrsResponsegroups();
        OASQrsResponsegroups qrsResponsegroups4 = new OASQrsResponsegroups();

        System.assert(qrsResponsegroups1.equals(qrsResponsegroups2));
        System.assert(qrsResponsegroups3.equals(qrsResponsegroups4));
        System.assertEquals(qrsResponsegroups1.hashCode(), qrsResponsegroups2.hashCode());
        System.assertEquals(qrsResponsegroups3.hashCode(), qrsResponsegroups4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASQrsResponsegroups qrsResponsegroups = new OASQrsResponsegroups();
        Map<String, String> x-property-mappings = qrsResponsegroups.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
