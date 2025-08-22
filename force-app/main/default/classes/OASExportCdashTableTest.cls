@isTest
private class OASExportCdashTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCdashTable exportCdashTable1 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable2 = exportCdashTable1;
        OASExportCdashTable exportCdashTable3 = new OASExportCdashTable();
        OASExportCdashTable exportCdashTable4 = exportCdashTable3;

        System.assert(exportCdashTable1.equals(exportCdashTable2));
        System.assert(exportCdashTable2.equals(exportCdashTable1));
        System.assert(exportCdashTable1.equals(exportCdashTable1));
        System.assert(exportCdashTable3.equals(exportCdashTable4));
        System.assert(exportCdashTable4.equals(exportCdashTable3));
        System.assert(exportCdashTable3.equals(exportCdashTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCdashTable exportCdashTable1 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable2 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable3 = new OASExportCdashTable();
        OASExportCdashTable exportCdashTable4 = new OASExportCdashTable();

        System.assert(exportCdashTable1.equals(exportCdashTable2));
        System.assert(exportCdashTable2.equals(exportCdashTable1));
        System.assert(exportCdashTable3.equals(exportCdashTable4));
        System.assert(exportCdashTable4.equals(exportCdashTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCdashTable exportCdashTable1 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable2 = new OASExportCdashTable();

        System.assertEquals(false, exportCdashTable1.equals('foo'));
        System.assertEquals(false, exportCdashTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCdashTable exportCdashTable1 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable2 = new OASExportCdashTable();
        OASExportCdashTable exportCdashTable3;

        System.assertEquals(false, exportCdashTable1.equals(exportCdashTable3));
        System.assertEquals(false, exportCdashTable2.equals(exportCdashTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCdashTable exportCdashTable1 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable2 = new OASExportCdashTable();

        System.assertEquals(exportCdashTable1.hashCode(), exportCdashTable1.hashCode());
        System.assertEquals(exportCdashTable2.hashCode(), exportCdashTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCdashTable exportCdashTable1 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable2 = OASExportCdashTable.getExample();
        OASExportCdashTable exportCdashTable3 = new OASExportCdashTable();
        OASExportCdashTable exportCdashTable4 = new OASExportCdashTable();

        System.assert(exportCdashTable1.equals(exportCdashTable2));
        System.assert(exportCdashTable3.equals(exportCdashTable4));
        System.assertEquals(exportCdashTable1.hashCode(), exportCdashTable2.hashCode());
        System.assertEquals(exportCdashTable3.hashCode(), exportCdashTable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCdashTable exportCdashTable = new OASExportCdashTable();
        Map<String, String> x-property-mappings = exportCdashTable.getx-property-mappings();
        System.assertEquals('classVariables', x-property-mappings.get('class-variables'));
        System.assertEquals('domainVariables', x-property-mappings.get('domain-variables'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportCdashTable exportCdashTable = new OASExportCdashTable();
        System.assertEquals(new List<OASExportCdashClassVariablesRow>(), exportCdashTable.classVariables);
        System.assertEquals(new List<OASExportCdashDomainVariablesRow>(), exportCdashTable.domainVariables);
    }
}
