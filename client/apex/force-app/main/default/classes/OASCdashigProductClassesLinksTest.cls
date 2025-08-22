@isTest
private class OASCdashigProductClassesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductClassesLinks cdashigProductClassesLinks1 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks2 = cdashigProductClassesLinks1;
        OASCdashigProductClassesLinks cdashigProductClassesLinks3 = new OASCdashigProductClassesLinks();
        OASCdashigProductClassesLinks cdashigProductClassesLinks4 = cdashigProductClassesLinks3;

        System.assert(cdashigProductClassesLinks1.equals(cdashigProductClassesLinks2));
        System.assert(cdashigProductClassesLinks2.equals(cdashigProductClassesLinks1));
        System.assert(cdashigProductClassesLinks1.equals(cdashigProductClassesLinks1));
        System.assert(cdashigProductClassesLinks3.equals(cdashigProductClassesLinks4));
        System.assert(cdashigProductClassesLinks4.equals(cdashigProductClassesLinks3));
        System.assert(cdashigProductClassesLinks3.equals(cdashigProductClassesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductClassesLinks cdashigProductClassesLinks1 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks2 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks3 = new OASCdashigProductClassesLinks();
        OASCdashigProductClassesLinks cdashigProductClassesLinks4 = new OASCdashigProductClassesLinks();

        System.assert(cdashigProductClassesLinks1.equals(cdashigProductClassesLinks2));
        System.assert(cdashigProductClassesLinks2.equals(cdashigProductClassesLinks1));
        System.assert(cdashigProductClassesLinks3.equals(cdashigProductClassesLinks4));
        System.assert(cdashigProductClassesLinks4.equals(cdashigProductClassesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductClassesLinks cdashigProductClassesLinks1 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks2 = new OASCdashigProductClassesLinks();

        System.assertEquals(false, cdashigProductClassesLinks1.equals('foo'));
        System.assertEquals(false, cdashigProductClassesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductClassesLinks cdashigProductClassesLinks1 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks2 = new OASCdashigProductClassesLinks();
        OASCdashigProductClassesLinks cdashigProductClassesLinks3;

        System.assertEquals(false, cdashigProductClassesLinks1.equals(cdashigProductClassesLinks3));
        System.assertEquals(false, cdashigProductClassesLinks2.equals(cdashigProductClassesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductClassesLinks cdashigProductClassesLinks1 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks2 = new OASCdashigProductClassesLinks();

        System.assertEquals(cdashigProductClassesLinks1.hashCode(), cdashigProductClassesLinks1.hashCode());
        System.assertEquals(cdashigProductClassesLinks2.hashCode(), cdashigProductClassesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductClassesLinks cdashigProductClassesLinks1 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks2 = OASCdashigProductClassesLinks.getExample();
        OASCdashigProductClassesLinks cdashigProductClassesLinks3 = new OASCdashigProductClassesLinks();
        OASCdashigProductClassesLinks cdashigProductClassesLinks4 = new OASCdashigProductClassesLinks();

        System.assert(cdashigProductClassesLinks1.equals(cdashigProductClassesLinks2));
        System.assert(cdashigProductClassesLinks3.equals(cdashigProductClassesLinks4));
        System.assertEquals(cdashigProductClassesLinks1.hashCode(), cdashigProductClassesLinks2.hashCode());
        System.assertEquals(cdashigProductClassesLinks3.hashCode(), cdashigProductClassesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashigProductClassesLinks cdashigProductClassesLinks = new OASCdashigProductClassesLinks();
        System.assertEquals(new List<OASCdashigClassRefElement>(), cdashigProductClassesLinks.classes);
        System.assertEquals(null, cdashigProductClassesLinks.self);
        System.assertEquals(null, cdashigProductClassesLinks.parentProduct);
    }
}
