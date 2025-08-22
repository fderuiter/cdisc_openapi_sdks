@isTest
private class OASCdashigDomainFieldsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef1 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef2 = cdashigDomainFieldsRef1;
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef3 = new OASCdashigDomainFieldsRef();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef4 = cdashigDomainFieldsRef3;

        System.assert(cdashigDomainFieldsRef1.equals(cdashigDomainFieldsRef2));
        System.assert(cdashigDomainFieldsRef2.equals(cdashigDomainFieldsRef1));
        System.assert(cdashigDomainFieldsRef1.equals(cdashigDomainFieldsRef1));
        System.assert(cdashigDomainFieldsRef3.equals(cdashigDomainFieldsRef4));
        System.assert(cdashigDomainFieldsRef4.equals(cdashigDomainFieldsRef3));
        System.assert(cdashigDomainFieldsRef3.equals(cdashigDomainFieldsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef1 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef2 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef3 = new OASCdashigDomainFieldsRef();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef4 = new OASCdashigDomainFieldsRef();

        System.assert(cdashigDomainFieldsRef1.equals(cdashigDomainFieldsRef2));
        System.assert(cdashigDomainFieldsRef2.equals(cdashigDomainFieldsRef1));
        System.assert(cdashigDomainFieldsRef3.equals(cdashigDomainFieldsRef4));
        System.assert(cdashigDomainFieldsRef4.equals(cdashigDomainFieldsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef1 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef2 = new OASCdashigDomainFieldsRef();

        System.assertEquals(false, cdashigDomainFieldsRef1.equals('foo'));
        System.assertEquals(false, cdashigDomainFieldsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef1 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef2 = new OASCdashigDomainFieldsRef();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef3;

        System.assertEquals(false, cdashigDomainFieldsRef1.equals(cdashigDomainFieldsRef3));
        System.assertEquals(false, cdashigDomainFieldsRef2.equals(cdashigDomainFieldsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef1 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef2 = new OASCdashigDomainFieldsRef();

        System.assertEquals(cdashigDomainFieldsRef1.hashCode(), cdashigDomainFieldsRef1.hashCode());
        System.assertEquals(cdashigDomainFieldsRef2.hashCode(), cdashigDomainFieldsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef1 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef2 = OASCdashigDomainFieldsRef.getExample();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef3 = new OASCdashigDomainFieldsRef();
        OASCdashigDomainFieldsRef cdashigDomainFieldsRef4 = new OASCdashigDomainFieldsRef();

        System.assert(cdashigDomainFieldsRef1.equals(cdashigDomainFieldsRef2));
        System.assert(cdashigDomainFieldsRef3.equals(cdashigDomainFieldsRef4));
        System.assertEquals(cdashigDomainFieldsRef1.hashCode(), cdashigDomainFieldsRef2.hashCode());
        System.assertEquals(cdashigDomainFieldsRef3.hashCode(), cdashigDomainFieldsRef4.hashCode());
    }
}
