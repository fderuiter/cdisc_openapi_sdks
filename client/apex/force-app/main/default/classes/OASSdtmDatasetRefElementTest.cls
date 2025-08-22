@isTest
private class OASSdtmDatasetRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmDatasetRefElement sdtmDatasetRefElement1 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement2 = sdtmDatasetRefElement1;
        OASSdtmDatasetRefElement sdtmDatasetRefElement3 = new OASSdtmDatasetRefElement();
        OASSdtmDatasetRefElement sdtmDatasetRefElement4 = sdtmDatasetRefElement3;

        System.assert(sdtmDatasetRefElement1.equals(sdtmDatasetRefElement2));
        System.assert(sdtmDatasetRefElement2.equals(sdtmDatasetRefElement1));
        System.assert(sdtmDatasetRefElement1.equals(sdtmDatasetRefElement1));
        System.assert(sdtmDatasetRefElement3.equals(sdtmDatasetRefElement4));
        System.assert(sdtmDatasetRefElement4.equals(sdtmDatasetRefElement3));
        System.assert(sdtmDatasetRefElement3.equals(sdtmDatasetRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmDatasetRefElement sdtmDatasetRefElement1 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement2 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement3 = new OASSdtmDatasetRefElement();
        OASSdtmDatasetRefElement sdtmDatasetRefElement4 = new OASSdtmDatasetRefElement();

        System.assert(sdtmDatasetRefElement1.equals(sdtmDatasetRefElement2));
        System.assert(sdtmDatasetRefElement2.equals(sdtmDatasetRefElement1));
        System.assert(sdtmDatasetRefElement3.equals(sdtmDatasetRefElement4));
        System.assert(sdtmDatasetRefElement4.equals(sdtmDatasetRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmDatasetRefElement sdtmDatasetRefElement1 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement2 = new OASSdtmDatasetRefElement();

        System.assertEquals(false, sdtmDatasetRefElement1.equals('foo'));
        System.assertEquals(false, sdtmDatasetRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmDatasetRefElement sdtmDatasetRefElement1 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement2 = new OASSdtmDatasetRefElement();
        OASSdtmDatasetRefElement sdtmDatasetRefElement3;

        System.assertEquals(false, sdtmDatasetRefElement1.equals(sdtmDatasetRefElement3));
        System.assertEquals(false, sdtmDatasetRefElement2.equals(sdtmDatasetRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmDatasetRefElement sdtmDatasetRefElement1 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement2 = new OASSdtmDatasetRefElement();

        System.assertEquals(sdtmDatasetRefElement1.hashCode(), sdtmDatasetRefElement1.hashCode());
        System.assertEquals(sdtmDatasetRefElement2.hashCode(), sdtmDatasetRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmDatasetRefElement sdtmDatasetRefElement1 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement2 = OASSdtmDatasetRefElement.getExample();
        OASSdtmDatasetRefElement sdtmDatasetRefElement3 = new OASSdtmDatasetRefElement();
        OASSdtmDatasetRefElement sdtmDatasetRefElement4 = new OASSdtmDatasetRefElement();

        System.assert(sdtmDatasetRefElement1.equals(sdtmDatasetRefElement2));
        System.assert(sdtmDatasetRefElement3.equals(sdtmDatasetRefElement4));
        System.assertEquals(sdtmDatasetRefElement1.hashCode(), sdtmDatasetRefElement2.hashCode());
        System.assertEquals(sdtmDatasetRefElement3.hashCode(), sdtmDatasetRefElement4.hashCode());
    }
}
