@isTest
private class OASSdtmigDatasetLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetLinks sdtmigDatasetLinks1 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks2 = sdtmigDatasetLinks1;
        OASSdtmigDatasetLinks sdtmigDatasetLinks3 = new OASSdtmigDatasetLinks();
        OASSdtmigDatasetLinks sdtmigDatasetLinks4 = sdtmigDatasetLinks3;

        System.assert(sdtmigDatasetLinks1.equals(sdtmigDatasetLinks2));
        System.assert(sdtmigDatasetLinks2.equals(sdtmigDatasetLinks1));
        System.assert(sdtmigDatasetLinks1.equals(sdtmigDatasetLinks1));
        System.assert(sdtmigDatasetLinks3.equals(sdtmigDatasetLinks4));
        System.assert(sdtmigDatasetLinks4.equals(sdtmigDatasetLinks3));
        System.assert(sdtmigDatasetLinks3.equals(sdtmigDatasetLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetLinks sdtmigDatasetLinks1 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks2 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks3 = new OASSdtmigDatasetLinks();
        OASSdtmigDatasetLinks sdtmigDatasetLinks4 = new OASSdtmigDatasetLinks();

        System.assert(sdtmigDatasetLinks1.equals(sdtmigDatasetLinks2));
        System.assert(sdtmigDatasetLinks2.equals(sdtmigDatasetLinks1));
        System.assert(sdtmigDatasetLinks3.equals(sdtmigDatasetLinks4));
        System.assert(sdtmigDatasetLinks4.equals(sdtmigDatasetLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetLinks sdtmigDatasetLinks1 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks2 = new OASSdtmigDatasetLinks();

        System.assertEquals(false, sdtmigDatasetLinks1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetLinks sdtmigDatasetLinks1 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks2 = new OASSdtmigDatasetLinks();
        OASSdtmigDatasetLinks sdtmigDatasetLinks3;

        System.assertEquals(false, sdtmigDatasetLinks1.equals(sdtmigDatasetLinks3));
        System.assertEquals(false, sdtmigDatasetLinks2.equals(sdtmigDatasetLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetLinks sdtmigDatasetLinks1 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks2 = new OASSdtmigDatasetLinks();

        System.assertEquals(sdtmigDatasetLinks1.hashCode(), sdtmigDatasetLinks1.hashCode());
        System.assertEquals(sdtmigDatasetLinks2.hashCode(), sdtmigDatasetLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetLinks sdtmigDatasetLinks1 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks2 = OASSdtmigDatasetLinks.getExample();
        OASSdtmigDatasetLinks sdtmigDatasetLinks3 = new OASSdtmigDatasetLinks();
        OASSdtmigDatasetLinks sdtmigDatasetLinks4 = new OASSdtmigDatasetLinks();

        System.assert(sdtmigDatasetLinks1.equals(sdtmigDatasetLinks2));
        System.assert(sdtmigDatasetLinks3.equals(sdtmigDatasetLinks4));
        System.assertEquals(sdtmigDatasetLinks1.hashCode(), sdtmigDatasetLinks2.hashCode());
        System.assertEquals(sdtmigDatasetLinks3.hashCode(), sdtmigDatasetLinks4.hashCode());
    }
}
