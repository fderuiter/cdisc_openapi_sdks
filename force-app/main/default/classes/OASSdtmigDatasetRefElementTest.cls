@isTest
private class OASSdtmigDatasetRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement1 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement2 = sdtmigDatasetRefElement1;
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement3 = new OASSdtmigDatasetRefElement();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement4 = sdtmigDatasetRefElement3;

        System.assert(sdtmigDatasetRefElement1.equals(sdtmigDatasetRefElement2));
        System.assert(sdtmigDatasetRefElement2.equals(sdtmigDatasetRefElement1));
        System.assert(sdtmigDatasetRefElement1.equals(sdtmigDatasetRefElement1));
        System.assert(sdtmigDatasetRefElement3.equals(sdtmigDatasetRefElement4));
        System.assert(sdtmigDatasetRefElement4.equals(sdtmigDatasetRefElement3));
        System.assert(sdtmigDatasetRefElement3.equals(sdtmigDatasetRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement1 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement2 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement3 = new OASSdtmigDatasetRefElement();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement4 = new OASSdtmigDatasetRefElement();

        System.assert(sdtmigDatasetRefElement1.equals(sdtmigDatasetRefElement2));
        System.assert(sdtmigDatasetRefElement2.equals(sdtmigDatasetRefElement1));
        System.assert(sdtmigDatasetRefElement3.equals(sdtmigDatasetRefElement4));
        System.assert(sdtmigDatasetRefElement4.equals(sdtmigDatasetRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement1 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement2 = new OASSdtmigDatasetRefElement();

        System.assertEquals(false, sdtmigDatasetRefElement1.equals('foo'));
        System.assertEquals(false, sdtmigDatasetRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement1 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement2 = new OASSdtmigDatasetRefElement();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement3;

        System.assertEquals(false, sdtmigDatasetRefElement1.equals(sdtmigDatasetRefElement3));
        System.assertEquals(false, sdtmigDatasetRefElement2.equals(sdtmigDatasetRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement1 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement2 = new OASSdtmigDatasetRefElement();

        System.assertEquals(sdtmigDatasetRefElement1.hashCode(), sdtmigDatasetRefElement1.hashCode());
        System.assertEquals(sdtmigDatasetRefElement2.hashCode(), sdtmigDatasetRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement1 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement2 = OASSdtmigDatasetRefElement.getExample();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement3 = new OASSdtmigDatasetRefElement();
        OASSdtmigDatasetRefElement sdtmigDatasetRefElement4 = new OASSdtmigDatasetRefElement();

        System.assert(sdtmigDatasetRefElement1.equals(sdtmigDatasetRefElement2));
        System.assert(sdtmigDatasetRefElement3.equals(sdtmigDatasetRefElement4));
        System.assertEquals(sdtmigDatasetRefElement1.hashCode(), sdtmigDatasetRefElement2.hashCode());
        System.assertEquals(sdtmigDatasetRefElement3.hashCode(), sdtmigDatasetRefElement4.hashCode());
    }
}
