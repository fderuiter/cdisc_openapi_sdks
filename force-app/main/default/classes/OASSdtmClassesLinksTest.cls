@isTest
private class OASSdtmClassesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassesLinks sdtmClassesLinks1 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks2 = sdtmClassesLinks1;
        OASSdtmClassesLinks sdtmClassesLinks3 = new OASSdtmClassesLinks();
        OASSdtmClassesLinks sdtmClassesLinks4 = sdtmClassesLinks3;

        System.assert(sdtmClassesLinks1.equals(sdtmClassesLinks2));
        System.assert(sdtmClassesLinks2.equals(sdtmClassesLinks1));
        System.assert(sdtmClassesLinks1.equals(sdtmClassesLinks1));
        System.assert(sdtmClassesLinks3.equals(sdtmClassesLinks4));
        System.assert(sdtmClassesLinks4.equals(sdtmClassesLinks3));
        System.assert(sdtmClassesLinks3.equals(sdtmClassesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassesLinks sdtmClassesLinks1 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks2 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks3 = new OASSdtmClassesLinks();
        OASSdtmClassesLinks sdtmClassesLinks4 = new OASSdtmClassesLinks();

        System.assert(sdtmClassesLinks1.equals(sdtmClassesLinks2));
        System.assert(sdtmClassesLinks2.equals(sdtmClassesLinks1));
        System.assert(sdtmClassesLinks3.equals(sdtmClassesLinks4));
        System.assert(sdtmClassesLinks4.equals(sdtmClassesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassesLinks sdtmClassesLinks1 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks2 = new OASSdtmClassesLinks();

        System.assertEquals(false, sdtmClassesLinks1.equals('foo'));
        System.assertEquals(false, sdtmClassesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassesLinks sdtmClassesLinks1 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks2 = new OASSdtmClassesLinks();
        OASSdtmClassesLinks sdtmClassesLinks3;

        System.assertEquals(false, sdtmClassesLinks1.equals(sdtmClassesLinks3));
        System.assertEquals(false, sdtmClassesLinks2.equals(sdtmClassesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassesLinks sdtmClassesLinks1 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks2 = new OASSdtmClassesLinks();

        System.assertEquals(sdtmClassesLinks1.hashCode(), sdtmClassesLinks1.hashCode());
        System.assertEquals(sdtmClassesLinks2.hashCode(), sdtmClassesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassesLinks sdtmClassesLinks1 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks2 = OASSdtmClassesLinks.getExample();
        OASSdtmClassesLinks sdtmClassesLinks3 = new OASSdtmClassesLinks();
        OASSdtmClassesLinks sdtmClassesLinks4 = new OASSdtmClassesLinks();

        System.assert(sdtmClassesLinks1.equals(sdtmClassesLinks2));
        System.assert(sdtmClassesLinks3.equals(sdtmClassesLinks4));
        System.assertEquals(sdtmClassesLinks1.hashCode(), sdtmClassesLinks2.hashCode());
        System.assertEquals(sdtmClassesLinks3.hashCode(), sdtmClassesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmClassesLinks sdtmClassesLinks = new OASSdtmClassesLinks();
        System.assertEquals(new List<OASSdtmClassRefElement>(), sdtmClassesLinks.classes);
        System.assertEquals(null, sdtmClassesLinks.self);
        System.assertEquals(null, sdtmClassesLinks.priorVersion);
    }
}
