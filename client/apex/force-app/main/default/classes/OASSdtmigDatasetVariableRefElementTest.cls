@isTest
private class OASSdtmigDatasetVariableRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement1 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement2 = sdtmigDatasetVariableRefElement1;
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement3 = new OASSdtmigDatasetVariableRefElement();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement4 = sdtmigDatasetVariableRefElement3;

        System.assert(sdtmigDatasetVariableRefElement1.equals(sdtmigDatasetVariableRefElement2));
        System.assert(sdtmigDatasetVariableRefElement2.equals(sdtmigDatasetVariableRefElement1));
        System.assert(sdtmigDatasetVariableRefElement1.equals(sdtmigDatasetVariableRefElement1));
        System.assert(sdtmigDatasetVariableRefElement3.equals(sdtmigDatasetVariableRefElement4));
        System.assert(sdtmigDatasetVariableRefElement4.equals(sdtmigDatasetVariableRefElement3));
        System.assert(sdtmigDatasetVariableRefElement3.equals(sdtmigDatasetVariableRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement1 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement2 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement3 = new OASSdtmigDatasetVariableRefElement();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement4 = new OASSdtmigDatasetVariableRefElement();

        System.assert(sdtmigDatasetVariableRefElement1.equals(sdtmigDatasetVariableRefElement2));
        System.assert(sdtmigDatasetVariableRefElement2.equals(sdtmigDatasetVariableRefElement1));
        System.assert(sdtmigDatasetVariableRefElement3.equals(sdtmigDatasetVariableRefElement4));
        System.assert(sdtmigDatasetVariableRefElement4.equals(sdtmigDatasetVariableRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement1 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement2 = new OASSdtmigDatasetVariableRefElement();

        System.assertEquals(false, sdtmigDatasetVariableRefElement1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetVariableRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement1 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement2 = new OASSdtmigDatasetVariableRefElement();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement3;

        System.assertEquals(false, sdtmigDatasetVariableRefElement1.equals(sdtmigDatasetVariableRefElement3));
        System.assertEquals(false, sdtmigDatasetVariableRefElement2.equals(sdtmigDatasetVariableRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement1 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement2 = new OASSdtmigDatasetVariableRefElement();

        System.assertEquals(sdtmigDatasetVariableRefElement1.hashCode(), sdtmigDatasetVariableRefElement1.hashCode());
        System.assertEquals(sdtmigDatasetVariableRefElement2.hashCode(), sdtmigDatasetVariableRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement1 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement2 = OASSdtmigDatasetVariableRefElement.getExample();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement3 = new OASSdtmigDatasetVariableRefElement();
        OASSdtmigDatasetVariableRefElement sdtmigDatasetVariableRefElement4 = new OASSdtmigDatasetVariableRefElement();

        System.assert(sdtmigDatasetVariableRefElement1.equals(sdtmigDatasetVariableRefElement2));
        System.assert(sdtmigDatasetVariableRefElement3.equals(sdtmigDatasetVariableRefElement4));
        System.assertEquals(sdtmigDatasetVariableRefElement1.hashCode(), sdtmigDatasetVariableRefElement2.hashCode());
        System.assertEquals(sdtmigDatasetVariableRefElement3.hashCode(), sdtmigDatasetVariableRefElement4.hashCode());
    }
}
