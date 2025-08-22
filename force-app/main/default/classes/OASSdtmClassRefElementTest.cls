@isTest
private class OASSdtmClassRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassRefElement sdtmClassRefElement1 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement2 = sdtmClassRefElement1;
        OASSdtmClassRefElement sdtmClassRefElement3 = new OASSdtmClassRefElement();
        OASSdtmClassRefElement sdtmClassRefElement4 = sdtmClassRefElement3;

        System.assert(sdtmClassRefElement1.equals(sdtmClassRefElement2));
        System.assert(sdtmClassRefElement2.equals(sdtmClassRefElement1));
        System.assert(sdtmClassRefElement1.equals(sdtmClassRefElement1));
        System.assert(sdtmClassRefElement3.equals(sdtmClassRefElement4));
        System.assert(sdtmClassRefElement4.equals(sdtmClassRefElement3));
        System.assert(sdtmClassRefElement3.equals(sdtmClassRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassRefElement sdtmClassRefElement1 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement2 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement3 = new OASSdtmClassRefElement();
        OASSdtmClassRefElement sdtmClassRefElement4 = new OASSdtmClassRefElement();

        System.assert(sdtmClassRefElement1.equals(sdtmClassRefElement2));
        System.assert(sdtmClassRefElement2.equals(sdtmClassRefElement1));
        System.assert(sdtmClassRefElement3.equals(sdtmClassRefElement4));
        System.assert(sdtmClassRefElement4.equals(sdtmClassRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassRefElement sdtmClassRefElement1 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement2 = new OASSdtmClassRefElement();

        System.assertEquals(false, sdtmClassRefElement1.equals('foo'));
        System.assertEquals(false, sdtmClassRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassRefElement sdtmClassRefElement1 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement2 = new OASSdtmClassRefElement();
        OASSdtmClassRefElement sdtmClassRefElement3;

        System.assertEquals(false, sdtmClassRefElement1.equals(sdtmClassRefElement3));
        System.assertEquals(false, sdtmClassRefElement2.equals(sdtmClassRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassRefElement sdtmClassRefElement1 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement2 = new OASSdtmClassRefElement();

        System.assertEquals(sdtmClassRefElement1.hashCode(), sdtmClassRefElement1.hashCode());
        System.assertEquals(sdtmClassRefElement2.hashCode(), sdtmClassRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassRefElement sdtmClassRefElement1 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement2 = OASSdtmClassRefElement.getExample();
        OASSdtmClassRefElement sdtmClassRefElement3 = new OASSdtmClassRefElement();
        OASSdtmClassRefElement sdtmClassRefElement4 = new OASSdtmClassRefElement();

        System.assert(sdtmClassRefElement1.equals(sdtmClassRefElement2));
        System.assert(sdtmClassRefElement3.equals(sdtmClassRefElement4));
        System.assertEquals(sdtmClassRefElement1.hashCode(), sdtmClassRefElement2.hashCode());
        System.assertEquals(sdtmClassRefElement3.hashCode(), sdtmClassRefElement4.hashCode());
    }
}
