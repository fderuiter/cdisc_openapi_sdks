@isTest
private class OASSdtmigClassLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassLinks sdtmigClassLinks1 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks2 = sdtmigClassLinks1;
        OASSdtmigClassLinks sdtmigClassLinks3 = new OASSdtmigClassLinks();
        OASSdtmigClassLinks sdtmigClassLinks4 = sdtmigClassLinks3;

        System.assert(sdtmigClassLinks1.equals(sdtmigClassLinks2));
        System.assert(sdtmigClassLinks2.equals(sdtmigClassLinks1));
        System.assert(sdtmigClassLinks1.equals(sdtmigClassLinks1));
        System.assert(sdtmigClassLinks3.equals(sdtmigClassLinks4));
        System.assert(sdtmigClassLinks4.equals(sdtmigClassLinks3));
        System.assert(sdtmigClassLinks3.equals(sdtmigClassLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassLinks sdtmigClassLinks1 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks2 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks3 = new OASSdtmigClassLinks();
        OASSdtmigClassLinks sdtmigClassLinks4 = new OASSdtmigClassLinks();

        System.assert(sdtmigClassLinks1.equals(sdtmigClassLinks2));
        System.assert(sdtmigClassLinks2.equals(sdtmigClassLinks1));
        System.assert(sdtmigClassLinks3.equals(sdtmigClassLinks4));
        System.assert(sdtmigClassLinks4.equals(sdtmigClassLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassLinks sdtmigClassLinks1 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks2 = new OASSdtmigClassLinks();

        System.assertEquals(false, sdtmigClassLinks1.equals('foo'));
        System.assertEquals(false, sdtmigClassLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassLinks sdtmigClassLinks1 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks2 = new OASSdtmigClassLinks();
        OASSdtmigClassLinks sdtmigClassLinks3;

        System.assertEquals(false, sdtmigClassLinks1.equals(sdtmigClassLinks3));
        System.assertEquals(false, sdtmigClassLinks2.equals(sdtmigClassLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassLinks sdtmigClassLinks1 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks2 = new OASSdtmigClassLinks();

        System.assertEquals(sdtmigClassLinks1.hashCode(), sdtmigClassLinks1.hashCode());
        System.assertEquals(sdtmigClassLinks2.hashCode(), sdtmigClassLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassLinks sdtmigClassLinks1 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks2 = OASSdtmigClassLinks.getExample();
        OASSdtmigClassLinks sdtmigClassLinks3 = new OASSdtmigClassLinks();
        OASSdtmigClassLinks sdtmigClassLinks4 = new OASSdtmigClassLinks();

        System.assert(sdtmigClassLinks1.equals(sdtmigClassLinks2));
        System.assert(sdtmigClassLinks3.equals(sdtmigClassLinks4));
        System.assertEquals(sdtmigClassLinks1.hashCode(), sdtmigClassLinks2.hashCode());
        System.assertEquals(sdtmigClassLinks3.hashCode(), sdtmigClassLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmigClassLinks sdtmigClassLinks = new OASSdtmigClassLinks();
        System.assertEquals(new List<OASSdtmigClassRefSubclass>(), sdtmigClassLinks.subclasses);
        System.assertEquals(null, sdtmigClassLinks.self);
        System.assertEquals(null, sdtmigClassLinks.modelClass);
        System.assertEquals(null, sdtmigClassLinks.parentProduct);
        System.assertEquals(null, sdtmigClassLinks.parentClass);
        System.assertEquals(null, sdtmigClassLinks.priorVersion);
    }
}
