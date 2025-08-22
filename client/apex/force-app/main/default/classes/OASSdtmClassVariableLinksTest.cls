@isTest
private class OASSdtmClassVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariableLinks sdtmClassVariableLinks1 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks2 = sdtmClassVariableLinks1;
        OASSdtmClassVariableLinks sdtmClassVariableLinks3 = new OASSdtmClassVariableLinks();
        OASSdtmClassVariableLinks sdtmClassVariableLinks4 = sdtmClassVariableLinks3;

        System.assert(sdtmClassVariableLinks1.equals(sdtmClassVariableLinks2));
        System.assert(sdtmClassVariableLinks2.equals(sdtmClassVariableLinks1));
        System.assert(sdtmClassVariableLinks1.equals(sdtmClassVariableLinks1));
        System.assert(sdtmClassVariableLinks3.equals(sdtmClassVariableLinks4));
        System.assert(sdtmClassVariableLinks4.equals(sdtmClassVariableLinks3));
        System.assert(sdtmClassVariableLinks3.equals(sdtmClassVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariableLinks sdtmClassVariableLinks1 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks2 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks3 = new OASSdtmClassVariableLinks();
        OASSdtmClassVariableLinks sdtmClassVariableLinks4 = new OASSdtmClassVariableLinks();

        System.assert(sdtmClassVariableLinks1.equals(sdtmClassVariableLinks2));
        System.assert(sdtmClassVariableLinks2.equals(sdtmClassVariableLinks1));
        System.assert(sdtmClassVariableLinks3.equals(sdtmClassVariableLinks4));
        System.assert(sdtmClassVariableLinks4.equals(sdtmClassVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariableLinks sdtmClassVariableLinks1 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks2 = new OASSdtmClassVariableLinks();

        System.assertEquals(false, sdtmClassVariableLinks1.equals('foo'));
        System.assertEquals(false, sdtmClassVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariableLinks sdtmClassVariableLinks1 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks2 = new OASSdtmClassVariableLinks();
        OASSdtmClassVariableLinks sdtmClassVariableLinks3;

        System.assertEquals(false, sdtmClassVariableLinks1.equals(sdtmClassVariableLinks3));
        System.assertEquals(false, sdtmClassVariableLinks2.equals(sdtmClassVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariableLinks sdtmClassVariableLinks1 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks2 = new OASSdtmClassVariableLinks();

        System.assertEquals(sdtmClassVariableLinks1.hashCode(), sdtmClassVariableLinks1.hashCode());
        System.assertEquals(sdtmClassVariableLinks2.hashCode(), sdtmClassVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariableLinks sdtmClassVariableLinks1 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks2 = OASSdtmClassVariableLinks.getExample();
        OASSdtmClassVariableLinks sdtmClassVariableLinks3 = new OASSdtmClassVariableLinks();
        OASSdtmClassVariableLinks sdtmClassVariableLinks4 = new OASSdtmClassVariableLinks();

        System.assert(sdtmClassVariableLinks1.equals(sdtmClassVariableLinks2));
        System.assert(sdtmClassVariableLinks3.equals(sdtmClassVariableLinks4));
        System.assertEquals(sdtmClassVariableLinks1.hashCode(), sdtmClassVariableLinks2.hashCode());
        System.assertEquals(sdtmClassVariableLinks3.hashCode(), sdtmClassVariableLinks4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASSdtmClassVariableLinks sdtmClassVariableLinks = new OASSdtmClassVariableLinks();
        System.assertEquals(new List<OASSdtmClassVariableRefQualifies>(), sdtmClassVariableLinks.qualifiesVariables);
        System.assertEquals(null, sdtmClassVariableLinks.self);
        System.assertEquals(null, sdtmClassVariableLinks.parentProduct);
        System.assertEquals(null, sdtmClassVariableLinks.parentClass);
        System.assertEquals(null, sdtmClassVariableLinks.rootItem);
        System.assertEquals(null, sdtmClassVariableLinks.priorVersion);
    }
}
