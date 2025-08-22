@isTest
private class OASCdashProductRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashProductRefElement cdashProductRefElement1 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement2 = cdashProductRefElement1;
        OASCdashProductRefElement cdashProductRefElement3 = new OASCdashProductRefElement();
        OASCdashProductRefElement cdashProductRefElement4 = cdashProductRefElement3;

        System.assert(cdashProductRefElement1.equals(cdashProductRefElement2));
        System.assert(cdashProductRefElement2.equals(cdashProductRefElement1));
        System.assert(cdashProductRefElement1.equals(cdashProductRefElement1));
        System.assert(cdashProductRefElement3.equals(cdashProductRefElement4));
        System.assert(cdashProductRefElement4.equals(cdashProductRefElement3));
        System.assert(cdashProductRefElement3.equals(cdashProductRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashProductRefElement cdashProductRefElement1 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement2 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement3 = new OASCdashProductRefElement();
        OASCdashProductRefElement cdashProductRefElement4 = new OASCdashProductRefElement();

        System.assert(cdashProductRefElement1.equals(cdashProductRefElement2));
        System.assert(cdashProductRefElement2.equals(cdashProductRefElement1));
        System.assert(cdashProductRefElement3.equals(cdashProductRefElement4));
        System.assert(cdashProductRefElement4.equals(cdashProductRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashProductRefElement cdashProductRefElement1 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement2 = new OASCdashProductRefElement();

        System.assertEquals(false, cdashProductRefElement1.equals('foo'));
        System.assertEquals(false, cdashProductRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashProductRefElement cdashProductRefElement1 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement2 = new OASCdashProductRefElement();
        OASCdashProductRefElement cdashProductRefElement3;

        System.assertEquals(false, cdashProductRefElement1.equals(cdashProductRefElement3));
        System.assertEquals(false, cdashProductRefElement2.equals(cdashProductRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashProductRefElement cdashProductRefElement1 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement2 = new OASCdashProductRefElement();

        System.assertEquals(cdashProductRefElement1.hashCode(), cdashProductRefElement1.hashCode());
        System.assertEquals(cdashProductRefElement2.hashCode(), cdashProductRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashProductRefElement cdashProductRefElement1 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement2 = OASCdashProductRefElement.getExample();
        OASCdashProductRefElement cdashProductRefElement3 = new OASCdashProductRefElement();
        OASCdashProductRefElement cdashProductRefElement4 = new OASCdashProductRefElement();

        System.assert(cdashProductRefElement1.equals(cdashProductRefElement2));
        System.assert(cdashProductRefElement3.equals(cdashProductRefElement4));
        System.assertEquals(cdashProductRefElement1.hashCode(), cdashProductRefElement2.hashCode());
        System.assertEquals(cdashProductRefElement3.hashCode(), cdashProductRefElement4.hashCode());
    }
}
