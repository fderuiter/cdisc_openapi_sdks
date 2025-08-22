@isTest
private class OASCdashProductClassesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductClassesLinks cdashProductClassesLinks1 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks2 = cdashProductClassesLinks1;
        OASCdashProductClassesLinks cdashProductClassesLinks3 = new OASCdashProductClassesLinks();
        OASCdashProductClassesLinks cdashProductClassesLinks4 = cdashProductClassesLinks3;

        System.assert(cdashProductClassesLinks1.equals(cdashProductClassesLinks2));
        System.assert(cdashProductClassesLinks2.equals(cdashProductClassesLinks1));
        System.assert(cdashProductClassesLinks1.equals(cdashProductClassesLinks1));
        System.assert(cdashProductClassesLinks3.equals(cdashProductClassesLinks4));
        System.assert(cdashProductClassesLinks4.equals(cdashProductClassesLinks3));
        System.assert(cdashProductClassesLinks3.equals(cdashProductClassesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductClassesLinks cdashProductClassesLinks1 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks2 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks3 = new OASCdashProductClassesLinks();
        OASCdashProductClassesLinks cdashProductClassesLinks4 = new OASCdashProductClassesLinks();

        System.assert(cdashProductClassesLinks1.equals(cdashProductClassesLinks2));
        System.assert(cdashProductClassesLinks2.equals(cdashProductClassesLinks1));
        System.assert(cdashProductClassesLinks3.equals(cdashProductClassesLinks4));
        System.assert(cdashProductClassesLinks4.equals(cdashProductClassesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductClassesLinks cdashProductClassesLinks1 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks2 = new OASCdashProductClassesLinks();

        System.assertEquals(false, cdashProductClassesLinks1.equals('foo'));
        System.assertEquals(false, cdashProductClassesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductClassesLinks cdashProductClassesLinks1 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks2 = new OASCdashProductClassesLinks();
        OASCdashProductClassesLinks cdashProductClassesLinks3;

        System.assertEquals(false, cdashProductClassesLinks1.equals(cdashProductClassesLinks3));
        System.assertEquals(false, cdashProductClassesLinks2.equals(cdashProductClassesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductClassesLinks cdashProductClassesLinks1 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks2 = new OASCdashProductClassesLinks();

        System.assertEquals(cdashProductClassesLinks1.hashCode(), cdashProductClassesLinks1.hashCode());
        System.assertEquals(cdashProductClassesLinks2.hashCode(), cdashProductClassesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductClassesLinks cdashProductClassesLinks1 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks2 = OASCdashProductClassesLinks.getExample();
        OASCdashProductClassesLinks cdashProductClassesLinks3 = new OASCdashProductClassesLinks();
        OASCdashProductClassesLinks cdashProductClassesLinks4 = new OASCdashProductClassesLinks();

        System.assert(cdashProductClassesLinks1.equals(cdashProductClassesLinks2));
        System.assert(cdashProductClassesLinks3.equals(cdashProductClassesLinks4));
        System.assertEquals(cdashProductClassesLinks1.hashCode(), cdashProductClassesLinks2.hashCode());
        System.assertEquals(cdashProductClassesLinks3.hashCode(), cdashProductClassesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCdashProductClassesLinks cdashProductClassesLinks = new OASCdashProductClassesLinks();
        System.assertEquals(new List<OASCdashClassRefElement>(), cdashProductClassesLinks.classes);
        System.assertEquals(null, cdashProductClassesLinks.self);
        System.assertEquals(null, cdashProductClassesLinks.parentProduct);
    }
}
