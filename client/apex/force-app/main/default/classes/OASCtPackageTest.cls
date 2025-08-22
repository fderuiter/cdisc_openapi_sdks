@isTest
private class OASCtPackageTest {
    @isTest
    private static void equalsSameInstance() {
        OASCtPackage ctPackage1 = OASCtPackage.getExample();
        OASCtPackage ctPackage2 = ctPackage1;
        OASCtPackage ctPackage3 = new OASCtPackage();
        OASCtPackage ctPackage4 = ctPackage3;

        System.assert(ctPackage1.equals(ctPackage2));
        System.assert(ctPackage2.equals(ctPackage1));
        System.assert(ctPackage1.equals(ctPackage1));
        System.assert(ctPackage3.equals(ctPackage4));
        System.assert(ctPackage4.equals(ctPackage3));
        System.assert(ctPackage3.equals(ctPackage3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCtPackage ctPackage1 = OASCtPackage.getExample();
        OASCtPackage ctPackage2 = OASCtPackage.getExample();
        OASCtPackage ctPackage3 = new OASCtPackage();
        OASCtPackage ctPackage4 = new OASCtPackage();

        System.assert(ctPackage1.equals(ctPackage2));
        System.assert(ctPackage2.equals(ctPackage1));
        System.assert(ctPackage3.equals(ctPackage4));
        System.assert(ctPackage4.equals(ctPackage3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCtPackage ctPackage1 = OASCtPackage.getExample();
        OASCtPackage ctPackage2 = new OASCtPackage();

        System.assertEquals(false, ctPackage1.equals('foo'));
        System.assertEquals(false, ctPackage2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCtPackage ctPackage1 = OASCtPackage.getExample();
        OASCtPackage ctPackage2 = new OASCtPackage();
        OASCtPackage ctPackage3;

        System.assertEquals(false, ctPackage1.equals(ctPackage3));
        System.assertEquals(false, ctPackage2.equals(ctPackage3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCtPackage ctPackage1 = OASCtPackage.getExample();
        OASCtPackage ctPackage2 = new OASCtPackage();

        System.assertEquals(ctPackage1.hashCode(), ctPackage1.hashCode());
        System.assertEquals(ctPackage2.hashCode(), ctPackage2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCtPackage ctPackage1 = OASCtPackage.getExample();
        OASCtPackage ctPackage2 = OASCtPackage.getExample();
        OASCtPackage ctPackage3 = new OASCtPackage();
        OASCtPackage ctPackage4 = new OASCtPackage();

        System.assert(ctPackage1.equals(ctPackage2));
        System.assert(ctPackage3.equals(ctPackage4));
        System.assertEquals(ctPackage1.hashCode(), ctPackage2.hashCode());
        System.assertEquals(ctPackage3.hashCode(), ctPackage4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCtPackage ctPackage = new OASCtPackage();
        Map<String, String> x-property-mappings = ctPackage.getx-property-mappings();
        System.assertEquals('links', x-property-mappings.get('_links'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASCtPackage ctPackage = new OASCtPackage();
        System.assertEquals(new List<OASCtPackageCodelists>(), ctPackage.codelists);
        System.assertEquals(null, ctPackage.name);
        System.assertEquals(null, ctPackage.label);
        System.assertEquals(null, ctPackage.description);
        System.assertEquals(null, ctPackage.source);
        System.assertEquals(null, ctPackage.effectiveDate);
        System.assertEquals(null, ctPackage.registrationStatus);
        System.assertEquals(null, ctPackage.version);
        System.assertEquals(null, ctPackage.links);
    }
}
