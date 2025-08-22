@isTest
private class OASExportSdtmigWorkbookTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmigWorkbook exportSdtmigWorkbook1 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook2 = exportSdtmigWorkbook1;
        OASExportSdtmigWorkbook exportSdtmigWorkbook3 = new OASExportSdtmigWorkbook();
        OASExportSdtmigWorkbook exportSdtmigWorkbook4 = exportSdtmigWorkbook3;

        System.assert(exportSdtmigWorkbook1.equals(exportSdtmigWorkbook2));
        System.assert(exportSdtmigWorkbook2.equals(exportSdtmigWorkbook1));
        System.assert(exportSdtmigWorkbook1.equals(exportSdtmigWorkbook1));
        System.assert(exportSdtmigWorkbook3.equals(exportSdtmigWorkbook4));
        System.assert(exportSdtmigWorkbook4.equals(exportSdtmigWorkbook3));
        System.assert(exportSdtmigWorkbook3.equals(exportSdtmigWorkbook3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmigWorkbook exportSdtmigWorkbook1 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook2 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook3 = new OASExportSdtmigWorkbook();
        OASExportSdtmigWorkbook exportSdtmigWorkbook4 = new OASExportSdtmigWorkbook();

        System.assert(exportSdtmigWorkbook1.equals(exportSdtmigWorkbook2));
        System.assert(exportSdtmigWorkbook2.equals(exportSdtmigWorkbook1));
        System.assert(exportSdtmigWorkbook3.equals(exportSdtmigWorkbook4));
        System.assert(exportSdtmigWorkbook4.equals(exportSdtmigWorkbook3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmigWorkbook exportSdtmigWorkbook1 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook2 = new OASExportSdtmigWorkbook();

        System.assertEquals(false, exportSdtmigWorkbook1.equals('foo'));
        System.assertEquals(false, exportSdtmigWorkbook2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmigWorkbook exportSdtmigWorkbook1 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook2 = new OASExportSdtmigWorkbook();
        OASExportSdtmigWorkbook exportSdtmigWorkbook3;

        System.assertEquals(false, exportSdtmigWorkbook1.equals(exportSdtmigWorkbook3));
        System.assertEquals(false, exportSdtmigWorkbook2.equals(exportSdtmigWorkbook3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmigWorkbook exportSdtmigWorkbook1 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook2 = new OASExportSdtmigWorkbook();

        System.assertEquals(exportSdtmigWorkbook1.hashCode(), exportSdtmigWorkbook1.hashCode());
        System.assertEquals(exportSdtmigWorkbook2.hashCode(), exportSdtmigWorkbook2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmigWorkbook exportSdtmigWorkbook1 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook2 = OASExportSdtmigWorkbook.getExample();
        OASExportSdtmigWorkbook exportSdtmigWorkbook3 = new OASExportSdtmigWorkbook();
        OASExportSdtmigWorkbook exportSdtmigWorkbook4 = new OASExportSdtmigWorkbook();

        System.assert(exportSdtmigWorkbook1.equals(exportSdtmigWorkbook2));
        System.assert(exportSdtmigWorkbook3.equals(exportSdtmigWorkbook4));
        System.assertEquals(exportSdtmigWorkbook1.hashCode(), exportSdtmigWorkbook2.hashCode());
        System.assertEquals(exportSdtmigWorkbook3.hashCode(), exportSdtmigWorkbook4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSdtmigWorkbook exportSdtmigWorkbook = new OASExportSdtmigWorkbook();
        System.assertEquals(new List<OASExportSdtmigVariablesRow>(), exportSdtmigWorkbook.variables);
        System.assertEquals(new List<OASExportSdtmigDatasetsRow>(), exportSdtmigWorkbook.datasets);
    }
}
