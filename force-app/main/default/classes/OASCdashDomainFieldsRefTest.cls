@isTest
private class OASCdashDomainFieldsRefTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainFieldsRef cdashDomainFieldsRef1 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef2 = cdashDomainFieldsRef1;
        OASCdashDomainFieldsRef cdashDomainFieldsRef3 = new OASCdashDomainFieldsRef();
        OASCdashDomainFieldsRef cdashDomainFieldsRef4 = cdashDomainFieldsRef3;

        System.assert(cdashDomainFieldsRef1.equals(cdashDomainFieldsRef2));
        System.assert(cdashDomainFieldsRef2.equals(cdashDomainFieldsRef1));
        System.assert(cdashDomainFieldsRef1.equals(cdashDomainFieldsRef1));
        System.assert(cdashDomainFieldsRef3.equals(cdashDomainFieldsRef4));
        System.assert(cdashDomainFieldsRef4.equals(cdashDomainFieldsRef3));
        System.assert(cdashDomainFieldsRef3.equals(cdashDomainFieldsRef3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainFieldsRef cdashDomainFieldsRef1 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef2 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef3 = new OASCdashDomainFieldsRef();
        OASCdashDomainFieldsRef cdashDomainFieldsRef4 = new OASCdashDomainFieldsRef();

        System.assert(cdashDomainFieldsRef1.equals(cdashDomainFieldsRef2));
        System.assert(cdashDomainFieldsRef2.equals(cdashDomainFieldsRef1));
        System.assert(cdashDomainFieldsRef3.equals(cdashDomainFieldsRef4));
        System.assert(cdashDomainFieldsRef4.equals(cdashDomainFieldsRef3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainFieldsRef cdashDomainFieldsRef1 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef2 = new OASCdashDomainFieldsRef();

        System.assertEquals(false, cdashDomainFieldsRef1.equals('foo'));
        System.assertEquals(false, cdashDomainFieldsRef2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainFieldsRef cdashDomainFieldsRef1 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef2 = new OASCdashDomainFieldsRef();
        OASCdashDomainFieldsRef cdashDomainFieldsRef3;

        System.assertEquals(false, cdashDomainFieldsRef1.equals(cdashDomainFieldsRef3));
        System.assertEquals(false, cdashDomainFieldsRef2.equals(cdashDomainFieldsRef3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainFieldsRef cdashDomainFieldsRef1 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef2 = new OASCdashDomainFieldsRef();

        System.assertEquals(cdashDomainFieldsRef1.hashCode(), cdashDomainFieldsRef1.hashCode());
        System.assertEquals(cdashDomainFieldsRef2.hashCode(), cdashDomainFieldsRef2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainFieldsRef cdashDomainFieldsRef1 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef2 = OASCdashDomainFieldsRef.getExample();
        OASCdashDomainFieldsRef cdashDomainFieldsRef3 = new OASCdashDomainFieldsRef();
        OASCdashDomainFieldsRef cdashDomainFieldsRef4 = new OASCdashDomainFieldsRef();

        System.assert(cdashDomainFieldsRef1.equals(cdashDomainFieldsRef2));
        System.assert(cdashDomainFieldsRef3.equals(cdashDomainFieldsRef4));
        System.assertEquals(cdashDomainFieldsRef1.hashCode(), cdashDomainFieldsRef2.hashCode());
        System.assertEquals(cdashDomainFieldsRef3.hashCode(), cdashDomainFieldsRef4.hashCode());
    }
}
