@isTest
private class OASSdtmigClassDatasetsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks1 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks2 = sdtmigClassDatasetsLinks1;
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks3 = new OASSdtmigClassDatasetsLinks();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks4 = sdtmigClassDatasetsLinks3;

        System.assert(sdtmigClassDatasetsLinks1.equals(sdtmigClassDatasetsLinks2));
        System.assert(sdtmigClassDatasetsLinks2.equals(sdtmigClassDatasetsLinks1));
        System.assert(sdtmigClassDatasetsLinks1.equals(sdtmigClassDatasetsLinks1));
        System.assert(sdtmigClassDatasetsLinks3.equals(sdtmigClassDatasetsLinks4));
        System.assert(sdtmigClassDatasetsLinks4.equals(sdtmigClassDatasetsLinks3));
        System.assert(sdtmigClassDatasetsLinks3.equals(sdtmigClassDatasetsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks1 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks2 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks3 = new OASSdtmigClassDatasetsLinks();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks4 = new OASSdtmigClassDatasetsLinks();

        System.assert(sdtmigClassDatasetsLinks1.equals(sdtmigClassDatasetsLinks2));
        System.assert(sdtmigClassDatasetsLinks2.equals(sdtmigClassDatasetsLinks1));
        System.assert(sdtmigClassDatasetsLinks3.equals(sdtmigClassDatasetsLinks4));
        System.assert(sdtmigClassDatasetsLinks4.equals(sdtmigClassDatasetsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks1 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks2 = new OASSdtmigClassDatasetsLinks();

        System.assertEquals(false, sdtmigClassDatasetsLinks1.equals('foo'));
        System.assertEquals(false, sdtmigClassDatasetsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks1 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks2 = new OASSdtmigClassDatasetsLinks();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks3;

        System.assertEquals(false, sdtmigClassDatasetsLinks1.equals(sdtmigClassDatasetsLinks3));
        System.assertEquals(false, sdtmigClassDatasetsLinks2.equals(sdtmigClassDatasetsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks1 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks2 = new OASSdtmigClassDatasetsLinks();

        System.assertEquals(sdtmigClassDatasetsLinks1.hashCode(), sdtmigClassDatasetsLinks1.hashCode());
        System.assertEquals(sdtmigClassDatasetsLinks2.hashCode(), sdtmigClassDatasetsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks1 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks2 = OASSdtmigClassDatasetsLinks.getExample();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks3 = new OASSdtmigClassDatasetsLinks();
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks4 = new OASSdtmigClassDatasetsLinks();

        System.assert(sdtmigClassDatasetsLinks1.equals(sdtmigClassDatasetsLinks2));
        System.assert(sdtmigClassDatasetsLinks3.equals(sdtmigClassDatasetsLinks4));
        System.assertEquals(sdtmigClassDatasetsLinks1.hashCode(), sdtmigClassDatasetsLinks2.hashCode());
        System.assertEquals(sdtmigClassDatasetsLinks3.hashCode(), sdtmigClassDatasetsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigClassDatasetsLinks sdtmigClassDatasetsLinks = new OASSdtmigClassDatasetsLinks();
        System.assertEquals(new List<OASSdtmigDatasetRefElement>(), sdtmigClassDatasetsLinks.datasets);
        System.assertEquals(null, sdtmigClassDatasetsLinks.self);
        System.assertEquals(null, sdtmigClassDatasetsLinks.parentProduct);
        System.assertEquals(null, sdtmigClassDatasetsLinks.priorVersion);
    }
}
