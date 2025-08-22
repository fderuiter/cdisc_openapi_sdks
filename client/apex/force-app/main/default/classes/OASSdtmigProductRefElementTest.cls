@isTest
private class OASSdtmigProductRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmigProductRefElement sdtmigProductRefElement1 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement2 = sdtmigProductRefElement1;
        OASSdtmigProductRefElement sdtmigProductRefElement3 = new OASSdtmigProductRefElement();
        OASSdtmigProductRefElement sdtmigProductRefElement4 = sdtmigProductRefElement3;

        System.assert(sdtmigProductRefElement1.equals(sdtmigProductRefElement2));
        System.assert(sdtmigProductRefElement2.equals(sdtmigProductRefElement1));
        System.assert(sdtmigProductRefElement1.equals(sdtmigProductRefElement1));
        System.assert(sdtmigProductRefElement3.equals(sdtmigProductRefElement4));
        System.assert(sdtmigProductRefElement4.equals(sdtmigProductRefElement3));
        System.assert(sdtmigProductRefElement3.equals(sdtmigProductRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmigProductRefElement sdtmigProductRefElement1 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement2 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement3 = new OASSdtmigProductRefElement();
        OASSdtmigProductRefElement sdtmigProductRefElement4 = new OASSdtmigProductRefElement();

        System.assert(sdtmigProductRefElement1.equals(sdtmigProductRefElement2));
        System.assert(sdtmigProductRefElement2.equals(sdtmigProductRefElement1));
        System.assert(sdtmigProductRefElement3.equals(sdtmigProductRefElement4));
        System.assert(sdtmigProductRefElement4.equals(sdtmigProductRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmigProductRefElement sdtmigProductRefElement1 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement2 = new OASSdtmigProductRefElement();

        System.assertEquals(false, sdtmigProductRefElement1.equals('foo'));
        System.assertEquals(false, sdtmigProductRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmigProductRefElement sdtmigProductRefElement1 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement2 = new OASSdtmigProductRefElement();
        OASSdtmigProductRefElement sdtmigProductRefElement3;

        System.assertEquals(false, sdtmigProductRefElement1.equals(sdtmigProductRefElement3));
        System.assertEquals(false, sdtmigProductRefElement2.equals(sdtmigProductRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmigProductRefElement sdtmigProductRefElement1 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement2 = new OASSdtmigProductRefElement();

        System.assertEquals(sdtmigProductRefElement1.hashCode(), sdtmigProductRefElement1.hashCode());
        System.assertEquals(sdtmigProductRefElement2.hashCode(), sdtmigProductRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmigProductRefElement sdtmigProductRefElement1 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement2 = OASSdtmigProductRefElement.getExample();
        OASSdtmigProductRefElement sdtmigProductRefElement3 = new OASSdtmigProductRefElement();
        OASSdtmigProductRefElement sdtmigProductRefElement4 = new OASSdtmigProductRefElement();

        System.assert(sdtmigProductRefElement1.equals(sdtmigProductRefElement2));
        System.assert(sdtmigProductRefElement3.equals(sdtmigProductRefElement4));
        System.assertEquals(sdtmigProductRefElement1.hashCode(), sdtmigProductRefElement2.hashCode());
        System.assertEquals(sdtmigProductRefElement3.hashCode(), sdtmigProductRefElement4.hashCode());
    }
}
