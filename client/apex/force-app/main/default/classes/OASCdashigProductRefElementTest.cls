@isTest
private class OASCdashigProductRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigProductRefElement cdashigProductRefElement1 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement2 = cdashigProductRefElement1;
        OASCdashigProductRefElement cdashigProductRefElement3 = new OASCdashigProductRefElement();
        OASCdashigProductRefElement cdashigProductRefElement4 = cdashigProductRefElement3;

        System.assert(cdashigProductRefElement1.equals(cdashigProductRefElement2));
        System.assert(cdashigProductRefElement2.equals(cdashigProductRefElement1));
        System.assert(cdashigProductRefElement1.equals(cdashigProductRefElement1));
        System.assert(cdashigProductRefElement3.equals(cdashigProductRefElement4));
        System.assert(cdashigProductRefElement4.equals(cdashigProductRefElement3));
        System.assert(cdashigProductRefElement3.equals(cdashigProductRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigProductRefElement cdashigProductRefElement1 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement2 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement3 = new OASCdashigProductRefElement();
        OASCdashigProductRefElement cdashigProductRefElement4 = new OASCdashigProductRefElement();

        System.assert(cdashigProductRefElement1.equals(cdashigProductRefElement2));
        System.assert(cdashigProductRefElement2.equals(cdashigProductRefElement1));
        System.assert(cdashigProductRefElement3.equals(cdashigProductRefElement4));
        System.assert(cdashigProductRefElement4.equals(cdashigProductRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigProductRefElement cdashigProductRefElement1 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement2 = new OASCdashigProductRefElement();

        System.assertEquals(false, cdashigProductRefElement1.equals('foo'));
        System.assertEquals(false, cdashigProductRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigProductRefElement cdashigProductRefElement1 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement2 = new OASCdashigProductRefElement();
        OASCdashigProductRefElement cdashigProductRefElement3;

        System.assertEquals(false, cdashigProductRefElement1.equals(cdashigProductRefElement3));
        System.assertEquals(false, cdashigProductRefElement2.equals(cdashigProductRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigProductRefElement cdashigProductRefElement1 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement2 = new OASCdashigProductRefElement();

        System.assertEquals(cdashigProductRefElement1.hashCode(), cdashigProductRefElement1.hashCode());
        System.assertEquals(cdashigProductRefElement2.hashCode(), cdashigProductRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigProductRefElement cdashigProductRefElement1 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement2 = OASCdashigProductRefElement.getExample();
        OASCdashigProductRefElement cdashigProductRefElement3 = new OASCdashigProductRefElement();
        OASCdashigProductRefElement cdashigProductRefElement4 = new OASCdashigProductRefElement();

        System.assert(cdashigProductRefElement1.equals(cdashigProductRefElement2));
        System.assert(cdashigProductRefElement3.equals(cdashigProductRefElement4));
        System.assertEquals(cdashigProductRefElement1.hashCode(), cdashigProductRefElement2.hashCode());
        System.assertEquals(cdashigProductRefElement3.hashCode(), cdashigProductRefElement4.hashCode());
    }
}
