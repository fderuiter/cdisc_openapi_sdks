@isTest
private class OASExportSdtmigVariablesTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable1 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable2 = exportSdtmigVariablesTable1;
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable3 = new OASExportSdtmigVariablesTable();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable4 = exportSdtmigVariablesTable3;

        System.assert(exportSdtmigVariablesTable1.equals(exportSdtmigVariablesTable2));
        System.assert(exportSdtmigVariablesTable2.equals(exportSdtmigVariablesTable1));
        System.assert(exportSdtmigVariablesTable1.equals(exportSdtmigVariablesTable1));
        System.assert(exportSdtmigVariablesTable3.equals(exportSdtmigVariablesTable4));
        System.assert(exportSdtmigVariablesTable4.equals(exportSdtmigVariablesTable3));
        System.assert(exportSdtmigVariablesTable3.equals(exportSdtmigVariablesTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable1 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable2 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable3 = new OASExportSdtmigVariablesTable();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable4 = new OASExportSdtmigVariablesTable();

        System.assert(exportSdtmigVariablesTable1.equals(exportSdtmigVariablesTable2));
        System.assert(exportSdtmigVariablesTable2.equals(exportSdtmigVariablesTable1));
        System.assert(exportSdtmigVariablesTable3.equals(exportSdtmigVariablesTable4));
        System.assert(exportSdtmigVariablesTable4.equals(exportSdtmigVariablesTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable1 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable2 = new OASExportSdtmigVariablesTable();

        System.assertEquals(false, exportSdtmigVariablesTable1.equals('foo'));
        System.assertEquals(false, exportSdtmigVariablesTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable1 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable2 = new OASExportSdtmigVariablesTable();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable3;

        System.assertEquals(false, exportSdtmigVariablesTable1.equals(exportSdtmigVariablesTable3));
        System.assertEquals(false, exportSdtmigVariablesTable2.equals(exportSdtmigVariablesTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable1 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable2 = new OASExportSdtmigVariablesTable();

        System.assertEquals(exportSdtmigVariablesTable1.hashCode(), exportSdtmigVariablesTable1.hashCode());
        System.assertEquals(exportSdtmigVariablesTable2.hashCode(), exportSdtmigVariablesTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable1 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable2 = OASExportSdtmigVariablesTable.getExample();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable3 = new OASExportSdtmigVariablesTable();
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable4 = new OASExportSdtmigVariablesTable();

        System.assert(exportSdtmigVariablesTable1.equals(exportSdtmigVariablesTable2));
        System.assert(exportSdtmigVariablesTable3.equals(exportSdtmigVariablesTable4));
        System.assertEquals(exportSdtmigVariablesTable1.hashCode(), exportSdtmigVariablesTable2.hashCode());
        System.assertEquals(exportSdtmigVariablesTable3.hashCode(), exportSdtmigVariablesTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSdtmigVariablesTable exportSdtmigVariablesTable = new OASExportSdtmigVariablesTable();
        System.assertEquals(new List<OASExportSdtmigVariablesRow>(), exportSdtmigVariablesTable.variables);
    }
}
