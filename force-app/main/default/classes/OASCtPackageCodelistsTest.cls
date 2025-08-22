@isTest
private class OASCtPackageCodelistsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackageCodelists ctPackageCodelists1 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists2 = ctPackageCodelists1;
        OASCtPackageCodelists ctPackageCodelists3 = new OASCtPackageCodelists();
        OASCtPackageCodelists ctPackageCodelists4 = ctPackageCodelists3;

        System.assert(ctPackageCodelists1.equals(ctPackageCodelists2));
        System.assert(ctPackageCodelists2.equals(ctPackageCodelists1));
        System.assert(ctPackageCodelists1.equals(ctPackageCodelists1));
        System.assert(ctPackageCodelists3.equals(ctPackageCodelists4));
        System.assert(ctPackageCodelists4.equals(ctPackageCodelists3));
        System.assert(ctPackageCodelists3.equals(ctPackageCodelists3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackageCodelists ctPackageCodelists1 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists2 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists3 = new OASCtPackageCodelists();
        OASCtPackageCodelists ctPackageCodelists4 = new OASCtPackageCodelists();

        System.assert(ctPackageCodelists1.equals(ctPackageCodelists2));
        System.assert(ctPackageCodelists2.equals(ctPackageCodelists1));
        System.assert(ctPackageCodelists3.equals(ctPackageCodelists4));
        System.assert(ctPackageCodelists4.equals(ctPackageCodelists3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackageCodelists ctPackageCodelists1 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists2 = new OASCtPackageCodelists();

        System.assertEquals(false, ctPackageCodelists1.equals('foo'));
        System.assertEquals(false, ctPackageCodelists2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackageCodelists ctPackageCodelists1 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists2 = new OASCtPackageCodelists();
        OASCtPackageCodelists ctPackageCodelists3;

        System.assertEquals(false, ctPackageCodelists1.equals(ctPackageCodelists3));
        System.assertEquals(false, ctPackageCodelists2.equals(ctPackageCodelists3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackageCodelists ctPackageCodelists1 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists2 = new OASCtPackageCodelists();

        System.assertEquals(ctPackageCodelists1.hashCode(), ctPackageCodelists1.hashCode());
        System.assertEquals(ctPackageCodelists2.hashCode(), ctPackageCodelists2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackageCodelists ctPackageCodelists1 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists2 = OASCtPackageCodelists.getExample();
        OASCtPackageCodelists ctPackageCodelists3 = new OASCtPackageCodelists();
        OASCtPackageCodelists ctPackageCodelists4 = new OASCtPackageCodelists();

        System.assert(ctPackageCodelists1.equals(ctPackageCodelists2));
        System.assert(ctPackageCodelists3.equals(ctPackageCodelists4));
        System.assertEquals(ctPackageCodelists1.hashCode(), ctPackageCodelists2.hashCode());
        System.assertEquals(ctPackageCodelists3.hashCode(), ctPackageCodelists4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCtPackageCodelists ctPackageCodelists = new OASCtPackageCodelists();
        Map<String, String> x-property-mappings = ctPackageCodelists.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
