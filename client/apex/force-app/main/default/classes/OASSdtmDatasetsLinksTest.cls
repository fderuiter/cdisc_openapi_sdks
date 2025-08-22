@isTest
private class OASSdtmDatasetsLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetsLinks sdtmDatasetsLinks1 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks2 = sdtmDatasetsLinks1;
        OASSdtmDatasetsLinks sdtmDatasetsLinks3 = new OASSdtmDatasetsLinks();
        OASSdtmDatasetsLinks sdtmDatasetsLinks4 = sdtmDatasetsLinks3;

        System.assert(sdtmDatasetsLinks1.equals(sdtmDatasetsLinks2));
        System.assert(sdtmDatasetsLinks2.equals(sdtmDatasetsLinks1));
        System.assert(sdtmDatasetsLinks1.equals(sdtmDatasetsLinks1));
        System.assert(sdtmDatasetsLinks3.equals(sdtmDatasetsLinks4));
        System.assert(sdtmDatasetsLinks4.equals(sdtmDatasetsLinks3));
        System.assert(sdtmDatasetsLinks3.equals(sdtmDatasetsLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetsLinks sdtmDatasetsLinks1 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks2 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks3 = new OASSdtmDatasetsLinks();
        OASSdtmDatasetsLinks sdtmDatasetsLinks4 = new OASSdtmDatasetsLinks();

        System.assert(sdtmDatasetsLinks1.equals(sdtmDatasetsLinks2));
        System.assert(sdtmDatasetsLinks2.equals(sdtmDatasetsLinks1));
        System.assert(sdtmDatasetsLinks3.equals(sdtmDatasetsLinks4));
        System.assert(sdtmDatasetsLinks4.equals(sdtmDatasetsLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetsLinks sdtmDatasetsLinks1 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks2 = new OASSdtmDatasetsLinks();

        System.assertEquals(false, sdtmDatasetsLinks1.equals('foo'));
        System.assertEquals(false, sdtmDatasetsLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetsLinks sdtmDatasetsLinks1 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks2 = new OASSdtmDatasetsLinks();
        OASSdtmDatasetsLinks sdtmDatasetsLinks3;

        System.assertEquals(false, sdtmDatasetsLinks1.equals(sdtmDatasetsLinks3));
        System.assertEquals(false, sdtmDatasetsLinks2.equals(sdtmDatasetsLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetsLinks sdtmDatasetsLinks1 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks2 = new OASSdtmDatasetsLinks();

        System.assertEquals(sdtmDatasetsLinks1.hashCode(), sdtmDatasetsLinks1.hashCode());
        System.assertEquals(sdtmDatasetsLinks2.hashCode(), sdtmDatasetsLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetsLinks sdtmDatasetsLinks1 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks2 = OASSdtmDatasetsLinks.getExample();
        OASSdtmDatasetsLinks sdtmDatasetsLinks3 = new OASSdtmDatasetsLinks();
        OASSdtmDatasetsLinks sdtmDatasetsLinks4 = new OASSdtmDatasetsLinks();

        System.assert(sdtmDatasetsLinks1.equals(sdtmDatasetsLinks2));
        System.assert(sdtmDatasetsLinks3.equals(sdtmDatasetsLinks4));
        System.assertEquals(sdtmDatasetsLinks1.hashCode(), sdtmDatasetsLinks2.hashCode());
        System.assertEquals(sdtmDatasetsLinks3.hashCode(), sdtmDatasetsLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmDatasetsLinks sdtmDatasetsLinks = new OASSdtmDatasetsLinks();
        System.assertEquals(new List<OASSdtmDatasetRefElement>(), sdtmDatasetsLinks.datasets);
        System.assertEquals(null, sdtmDatasetsLinks.self);
        System.assertEquals(null, sdtmDatasetsLinks.parentProduct);
        System.assertEquals(null, sdtmDatasetsLinks.priorVersion);
    }
}
