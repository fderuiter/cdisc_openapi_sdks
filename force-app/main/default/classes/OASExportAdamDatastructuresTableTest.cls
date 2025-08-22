@isTest
private class OASExportAdamDatastructuresTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable1 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable2 = exportAdamDatastructuresTable1;
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable3 = new OASExportAdamDatastructuresTable();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable4 = exportAdamDatastructuresTable3;

        System.assert(exportAdamDatastructuresTable1.equals(exportAdamDatastructuresTable2));
        System.assert(exportAdamDatastructuresTable2.equals(exportAdamDatastructuresTable1));
        System.assert(exportAdamDatastructuresTable1.equals(exportAdamDatastructuresTable1));
        System.assert(exportAdamDatastructuresTable3.equals(exportAdamDatastructuresTable4));
        System.assert(exportAdamDatastructuresTable4.equals(exportAdamDatastructuresTable3));
        System.assert(exportAdamDatastructuresTable3.equals(exportAdamDatastructuresTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable1 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable2 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable3 = new OASExportAdamDatastructuresTable();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable4 = new OASExportAdamDatastructuresTable();

        System.assert(exportAdamDatastructuresTable1.equals(exportAdamDatastructuresTable2));
        System.assert(exportAdamDatastructuresTable2.equals(exportAdamDatastructuresTable1));
        System.assert(exportAdamDatastructuresTable3.equals(exportAdamDatastructuresTable4));
        System.assert(exportAdamDatastructuresTable4.equals(exportAdamDatastructuresTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable1 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable2 = new OASExportAdamDatastructuresTable();

        System.assertEquals(false, exportAdamDatastructuresTable1.equals('foo'));
        System.assertEquals(false, exportAdamDatastructuresTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable1 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable2 = new OASExportAdamDatastructuresTable();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable3;

        System.assertEquals(false, exportAdamDatastructuresTable1.equals(exportAdamDatastructuresTable3));
        System.assertEquals(false, exportAdamDatastructuresTable2.equals(exportAdamDatastructuresTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable1 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable2 = new OASExportAdamDatastructuresTable();

        System.assertEquals(exportAdamDatastructuresTable1.hashCode(), exportAdamDatastructuresTable1.hashCode());
        System.assertEquals(exportAdamDatastructuresTable2.hashCode(), exportAdamDatastructuresTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable1 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable2 = OASExportAdamDatastructuresTable.getExample();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable3 = new OASExportAdamDatastructuresTable();
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable4 = new OASExportAdamDatastructuresTable();

        System.assert(exportAdamDatastructuresTable1.equals(exportAdamDatastructuresTable2));
        System.assert(exportAdamDatastructuresTable3.equals(exportAdamDatastructuresTable4));
        System.assertEquals(exportAdamDatastructuresTable1.hashCode(), exportAdamDatastructuresTable2.hashCode());
        System.assertEquals(exportAdamDatastructuresTable3.hashCode(), exportAdamDatastructuresTable4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportAdamDatastructuresTable exportAdamDatastructuresTable = new OASExportAdamDatastructuresTable();
        System.assertEquals(new List<OASExportAdamDatastructuresRow>(), exportAdamDatastructuresTable.datastructures);
    }
}
