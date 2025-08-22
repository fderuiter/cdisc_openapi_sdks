@isTest
private class OASSdtmProductLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmProductLinks sdtmProductLinks1 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks2 = sdtmProductLinks1;
        OASSdtmProductLinks sdtmProductLinks3 = new OASSdtmProductLinks();
        OASSdtmProductLinks sdtmProductLinks4 = sdtmProductLinks3;

        System.assert(sdtmProductLinks1.equals(sdtmProductLinks2));
        System.assert(sdtmProductLinks2.equals(sdtmProductLinks1));
        System.assert(sdtmProductLinks1.equals(sdtmProductLinks1));
        System.assert(sdtmProductLinks3.equals(sdtmProductLinks4));
        System.assert(sdtmProductLinks4.equals(sdtmProductLinks3));
        System.assert(sdtmProductLinks3.equals(sdtmProductLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmProductLinks sdtmProductLinks1 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks2 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks3 = new OASSdtmProductLinks();
        OASSdtmProductLinks sdtmProductLinks4 = new OASSdtmProductLinks();

        System.assert(sdtmProductLinks1.equals(sdtmProductLinks2));
        System.assert(sdtmProductLinks2.equals(sdtmProductLinks1));
        System.assert(sdtmProductLinks3.equals(sdtmProductLinks4));
        System.assert(sdtmProductLinks4.equals(sdtmProductLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmProductLinks sdtmProductLinks1 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks2 = new OASSdtmProductLinks();

        System.assertEquals(false, sdtmProductLinks1.equals('foo'));
        System.assertEquals(false, sdtmProductLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmProductLinks sdtmProductLinks1 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks2 = new OASSdtmProductLinks();
        OASSdtmProductLinks sdtmProductLinks3;

        System.assertEquals(false, sdtmProductLinks1.equals(sdtmProductLinks3));
        System.assertEquals(false, sdtmProductLinks2.equals(sdtmProductLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmProductLinks sdtmProductLinks1 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks2 = new OASSdtmProductLinks();

        System.assertEquals(sdtmProductLinks1.hashCode(), sdtmProductLinks1.hashCode());
        System.assertEquals(sdtmProductLinks2.hashCode(), sdtmProductLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmProductLinks sdtmProductLinks1 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks2 = OASSdtmProductLinks.getExample();
        OASSdtmProductLinks sdtmProductLinks3 = new OASSdtmProductLinks();
        OASSdtmProductLinks sdtmProductLinks4 = new OASSdtmProductLinks();

        System.assert(sdtmProductLinks1.equals(sdtmProductLinks2));
        System.assert(sdtmProductLinks3.equals(sdtmProductLinks4));
        System.assertEquals(sdtmProductLinks1.hashCode(), sdtmProductLinks2.hashCode());
        System.assertEquals(sdtmProductLinks3.hashCode(), sdtmProductLinks4.hashCode());
    }
}
