@isTest
private class OASCdashClassFieldRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion1 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion2 = cdashClassFieldRefVersion1;
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion3 = new OASCdashClassFieldRefVersion();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion4 = cdashClassFieldRefVersion3;

        System.assert(cdashClassFieldRefVersion1.equals(cdashClassFieldRefVersion2));
        System.assert(cdashClassFieldRefVersion2.equals(cdashClassFieldRefVersion1));
        System.assert(cdashClassFieldRefVersion1.equals(cdashClassFieldRefVersion1));
        System.assert(cdashClassFieldRefVersion3.equals(cdashClassFieldRefVersion4));
        System.assert(cdashClassFieldRefVersion4.equals(cdashClassFieldRefVersion3));
        System.assert(cdashClassFieldRefVersion3.equals(cdashClassFieldRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion1 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion2 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion3 = new OASCdashClassFieldRefVersion();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion4 = new OASCdashClassFieldRefVersion();

        System.assert(cdashClassFieldRefVersion1.equals(cdashClassFieldRefVersion2));
        System.assert(cdashClassFieldRefVersion2.equals(cdashClassFieldRefVersion1));
        System.assert(cdashClassFieldRefVersion3.equals(cdashClassFieldRefVersion4));
        System.assert(cdashClassFieldRefVersion4.equals(cdashClassFieldRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion1 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion2 = new OASCdashClassFieldRefVersion();

        System.assertEquals(false, cdashClassFieldRefVersion1.equals('foo'));
        System.assertEquals(false, cdashClassFieldRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion1 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion2 = new OASCdashClassFieldRefVersion();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion3;

        System.assertEquals(false, cdashClassFieldRefVersion1.equals(cdashClassFieldRefVersion3));
        System.assertEquals(false, cdashClassFieldRefVersion2.equals(cdashClassFieldRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion1 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion2 = new OASCdashClassFieldRefVersion();

        System.assertEquals(cdashClassFieldRefVersion1.hashCode(), cdashClassFieldRefVersion1.hashCode());
        System.assertEquals(cdashClassFieldRefVersion2.hashCode(), cdashClassFieldRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion1 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion2 = OASCdashClassFieldRefVersion.getExample();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion3 = new OASCdashClassFieldRefVersion();
        OASCdashClassFieldRefVersion cdashClassFieldRefVersion4 = new OASCdashClassFieldRefVersion();

        System.assert(cdashClassFieldRefVersion1.equals(cdashClassFieldRefVersion2));
        System.assert(cdashClassFieldRefVersion3.equals(cdashClassFieldRefVersion4));
        System.assertEquals(cdashClassFieldRefVersion1.hashCode(), cdashClassFieldRefVersion2.hashCode());
        System.assertEquals(cdashClassFieldRefVersion3.hashCode(), cdashClassFieldRefVersion4.hashCode());
    }
}
