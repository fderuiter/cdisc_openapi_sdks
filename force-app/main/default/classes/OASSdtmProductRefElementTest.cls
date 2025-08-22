@isTest
private class OASSdtmProductRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmProductRefElement sdtmProductRefElement1 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement2 = sdtmProductRefElement1;
        OASSdtmProductRefElement sdtmProductRefElement3 = new OASSdtmProductRefElement();
        OASSdtmProductRefElement sdtmProductRefElement4 = sdtmProductRefElement3;

        System.assert(sdtmProductRefElement1.equals(sdtmProductRefElement2));
        System.assert(sdtmProductRefElement2.equals(sdtmProductRefElement1));
        System.assert(sdtmProductRefElement1.equals(sdtmProductRefElement1));
        System.assert(sdtmProductRefElement3.equals(sdtmProductRefElement4));
        System.assert(sdtmProductRefElement4.equals(sdtmProductRefElement3));
        System.assert(sdtmProductRefElement3.equals(sdtmProductRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmProductRefElement sdtmProductRefElement1 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement2 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement3 = new OASSdtmProductRefElement();
        OASSdtmProductRefElement sdtmProductRefElement4 = new OASSdtmProductRefElement();

        System.assert(sdtmProductRefElement1.equals(sdtmProductRefElement2));
        System.assert(sdtmProductRefElement2.equals(sdtmProductRefElement1));
        System.assert(sdtmProductRefElement3.equals(sdtmProductRefElement4));
        System.assert(sdtmProductRefElement4.equals(sdtmProductRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmProductRefElement sdtmProductRefElement1 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement2 = new OASSdtmProductRefElement();

        System.assertEquals(false, sdtmProductRefElement1.equals('foo'));
        System.assertEquals(false, sdtmProductRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmProductRefElement sdtmProductRefElement1 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement2 = new OASSdtmProductRefElement();
        OASSdtmProductRefElement sdtmProductRefElement3;

        System.assertEquals(false, sdtmProductRefElement1.equals(sdtmProductRefElement3));
        System.assertEquals(false, sdtmProductRefElement2.equals(sdtmProductRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmProductRefElement sdtmProductRefElement1 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement2 = new OASSdtmProductRefElement();

        System.assertEquals(sdtmProductRefElement1.hashCode(), sdtmProductRefElement1.hashCode());
        System.assertEquals(sdtmProductRefElement2.hashCode(), sdtmProductRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmProductRefElement sdtmProductRefElement1 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement2 = OASSdtmProductRefElement.getExample();
        OASSdtmProductRefElement sdtmProductRefElement3 = new OASSdtmProductRefElement();
        OASSdtmProductRefElement sdtmProductRefElement4 = new OASSdtmProductRefElement();

        System.assert(sdtmProductRefElement1.equals(sdtmProductRefElement2));
        System.assert(sdtmProductRefElement3.equals(sdtmProductRefElement4));
        System.assertEquals(sdtmProductRefElement1.hashCode(), sdtmProductRefElement2.hashCode());
        System.assertEquals(sdtmProductRefElement3.hashCode(), sdtmProductRefElement4.hashCode());
    }
}
