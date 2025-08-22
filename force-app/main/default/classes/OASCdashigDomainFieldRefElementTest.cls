@isTest
private class OASCdashigDomainFieldRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement1 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement2 = cdashigDomainFieldRefElement1;
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement3 = new OASCdashigDomainFieldRefElement();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement4 = cdashigDomainFieldRefElement3;

        System.assert(cdashigDomainFieldRefElement1.equals(cdashigDomainFieldRefElement2));
        System.assert(cdashigDomainFieldRefElement2.equals(cdashigDomainFieldRefElement1));
        System.assert(cdashigDomainFieldRefElement1.equals(cdashigDomainFieldRefElement1));
        System.assert(cdashigDomainFieldRefElement3.equals(cdashigDomainFieldRefElement4));
        System.assert(cdashigDomainFieldRefElement4.equals(cdashigDomainFieldRefElement3));
        System.assert(cdashigDomainFieldRefElement3.equals(cdashigDomainFieldRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement1 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement2 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement3 = new OASCdashigDomainFieldRefElement();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement4 = new OASCdashigDomainFieldRefElement();

        System.assert(cdashigDomainFieldRefElement1.equals(cdashigDomainFieldRefElement2));
        System.assert(cdashigDomainFieldRefElement2.equals(cdashigDomainFieldRefElement1));
        System.assert(cdashigDomainFieldRefElement3.equals(cdashigDomainFieldRefElement4));
        System.assert(cdashigDomainFieldRefElement4.equals(cdashigDomainFieldRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement1 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement2 = new OASCdashigDomainFieldRefElement();

        System.assertEquals(false, cdashigDomainFieldRefElement1.equals('foo'));
        System.assertEquals(false, cdashigDomainFieldRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement1 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement2 = new OASCdashigDomainFieldRefElement();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement3;

        System.assertEquals(false, cdashigDomainFieldRefElement1.equals(cdashigDomainFieldRefElement3));
        System.assertEquals(false, cdashigDomainFieldRefElement2.equals(cdashigDomainFieldRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement1 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement2 = new OASCdashigDomainFieldRefElement();

        System.assertEquals(cdashigDomainFieldRefElement1.hashCode(), cdashigDomainFieldRefElement1.hashCode());
        System.assertEquals(cdashigDomainFieldRefElement2.hashCode(), cdashigDomainFieldRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement1 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement2 = OASCdashigDomainFieldRefElement.getExample();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement3 = new OASCdashigDomainFieldRefElement();
        OASCdashigDomainFieldRefElement cdashigDomainFieldRefElement4 = new OASCdashigDomainFieldRefElement();

        System.assert(cdashigDomainFieldRefElement1.equals(cdashigDomainFieldRefElement2));
        System.assert(cdashigDomainFieldRefElement3.equals(cdashigDomainFieldRefElement4));
        System.assertEquals(cdashigDomainFieldRefElement1.hashCode(), cdashigDomainFieldRefElement2.hashCode());
        System.assertEquals(cdashigDomainFieldRefElement3.hashCode(), cdashigDomainFieldRefElement4.hashCode());
    }
}
