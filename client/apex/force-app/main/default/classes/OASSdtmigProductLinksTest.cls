@isTest
private class OASSdtmigProductLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigProductLinks sdtmigProductLinks1 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks2 = sdtmigProductLinks1;
        OASSdtmigProductLinks sdtmigProductLinks3 = new OASSdtmigProductLinks();
        OASSdtmigProductLinks sdtmigProductLinks4 = sdtmigProductLinks3;

        System.assert(sdtmigProductLinks1.equals(sdtmigProductLinks2));
        System.assert(sdtmigProductLinks2.equals(sdtmigProductLinks1));
        System.assert(sdtmigProductLinks1.equals(sdtmigProductLinks1));
        System.assert(sdtmigProductLinks3.equals(sdtmigProductLinks4));
        System.assert(sdtmigProductLinks4.equals(sdtmigProductLinks3));
        System.assert(sdtmigProductLinks3.equals(sdtmigProductLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigProductLinks sdtmigProductLinks1 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks2 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks3 = new OASSdtmigProductLinks();
        OASSdtmigProductLinks sdtmigProductLinks4 = new OASSdtmigProductLinks();

        System.assert(sdtmigProductLinks1.equals(sdtmigProductLinks2));
        System.assert(sdtmigProductLinks2.equals(sdtmigProductLinks1));
        System.assert(sdtmigProductLinks3.equals(sdtmigProductLinks4));
        System.assert(sdtmigProductLinks4.equals(sdtmigProductLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigProductLinks sdtmigProductLinks1 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks2 = new OASSdtmigProductLinks();

        System.assertEquals(false, sdtmigProductLinks1.equals('foo'));
        System.assertEquals(false, sdtmigProductLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigProductLinks sdtmigProductLinks1 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks2 = new OASSdtmigProductLinks();
        OASSdtmigProductLinks sdtmigProductLinks3;

        System.assertEquals(false, sdtmigProductLinks1.equals(sdtmigProductLinks3));
        System.assertEquals(false, sdtmigProductLinks2.equals(sdtmigProductLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigProductLinks sdtmigProductLinks1 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks2 = new OASSdtmigProductLinks();

        System.assertEquals(sdtmigProductLinks1.hashCode(), sdtmigProductLinks1.hashCode());
        System.assertEquals(sdtmigProductLinks2.hashCode(), sdtmigProductLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigProductLinks sdtmigProductLinks1 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks2 = OASSdtmigProductLinks.getExample();
        OASSdtmigProductLinks sdtmigProductLinks3 = new OASSdtmigProductLinks();
        OASSdtmigProductLinks sdtmigProductLinks4 = new OASSdtmigProductLinks();

        System.assert(sdtmigProductLinks1.equals(sdtmigProductLinks2));
        System.assert(sdtmigProductLinks3.equals(sdtmigProductLinks4));
        System.assertEquals(sdtmigProductLinks1.hashCode(), sdtmigProductLinks2.hashCode());
        System.assertEquals(sdtmigProductLinks3.hashCode(), sdtmigProductLinks4.hashCode());
    }
}
