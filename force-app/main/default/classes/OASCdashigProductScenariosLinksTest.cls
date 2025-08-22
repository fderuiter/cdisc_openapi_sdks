@isTest
private class OASCdashigProductScenariosLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks1 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks2 = cdashigProductScenariosLinks1;
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks3 = new OASCdashigProductScenariosLinks();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks4 = cdashigProductScenariosLinks3;

        System.assert(cdashigProductScenariosLinks1.equals(cdashigProductScenariosLinks2));
        System.assert(cdashigProductScenariosLinks2.equals(cdashigProductScenariosLinks1));
        System.assert(cdashigProductScenariosLinks1.equals(cdashigProductScenariosLinks1));
        System.assert(cdashigProductScenariosLinks3.equals(cdashigProductScenariosLinks4));
        System.assert(cdashigProductScenariosLinks4.equals(cdashigProductScenariosLinks3));
        System.assert(cdashigProductScenariosLinks3.equals(cdashigProductScenariosLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks1 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks2 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks3 = new OASCdashigProductScenariosLinks();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks4 = new OASCdashigProductScenariosLinks();

        System.assert(cdashigProductScenariosLinks1.equals(cdashigProductScenariosLinks2));
        System.assert(cdashigProductScenariosLinks2.equals(cdashigProductScenariosLinks1));
        System.assert(cdashigProductScenariosLinks3.equals(cdashigProductScenariosLinks4));
        System.assert(cdashigProductScenariosLinks4.equals(cdashigProductScenariosLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks1 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks2 = new OASCdashigProductScenariosLinks();

        System.assertEquals(false, cdashigProductScenariosLinks1.equals('foo'));
        System.assertEquals(false, cdashigProductScenariosLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks1 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks2 = new OASCdashigProductScenariosLinks();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks3;

        System.assertEquals(false, cdashigProductScenariosLinks1.equals(cdashigProductScenariosLinks3));
        System.assertEquals(false, cdashigProductScenariosLinks2.equals(cdashigProductScenariosLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks1 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks2 = new OASCdashigProductScenariosLinks();

        System.assertEquals(cdashigProductScenariosLinks1.hashCode(), cdashigProductScenariosLinks1.hashCode());
        System.assertEquals(cdashigProductScenariosLinks2.hashCode(), cdashigProductScenariosLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks1 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks2 = OASCdashigProductScenariosLinks.getExample();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks3 = new OASCdashigProductScenariosLinks();
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks4 = new OASCdashigProductScenariosLinks();

        System.assert(cdashigProductScenariosLinks1.equals(cdashigProductScenariosLinks2));
        System.assert(cdashigProductScenariosLinks3.equals(cdashigProductScenariosLinks4));
        System.assertEquals(cdashigProductScenariosLinks1.hashCode(), cdashigProductScenariosLinks2.hashCode());
        System.assertEquals(cdashigProductScenariosLinks3.hashCode(), cdashigProductScenariosLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigProductScenariosLinks cdashigProductScenariosLinks = new OASCdashigProductScenariosLinks();
        System.assertEquals(new List<OASCdashigScenarioRefElement>(), cdashigProductScenariosLinks.scenarios);
        System.assertEquals(null, cdashigProductScenariosLinks.self);
        System.assertEquals(null, cdashigProductScenariosLinks.parentProduct);
    }
}
