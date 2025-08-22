@isTest
private class OASCdashigScenarioLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioLinks cdashigScenarioLinks1 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks2 = cdashigScenarioLinks1;
        OASCdashigScenarioLinks cdashigScenarioLinks3 = new OASCdashigScenarioLinks();
        OASCdashigScenarioLinks cdashigScenarioLinks4 = cdashigScenarioLinks3;

        System.assert(cdashigScenarioLinks1.equals(cdashigScenarioLinks2));
        System.assert(cdashigScenarioLinks2.equals(cdashigScenarioLinks1));
        System.assert(cdashigScenarioLinks1.equals(cdashigScenarioLinks1));
        System.assert(cdashigScenarioLinks3.equals(cdashigScenarioLinks4));
        System.assert(cdashigScenarioLinks4.equals(cdashigScenarioLinks3));
        System.assert(cdashigScenarioLinks3.equals(cdashigScenarioLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioLinks cdashigScenarioLinks1 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks2 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks3 = new OASCdashigScenarioLinks();
        OASCdashigScenarioLinks cdashigScenarioLinks4 = new OASCdashigScenarioLinks();

        System.assert(cdashigScenarioLinks1.equals(cdashigScenarioLinks2));
        System.assert(cdashigScenarioLinks2.equals(cdashigScenarioLinks1));
        System.assert(cdashigScenarioLinks3.equals(cdashigScenarioLinks4));
        System.assert(cdashigScenarioLinks4.equals(cdashigScenarioLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioLinks cdashigScenarioLinks1 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks2 = new OASCdashigScenarioLinks();

        System.assertEquals(false, cdashigScenarioLinks1.equals('foo'));
        System.assertEquals(false, cdashigScenarioLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioLinks cdashigScenarioLinks1 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks2 = new OASCdashigScenarioLinks();
        OASCdashigScenarioLinks cdashigScenarioLinks3;

        System.assertEquals(false, cdashigScenarioLinks1.equals(cdashigScenarioLinks3));
        System.assertEquals(false, cdashigScenarioLinks2.equals(cdashigScenarioLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioLinks cdashigScenarioLinks1 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks2 = new OASCdashigScenarioLinks();

        System.assertEquals(cdashigScenarioLinks1.hashCode(), cdashigScenarioLinks1.hashCode());
        System.assertEquals(cdashigScenarioLinks2.hashCode(), cdashigScenarioLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioLinks cdashigScenarioLinks1 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks2 = OASCdashigScenarioLinks.getExample();
        OASCdashigScenarioLinks cdashigScenarioLinks3 = new OASCdashigScenarioLinks();
        OASCdashigScenarioLinks cdashigScenarioLinks4 = new OASCdashigScenarioLinks();

        System.assert(cdashigScenarioLinks1.equals(cdashigScenarioLinks2));
        System.assert(cdashigScenarioLinks3.equals(cdashigScenarioLinks4));
        System.assertEquals(cdashigScenarioLinks1.hashCode(), cdashigScenarioLinks2.hashCode());
        System.assertEquals(cdashigScenarioLinks3.hashCode(), cdashigScenarioLinks4.hashCode());
    }
}
