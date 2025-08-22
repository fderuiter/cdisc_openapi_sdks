@isTest
private class OASExportAdamVariablesTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportAdamVariablesTable exportAdamVariablesTable1 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable2 = exportAdamVariablesTable1;
        OASExportAdamVariablesTable exportAdamVariablesTable3 = new OASExportAdamVariablesTable();
        OASExportAdamVariablesTable exportAdamVariablesTable4 = exportAdamVariablesTable3;

        System.assert(exportAdamVariablesTable1.equals(exportAdamVariablesTable2));
        System.assert(exportAdamVariablesTable2.equals(exportAdamVariablesTable1));
        System.assert(exportAdamVariablesTable1.equals(exportAdamVariablesTable1));
        System.assert(exportAdamVariablesTable3.equals(exportAdamVariablesTable4));
        System.assert(exportAdamVariablesTable4.equals(exportAdamVariablesTable3));
        System.assert(exportAdamVariablesTable3.equals(exportAdamVariablesTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportAdamVariablesTable exportAdamVariablesTable1 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable2 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable3 = new OASExportAdamVariablesTable();
        OASExportAdamVariablesTable exportAdamVariablesTable4 = new OASExportAdamVariablesTable();

        System.assert(exportAdamVariablesTable1.equals(exportAdamVariablesTable2));
        System.assert(exportAdamVariablesTable2.equals(exportAdamVariablesTable1));
        System.assert(exportAdamVariablesTable3.equals(exportAdamVariablesTable4));
        System.assert(exportAdamVariablesTable4.equals(exportAdamVariablesTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportAdamVariablesTable exportAdamVariablesTable1 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable2 = new OASExportAdamVariablesTable();

        System.assertEquals(false, exportAdamVariablesTable1.equals('foo'));
        System.assertEquals(false, exportAdamVariablesTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportAdamVariablesTable exportAdamVariablesTable1 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable2 = new OASExportAdamVariablesTable();
        OASExportAdamVariablesTable exportAdamVariablesTable3;

        System.assertEquals(false, exportAdamVariablesTable1.equals(exportAdamVariablesTable3));
        System.assertEquals(false, exportAdamVariablesTable2.equals(exportAdamVariablesTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportAdamVariablesTable exportAdamVariablesTable1 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable2 = new OASExportAdamVariablesTable();

        System.assertEquals(exportAdamVariablesTable1.hashCode(), exportAdamVariablesTable1.hashCode());
        System.assertEquals(exportAdamVariablesTable2.hashCode(), exportAdamVariablesTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportAdamVariablesTable exportAdamVariablesTable1 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable2 = OASExportAdamVariablesTable.getExample();
        OASExportAdamVariablesTable exportAdamVariablesTable3 = new OASExportAdamVariablesTable();
        OASExportAdamVariablesTable exportAdamVariablesTable4 = new OASExportAdamVariablesTable();

        System.assert(exportAdamVariablesTable1.equals(exportAdamVariablesTable2));
        System.assert(exportAdamVariablesTable3.equals(exportAdamVariablesTable4));
        System.assertEquals(exportAdamVariablesTable1.hashCode(), exportAdamVariablesTable2.hashCode());
        System.assertEquals(exportAdamVariablesTable3.hashCode(), exportAdamVariablesTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportAdamVariablesTable exportAdamVariablesTable = new OASExportAdamVariablesTable();
        System.assertEquals(new List<OASExportAdamVariablesRow>(), exportAdamVariablesTable.variables);
    }
}
