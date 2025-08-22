@isTest
private class OASSdtmClassVariablesLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks1 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks2 = sdtmClassVariablesLinks1;
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks3 = new OASSdtmClassVariablesLinks();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks4 = sdtmClassVariablesLinks3;

        System.assert(sdtmClassVariablesLinks1.equals(sdtmClassVariablesLinks2));
        System.assert(sdtmClassVariablesLinks2.equals(sdtmClassVariablesLinks1));
        System.assert(sdtmClassVariablesLinks1.equals(sdtmClassVariablesLinks1));
        System.assert(sdtmClassVariablesLinks3.equals(sdtmClassVariablesLinks4));
        System.assert(sdtmClassVariablesLinks4.equals(sdtmClassVariablesLinks3));
        System.assert(sdtmClassVariablesLinks3.equals(sdtmClassVariablesLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks1 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks2 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks3 = new OASSdtmClassVariablesLinks();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks4 = new OASSdtmClassVariablesLinks();

        System.assert(sdtmClassVariablesLinks1.equals(sdtmClassVariablesLinks2));
        System.assert(sdtmClassVariablesLinks2.equals(sdtmClassVariablesLinks1));
        System.assert(sdtmClassVariablesLinks3.equals(sdtmClassVariablesLinks4));
        System.assert(sdtmClassVariablesLinks4.equals(sdtmClassVariablesLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks1 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks2 = new OASSdtmClassVariablesLinks();

        System.assertEquals(false, sdtmClassVariablesLinks1.equals('foo'));
        System.assertEquals(false, sdtmClassVariablesLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks1 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks2 = new OASSdtmClassVariablesLinks();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks3;

        System.assertEquals(false, sdtmClassVariablesLinks1.equals(sdtmClassVariablesLinks3));
        System.assertEquals(false, sdtmClassVariablesLinks2.equals(sdtmClassVariablesLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks1 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks2 = new OASSdtmClassVariablesLinks();

        System.assertEquals(sdtmClassVariablesLinks1.hashCode(), sdtmClassVariablesLinks1.hashCode());
        System.assertEquals(sdtmClassVariablesLinks2.hashCode(), sdtmClassVariablesLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks1 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks2 = OASSdtmClassVariablesLinks.getExample();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks3 = new OASSdtmClassVariablesLinks();
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks4 = new OASSdtmClassVariablesLinks();

        System.assert(sdtmClassVariablesLinks1.equals(sdtmClassVariablesLinks2));
        System.assert(sdtmClassVariablesLinks3.equals(sdtmClassVariablesLinks4));
        System.assertEquals(sdtmClassVariablesLinks1.hashCode(), sdtmClassVariablesLinks2.hashCode());
        System.assertEquals(sdtmClassVariablesLinks3.hashCode(), sdtmClassVariablesLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmClassVariablesLinks sdtmClassVariablesLinks = new OASSdtmClassVariablesLinks();
        System.assertEquals(new List<OASSdtmClassVariableRefElement>(), sdtmClassVariablesLinks.classVariables);
        System.assertEquals(null, sdtmClassVariablesLinks.self);
        System.assertEquals(null, sdtmClassVariablesLinks.parentProduct);
        System.assertEquals(null, sdtmClassVariablesLinks.priorVersion);
    }
}
