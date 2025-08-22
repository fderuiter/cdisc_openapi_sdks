@isTest
private class OASCtCodelistRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtCodelistRefVersion ctCodelistRefVersion1 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion2 = ctCodelistRefVersion1;
        OASCtCodelistRefVersion ctCodelistRefVersion3 = new OASCtCodelistRefVersion();
        OASCtCodelistRefVersion ctCodelistRefVersion4 = ctCodelistRefVersion3;

        System.assert(ctCodelistRefVersion1.equals(ctCodelistRefVersion2));
        System.assert(ctCodelistRefVersion2.equals(ctCodelistRefVersion1));
        System.assert(ctCodelistRefVersion1.equals(ctCodelistRefVersion1));
        System.assert(ctCodelistRefVersion3.equals(ctCodelistRefVersion4));
        System.assert(ctCodelistRefVersion4.equals(ctCodelistRefVersion3));
        System.assert(ctCodelistRefVersion3.equals(ctCodelistRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtCodelistRefVersion ctCodelistRefVersion1 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion2 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion3 = new OASCtCodelistRefVersion();
        OASCtCodelistRefVersion ctCodelistRefVersion4 = new OASCtCodelistRefVersion();

        System.assert(ctCodelistRefVersion1.equals(ctCodelistRefVersion2));
        System.assert(ctCodelistRefVersion2.equals(ctCodelistRefVersion1));
        System.assert(ctCodelistRefVersion3.equals(ctCodelistRefVersion4));
        System.assert(ctCodelistRefVersion4.equals(ctCodelistRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtCodelistRefVersion ctCodelistRefVersion1 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion2 = new OASCtCodelistRefVersion();

        System.assertEquals(false, ctCodelistRefVersion1.equals('foo'));
        System.assertEquals(false, ctCodelistRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtCodelistRefVersion ctCodelistRefVersion1 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion2 = new OASCtCodelistRefVersion();
        OASCtCodelistRefVersion ctCodelistRefVersion3;

        System.assertEquals(false, ctCodelistRefVersion1.equals(ctCodelistRefVersion3));
        System.assertEquals(false, ctCodelistRefVersion2.equals(ctCodelistRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtCodelistRefVersion ctCodelistRefVersion1 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion2 = new OASCtCodelistRefVersion();

        System.assertEquals(ctCodelistRefVersion1.hashCode(), ctCodelistRefVersion1.hashCode());
        System.assertEquals(ctCodelistRefVersion2.hashCode(), ctCodelistRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtCodelistRefVersion ctCodelistRefVersion1 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion2 = OASCtCodelistRefVersion.getExample();
        OASCtCodelistRefVersion ctCodelistRefVersion3 = new OASCtCodelistRefVersion();
        OASCtCodelistRefVersion ctCodelistRefVersion4 = new OASCtCodelistRefVersion();

        System.assert(ctCodelistRefVersion1.equals(ctCodelistRefVersion2));
        System.assert(ctCodelistRefVersion3.equals(ctCodelistRefVersion4));
        System.assertEquals(ctCodelistRefVersion1.hashCode(), ctCodelistRefVersion2.hashCode());
        System.assertEquals(ctCodelistRefVersion3.hashCode(), ctCodelistRefVersion4.hashCode());
    }
}
