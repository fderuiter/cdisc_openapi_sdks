@isTest
private class OASSdtmigClassRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigClassRefElement sdtmigClassRefElement1 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement2 = sdtmigClassRefElement1;
        OASSdtmigClassRefElement sdtmigClassRefElement3 = new OASSdtmigClassRefElement();
        OASSdtmigClassRefElement sdtmigClassRefElement4 = sdtmigClassRefElement3;

        System.assert(sdtmigClassRefElement1.equals(sdtmigClassRefElement2));
        System.assert(sdtmigClassRefElement2.equals(sdtmigClassRefElement1));
        System.assert(sdtmigClassRefElement1.equals(sdtmigClassRefElement1));
        System.assert(sdtmigClassRefElement3.equals(sdtmigClassRefElement4));
        System.assert(sdtmigClassRefElement4.equals(sdtmigClassRefElement3));
        System.assert(sdtmigClassRefElement3.equals(sdtmigClassRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigClassRefElement sdtmigClassRefElement1 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement2 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement3 = new OASSdtmigClassRefElement();
        OASSdtmigClassRefElement sdtmigClassRefElement4 = new OASSdtmigClassRefElement();

        System.assert(sdtmigClassRefElement1.equals(sdtmigClassRefElement2));
        System.assert(sdtmigClassRefElement2.equals(sdtmigClassRefElement1));
        System.assert(sdtmigClassRefElement3.equals(sdtmigClassRefElement4));
        System.assert(sdtmigClassRefElement4.equals(sdtmigClassRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigClassRefElement sdtmigClassRefElement1 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement2 = new OASSdtmigClassRefElement();

        System.assertEquals(false, sdtmigClassRefElement1.equals('foo'));
        System.assertEquals(false, sdtmigClassRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigClassRefElement sdtmigClassRefElement1 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement2 = new OASSdtmigClassRefElement();
        OASSdtmigClassRefElement sdtmigClassRefElement3;

        System.assertEquals(false, sdtmigClassRefElement1.equals(sdtmigClassRefElement3));
        System.assertEquals(false, sdtmigClassRefElement2.equals(sdtmigClassRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigClassRefElement sdtmigClassRefElement1 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement2 = new OASSdtmigClassRefElement();

        System.assertEquals(sdtmigClassRefElement1.hashCode(), sdtmigClassRefElement1.hashCode());
        System.assertEquals(sdtmigClassRefElement2.hashCode(), sdtmigClassRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigClassRefElement sdtmigClassRefElement1 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement2 = OASSdtmigClassRefElement.getExample();
        OASSdtmigClassRefElement sdtmigClassRefElement3 = new OASSdtmigClassRefElement();
        OASSdtmigClassRefElement sdtmigClassRefElement4 = new OASSdtmigClassRefElement();

        System.assert(sdtmigClassRefElement1.equals(sdtmigClassRefElement2));
        System.assert(sdtmigClassRefElement3.equals(sdtmigClassRefElement4));
        System.assertEquals(sdtmigClassRefElement1.hashCode(), sdtmigClassRefElement2.hashCode());
        System.assertEquals(sdtmigClassRefElement3.hashCode(), sdtmigClassRefElement4.hashCode());
    }
}
