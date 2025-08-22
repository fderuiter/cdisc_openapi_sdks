@isTest
private class OASCdashClassRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassRefElement cdashClassRefElement1 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement2 = cdashClassRefElement1;
        OASCdashClassRefElement cdashClassRefElement3 = new OASCdashClassRefElement();
        OASCdashClassRefElement cdashClassRefElement4 = cdashClassRefElement3;

        System.assert(cdashClassRefElement1.equals(cdashClassRefElement2));
        System.assert(cdashClassRefElement2.equals(cdashClassRefElement1));
        System.assert(cdashClassRefElement1.equals(cdashClassRefElement1));
        System.assert(cdashClassRefElement3.equals(cdashClassRefElement4));
        System.assert(cdashClassRefElement4.equals(cdashClassRefElement3));
        System.assert(cdashClassRefElement3.equals(cdashClassRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassRefElement cdashClassRefElement1 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement2 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement3 = new OASCdashClassRefElement();
        OASCdashClassRefElement cdashClassRefElement4 = new OASCdashClassRefElement();

        System.assert(cdashClassRefElement1.equals(cdashClassRefElement2));
        System.assert(cdashClassRefElement2.equals(cdashClassRefElement1));
        System.assert(cdashClassRefElement3.equals(cdashClassRefElement4));
        System.assert(cdashClassRefElement4.equals(cdashClassRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassRefElement cdashClassRefElement1 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement2 = new OASCdashClassRefElement();

        System.assertEquals(false, cdashClassRefElement1.equals('foo'));
        System.assertEquals(false, cdashClassRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassRefElement cdashClassRefElement1 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement2 = new OASCdashClassRefElement();
        OASCdashClassRefElement cdashClassRefElement3;

        System.assertEquals(false, cdashClassRefElement1.equals(cdashClassRefElement3));
        System.assertEquals(false, cdashClassRefElement2.equals(cdashClassRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassRefElement cdashClassRefElement1 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement2 = new OASCdashClassRefElement();

        System.assertEquals(cdashClassRefElement1.hashCode(), cdashClassRefElement1.hashCode());
        System.assertEquals(cdashClassRefElement2.hashCode(), cdashClassRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassRefElement cdashClassRefElement1 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement2 = OASCdashClassRefElement.getExample();
        OASCdashClassRefElement cdashClassRefElement3 = new OASCdashClassRefElement();
        OASCdashClassRefElement cdashClassRefElement4 = new OASCdashClassRefElement();

        System.assert(cdashClassRefElement1.equals(cdashClassRefElement2));
        System.assert(cdashClassRefElement3.equals(cdashClassRefElement4));
        System.assertEquals(cdashClassRefElement1.hashCode(), cdashClassRefElement2.hashCode());
        System.assertEquals(cdashClassRefElement3.hashCode(), cdashClassRefElement4.hashCode());
    }
}
