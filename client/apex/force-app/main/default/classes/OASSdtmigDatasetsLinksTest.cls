@isTest
private class OASSdtmigDatasetsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks1 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks2 = sdtmigDatasetsLinks1;
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks3 = new OASSdtmigDatasetsLinks();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks4 = sdtmigDatasetsLinks3;

        System.assert(sdtmigDatasetsLinks1.equals(sdtmigDatasetsLinks2));
        System.assert(sdtmigDatasetsLinks2.equals(sdtmigDatasetsLinks1));
        System.assert(sdtmigDatasetsLinks1.equals(sdtmigDatasetsLinks1));
        System.assert(sdtmigDatasetsLinks3.equals(sdtmigDatasetsLinks4));
        System.assert(sdtmigDatasetsLinks4.equals(sdtmigDatasetsLinks3));
        System.assert(sdtmigDatasetsLinks3.equals(sdtmigDatasetsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks1 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks2 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks3 = new OASSdtmigDatasetsLinks();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks4 = new OASSdtmigDatasetsLinks();

        System.assert(sdtmigDatasetsLinks1.equals(sdtmigDatasetsLinks2));
        System.assert(sdtmigDatasetsLinks2.equals(sdtmigDatasetsLinks1));
        System.assert(sdtmigDatasetsLinks3.equals(sdtmigDatasetsLinks4));
        System.assert(sdtmigDatasetsLinks4.equals(sdtmigDatasetsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks1 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks2 = new OASSdtmigDatasetsLinks();

        System.assertEquals(false, sdtmigDatasetsLinks1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks1 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks2 = new OASSdtmigDatasetsLinks();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks3;

        System.assertEquals(false, sdtmigDatasetsLinks1.equals(sdtmigDatasetsLinks3));
        System.assertEquals(false, sdtmigDatasetsLinks2.equals(sdtmigDatasetsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks1 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks2 = new OASSdtmigDatasetsLinks();

        System.assertEquals(sdtmigDatasetsLinks1.hashCode(), sdtmigDatasetsLinks1.hashCode());
        System.assertEquals(sdtmigDatasetsLinks2.hashCode(), sdtmigDatasetsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks1 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks2 = OASSdtmigDatasetsLinks.getExample();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks3 = new OASSdtmigDatasetsLinks();
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks4 = new OASSdtmigDatasetsLinks();

        System.assert(sdtmigDatasetsLinks1.equals(sdtmigDatasetsLinks2));
        System.assert(sdtmigDatasetsLinks3.equals(sdtmigDatasetsLinks4));
        System.assertEquals(sdtmigDatasetsLinks1.hashCode(), sdtmigDatasetsLinks2.hashCode());
        System.assertEquals(sdtmigDatasetsLinks3.hashCode(), sdtmigDatasetsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigDatasetsLinks sdtmigDatasetsLinks = new OASSdtmigDatasetsLinks();
        System.assertEquals(new List<OASSdtmigDatasetRefElement>(), sdtmigDatasetsLinks.datasets);
        System.assertEquals(null, sdtmigDatasetsLinks.self);
        System.assertEquals(null, sdtmigDatasetsLinks.parentProduct);
        System.assertEquals(null, sdtmigDatasetsLinks.priorVersion);
    }
}
