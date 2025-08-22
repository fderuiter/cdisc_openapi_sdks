@isTest
private class OASExportSdtmDatasetsTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable1 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable2 = exportSdtmDatasetsTable1;
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable3 = new OASExportSdtmDatasetsTable();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable4 = exportSdtmDatasetsTable3;

        System.assert(exportSdtmDatasetsTable1.equals(exportSdtmDatasetsTable2));
        System.assert(exportSdtmDatasetsTable2.equals(exportSdtmDatasetsTable1));
        System.assert(exportSdtmDatasetsTable1.equals(exportSdtmDatasetsTable1));
        System.assert(exportSdtmDatasetsTable3.equals(exportSdtmDatasetsTable4));
        System.assert(exportSdtmDatasetsTable4.equals(exportSdtmDatasetsTable3));
        System.assert(exportSdtmDatasetsTable3.equals(exportSdtmDatasetsTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable1 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable2 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable3 = new OASExportSdtmDatasetsTable();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable4 = new OASExportSdtmDatasetsTable();

        System.assert(exportSdtmDatasetsTable1.equals(exportSdtmDatasetsTable2));
        System.assert(exportSdtmDatasetsTable2.equals(exportSdtmDatasetsTable1));
        System.assert(exportSdtmDatasetsTable3.equals(exportSdtmDatasetsTable4));
        System.assert(exportSdtmDatasetsTable4.equals(exportSdtmDatasetsTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable1 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable2 = new OASExportSdtmDatasetsTable();

        System.assertEquals(false, exportSdtmDatasetsTable1.equals('foo'));
        System.assertEquals(false, exportSdtmDatasetsTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable1 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable2 = new OASExportSdtmDatasetsTable();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable3;

        System.assertEquals(false, exportSdtmDatasetsTable1.equals(exportSdtmDatasetsTable3));
        System.assertEquals(false, exportSdtmDatasetsTable2.equals(exportSdtmDatasetsTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable1 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable2 = new OASExportSdtmDatasetsTable();

        System.assertEquals(exportSdtmDatasetsTable1.hashCode(), exportSdtmDatasetsTable1.hashCode());
        System.assertEquals(exportSdtmDatasetsTable2.hashCode(), exportSdtmDatasetsTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable1 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable2 = OASExportSdtmDatasetsTable.getExample();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable3 = new OASExportSdtmDatasetsTable();
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable4 = new OASExportSdtmDatasetsTable();

        System.assert(exportSdtmDatasetsTable1.equals(exportSdtmDatasetsTable2));
        System.assert(exportSdtmDatasetsTable3.equals(exportSdtmDatasetsTable4));
        System.assertEquals(exportSdtmDatasetsTable1.hashCode(), exportSdtmDatasetsTable2.hashCode());
        System.assertEquals(exportSdtmDatasetsTable3.hashCode(), exportSdtmDatasetsTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSdtmDatasetsTable exportSdtmDatasetsTable = new OASExportSdtmDatasetsTable();
        System.assertEquals(new List<OASExportSdtmDatasetsRow>(), exportSdtmDatasetsTable.datasets);
    }
}
