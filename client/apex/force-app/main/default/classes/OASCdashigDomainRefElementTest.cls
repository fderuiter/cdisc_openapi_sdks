@isTest
private class OASCdashigDomainRefElementTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainRefElement cdashigDomainRefElement1 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement2 = cdashigDomainRefElement1;
        OASCdashigDomainRefElement cdashigDomainRefElement3 = new OASCdashigDomainRefElement();
        OASCdashigDomainRefElement cdashigDomainRefElement4 = cdashigDomainRefElement3;

        System.assert(cdashigDomainRefElement1.equals(cdashigDomainRefElement2));
        System.assert(cdashigDomainRefElement2.equals(cdashigDomainRefElement1));
        System.assert(cdashigDomainRefElement1.equals(cdashigDomainRefElement1));
        System.assert(cdashigDomainRefElement3.equals(cdashigDomainRefElement4));
        System.assert(cdashigDomainRefElement4.equals(cdashigDomainRefElement3));
        System.assert(cdashigDomainRefElement3.equals(cdashigDomainRefElement3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainRefElement cdashigDomainRefElement1 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement2 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement3 = new OASCdashigDomainRefElement();
        OASCdashigDomainRefElement cdashigDomainRefElement4 = new OASCdashigDomainRefElement();

        System.assert(cdashigDomainRefElement1.equals(cdashigDomainRefElement2));
        System.assert(cdashigDomainRefElement2.equals(cdashigDomainRefElement1));
        System.assert(cdashigDomainRefElement3.equals(cdashigDomainRefElement4));
        System.assert(cdashigDomainRefElement4.equals(cdashigDomainRefElement3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainRefElement cdashigDomainRefElement1 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement2 = new OASCdashigDomainRefElement();

        System.assertEquals(false, cdashigDomainRefElement1.equals('foo'));
        System.assertEquals(false, cdashigDomainRefElement2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainRefElement cdashigDomainRefElement1 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement2 = new OASCdashigDomainRefElement();
        OASCdashigDomainRefElement cdashigDomainRefElement3;

        System.assertEquals(false, cdashigDomainRefElement1.equals(cdashigDomainRefElement3));
        System.assertEquals(false, cdashigDomainRefElement2.equals(cdashigDomainRefElement3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainRefElement cdashigDomainRefElement1 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement2 = new OASCdashigDomainRefElement();

        System.assertEquals(cdashigDomainRefElement1.hashCode(), cdashigDomainRefElement1.hashCode());
        System.assertEquals(cdashigDomainRefElement2.hashCode(), cdashigDomainRefElement2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainRefElement cdashigDomainRefElement1 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement2 = OASCdashigDomainRefElement.getExample();
        OASCdashigDomainRefElement cdashigDomainRefElement3 = new OASCdashigDomainRefElement();
        OASCdashigDomainRefElement cdashigDomainRefElement4 = new OASCdashigDomainRefElement();

        System.assert(cdashigDomainRefElement1.equals(cdashigDomainRefElement2));
        System.assert(cdashigDomainRefElement3.equals(cdashigDomainRefElement4));
        System.assertEquals(cdashigDomainRefElement1.hashCode(), cdashigDomainRefElement2.hashCode());
        System.assertEquals(cdashigDomainRefElement3.hashCode(), cdashigDomainRefElement4.hashCode());
    }
}
