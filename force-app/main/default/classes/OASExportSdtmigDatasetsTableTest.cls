@isTest
private class OASExportSdtmigDatasetsTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable1 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable2 = exportSdtmigDatasetsTable1;
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable3 = new OASExportSdtmigDatasetsTable();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable4 = exportSdtmigDatasetsTable3;

        System.assert(exportSdtmigDatasetsTable1.equals(exportSdtmigDatasetsTable2));
        System.assert(exportSdtmigDatasetsTable2.equals(exportSdtmigDatasetsTable1));
        System.assert(exportSdtmigDatasetsTable1.equals(exportSdtmigDatasetsTable1));
        System.assert(exportSdtmigDatasetsTable3.equals(exportSdtmigDatasetsTable4));
        System.assert(exportSdtmigDatasetsTable4.equals(exportSdtmigDatasetsTable3));
        System.assert(exportSdtmigDatasetsTable3.equals(exportSdtmigDatasetsTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable1 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable2 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable3 = new OASExportSdtmigDatasetsTable();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable4 = new OASExportSdtmigDatasetsTable();

        System.assert(exportSdtmigDatasetsTable1.equals(exportSdtmigDatasetsTable2));
        System.assert(exportSdtmigDatasetsTable2.equals(exportSdtmigDatasetsTable1));
        System.assert(exportSdtmigDatasetsTable3.equals(exportSdtmigDatasetsTable4));
        System.assert(exportSdtmigDatasetsTable4.equals(exportSdtmigDatasetsTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable1 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable2 = new OASExportSdtmigDatasetsTable();

        System.assertEquals(false, exportSdtmigDatasetsTable1.equals('foo'));
        System.assertEquals(false, exportSdtmigDatasetsTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable1 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable2 = new OASExportSdtmigDatasetsTable();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable3;

        System.assertEquals(false, exportSdtmigDatasetsTable1.equals(exportSdtmigDatasetsTable3));
        System.assertEquals(false, exportSdtmigDatasetsTable2.equals(exportSdtmigDatasetsTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable1 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable2 = new OASExportSdtmigDatasetsTable();

        System.assertEquals(exportSdtmigDatasetsTable1.hashCode(), exportSdtmigDatasetsTable1.hashCode());
        System.assertEquals(exportSdtmigDatasetsTable2.hashCode(), exportSdtmigDatasetsTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable1 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable2 = OASExportSdtmigDatasetsTable.getExample();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable3 = new OASExportSdtmigDatasetsTable();
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable4 = new OASExportSdtmigDatasetsTable();

        System.assert(exportSdtmigDatasetsTable1.equals(exportSdtmigDatasetsTable2));
        System.assert(exportSdtmigDatasetsTable3.equals(exportSdtmigDatasetsTable4));
        System.assertEquals(exportSdtmigDatasetsTable1.hashCode(), exportSdtmigDatasetsTable2.hashCode());
        System.assertEquals(exportSdtmigDatasetsTable3.hashCode(), exportSdtmigDatasetsTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSdtmigDatasetsTable exportSdtmigDatasetsTable = new OASExportSdtmigDatasetsTable();
        System.assertEquals(new List<OASExportSdtmigDatasetsRow>(), exportSdtmigDatasetsTable.datasets);
    }
}
