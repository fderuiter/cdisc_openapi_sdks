@isTest
private class OASCtTermRefVersionTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtTermRefVersion ctTermRefVersion1 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion2 = ctTermRefVersion1;
        OASCtTermRefVersion ctTermRefVersion3 = new OASCtTermRefVersion();
        OASCtTermRefVersion ctTermRefVersion4 = ctTermRefVersion3;

        System.assert(ctTermRefVersion1.equals(ctTermRefVersion2));
        System.assert(ctTermRefVersion2.equals(ctTermRefVersion1));
        System.assert(ctTermRefVersion1.equals(ctTermRefVersion1));
        System.assert(ctTermRefVersion3.equals(ctTermRefVersion4));
        System.assert(ctTermRefVersion4.equals(ctTermRefVersion3));
        System.assert(ctTermRefVersion3.equals(ctTermRefVersion3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtTermRefVersion ctTermRefVersion1 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion2 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion3 = new OASCtTermRefVersion();
        OASCtTermRefVersion ctTermRefVersion4 = new OASCtTermRefVersion();

        System.assert(ctTermRefVersion1.equals(ctTermRefVersion2));
        System.assert(ctTermRefVersion2.equals(ctTermRefVersion1));
        System.assert(ctTermRefVersion3.equals(ctTermRefVersion4));
        System.assert(ctTermRefVersion4.equals(ctTermRefVersion3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtTermRefVersion ctTermRefVersion1 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion2 = new OASCtTermRefVersion();

        System.assertEquals(false, ctTermRefVersion1.equals('foo'));
        System.assertEquals(false, ctTermRefVersion2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtTermRefVersion ctTermRefVersion1 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion2 = new OASCtTermRefVersion();
        OASCtTermRefVersion ctTermRefVersion3;

        System.assertEquals(false, ctTermRefVersion1.equals(ctTermRefVersion3));
        System.assertEquals(false, ctTermRefVersion2.equals(ctTermRefVersion3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtTermRefVersion ctTermRefVersion1 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion2 = new OASCtTermRefVersion();

        System.assertEquals(ctTermRefVersion1.hashCode(), ctTermRefVersion1.hashCode());
        System.assertEquals(ctTermRefVersion2.hashCode(), ctTermRefVersion2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtTermRefVersion ctTermRefVersion1 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion2 = OASCtTermRefVersion.getExample();
        OASCtTermRefVersion ctTermRefVersion3 = new OASCtTermRefVersion();
        OASCtTermRefVersion ctTermRefVersion4 = new OASCtTermRefVersion();

        System.assert(ctTermRefVersion1.equals(ctTermRefVersion2));
        System.assert(ctTermRefVersion3.equals(ctTermRefVersion4));
        System.assertEquals(ctTermRefVersion1.hashCode(), ctTermRefVersion2.hashCode());
        System.assertEquals(ctTermRefVersion3.hashCode(), ctTermRefVersion4.hashCode());
    }
}
