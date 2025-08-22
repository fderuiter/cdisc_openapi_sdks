@isTest
private class OASCdashigClassScenariosLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks1 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks2 = cdashigClassScenariosLinks1;
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks3 = new OASCdashigClassScenariosLinks();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks4 = cdashigClassScenariosLinks3;

        System.assert(cdashigClassScenariosLinks1.equals(cdashigClassScenariosLinks2));
        System.assert(cdashigClassScenariosLinks2.equals(cdashigClassScenariosLinks1));
        System.assert(cdashigClassScenariosLinks1.equals(cdashigClassScenariosLinks1));
        System.assert(cdashigClassScenariosLinks3.equals(cdashigClassScenariosLinks4));
        System.assert(cdashigClassScenariosLinks4.equals(cdashigClassScenariosLinks3));
        System.assert(cdashigClassScenariosLinks3.equals(cdashigClassScenariosLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks1 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks2 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks3 = new OASCdashigClassScenariosLinks();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks4 = new OASCdashigClassScenariosLinks();

        System.assert(cdashigClassScenariosLinks1.equals(cdashigClassScenariosLinks2));
        System.assert(cdashigClassScenariosLinks2.equals(cdashigClassScenariosLinks1));
        System.assert(cdashigClassScenariosLinks3.equals(cdashigClassScenariosLinks4));
        System.assert(cdashigClassScenariosLinks4.equals(cdashigClassScenariosLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks1 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks2 = new OASCdashigClassScenariosLinks();

        System.assertEquals(false, cdashigClassScenariosLinks1.equals('foo'));
        System.assertEquals(false, cdashigClassScenariosLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks1 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks2 = new OASCdashigClassScenariosLinks();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks3;

        System.assertEquals(false, cdashigClassScenariosLinks1.equals(cdashigClassScenariosLinks3));
        System.assertEquals(false, cdashigClassScenariosLinks2.equals(cdashigClassScenariosLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks1 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks2 = new OASCdashigClassScenariosLinks();

        System.assertEquals(cdashigClassScenariosLinks1.hashCode(), cdashigClassScenariosLinks1.hashCode());
        System.assertEquals(cdashigClassScenariosLinks2.hashCode(), cdashigClassScenariosLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks1 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks2 = OASCdashigClassScenariosLinks.getExample();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks3 = new OASCdashigClassScenariosLinks();
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks4 = new OASCdashigClassScenariosLinks();

        System.assert(cdashigClassScenariosLinks1.equals(cdashigClassScenariosLinks2));
        System.assert(cdashigClassScenariosLinks3.equals(cdashigClassScenariosLinks4));
        System.assertEquals(cdashigClassScenariosLinks1.hashCode(), cdashigClassScenariosLinks2.hashCode());
        System.assertEquals(cdashigClassScenariosLinks3.hashCode(), cdashigClassScenariosLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigClassScenariosLinks cdashigClassScenariosLinks = new OASCdashigClassScenariosLinks();
        System.assertEquals(new List<OASCdashigScenarioRefElement>(), cdashigClassScenariosLinks.scenarios);
        System.assertEquals(null, cdashigClassScenariosLinks.self);
    }
}
