@isTest
private class OASCdashDomainRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainRefElement cdashDomainRefElement1 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement2 = cdashDomainRefElement1;
        OASCdashDomainRefElement cdashDomainRefElement3 = new OASCdashDomainRefElement();
        OASCdashDomainRefElement cdashDomainRefElement4 = cdashDomainRefElement3;

        System.assert(cdashDomainRefElement1.equals(cdashDomainRefElement2));
        System.assert(cdashDomainRefElement2.equals(cdashDomainRefElement1));
        System.assert(cdashDomainRefElement1.equals(cdashDomainRefElement1));
        System.assert(cdashDomainRefElement3.equals(cdashDomainRefElement4));
        System.assert(cdashDomainRefElement4.equals(cdashDomainRefElement3));
        System.assert(cdashDomainRefElement3.equals(cdashDomainRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainRefElement cdashDomainRefElement1 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement2 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement3 = new OASCdashDomainRefElement();
        OASCdashDomainRefElement cdashDomainRefElement4 = new OASCdashDomainRefElement();

        System.assert(cdashDomainRefElement1.equals(cdashDomainRefElement2));
        System.assert(cdashDomainRefElement2.equals(cdashDomainRefElement1));
        System.assert(cdashDomainRefElement3.equals(cdashDomainRefElement4));
        System.assert(cdashDomainRefElement4.equals(cdashDomainRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainRefElement cdashDomainRefElement1 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement2 = new OASCdashDomainRefElement();

        System.assertEquals(false, cdashDomainRefElement1.equals('foo'));
        System.assertEquals(false, cdashDomainRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainRefElement cdashDomainRefElement1 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement2 = new OASCdashDomainRefElement();
        OASCdashDomainRefElement cdashDomainRefElement3;

        System.assertEquals(false, cdashDomainRefElement1.equals(cdashDomainRefElement3));
        System.assertEquals(false, cdashDomainRefElement2.equals(cdashDomainRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainRefElement cdashDomainRefElement1 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement2 = new OASCdashDomainRefElement();

        System.assertEquals(cdashDomainRefElement1.hashCode(), cdashDomainRefElement1.hashCode());
        System.assertEquals(cdashDomainRefElement2.hashCode(), cdashDomainRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainRefElement cdashDomainRefElement1 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement2 = OASCdashDomainRefElement.getExample();
        OASCdashDomainRefElement cdashDomainRefElement3 = new OASCdashDomainRefElement();
        OASCdashDomainRefElement cdashDomainRefElement4 = new OASCdashDomainRefElement();

        System.assert(cdashDomainRefElement1.equals(cdashDomainRefElement2));
        System.assert(cdashDomainRefElement3.equals(cdashDomainRefElement4));
        System.assertEquals(cdashDomainRefElement1.hashCode(), cdashDomainRefElement2.hashCode());
        System.assertEquals(cdashDomainRefElement3.hashCode(), cdashDomainRefElement4.hashCode());
    }
}
