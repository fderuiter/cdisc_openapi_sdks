@isTest
private class OASSdtmigClassesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassesLinks sdtmigClassesLinks1 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks2 = sdtmigClassesLinks1;
        OASSdtmigClassesLinks sdtmigClassesLinks3 = new OASSdtmigClassesLinks();
        OASSdtmigClassesLinks sdtmigClassesLinks4 = sdtmigClassesLinks3;

        System.assert(sdtmigClassesLinks1.equals(sdtmigClassesLinks2));
        System.assert(sdtmigClassesLinks2.equals(sdtmigClassesLinks1));
        System.assert(sdtmigClassesLinks1.equals(sdtmigClassesLinks1));
        System.assert(sdtmigClassesLinks3.equals(sdtmigClassesLinks4));
        System.assert(sdtmigClassesLinks4.equals(sdtmigClassesLinks3));
        System.assert(sdtmigClassesLinks3.equals(sdtmigClassesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassesLinks sdtmigClassesLinks1 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks2 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks3 = new OASSdtmigClassesLinks();
        OASSdtmigClassesLinks sdtmigClassesLinks4 = new OASSdtmigClassesLinks();

        System.assert(sdtmigClassesLinks1.equals(sdtmigClassesLinks2));
        System.assert(sdtmigClassesLinks2.equals(sdtmigClassesLinks1));
        System.assert(sdtmigClassesLinks3.equals(sdtmigClassesLinks4));
        System.assert(sdtmigClassesLinks4.equals(sdtmigClassesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassesLinks sdtmigClassesLinks1 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks2 = new OASSdtmigClassesLinks();

        System.assertEquals(false, sdtmigClassesLinks1.equals('foo'));
        System.assertEquals(false, sdtmigClassesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassesLinks sdtmigClassesLinks1 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks2 = new OASSdtmigClassesLinks();
        OASSdtmigClassesLinks sdtmigClassesLinks3;

        System.assertEquals(false, sdtmigClassesLinks1.equals(sdtmigClassesLinks3));
        System.assertEquals(false, sdtmigClassesLinks2.equals(sdtmigClassesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassesLinks sdtmigClassesLinks1 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks2 = new OASSdtmigClassesLinks();

        System.assertEquals(sdtmigClassesLinks1.hashCode(), sdtmigClassesLinks1.hashCode());
        System.assertEquals(sdtmigClassesLinks2.hashCode(), sdtmigClassesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassesLinks sdtmigClassesLinks1 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks2 = OASSdtmigClassesLinks.getExample();
        OASSdtmigClassesLinks sdtmigClassesLinks3 = new OASSdtmigClassesLinks();
        OASSdtmigClassesLinks sdtmigClassesLinks4 = new OASSdtmigClassesLinks();

        System.assert(sdtmigClassesLinks1.equals(sdtmigClassesLinks2));
        System.assert(sdtmigClassesLinks3.equals(sdtmigClassesLinks4));
        System.assertEquals(sdtmigClassesLinks1.hashCode(), sdtmigClassesLinks2.hashCode());
        System.assertEquals(sdtmigClassesLinks3.hashCode(), sdtmigClassesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigClassesLinks sdtmigClassesLinks = new OASSdtmigClassesLinks();
        System.assertEquals(new List<OASSdtmigClassRefElement>(), sdtmigClassesLinks.classes);
        System.assertEquals(null, sdtmigClassesLinks.self);
        System.assertEquals(null, sdtmigClassesLinks.priorVersion);
    }
}
