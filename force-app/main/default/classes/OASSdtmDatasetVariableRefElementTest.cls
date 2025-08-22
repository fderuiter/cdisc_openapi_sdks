@isTest
private class OASSdtmDatasetVariableRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement1 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement2 = sdtmDatasetVariableRefElement1;
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement3 = new OASSdtmDatasetVariableRefElement();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement4 = sdtmDatasetVariableRefElement3;

        System.assert(sdtmDatasetVariableRefElement1.equals(sdtmDatasetVariableRefElement2));
        System.assert(sdtmDatasetVariableRefElement2.equals(sdtmDatasetVariableRefElement1));
        System.assert(sdtmDatasetVariableRefElement1.equals(sdtmDatasetVariableRefElement1));
        System.assert(sdtmDatasetVariableRefElement3.equals(sdtmDatasetVariableRefElement4));
        System.assert(sdtmDatasetVariableRefElement4.equals(sdtmDatasetVariableRefElement3));
        System.assert(sdtmDatasetVariableRefElement3.equals(sdtmDatasetVariableRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement1 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement2 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement3 = new OASSdtmDatasetVariableRefElement();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement4 = new OASSdtmDatasetVariableRefElement();

        System.assert(sdtmDatasetVariableRefElement1.equals(sdtmDatasetVariableRefElement2));
        System.assert(sdtmDatasetVariableRefElement2.equals(sdtmDatasetVariableRefElement1));
        System.assert(sdtmDatasetVariableRefElement3.equals(sdtmDatasetVariableRefElement4));
        System.assert(sdtmDatasetVariableRefElement4.equals(sdtmDatasetVariableRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement1 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement2 = new OASSdtmDatasetVariableRefElement();

        System.assertEquals(false, sdtmDatasetVariableRefElement1.equals('foo'));
        System.assertEquals(false, sdtmDatasetVariableRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement1 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement2 = new OASSdtmDatasetVariableRefElement();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement3;

        System.assertEquals(false, sdtmDatasetVariableRefElement1.equals(sdtmDatasetVariableRefElement3));
        System.assertEquals(false, sdtmDatasetVariableRefElement2.equals(sdtmDatasetVariableRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement1 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement2 = new OASSdtmDatasetVariableRefElement();

        System.assertEquals(sdtmDatasetVariableRefElement1.hashCode(), sdtmDatasetVariableRefElement1.hashCode());
        System.assertEquals(sdtmDatasetVariableRefElement2.hashCode(), sdtmDatasetVariableRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement1 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement2 = OASSdtmDatasetVariableRefElement.getExample();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement3 = new OASSdtmDatasetVariableRefElement();
        OASSdtmDatasetVariableRefElement sdtmDatasetVariableRefElement4 = new OASSdtmDatasetVariableRefElement();

        System.assert(sdtmDatasetVariableRefElement1.equals(sdtmDatasetVariableRefElement2));
        System.assert(sdtmDatasetVariableRefElement3.equals(sdtmDatasetVariableRefElement4));
        System.assertEquals(sdtmDatasetVariableRefElement1.hashCode(), sdtmDatasetVariableRefElement2.hashCode());
        System.assertEquals(sdtmDatasetVariableRefElement3.hashCode(), sdtmDatasetVariableRefElement4.hashCode());
    }
}
