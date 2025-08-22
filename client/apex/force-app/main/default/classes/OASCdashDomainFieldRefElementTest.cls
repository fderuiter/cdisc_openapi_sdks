@isTest
private class OASCdashDomainFieldRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement1 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement2 = cdashDomainFieldRefElement1;
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement3 = new OASCdashDomainFieldRefElement();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement4 = cdashDomainFieldRefElement3;

        System.assert(cdashDomainFieldRefElement1.equals(cdashDomainFieldRefElement2));
        System.assert(cdashDomainFieldRefElement2.equals(cdashDomainFieldRefElement1));
        System.assert(cdashDomainFieldRefElement1.equals(cdashDomainFieldRefElement1));
        System.assert(cdashDomainFieldRefElement3.equals(cdashDomainFieldRefElement4));
        System.assert(cdashDomainFieldRefElement4.equals(cdashDomainFieldRefElement3));
        System.assert(cdashDomainFieldRefElement3.equals(cdashDomainFieldRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement1 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement2 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement3 = new OASCdashDomainFieldRefElement();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement4 = new OASCdashDomainFieldRefElement();

        System.assert(cdashDomainFieldRefElement1.equals(cdashDomainFieldRefElement2));
        System.assert(cdashDomainFieldRefElement2.equals(cdashDomainFieldRefElement1));
        System.assert(cdashDomainFieldRefElement3.equals(cdashDomainFieldRefElement4));
        System.assert(cdashDomainFieldRefElement4.equals(cdashDomainFieldRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement1 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement2 = new OASCdashDomainFieldRefElement();

        System.assertEquals(false, cdashDomainFieldRefElement1.equals('foo'));
        System.assertEquals(false, cdashDomainFieldRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement1 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement2 = new OASCdashDomainFieldRefElement();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement3;

        System.assertEquals(false, cdashDomainFieldRefElement1.equals(cdashDomainFieldRefElement3));
        System.assertEquals(false, cdashDomainFieldRefElement2.equals(cdashDomainFieldRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement1 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement2 = new OASCdashDomainFieldRefElement();

        System.assertEquals(cdashDomainFieldRefElement1.hashCode(), cdashDomainFieldRefElement1.hashCode());
        System.assertEquals(cdashDomainFieldRefElement2.hashCode(), cdashDomainFieldRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement1 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement2 = OASCdashDomainFieldRefElement.getExample();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement3 = new OASCdashDomainFieldRefElement();
        OASCdashDomainFieldRefElement cdashDomainFieldRefElement4 = new OASCdashDomainFieldRefElement();

        System.assert(cdashDomainFieldRefElement1.equals(cdashDomainFieldRefElement2));
        System.assert(cdashDomainFieldRefElement3.equals(cdashDomainFieldRefElement4));
        System.assertEquals(cdashDomainFieldRefElement1.hashCode(), cdashDomainFieldRefElement2.hashCode());
        System.assertEquals(cdashDomainFieldRefElement3.hashCode(), cdashDomainFieldRefElement4.hashCode());
    }
}
