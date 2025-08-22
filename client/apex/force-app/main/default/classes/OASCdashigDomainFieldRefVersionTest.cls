@isTest
private class OASCdashigDomainFieldRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion1 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion2 = cdashigDomainFieldRefVersion1;
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion3 = new OASCdashigDomainFieldRefVersion();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion4 = cdashigDomainFieldRefVersion3;

        System.assert(cdashigDomainFieldRefVersion1.equals(cdashigDomainFieldRefVersion2));
        System.assert(cdashigDomainFieldRefVersion2.equals(cdashigDomainFieldRefVersion1));
        System.assert(cdashigDomainFieldRefVersion1.equals(cdashigDomainFieldRefVersion1));
        System.assert(cdashigDomainFieldRefVersion3.equals(cdashigDomainFieldRefVersion4));
        System.assert(cdashigDomainFieldRefVersion4.equals(cdashigDomainFieldRefVersion3));
        System.assert(cdashigDomainFieldRefVersion3.equals(cdashigDomainFieldRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion1 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion2 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion3 = new OASCdashigDomainFieldRefVersion();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion4 = new OASCdashigDomainFieldRefVersion();

        System.assert(cdashigDomainFieldRefVersion1.equals(cdashigDomainFieldRefVersion2));
        System.assert(cdashigDomainFieldRefVersion2.equals(cdashigDomainFieldRefVersion1));
        System.assert(cdashigDomainFieldRefVersion3.equals(cdashigDomainFieldRefVersion4));
        System.assert(cdashigDomainFieldRefVersion4.equals(cdashigDomainFieldRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion1 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion2 = new OASCdashigDomainFieldRefVersion();

        System.assertEquals(false, cdashigDomainFieldRefVersion1.equals('foo'));
        System.assertEquals(false, cdashigDomainFieldRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion1 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion2 = new OASCdashigDomainFieldRefVersion();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion3;

        System.assertEquals(false, cdashigDomainFieldRefVersion1.equals(cdashigDomainFieldRefVersion3));
        System.assertEquals(false, cdashigDomainFieldRefVersion2.equals(cdashigDomainFieldRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion1 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion2 = new OASCdashigDomainFieldRefVersion();

        System.assertEquals(cdashigDomainFieldRefVersion1.hashCode(), cdashigDomainFieldRefVersion1.hashCode());
        System.assertEquals(cdashigDomainFieldRefVersion2.hashCode(), cdashigDomainFieldRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion1 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion2 = OASCdashigDomainFieldRefVersion.getExample();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion3 = new OASCdashigDomainFieldRefVersion();
        OASCdashigDomainFieldRefVersion cdashigDomainFieldRefVersion4 = new OASCdashigDomainFieldRefVersion();

        System.assert(cdashigDomainFieldRefVersion1.equals(cdashigDomainFieldRefVersion2));
        System.assert(cdashigDomainFieldRefVersion3.equals(cdashigDomainFieldRefVersion4));
        System.assertEquals(cdashigDomainFieldRefVersion1.hashCode(), cdashigDomainFieldRefVersion2.hashCode());
        System.assertEquals(cdashigDomainFieldRefVersion3.hashCode(), cdashigDomainFieldRefVersion4.hashCode());
    }
}
