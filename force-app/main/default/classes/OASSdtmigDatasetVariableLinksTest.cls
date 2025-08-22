@isTest
private class OASSdtmigDatasetVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks1 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks2 = sdtmigDatasetVariableLinks1;
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks3 = new OASSdtmigDatasetVariableLinks();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks4 = sdtmigDatasetVariableLinks3;

        System.assert(sdtmigDatasetVariableLinks1.equals(sdtmigDatasetVariableLinks2));
        System.assert(sdtmigDatasetVariableLinks2.equals(sdtmigDatasetVariableLinks1));
        System.assert(sdtmigDatasetVariableLinks1.equals(sdtmigDatasetVariableLinks1));
        System.assert(sdtmigDatasetVariableLinks3.equals(sdtmigDatasetVariableLinks4));
        System.assert(sdtmigDatasetVariableLinks4.equals(sdtmigDatasetVariableLinks3));
        System.assert(sdtmigDatasetVariableLinks3.equals(sdtmigDatasetVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks1 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks2 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks3 = new OASSdtmigDatasetVariableLinks();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks4 = new OASSdtmigDatasetVariableLinks();

        System.assert(sdtmigDatasetVariableLinks1.equals(sdtmigDatasetVariableLinks2));
        System.assert(sdtmigDatasetVariableLinks2.equals(sdtmigDatasetVariableLinks1));
        System.assert(sdtmigDatasetVariableLinks3.equals(sdtmigDatasetVariableLinks4));
        System.assert(sdtmigDatasetVariableLinks4.equals(sdtmigDatasetVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks1 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks2 = new OASSdtmigDatasetVariableLinks();

        System.assertEquals(false, sdtmigDatasetVariableLinks1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks1 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks2 = new OASSdtmigDatasetVariableLinks();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks3;

        System.assertEquals(false, sdtmigDatasetVariableLinks1.equals(sdtmigDatasetVariableLinks3));
        System.assertEquals(false, sdtmigDatasetVariableLinks2.equals(sdtmigDatasetVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks1 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks2 = new OASSdtmigDatasetVariableLinks();

        System.assertEquals(sdtmigDatasetVariableLinks1.hashCode(), sdtmigDatasetVariableLinks1.hashCode());
        System.assertEquals(sdtmigDatasetVariableLinks2.hashCode(), sdtmigDatasetVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks1 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks2 = OASSdtmigDatasetVariableLinks.getExample();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks3 = new OASSdtmigDatasetVariableLinks();
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks4 = new OASSdtmigDatasetVariableLinks();

        System.assert(sdtmigDatasetVariableLinks1.equals(sdtmigDatasetVariableLinks2));
        System.assert(sdtmigDatasetVariableLinks3.equals(sdtmigDatasetVariableLinks4));
        System.assertEquals(sdtmigDatasetVariableLinks1.hashCode(), sdtmigDatasetVariableLinks2.hashCode());
        System.assertEquals(sdtmigDatasetVariableLinks3.hashCode(), sdtmigDatasetVariableLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigDatasetVariableLinks sdtmigDatasetVariableLinks = new OASSdtmigDatasetVariableLinks();
        System.assertEquals(new List<OASRootCtCodelistRefElement>(), sdtmigDatasetVariableLinks.codelist);
        System.assertEquals(null, sdtmigDatasetVariableLinks.self);
        System.assertEquals(null, sdtmigDatasetVariableLinks.modelClassVariable);
        System.assertEquals(null, sdtmigDatasetVariableLinks.modelDatasetVariable);
        System.assertEquals(null, sdtmigDatasetVariableLinks.parentProduct);
        System.assertEquals(null, sdtmigDatasetVariableLinks.parentDataset);
        System.assertEquals(null, sdtmigDatasetVariableLinks.rootItem);
        System.assertEquals(null, sdtmigDatasetVariableLinks.priorVersion);
    }
}
