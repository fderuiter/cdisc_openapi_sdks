@isTest
private class OASExportCtTermTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCtTerm exportCtTerm1 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm2 = exportCtTerm1;
        OASExportCtTerm exportCtTerm3 = new OASExportCtTerm();
        OASExportCtTerm exportCtTerm4 = exportCtTerm3;

        System.assert(exportCtTerm1.equals(exportCtTerm2));
        System.assert(exportCtTerm2.equals(exportCtTerm1));
        System.assert(exportCtTerm1.equals(exportCtTerm1));
        System.assert(exportCtTerm3.equals(exportCtTerm4));
        System.assert(exportCtTerm4.equals(exportCtTerm3));
        System.assert(exportCtTerm3.equals(exportCtTerm3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCtTerm exportCtTerm1 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm2 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm3 = new OASExportCtTerm();
        OASExportCtTerm exportCtTerm4 = new OASExportCtTerm();

        System.assert(exportCtTerm1.equals(exportCtTerm2));
        System.assert(exportCtTerm2.equals(exportCtTerm1));
        System.assert(exportCtTerm3.equals(exportCtTerm4));
        System.assert(exportCtTerm4.equals(exportCtTerm3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCtTerm exportCtTerm1 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm2 = new OASExportCtTerm();

        System.assertEquals(false, exportCtTerm1.equals('foo'));
        System.assertEquals(false, exportCtTerm2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCtTerm exportCtTerm1 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm2 = new OASExportCtTerm();
        OASExportCtTerm exportCtTerm3;

        System.assertEquals(false, exportCtTerm1.equals(exportCtTerm3));
        System.assertEquals(false, exportCtTerm2.equals(exportCtTerm3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCtTerm exportCtTerm1 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm2 = new OASExportCtTerm();

        System.assertEquals(exportCtTerm1.hashCode(), exportCtTerm1.hashCode());
        System.assertEquals(exportCtTerm2.hashCode(), exportCtTerm2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCtTerm exportCtTerm1 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm2 = OASExportCtTerm.getExample();
        OASExportCtTerm exportCtTerm3 = new OASExportCtTerm();
        OASExportCtTerm exportCtTerm4 = new OASExportCtTerm();

        System.assert(exportCtTerm1.equals(exportCtTerm2));
        System.assert(exportCtTerm3.equals(exportCtTerm4));
        System.assertEquals(exportCtTerm1.hashCode(), exportCtTerm2.hashCode());
        System.assertEquals(exportCtTerm3.hashCode(), exportCtTerm4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCtTerm exportCtTerm = new OASExportCtTerm();
        Map<String, String> x-property-mappings = exportCtTerm.getx-property-mappings();
        System.assertEquals('bundle1', x-property-mappings.get('bundle-1'));
        System.assertEquals('cdISCSynonymS', x-property-mappings.get('CDISC Synonym(s)'));
        System.assertEquals('bundle2', x-property-mappings.get('bundle-2'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportCtTerm exportCtTerm = new OASExportCtTerm();
        System.assertEquals(new List<String>(), exportCtTerm.cdISCSynonymS);
        System.assertEquals(null, exportCtTerm.bundle1);
        System.assertEquals(null, exportCtTerm.bundle2);
    }
}
