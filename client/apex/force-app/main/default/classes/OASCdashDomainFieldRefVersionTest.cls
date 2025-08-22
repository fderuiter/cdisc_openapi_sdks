@isTest
private class OASCdashDomainFieldRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion1 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion2 = cdashDomainFieldRefVersion1;
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion3 = new OASCdashDomainFieldRefVersion();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion4 = cdashDomainFieldRefVersion3;

        System.assert(cdashDomainFieldRefVersion1.equals(cdashDomainFieldRefVersion2));
        System.assert(cdashDomainFieldRefVersion2.equals(cdashDomainFieldRefVersion1));
        System.assert(cdashDomainFieldRefVersion1.equals(cdashDomainFieldRefVersion1));
        System.assert(cdashDomainFieldRefVersion3.equals(cdashDomainFieldRefVersion4));
        System.assert(cdashDomainFieldRefVersion4.equals(cdashDomainFieldRefVersion3));
        System.assert(cdashDomainFieldRefVersion3.equals(cdashDomainFieldRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion1 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion2 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion3 = new OASCdashDomainFieldRefVersion();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion4 = new OASCdashDomainFieldRefVersion();

        System.assert(cdashDomainFieldRefVersion1.equals(cdashDomainFieldRefVersion2));
        System.assert(cdashDomainFieldRefVersion2.equals(cdashDomainFieldRefVersion1));
        System.assert(cdashDomainFieldRefVersion3.equals(cdashDomainFieldRefVersion4));
        System.assert(cdashDomainFieldRefVersion4.equals(cdashDomainFieldRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion1 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion2 = new OASCdashDomainFieldRefVersion();

        System.assertEquals(false, cdashDomainFieldRefVersion1.equals('foo'));
        System.assertEquals(false, cdashDomainFieldRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion1 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion2 = new OASCdashDomainFieldRefVersion();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion3;

        System.assertEquals(false, cdashDomainFieldRefVersion1.equals(cdashDomainFieldRefVersion3));
        System.assertEquals(false, cdashDomainFieldRefVersion2.equals(cdashDomainFieldRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion1 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion2 = new OASCdashDomainFieldRefVersion();

        System.assertEquals(cdashDomainFieldRefVersion1.hashCode(), cdashDomainFieldRefVersion1.hashCode());
        System.assertEquals(cdashDomainFieldRefVersion2.hashCode(), cdashDomainFieldRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion1 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion2 = OASCdashDomainFieldRefVersion.getExample();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion3 = new OASCdashDomainFieldRefVersion();
        OASCdashDomainFieldRefVersion cdashDomainFieldRefVersion4 = new OASCdashDomainFieldRefVersion();

        System.assert(cdashDomainFieldRefVersion1.equals(cdashDomainFieldRefVersion2));
        System.assert(cdashDomainFieldRefVersion3.equals(cdashDomainFieldRefVersion4));
        System.assertEquals(cdashDomainFieldRefVersion1.hashCode(), cdashDomainFieldRefVersion2.hashCode());
        System.assertEquals(cdashDomainFieldRefVersion3.hashCode(), cdashDomainFieldRefVersion4.hashCode());
    }
}
