@isTest
private class OASCdashigScenarioFieldRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion1 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion2 = cdashigScenarioFieldRefVersion1;
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion3 = new OASCdashigScenarioFieldRefVersion();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion4 = cdashigScenarioFieldRefVersion3;

        System.assert(cdashigScenarioFieldRefVersion1.equals(cdashigScenarioFieldRefVersion2));
        System.assert(cdashigScenarioFieldRefVersion2.equals(cdashigScenarioFieldRefVersion1));
        System.assert(cdashigScenarioFieldRefVersion1.equals(cdashigScenarioFieldRefVersion1));
        System.assert(cdashigScenarioFieldRefVersion3.equals(cdashigScenarioFieldRefVersion4));
        System.assert(cdashigScenarioFieldRefVersion4.equals(cdashigScenarioFieldRefVersion3));
        System.assert(cdashigScenarioFieldRefVersion3.equals(cdashigScenarioFieldRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion1 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion2 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion3 = new OASCdashigScenarioFieldRefVersion();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion4 = new OASCdashigScenarioFieldRefVersion();

        System.assert(cdashigScenarioFieldRefVersion1.equals(cdashigScenarioFieldRefVersion2));
        System.assert(cdashigScenarioFieldRefVersion2.equals(cdashigScenarioFieldRefVersion1));
        System.assert(cdashigScenarioFieldRefVersion3.equals(cdashigScenarioFieldRefVersion4));
        System.assert(cdashigScenarioFieldRefVersion4.equals(cdashigScenarioFieldRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion1 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion2 = new OASCdashigScenarioFieldRefVersion();

        System.assertEquals(false, cdashigScenarioFieldRefVersion1.equals('foo'));
        System.assertEquals(false, cdashigScenarioFieldRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion1 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion2 = new OASCdashigScenarioFieldRefVersion();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion3;

        System.assertEquals(false, cdashigScenarioFieldRefVersion1.equals(cdashigScenarioFieldRefVersion3));
        System.assertEquals(false, cdashigScenarioFieldRefVersion2.equals(cdashigScenarioFieldRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion1 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion2 = new OASCdashigScenarioFieldRefVersion();

        System.assertEquals(cdashigScenarioFieldRefVersion1.hashCode(), cdashigScenarioFieldRefVersion1.hashCode());
        System.assertEquals(cdashigScenarioFieldRefVersion2.hashCode(), cdashigScenarioFieldRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion1 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion2 = OASCdashigScenarioFieldRefVersion.getExample();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion3 = new OASCdashigScenarioFieldRefVersion();
        OASCdashigScenarioFieldRefVersion cdashigScenarioFieldRefVersion4 = new OASCdashigScenarioFieldRefVersion();

        System.assert(cdashigScenarioFieldRefVersion1.equals(cdashigScenarioFieldRefVersion2));
        System.assert(cdashigScenarioFieldRefVersion3.equals(cdashigScenarioFieldRefVersion4));
        System.assertEquals(cdashigScenarioFieldRefVersion1.hashCode(), cdashigScenarioFieldRefVersion2.hashCode());
        System.assertEquals(cdashigScenarioFieldRefVersion3.hashCode(), cdashigScenarioFieldRefVersion4.hashCode());
    }
}
