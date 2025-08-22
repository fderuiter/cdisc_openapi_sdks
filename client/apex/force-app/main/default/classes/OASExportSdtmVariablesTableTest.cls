@isTest
private class OASExportSdtmVariablesTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable1 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable2 = exportSdtmVariablesTable1;
        OASExportSdtmVariablesTable exportSdtmVariablesTable3 = new OASExportSdtmVariablesTable();
        OASExportSdtmVariablesTable exportSdtmVariablesTable4 = exportSdtmVariablesTable3;

        System.assert(exportSdtmVariablesTable1.equals(exportSdtmVariablesTable2));
        System.assert(exportSdtmVariablesTable2.equals(exportSdtmVariablesTable1));
        System.assert(exportSdtmVariablesTable1.equals(exportSdtmVariablesTable1));
        System.assert(exportSdtmVariablesTable3.equals(exportSdtmVariablesTable4));
        System.assert(exportSdtmVariablesTable4.equals(exportSdtmVariablesTable3));
        System.assert(exportSdtmVariablesTable3.equals(exportSdtmVariablesTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable1 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable2 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable3 = new OASExportSdtmVariablesTable();
        OASExportSdtmVariablesTable exportSdtmVariablesTable4 = new OASExportSdtmVariablesTable();

        System.assert(exportSdtmVariablesTable1.equals(exportSdtmVariablesTable2));
        System.assert(exportSdtmVariablesTable2.equals(exportSdtmVariablesTable1));
        System.assert(exportSdtmVariablesTable3.equals(exportSdtmVariablesTable4));
        System.assert(exportSdtmVariablesTable4.equals(exportSdtmVariablesTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable1 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable2 = new OASExportSdtmVariablesTable();

        System.assertEquals(false, exportSdtmVariablesTable1.equals('foo'));
        System.assertEquals(false, exportSdtmVariablesTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable1 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable2 = new OASExportSdtmVariablesTable();
        OASExportSdtmVariablesTable exportSdtmVariablesTable3;

        System.assertEquals(false, exportSdtmVariablesTable1.equals(exportSdtmVariablesTable3));
        System.assertEquals(false, exportSdtmVariablesTable2.equals(exportSdtmVariablesTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable1 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable2 = new OASExportSdtmVariablesTable();

        System.assertEquals(exportSdtmVariablesTable1.hashCode(), exportSdtmVariablesTable1.hashCode());
        System.assertEquals(exportSdtmVariablesTable2.hashCode(), exportSdtmVariablesTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable1 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable2 = OASExportSdtmVariablesTable.getExample();
        OASExportSdtmVariablesTable exportSdtmVariablesTable3 = new OASExportSdtmVariablesTable();
        OASExportSdtmVariablesTable exportSdtmVariablesTable4 = new OASExportSdtmVariablesTable();

        System.assert(exportSdtmVariablesTable1.equals(exportSdtmVariablesTable2));
        System.assert(exportSdtmVariablesTable3.equals(exportSdtmVariablesTable4));
        System.assertEquals(exportSdtmVariablesTable1.hashCode(), exportSdtmVariablesTable2.hashCode());
        System.assertEquals(exportSdtmVariablesTable3.hashCode(), exportSdtmVariablesTable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable = new OASExportSdtmVariablesTable();
        Map<String, String> x-property-mappings = exportSdtmVariablesTable.getx-property-mappings();
        System.assertEquals('classVariables', x-property-mappings.get('class-variables'));
        System.assertEquals('datasetVariables', x-property-mappings.get('dataset-variables'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSdtmVariablesTable exportSdtmVariablesTable = new OASExportSdtmVariablesTable();
        System.assertEquals(new List<OASExportSdtmClassVariablesRow>(), exportSdtmVariablesTable.classVariables);
        System.assertEquals(new List<OASExportSdtmDatasetVariablesRow>(), exportSdtmVariablesTable.datasetVariables);
    }
}
