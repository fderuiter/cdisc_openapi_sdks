@isTest
private class OASSdtmClassLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassLinks sdtmClassLinks1 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks2 = sdtmClassLinks1;
        OASSdtmClassLinks sdtmClassLinks3 = new OASSdtmClassLinks();
        OASSdtmClassLinks sdtmClassLinks4 = sdtmClassLinks3;

        System.assert(sdtmClassLinks1.equals(sdtmClassLinks2));
        System.assert(sdtmClassLinks2.equals(sdtmClassLinks1));
        System.assert(sdtmClassLinks1.equals(sdtmClassLinks1));
        System.assert(sdtmClassLinks3.equals(sdtmClassLinks4));
        System.assert(sdtmClassLinks4.equals(sdtmClassLinks3));
        System.assert(sdtmClassLinks3.equals(sdtmClassLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassLinks sdtmClassLinks1 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks2 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks3 = new OASSdtmClassLinks();
        OASSdtmClassLinks sdtmClassLinks4 = new OASSdtmClassLinks();

        System.assert(sdtmClassLinks1.equals(sdtmClassLinks2));
        System.assert(sdtmClassLinks2.equals(sdtmClassLinks1));
        System.assert(sdtmClassLinks3.equals(sdtmClassLinks4));
        System.assert(sdtmClassLinks4.equals(sdtmClassLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassLinks sdtmClassLinks1 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks2 = new OASSdtmClassLinks();

        System.assertEquals(false, sdtmClassLinks1.equals('foo'));
        System.assertEquals(false, sdtmClassLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassLinks sdtmClassLinks1 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks2 = new OASSdtmClassLinks();
        OASSdtmClassLinks sdtmClassLinks3;

        System.assertEquals(false, sdtmClassLinks1.equals(sdtmClassLinks3));
        System.assertEquals(false, sdtmClassLinks2.equals(sdtmClassLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassLinks sdtmClassLinks1 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks2 = new OASSdtmClassLinks();

        System.assertEquals(sdtmClassLinks1.hashCode(), sdtmClassLinks1.hashCode());
        System.assertEquals(sdtmClassLinks2.hashCode(), sdtmClassLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassLinks sdtmClassLinks1 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks2 = OASSdtmClassLinks.getExample();
        OASSdtmClassLinks sdtmClassLinks3 = new OASSdtmClassLinks();
        OASSdtmClassLinks sdtmClassLinks4 = new OASSdtmClassLinks();

        System.assert(sdtmClassLinks1.equals(sdtmClassLinks2));
        System.assert(sdtmClassLinks3.equals(sdtmClassLinks4));
        System.assertEquals(sdtmClassLinks1.hashCode(), sdtmClassLinks2.hashCode());
        System.assertEquals(sdtmClassLinks3.hashCode(), sdtmClassLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmClassLinks sdtmClassLinks = new OASSdtmClassLinks();
        System.assertEquals(new List<OASSdtmClassRefSubclass>(), sdtmClassLinks.subclasses);
        System.assertEquals(null, sdtmClassLinks.self);
        System.assertEquals(null, sdtmClassLinks.parentProduct);
        System.assertEquals(null, sdtmClassLinks.parentClass);
        System.assertEquals(null, sdtmClassLinks.priorVersion);
    }
}
