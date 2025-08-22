@isTest
private class OASSdtmDatasetVariableLinksTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks1 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks2 = sdtmDatasetVariableLinks1;
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks3 = new OASSdtmDatasetVariableLinks();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks4 = sdtmDatasetVariableLinks3;

        System.assert(sdtmDatasetVariableLinks1.equals(sdtmDatasetVariableLinks2));
        System.assert(sdtmDatasetVariableLinks2.equals(sdtmDatasetVariableLinks1));
        System.assert(sdtmDatasetVariableLinks1.equals(sdtmDatasetVariableLinks1));
        System.assert(sdtmDatasetVariableLinks3.equals(sdtmDatasetVariableLinks4));
        System.assert(sdtmDatasetVariableLinks4.equals(sdtmDatasetVariableLinks3));
        System.assert(sdtmDatasetVariableLinks3.equals(sdtmDatasetVariableLinks3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks1 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks2 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks3 = new OASSdtmDatasetVariableLinks();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks4 = new OASSdtmDatasetVariableLinks();

        System.assert(sdtmDatasetVariableLinks1.equals(sdtmDatasetVariableLinks2));
        System.assert(sdtmDatasetVariableLinks2.equals(sdtmDatasetVariableLinks1));
        System.assert(sdtmDatasetVariableLinks3.equals(sdtmDatasetVariableLinks4));
        System.assert(sdtmDatasetVariableLinks4.equals(sdtmDatasetVariableLinks3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks1 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks2 = new OASSdtmDatasetVariableLinks();

        System.assertEquals(false, sdtmDatasetVariableLinks1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariableLinks2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks1 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks2 = new OASSdtmDatasetVariableLinks();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks3;

        System.assertEquals(false, sdtmDatasetVariableLinks1.equals(sdtmDatasetVariableLinks3));
        System.assertEquals(false, sdtmDatasetVariableLinks2.equals(sdtmDatasetVariableLinks3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks1 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks2 = new OASSdtmDatasetVariableLinks();

        System.assertEquals(sdtmDatasetVariableLinks1.hashCode(), sdtmDatasetVariableLinks1.hashCode());
        System.assertEquals(sdtmDatasetVariableLinks2.hashCode(), sdtmDatasetVariableLinks2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks1 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks2 = OASSdtmDatasetVariableLinks.getExample();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks3 = new OASSdtmDatasetVariableLinks();
        OASSdtmDatasetVariableLinks sdtmDatasetVariableLinks4 = new OASSdtmDatasetVariableLinks();

        System.assert(sdtmDatasetVariableLinks1.equals(sdtmDatasetVariableLinks2));
        System.assert(sdtmDatasetVariableLinks3.equals(sdtmDatasetVariableLinks4));
        System.assertEquals(sdtmDatasetVariableLinks1.hashCode(), sdtmDatasetVariableLinks2.hashCode());
        System.assertEquals(sdtmDatasetVariableLinks3.hashCode(), sdtmDatasetVariableLinks4.hashCode());
    }
}
