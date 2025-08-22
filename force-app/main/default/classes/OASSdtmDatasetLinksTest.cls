@isTest
private class OASSdtmDatasetLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetLinks sdtmDatasetLinks1 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks2 = sdtmDatasetLinks1;
        OASSdtmDatasetLinks sdtmDatasetLinks3 = new OASSdtmDatasetLinks();
        OASSdtmDatasetLinks sdtmDatasetLinks4 = sdtmDatasetLinks3;

        System.assert(sdtmDatasetLinks1.equals(sdtmDatasetLinks2));
        System.assert(sdtmDatasetLinks2.equals(sdtmDatasetLinks1));
        System.assert(sdtmDatasetLinks1.equals(sdtmDatasetLinks1));
        System.assert(sdtmDatasetLinks3.equals(sdtmDatasetLinks4));
        System.assert(sdtmDatasetLinks4.equals(sdtmDatasetLinks3));
        System.assert(sdtmDatasetLinks3.equals(sdtmDatasetLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetLinks sdtmDatasetLinks1 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks2 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks3 = new OASSdtmDatasetLinks();
        OASSdtmDatasetLinks sdtmDatasetLinks4 = new OASSdtmDatasetLinks();

        System.assert(sdtmDatasetLinks1.equals(sdtmDatasetLinks2));
        System.assert(sdtmDatasetLinks2.equals(sdtmDatasetLinks1));
        System.assert(sdtmDatasetLinks3.equals(sdtmDatasetLinks4));
        System.assert(sdtmDatasetLinks4.equals(sdtmDatasetLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetLinks sdtmDatasetLinks1 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks2 = new OASSdtmDatasetLinks();

        System.assertEquals(false, sdtmDatasetLinks1.equals('foo'));
        System.assertEquals(false, sdtmDatasetLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetLinks sdtmDatasetLinks1 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks2 = new OASSdtmDatasetLinks();
        OASSdtmDatasetLinks sdtmDatasetLinks3;

        System.assertEquals(false, sdtmDatasetLinks1.equals(sdtmDatasetLinks3));
        System.assertEquals(false, sdtmDatasetLinks2.equals(sdtmDatasetLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetLinks sdtmDatasetLinks1 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks2 = new OASSdtmDatasetLinks();

        System.assertEquals(sdtmDatasetLinks1.hashCode(), sdtmDatasetLinks1.hashCode());
        System.assertEquals(sdtmDatasetLinks2.hashCode(), sdtmDatasetLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetLinks sdtmDatasetLinks1 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks2 = OASSdtmDatasetLinks.getExample();
        OASSdtmDatasetLinks sdtmDatasetLinks3 = new OASSdtmDatasetLinks();
        OASSdtmDatasetLinks sdtmDatasetLinks4 = new OASSdtmDatasetLinks();

        System.assert(sdtmDatasetLinks1.equals(sdtmDatasetLinks2));
        System.assert(sdtmDatasetLinks3.equals(sdtmDatasetLinks4));
        System.assertEquals(sdtmDatasetLinks1.hashCode(), sdtmDatasetLinks2.hashCode());
        System.assertEquals(sdtmDatasetLinks3.hashCode(), sdtmDatasetLinks4.hashCode());
    }
}
