@isTest
private class OASSdtmigDatasetVariablesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks1 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks2 = sdtmigDatasetVariablesLinks1;
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks3 = new OASSdtmigDatasetVariablesLinks();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks4 = sdtmigDatasetVariablesLinks3;

        System.assert(sdtmigDatasetVariablesLinks1.equals(sdtmigDatasetVariablesLinks2));
        System.assert(sdtmigDatasetVariablesLinks2.equals(sdtmigDatasetVariablesLinks1));
        System.assert(sdtmigDatasetVariablesLinks1.equals(sdtmigDatasetVariablesLinks1));
        System.assert(sdtmigDatasetVariablesLinks3.equals(sdtmigDatasetVariablesLinks4));
        System.assert(sdtmigDatasetVariablesLinks4.equals(sdtmigDatasetVariablesLinks3));
        System.assert(sdtmigDatasetVariablesLinks3.equals(sdtmigDatasetVariablesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks1 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks2 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks3 = new OASSdtmigDatasetVariablesLinks();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks4 = new OASSdtmigDatasetVariablesLinks();

        System.assert(sdtmigDatasetVariablesLinks1.equals(sdtmigDatasetVariablesLinks2));
        System.assert(sdtmigDatasetVariablesLinks2.equals(sdtmigDatasetVariablesLinks1));
        System.assert(sdtmigDatasetVariablesLinks3.equals(sdtmigDatasetVariablesLinks4));
        System.assert(sdtmigDatasetVariablesLinks4.equals(sdtmigDatasetVariablesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks1 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks2 = new OASSdtmigDatasetVariablesLinks();

        System.assertEquals(false, sdtmigDatasetVariablesLinks1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariablesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks1 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks2 = new OASSdtmigDatasetVariablesLinks();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks3;

        System.assertEquals(false, sdtmigDatasetVariablesLinks1.equals(sdtmigDatasetVariablesLinks3));
        System.assertEquals(false, sdtmigDatasetVariablesLinks2.equals(sdtmigDatasetVariablesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks1 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks2 = new OASSdtmigDatasetVariablesLinks();

        System.assertEquals(sdtmigDatasetVariablesLinks1.hashCode(), sdtmigDatasetVariablesLinks1.hashCode());
        System.assertEquals(sdtmigDatasetVariablesLinks2.hashCode(), sdtmigDatasetVariablesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks1 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks2 = OASSdtmigDatasetVariablesLinks.getExample();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks3 = new OASSdtmigDatasetVariablesLinks();
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks4 = new OASSdtmigDatasetVariablesLinks();

        System.assert(sdtmigDatasetVariablesLinks1.equals(sdtmigDatasetVariablesLinks2));
        System.assert(sdtmigDatasetVariablesLinks3.equals(sdtmigDatasetVariablesLinks4));
        System.assertEquals(sdtmigDatasetVariablesLinks1.hashCode(), sdtmigDatasetVariablesLinks2.hashCode());
        System.assertEquals(sdtmigDatasetVariablesLinks3.hashCode(), sdtmigDatasetVariablesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigDatasetVariablesLinks sdtmigDatasetVariablesLinks = new OASSdtmigDatasetVariablesLinks();
        System.assertEquals(new List<OASSdtmigDatasetVariableRefElement>(), sdtmigDatasetVariablesLinks.datasetVariables);
        System.assertEquals(null, sdtmigDatasetVariablesLinks.self);
        System.assertEquals(null, sdtmigDatasetVariablesLinks.modelDataset);
        System.assertEquals(null, sdtmigDatasetVariablesLinks.parentProduct);
        System.assertEquals(null, sdtmigDatasetVariablesLinks.parentClass);
        System.assertEquals(null, sdtmigDatasetVariablesLinks.priorVersion);
    }
}
