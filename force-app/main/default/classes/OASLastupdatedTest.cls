@isTest
private class OASLastupdatedTest {
    @isTest
    private static void equalsSameInstance() {
        OASLastupdated lastupdated1 = OASLastupdated.getExample();
        OASLastupdated lastupdated2 = lastupdated1;
        OASLastupdated lastupdated3 = new OASLastupdated();
        OASLastupdated lastupdated4 = lastupdated3;

        System.assert(lastupdated1.equals(lastupdated2));
        System.assert(lastupdated2.equals(lastupdated1));
        System.assert(lastupdated1.equals(lastupdated1));
        System.assert(lastupdated3.equals(lastupdated4));
        System.assert(lastupdated4.equals(lastupdated3));
        System.assert(lastupdated3.equals(lastupdated3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASLastupdated lastupdated1 = OASLastupdated.getExample();
        OASLastupdated lastupdated2 = OASLastupdated.getExample();
        OASLastupdated lastupdated3 = new OASLastupdated();
        OASLastupdated lastupdated4 = new OASLastupdated();

        System.assert(lastupdated1.equals(lastupdated2));
        System.assert(lastupdated2.equals(lastupdated1));
        System.assert(lastupdated3.equals(lastupdated4));
        System.assert(lastupdated4.equals(lastupdated3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASLastupdated lastupdated1 = OASLastupdated.getExample();
        OASLastupdated lastupdated2 = new OASLastupdated();

        System.assertEquals(false, lastupdated1.equals('foo'));
        System.assertEquals(false, lastupdated2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASLastupdated lastupdated1 = OASLastupdated.getExample();
        OASLastupdated lastupdated2 = new OASLastupdated();
        OASLastupdated lastupdated3;

        System.assertEquals(false, lastupdated1.equals(lastupdated3));
        System.assertEquals(false, lastupdated2.equals(lastupdated3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASLastupdated lastupdated1 = OASLastupdated.getExample();
        OASLastupdated lastupdated2 = new OASLastupdated();

        System.assertEquals(lastupdated1.hashCode(), lastupdated1.hashCode());
        System.assertEquals(lastupdated2.hashCode(), lastupdated2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASLastupdated lastupdated1 = OASLastupdated.getExample();
        OASLastupdated lastupdated2 = OASLastupdated.getExample();
        OASLastupdated lastupdated3 = new OASLastupdated();
        OASLastupdated lastupdated4 = new OASLastupdated();

        System.assert(lastupdated1.equals(lastupdated2));
        System.assert(lastupdated3.equals(lastupdated4));
        System.assertEquals(lastupdated1.hashCode(), lastupdated2.hashCode());
        System.assertEquals(lastupdated3.hashCode(), lastupdated4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASLastupdated lastupdated = new OASLastupdated();
        Map<String, String> x-property-mappings = lastupdated.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
        System.assertEquals('dataAnalysis', x-property-mappings.get('data-analysis'));
        System.assertEquals('dataCollection', x-property-mappings.get('data-collection'));
        System.assertEquals('dataTabulation', x-property-mappings.get('data-tabulation'));
    }
}
