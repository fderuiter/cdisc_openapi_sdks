@isTest
private class OASExportQrsItemsTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportQrsItemsTable exportQrsItemsTable1 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable2 = exportQrsItemsTable1;
        OASExportQrsItemsTable exportQrsItemsTable3 = new OASExportQrsItemsTable();
        OASExportQrsItemsTable exportQrsItemsTable4 = exportQrsItemsTable3;

        System.assert(exportQrsItemsTable1.equals(exportQrsItemsTable2));
        System.assert(exportQrsItemsTable2.equals(exportQrsItemsTable1));
        System.assert(exportQrsItemsTable1.equals(exportQrsItemsTable1));
        System.assert(exportQrsItemsTable3.equals(exportQrsItemsTable4));
        System.assert(exportQrsItemsTable4.equals(exportQrsItemsTable3));
        System.assert(exportQrsItemsTable3.equals(exportQrsItemsTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportQrsItemsTable exportQrsItemsTable1 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable2 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable3 = new OASExportQrsItemsTable();
        OASExportQrsItemsTable exportQrsItemsTable4 = new OASExportQrsItemsTable();

        System.assert(exportQrsItemsTable1.equals(exportQrsItemsTable2));
        System.assert(exportQrsItemsTable2.equals(exportQrsItemsTable1));
        System.assert(exportQrsItemsTable3.equals(exportQrsItemsTable4));
        System.assert(exportQrsItemsTable4.equals(exportQrsItemsTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportQrsItemsTable exportQrsItemsTable1 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable2 = new OASExportQrsItemsTable();

        System.assertEquals(false, exportQrsItemsTable1.equals('foo'));
        System.assertEquals(false, exportQrsItemsTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportQrsItemsTable exportQrsItemsTable1 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable2 = new OASExportQrsItemsTable();
        OASExportQrsItemsTable exportQrsItemsTable3;

        System.assertEquals(false, exportQrsItemsTable1.equals(exportQrsItemsTable3));
        System.assertEquals(false, exportQrsItemsTable2.equals(exportQrsItemsTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportQrsItemsTable exportQrsItemsTable1 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable2 = new OASExportQrsItemsTable();

        System.assertEquals(exportQrsItemsTable1.hashCode(), exportQrsItemsTable1.hashCode());
        System.assertEquals(exportQrsItemsTable2.hashCode(), exportQrsItemsTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportQrsItemsTable exportQrsItemsTable1 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable2 = OASExportQrsItemsTable.getExample();
        OASExportQrsItemsTable exportQrsItemsTable3 = new OASExportQrsItemsTable();
        OASExportQrsItemsTable exportQrsItemsTable4 = new OASExportQrsItemsTable();

        System.assert(exportQrsItemsTable1.equals(exportQrsItemsTable2));
        System.assert(exportQrsItemsTable3.equals(exportQrsItemsTable4));
        System.assertEquals(exportQrsItemsTable1.hashCode(), exportQrsItemsTable2.hashCode());
        System.assertEquals(exportQrsItemsTable3.hashCode(), exportQrsItemsTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportQrsItemsTable exportQrsItemsTable = new OASExportQrsItemsTable();
        System.assertEquals(new List<OASExportQrsCsvItemsRow>(), exportQrsItemsTable.items);
    }
}
