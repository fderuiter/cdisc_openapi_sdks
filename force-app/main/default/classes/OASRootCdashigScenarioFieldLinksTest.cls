@isTest
private class OASRootCdashigScenarioFieldLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks1 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks2 = rootCdashigScenarioFieldLinks1;
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks3 = new OASRootCdashigScenarioFieldLinks();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks4 = rootCdashigScenarioFieldLinks3;

        System.assert(rootCdashigScenarioFieldLinks1.equals(rootCdashigScenarioFieldLinks2));
        System.assert(rootCdashigScenarioFieldLinks2.equals(rootCdashigScenarioFieldLinks1));
        System.assert(rootCdashigScenarioFieldLinks1.equals(rootCdashigScenarioFieldLinks1));
        System.assert(rootCdashigScenarioFieldLinks3.equals(rootCdashigScenarioFieldLinks4));
        System.assert(rootCdashigScenarioFieldLinks4.equals(rootCdashigScenarioFieldLinks3));
        System.assert(rootCdashigScenarioFieldLinks3.equals(rootCdashigScenarioFieldLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks1 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks2 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks3 = new OASRootCdashigScenarioFieldLinks();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks4 = new OASRootCdashigScenarioFieldLinks();

        System.assert(rootCdashigScenarioFieldLinks1.equals(rootCdashigScenarioFieldLinks2));
        System.assert(rootCdashigScenarioFieldLinks2.equals(rootCdashigScenarioFieldLinks1));
        System.assert(rootCdashigScenarioFieldLinks3.equals(rootCdashigScenarioFieldLinks4));
        System.assert(rootCdashigScenarioFieldLinks4.equals(rootCdashigScenarioFieldLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks1 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks2 = new OASRootCdashigScenarioFieldLinks();

        System.assertEquals(false, rootCdashigScenarioFieldLinks1.equals('foo'));
        System.assertEquals(false, rootCdashigScenarioFieldLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks1 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks2 = new OASRootCdashigScenarioFieldLinks();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks3;

        System.assertEquals(false, rootCdashigScenarioFieldLinks1.equals(rootCdashigScenarioFieldLinks3));
        System.assertEquals(false, rootCdashigScenarioFieldLinks2.equals(rootCdashigScenarioFieldLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks1 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks2 = new OASRootCdashigScenarioFieldLinks();

        System.assertEquals(rootCdashigScenarioFieldLinks1.hashCode(), rootCdashigScenarioFieldLinks1.hashCode());
        System.assertEquals(rootCdashigScenarioFieldLinks2.hashCode(), rootCdashigScenarioFieldLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks1 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks2 = OASRootCdashigScenarioFieldLinks.getExample();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks3 = new OASRootCdashigScenarioFieldLinks();
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks4 = new OASRootCdashigScenarioFieldLinks();

        System.assert(rootCdashigScenarioFieldLinks1.equals(rootCdashigScenarioFieldLinks2));
        System.assert(rootCdashigScenarioFieldLinks3.equals(rootCdashigScenarioFieldLinks4));
        System.assertEquals(rootCdashigScenarioFieldLinks1.hashCode(), rootCdashigScenarioFieldLinks2.hashCode());
        System.assertEquals(rootCdashigScenarioFieldLinks3.hashCode(), rootCdashigScenarioFieldLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRootCdashigScenarioFieldLinks rootCdashigScenarioFieldLinks = new OASRootCdashigScenarioFieldLinks();
        System.assertEquals(new List<OASCdashigScenarioFieldRefVersion>(), rootCdashigScenarioFieldLinks.versions);
        System.assertEquals(null, rootCdashigScenarioFieldLinks.self);
    }
}
