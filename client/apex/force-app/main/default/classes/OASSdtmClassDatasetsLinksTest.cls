@isTest
private class OASSdtmClassDatasetsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks1 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks2 = sdtmClassDatasetsLinks1;
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks3 = new OASSdtmClassDatasetsLinks();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks4 = sdtmClassDatasetsLinks3;

        System.assert(sdtmClassDatasetsLinks1.equals(sdtmClassDatasetsLinks2));
        System.assert(sdtmClassDatasetsLinks2.equals(sdtmClassDatasetsLinks1));
        System.assert(sdtmClassDatasetsLinks1.equals(sdtmClassDatasetsLinks1));
        System.assert(sdtmClassDatasetsLinks3.equals(sdtmClassDatasetsLinks4));
        System.assert(sdtmClassDatasetsLinks4.equals(sdtmClassDatasetsLinks3));
        System.assert(sdtmClassDatasetsLinks3.equals(sdtmClassDatasetsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks1 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks2 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks3 = new OASSdtmClassDatasetsLinks();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks4 = new OASSdtmClassDatasetsLinks();

        System.assert(sdtmClassDatasetsLinks1.equals(sdtmClassDatasetsLinks2));
        System.assert(sdtmClassDatasetsLinks2.equals(sdtmClassDatasetsLinks1));
        System.assert(sdtmClassDatasetsLinks3.equals(sdtmClassDatasetsLinks4));
        System.assert(sdtmClassDatasetsLinks4.equals(sdtmClassDatasetsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks1 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks2 = new OASSdtmClassDatasetsLinks();

        System.assertEquals(false, sdtmClassDatasetsLinks1.equals('foo'));
        System.assertEquals(false, sdtmClassDatasetsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks1 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks2 = new OASSdtmClassDatasetsLinks();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks3;

        System.assertEquals(false, sdtmClassDatasetsLinks1.equals(sdtmClassDatasetsLinks3));
        System.assertEquals(false, sdtmClassDatasetsLinks2.equals(sdtmClassDatasetsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks1 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks2 = new OASSdtmClassDatasetsLinks();

        System.assertEquals(sdtmClassDatasetsLinks1.hashCode(), sdtmClassDatasetsLinks1.hashCode());
        System.assertEquals(sdtmClassDatasetsLinks2.hashCode(), sdtmClassDatasetsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks1 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks2 = OASSdtmClassDatasetsLinks.getExample();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks3 = new OASSdtmClassDatasetsLinks();
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks4 = new OASSdtmClassDatasetsLinks();

        System.assert(sdtmClassDatasetsLinks1.equals(sdtmClassDatasetsLinks2));
        System.assert(sdtmClassDatasetsLinks3.equals(sdtmClassDatasetsLinks4));
        System.assertEquals(sdtmClassDatasetsLinks1.hashCode(), sdtmClassDatasetsLinks2.hashCode());
        System.assertEquals(sdtmClassDatasetsLinks3.hashCode(), sdtmClassDatasetsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmClassDatasetsLinks sdtmClassDatasetsLinks = new OASSdtmClassDatasetsLinks();
        System.assertEquals(new List<OASSdtmDatasetRefElement>(), sdtmClassDatasetsLinks.datasets);
        System.assertEquals(null, sdtmClassDatasetsLinks.self);
        System.assertEquals(null, sdtmClassDatasetsLinks.parentProduct);
        System.assertEquals(null, sdtmClassDatasetsLinks.priorVersion);
    }
}
