@isTest
private class OASCtPackagesTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackages ctPackages1 = OASCtPackages.getExample();
        OASCtPackages ctPackages2 = ctPackages1;
        OASCtPackages ctPackages3 = new OASCtPackages();
        OASCtPackages ctPackages4 = ctPackages3;

        System.assert(ctPackages1.equals(ctPackages2));
        System.assert(ctPackages2.equals(ctPackages1));
        System.assert(ctPackages1.equals(ctPackages1));
        System.assert(ctPackages3.equals(ctPackages4));
        System.assert(ctPackages4.equals(ctPackages3));
        System.assert(ctPackages3.equals(ctPackages3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackages ctPackages1 = OASCtPackages.getExample();
        OASCtPackages ctPackages2 = OASCtPackages.getExample();
        OASCtPackages ctPackages3 = new OASCtPackages();
        OASCtPackages ctPackages4 = new OASCtPackages();

        System.assert(ctPackages1.equals(ctPackages2));
        System.assert(ctPackages2.equals(ctPackages1));
        System.assert(ctPackages3.equals(ctPackages4));
        System.assert(ctPackages4.equals(ctPackages3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackages ctPackages1 = OASCtPackages.getExample();
        OASCtPackages ctPackages2 = new OASCtPackages();

        System.assertEquals(false, ctPackages1.equals('foo'));
        System.assertEquals(false, ctPackages2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackages ctPackages1 = OASCtPackages.getExample();
        OASCtPackages ctPackages2 = new OASCtPackages();
        OASCtPackages ctPackages3;

        System.assertEquals(false, ctPackages1.equals(ctPackages3));
        System.assertEquals(false, ctPackages2.equals(ctPackages3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackages ctPackages1 = OASCtPackages.getExample();
        OASCtPackages ctPackages2 = new OASCtPackages();

        System.assertEquals(ctPackages1.hashCode(), ctPackages1.hashCode());
        System.assertEquals(ctPackages2.hashCode(), ctPackages2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackages ctPackages1 = OASCtPackages.getExample();
        OASCtPackages ctPackages2 = OASCtPackages.getExample();
        OASCtPackages ctPackages3 = new OASCtPackages();
        OASCtPackages ctPackages4 = new OASCtPackages();

        System.assert(ctPackages1.equals(ctPackages2));
        System.assert(ctPackages3.equals(ctPackages4));
        System.assertEquals(ctPackages1.hashCode(), ctPackages2.hashCode());
        System.assertEquals(ctPackages3.hashCode(), ctPackages4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCtPackages ctPackages = new OASCtPackages();
        Map<String, String> x-property-mappings = ctPackages.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }
}
