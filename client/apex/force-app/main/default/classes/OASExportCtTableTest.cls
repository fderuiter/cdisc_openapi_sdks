@isTest
private class OASExportCtTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCtTable exportCtTable1 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable2 = exportCtTable1;
        OASExportCtTable exportCtTable3 = new OASExportCtTable();
        OASExportCtTable exportCtTable4 = exportCtTable3;

        System.assert(exportCtTable1.equals(exportCtTable2));
        System.assert(exportCtTable2.equals(exportCtTable1));
        System.assert(exportCtTable1.equals(exportCtTable1));
        System.assert(exportCtTable3.equals(exportCtTable4));
        System.assert(exportCtTable4.equals(exportCtTable3));
        System.assert(exportCtTable3.equals(exportCtTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCtTable exportCtTable1 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable2 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable3 = new OASExportCtTable();
        OASExportCtTable exportCtTable4 = new OASExportCtTable();

        System.assert(exportCtTable1.equals(exportCtTable2));
        System.assert(exportCtTable2.equals(exportCtTable1));
        System.assert(exportCtTable3.equals(exportCtTable4));
        System.assert(exportCtTable4.equals(exportCtTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCtTable exportCtTable1 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable2 = new OASExportCtTable();

        System.assertEquals(false, exportCtTable1.equals('foo'));
        System.assertEquals(false, exportCtTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCtTable exportCtTable1 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable2 = new OASExportCtTable();
        OASExportCtTable exportCtTable3;

        System.assertEquals(false, exportCtTable1.equals(exportCtTable3));
        System.assertEquals(false, exportCtTable2.equals(exportCtTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCtTable exportCtTable1 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable2 = new OASExportCtTable();

        System.assertEquals(exportCtTable1.hashCode(), exportCtTable1.hashCode());
        System.assertEquals(exportCtTable2.hashCode(), exportCtTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCtTable exportCtTable1 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable2 = OASExportCtTable.getExample();
        OASExportCtTable exportCtTable3 = new OASExportCtTable();
        OASExportCtTable exportCtTable4 = new OASExportCtTable();

        System.assert(exportCtTable1.equals(exportCtTable2));
        System.assert(exportCtTable3.equals(exportCtTable4));
        System.assertEquals(exportCtTable1.hashCode(), exportCtTable2.hashCode());
        System.assertEquals(exportCtTable3.hashCode(), exportCtTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportCtTable exportCtTable = new OASExportCtTable();
        System.assertEquals(new List<OASExportCtCodelist>(), exportCtTable.ct);
    }
}
