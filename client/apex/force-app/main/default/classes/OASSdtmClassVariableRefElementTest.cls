@isTest
private class OASSdtmClassVariableRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement1 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement2 = sdtmClassVariableRefElement1;
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement3 = new OASSdtmClassVariableRefElement();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement4 = sdtmClassVariableRefElement3;

        System.assert(sdtmClassVariableRefElement1.equals(sdtmClassVariableRefElement2));
        System.assert(sdtmClassVariableRefElement2.equals(sdtmClassVariableRefElement1));
        System.assert(sdtmClassVariableRefElement1.equals(sdtmClassVariableRefElement1));
        System.assert(sdtmClassVariableRefElement3.equals(sdtmClassVariableRefElement4));
        System.assert(sdtmClassVariableRefElement4.equals(sdtmClassVariableRefElement3));
        System.assert(sdtmClassVariableRefElement3.equals(sdtmClassVariableRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement1 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement2 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement3 = new OASSdtmClassVariableRefElement();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement4 = new OASSdtmClassVariableRefElement();

        System.assert(sdtmClassVariableRefElement1.equals(sdtmClassVariableRefElement2));
        System.assert(sdtmClassVariableRefElement2.equals(sdtmClassVariableRefElement1));
        System.assert(sdtmClassVariableRefElement3.equals(sdtmClassVariableRefElement4));
        System.assert(sdtmClassVariableRefElement4.equals(sdtmClassVariableRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement1 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement2 = new OASSdtmClassVariableRefElement();

        System.assertEquals(false, sdtmClassVariableRefElement1.equals('foo'));
        System.assertEquals(false, sdtmClassVariableRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement1 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement2 = new OASSdtmClassVariableRefElement();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement3;

        System.assertEquals(false, sdtmClassVariableRefElement1.equals(sdtmClassVariableRefElement3));
        System.assertEquals(false, sdtmClassVariableRefElement2.equals(sdtmClassVariableRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement1 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement2 = new OASSdtmClassVariableRefElement();

        System.assertEquals(sdtmClassVariableRefElement1.hashCode(), sdtmClassVariableRefElement1.hashCode());
        System.assertEquals(sdtmClassVariableRefElement2.hashCode(), sdtmClassVariableRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement1 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement2 = OASSdtmClassVariableRefElement.getExample();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement3 = new OASSdtmClassVariableRefElement();
        OASSdtmClassVariableRefElement sdtmClassVariableRefElement4 = new OASSdtmClassVariableRefElement();

        System.assert(sdtmClassVariableRefElement1.equals(sdtmClassVariableRefElement2));
        System.assert(sdtmClassVariableRefElement3.equals(sdtmClassVariableRefElement4));
        System.assertEquals(sdtmClassVariableRefElement1.hashCode(), sdtmClassVariableRefElement2.hashCode());
        System.assertEquals(sdtmClassVariableRefElement3.hashCode(), sdtmClassVariableRefElement4.hashCode());
    }
}
