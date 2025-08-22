@isTest
private class OASExportSendigDatasetsTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSendigDatasetsTable exportSendigDatasetsTable1 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable2 = exportSendigDatasetsTable1;
        OASExportSendigDatasetsTable exportSendigDatasetsTable3 = new OASExportSendigDatasetsTable();
        OASExportSendigDatasetsTable exportSendigDatasetsTable4 = exportSendigDatasetsTable3;

        System.assert(exportSendigDatasetsTable1.equals(exportSendigDatasetsTable2));
        System.assert(exportSendigDatasetsTable2.equals(exportSendigDatasetsTable1));
        System.assert(exportSendigDatasetsTable1.equals(exportSendigDatasetsTable1));
        System.assert(exportSendigDatasetsTable3.equals(exportSendigDatasetsTable4));
        System.assert(exportSendigDatasetsTable4.equals(exportSendigDatasetsTable3));
        System.assert(exportSendigDatasetsTable3.equals(exportSendigDatasetsTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSendigDatasetsTable exportSendigDatasetsTable1 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable2 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable3 = new OASExportSendigDatasetsTable();
        OASExportSendigDatasetsTable exportSendigDatasetsTable4 = new OASExportSendigDatasetsTable();

        System.assert(exportSendigDatasetsTable1.equals(exportSendigDatasetsTable2));
        System.assert(exportSendigDatasetsTable2.equals(exportSendigDatasetsTable1));
        System.assert(exportSendigDatasetsTable3.equals(exportSendigDatasetsTable4));
        System.assert(exportSendigDatasetsTable4.equals(exportSendigDatasetsTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSendigDatasetsTable exportSendigDatasetsTable1 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable2 = new OASExportSendigDatasetsTable();

        System.assertEquals(false, exportSendigDatasetsTable1.equals('foo'));
        System.assertEquals(false, exportSendigDatasetsTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSendigDatasetsTable exportSendigDatasetsTable1 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable2 = new OASExportSendigDatasetsTable();
        OASExportSendigDatasetsTable exportSendigDatasetsTable3;

        System.assertEquals(false, exportSendigDatasetsTable1.equals(exportSendigDatasetsTable3));
        System.assertEquals(false, exportSendigDatasetsTable2.equals(exportSendigDatasetsTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSendigDatasetsTable exportSendigDatasetsTable1 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable2 = new OASExportSendigDatasetsTable();

        System.assertEquals(exportSendigDatasetsTable1.hashCode(), exportSendigDatasetsTable1.hashCode());
        System.assertEquals(exportSendigDatasetsTable2.hashCode(), exportSendigDatasetsTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSendigDatasetsTable exportSendigDatasetsTable1 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable2 = OASExportSendigDatasetsTable.getExample();
        OASExportSendigDatasetsTable exportSendigDatasetsTable3 = new OASExportSendigDatasetsTable();
        OASExportSendigDatasetsTable exportSendigDatasetsTable4 = new OASExportSendigDatasetsTable();

        System.assert(exportSendigDatasetsTable1.equals(exportSendigDatasetsTable2));
        System.assert(exportSendigDatasetsTable3.equals(exportSendigDatasetsTable4));
        System.assertEquals(exportSendigDatasetsTable1.hashCode(), exportSendigDatasetsTable2.hashCode());
        System.assertEquals(exportSendigDatasetsTable3.hashCode(), exportSendigDatasetsTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSendigDatasetsTable exportSendigDatasetsTable = new OASExportSendigDatasetsTable();
        System.assertEquals(new List<OASExportSendigDatasetsRow>(), exportSendigDatasetsTable.datasets);
    }
}
