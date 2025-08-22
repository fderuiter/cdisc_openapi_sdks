@isTest
private class OASExportSendigVariablesTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSendigVariablesTable exportSendigVariablesTable1 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable2 = exportSendigVariablesTable1;
        OASExportSendigVariablesTable exportSendigVariablesTable3 = new OASExportSendigVariablesTable();
        OASExportSendigVariablesTable exportSendigVariablesTable4 = exportSendigVariablesTable3;

        System.assert(exportSendigVariablesTable1.equals(exportSendigVariablesTable2));
        System.assert(exportSendigVariablesTable2.equals(exportSendigVariablesTable1));
        System.assert(exportSendigVariablesTable1.equals(exportSendigVariablesTable1));
        System.assert(exportSendigVariablesTable3.equals(exportSendigVariablesTable4));
        System.assert(exportSendigVariablesTable4.equals(exportSendigVariablesTable3));
        System.assert(exportSendigVariablesTable3.equals(exportSendigVariablesTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSendigVariablesTable exportSendigVariablesTable1 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable2 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable3 = new OASExportSendigVariablesTable();
        OASExportSendigVariablesTable exportSendigVariablesTable4 = new OASExportSendigVariablesTable();

        System.assert(exportSendigVariablesTable1.equals(exportSendigVariablesTable2));
        System.assert(exportSendigVariablesTable2.equals(exportSendigVariablesTable1));
        System.assert(exportSendigVariablesTable3.equals(exportSendigVariablesTable4));
        System.assert(exportSendigVariablesTable4.equals(exportSendigVariablesTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSendigVariablesTable exportSendigVariablesTable1 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable2 = new OASExportSendigVariablesTable();

        System.assertEquals(false, exportSendigVariablesTable1.equals('foo'));
        System.assertEquals(false, exportSendigVariablesTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSendigVariablesTable exportSendigVariablesTable1 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable2 = new OASExportSendigVariablesTable();
        OASExportSendigVariablesTable exportSendigVariablesTable3;

        System.assertEquals(false, exportSendigVariablesTable1.equals(exportSendigVariablesTable3));
        System.assertEquals(false, exportSendigVariablesTable2.equals(exportSendigVariablesTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSendigVariablesTable exportSendigVariablesTable1 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable2 = new OASExportSendigVariablesTable();

        System.assertEquals(exportSendigVariablesTable1.hashCode(), exportSendigVariablesTable1.hashCode());
        System.assertEquals(exportSendigVariablesTable2.hashCode(), exportSendigVariablesTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSendigVariablesTable exportSendigVariablesTable1 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable2 = OASExportSendigVariablesTable.getExample();
        OASExportSendigVariablesTable exportSendigVariablesTable3 = new OASExportSendigVariablesTable();
        OASExportSendigVariablesTable exportSendigVariablesTable4 = new OASExportSendigVariablesTable();

        System.assert(exportSendigVariablesTable1.equals(exportSendigVariablesTable2));
        System.assert(exportSendigVariablesTable3.equals(exportSendigVariablesTable4));
        System.assertEquals(exportSendigVariablesTable1.hashCode(), exportSendigVariablesTable2.hashCode());
        System.assertEquals(exportSendigVariablesTable3.hashCode(), exportSendigVariablesTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSendigVariablesTable exportSendigVariablesTable = new OASExportSendigVariablesTable();
        System.assertEquals(new List<OASExportSendigVariablesRow>(), exportSendigVariablesTable.variables);
    }
}
