@isTest
private class OASCdashigClassRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigClassRefElement cdashigClassRefElement1 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement2 = cdashigClassRefElement1;
        OASCdashigClassRefElement cdashigClassRefElement3 = new OASCdashigClassRefElement();
        OASCdashigClassRefElement cdashigClassRefElement4 = cdashigClassRefElement3;

        System.assert(cdashigClassRefElement1.equals(cdashigClassRefElement2));
        System.assert(cdashigClassRefElement2.equals(cdashigClassRefElement1));
        System.assert(cdashigClassRefElement1.equals(cdashigClassRefElement1));
        System.assert(cdashigClassRefElement3.equals(cdashigClassRefElement4));
        System.assert(cdashigClassRefElement4.equals(cdashigClassRefElement3));
        System.assert(cdashigClassRefElement3.equals(cdashigClassRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigClassRefElement cdashigClassRefElement1 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement2 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement3 = new OASCdashigClassRefElement();
        OASCdashigClassRefElement cdashigClassRefElement4 = new OASCdashigClassRefElement();

        System.assert(cdashigClassRefElement1.equals(cdashigClassRefElement2));
        System.assert(cdashigClassRefElement2.equals(cdashigClassRefElement1));
        System.assert(cdashigClassRefElement3.equals(cdashigClassRefElement4));
        System.assert(cdashigClassRefElement4.equals(cdashigClassRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigClassRefElement cdashigClassRefElement1 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement2 = new OASCdashigClassRefElement();

        System.assertEquals(false, cdashigClassRefElement1.equals('foo'));
        System.assertEquals(false, cdashigClassRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigClassRefElement cdashigClassRefElement1 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement2 = new OASCdashigClassRefElement();
        OASCdashigClassRefElement cdashigClassRefElement3;

        System.assertEquals(false, cdashigClassRefElement1.equals(cdashigClassRefElement3));
        System.assertEquals(false, cdashigClassRefElement2.equals(cdashigClassRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigClassRefElement cdashigClassRefElement1 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement2 = new OASCdashigClassRefElement();

        System.assertEquals(cdashigClassRefElement1.hashCode(), cdashigClassRefElement1.hashCode());
        System.assertEquals(cdashigClassRefElement2.hashCode(), cdashigClassRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigClassRefElement cdashigClassRefElement1 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement2 = OASCdashigClassRefElement.getExample();
        OASCdashigClassRefElement cdashigClassRefElement3 = new OASCdashigClassRefElement();
        OASCdashigClassRefElement cdashigClassRefElement4 = new OASCdashigClassRefElement();

        System.assert(cdashigClassRefElement1.equals(cdashigClassRefElement2));
        System.assert(cdashigClassRefElement3.equals(cdashigClassRefElement4));
        System.assertEquals(cdashigClassRefElement1.hashCode(), cdashigClassRefElement2.hashCode());
        System.assertEquals(cdashigClassRefElement3.hashCode(), cdashigClassRefElement4.hashCode());
    }
}
