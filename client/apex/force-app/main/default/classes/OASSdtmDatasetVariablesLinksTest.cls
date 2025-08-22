@isTest
private class OASSdtmDatasetVariablesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks1 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks2 = sdtmDatasetVariablesLinks1;
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks3 = new OASSdtmDatasetVariablesLinks();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks4 = sdtmDatasetVariablesLinks3;

        System.assert(sdtmDatasetVariablesLinks1.equals(sdtmDatasetVariablesLinks2));
        System.assert(sdtmDatasetVariablesLinks2.equals(sdtmDatasetVariablesLinks1));
        System.assert(sdtmDatasetVariablesLinks1.equals(sdtmDatasetVariablesLinks1));
        System.assert(sdtmDatasetVariablesLinks3.equals(sdtmDatasetVariablesLinks4));
        System.assert(sdtmDatasetVariablesLinks4.equals(sdtmDatasetVariablesLinks3));
        System.assert(sdtmDatasetVariablesLinks3.equals(sdtmDatasetVariablesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks1 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks2 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks3 = new OASSdtmDatasetVariablesLinks();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks4 = new OASSdtmDatasetVariablesLinks();

        System.assert(sdtmDatasetVariablesLinks1.equals(sdtmDatasetVariablesLinks2));
        System.assert(sdtmDatasetVariablesLinks2.equals(sdtmDatasetVariablesLinks1));
        System.assert(sdtmDatasetVariablesLinks3.equals(sdtmDatasetVariablesLinks4));
        System.assert(sdtmDatasetVariablesLinks4.equals(sdtmDatasetVariablesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks1 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks2 = new OASSdtmDatasetVariablesLinks();

        System.assertEquals(false, sdtmDatasetVariablesLinks1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariablesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks1 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks2 = new OASSdtmDatasetVariablesLinks();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks3;

        System.assertEquals(false, sdtmDatasetVariablesLinks1.equals(sdtmDatasetVariablesLinks3));
        System.assertEquals(false, sdtmDatasetVariablesLinks2.equals(sdtmDatasetVariablesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks1 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks2 = new OASSdtmDatasetVariablesLinks();

        System.assertEquals(sdtmDatasetVariablesLinks1.hashCode(), sdtmDatasetVariablesLinks1.hashCode());
        System.assertEquals(sdtmDatasetVariablesLinks2.hashCode(), sdtmDatasetVariablesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks1 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks2 = OASSdtmDatasetVariablesLinks.getExample();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks3 = new OASSdtmDatasetVariablesLinks();
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks4 = new OASSdtmDatasetVariablesLinks();

        System.assert(sdtmDatasetVariablesLinks1.equals(sdtmDatasetVariablesLinks2));
        System.assert(sdtmDatasetVariablesLinks3.equals(sdtmDatasetVariablesLinks4));
        System.assertEquals(sdtmDatasetVariablesLinks1.hashCode(), sdtmDatasetVariablesLinks2.hashCode());
        System.assertEquals(sdtmDatasetVariablesLinks3.hashCode(), sdtmDatasetVariablesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmDatasetVariablesLinks sdtmDatasetVariablesLinks = new OASSdtmDatasetVariablesLinks();
        System.assertEquals(new List<OASSdtmDatasetVariableRefElement>(), sdtmDatasetVariablesLinks.datasetVariables);
        System.assertEquals(null, sdtmDatasetVariablesLinks.self);
        System.assertEquals(null, sdtmDatasetVariablesLinks.parentProduct);
        System.assertEquals(null, sdtmDatasetVariablesLinks.parentClass);
        System.assertEquals(null, sdtmDatasetVariablesLinks.priorVersion);
    }
}
