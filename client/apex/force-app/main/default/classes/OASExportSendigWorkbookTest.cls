@isTest
private class OASExportSendigWorkbookTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSendigWorkbook exportSendigWorkbook1 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook2 = exportSendigWorkbook1;
        OASExportSendigWorkbook exportSendigWorkbook3 = new OASExportSendigWorkbook();
        OASExportSendigWorkbook exportSendigWorkbook4 = exportSendigWorkbook3;

        System.assert(exportSendigWorkbook1.equals(exportSendigWorkbook2));
        System.assert(exportSendigWorkbook2.equals(exportSendigWorkbook1));
        System.assert(exportSendigWorkbook1.equals(exportSendigWorkbook1));
        System.assert(exportSendigWorkbook3.equals(exportSendigWorkbook4));
        System.assert(exportSendigWorkbook4.equals(exportSendigWorkbook3));
        System.assert(exportSendigWorkbook3.equals(exportSendigWorkbook3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSendigWorkbook exportSendigWorkbook1 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook2 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook3 = new OASExportSendigWorkbook();
        OASExportSendigWorkbook exportSendigWorkbook4 = new OASExportSendigWorkbook();

        System.assert(exportSendigWorkbook1.equals(exportSendigWorkbook2));
        System.assert(exportSendigWorkbook2.equals(exportSendigWorkbook1));
        System.assert(exportSendigWorkbook3.equals(exportSendigWorkbook4));
        System.assert(exportSendigWorkbook4.equals(exportSendigWorkbook3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSendigWorkbook exportSendigWorkbook1 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook2 = new OASExportSendigWorkbook();

        System.assertEquals(false, exportSendigWorkbook1.equals('foo'));
        System.assertEquals(false, exportSendigWorkbook2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSendigWorkbook exportSendigWorkbook1 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook2 = new OASExportSendigWorkbook();
        OASExportSendigWorkbook exportSendigWorkbook3;

        System.assertEquals(false, exportSendigWorkbook1.equals(exportSendigWorkbook3));
        System.assertEquals(false, exportSendigWorkbook2.equals(exportSendigWorkbook3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSendigWorkbook exportSendigWorkbook1 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook2 = new OASExportSendigWorkbook();

        System.assertEquals(exportSendigWorkbook1.hashCode(), exportSendigWorkbook1.hashCode());
        System.assertEquals(exportSendigWorkbook2.hashCode(), exportSendigWorkbook2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSendigWorkbook exportSendigWorkbook1 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook2 = OASExportSendigWorkbook.getExample();
        OASExportSendigWorkbook exportSendigWorkbook3 = new OASExportSendigWorkbook();
        OASExportSendigWorkbook exportSendigWorkbook4 = new OASExportSendigWorkbook();

        System.assert(exportSendigWorkbook1.equals(exportSendigWorkbook2));
        System.assert(exportSendigWorkbook3.equals(exportSendigWorkbook4));
        System.assertEquals(exportSendigWorkbook1.hashCode(), exportSendigWorkbook2.hashCode());
        System.assertEquals(exportSendigWorkbook3.hashCode(), exportSendigWorkbook4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSendigWorkbook exportSendigWorkbook = new OASExportSendigWorkbook();
        System.assertEquals(new List<OASExportSendigVariablesRow>(), exportSendigWorkbook.variables);
        System.assertEquals(new List<OASExportSendigDatasetsRow>(), exportSendigWorkbook.datasets);
    }
}
