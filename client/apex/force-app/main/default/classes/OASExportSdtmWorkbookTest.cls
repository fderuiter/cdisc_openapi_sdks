@isTest
private class OASExportSdtmWorkbookTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmWorkbook exportSdtmWorkbook1 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook2 = exportSdtmWorkbook1;
        OASExportSdtmWorkbook exportSdtmWorkbook3 = new OASExportSdtmWorkbook();
        OASExportSdtmWorkbook exportSdtmWorkbook4 = exportSdtmWorkbook3;

        System.assert(exportSdtmWorkbook1.equals(exportSdtmWorkbook2));
        System.assert(exportSdtmWorkbook2.equals(exportSdtmWorkbook1));
        System.assert(exportSdtmWorkbook1.equals(exportSdtmWorkbook1));
        System.assert(exportSdtmWorkbook3.equals(exportSdtmWorkbook4));
        System.assert(exportSdtmWorkbook4.equals(exportSdtmWorkbook3));
        System.assert(exportSdtmWorkbook3.equals(exportSdtmWorkbook3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmWorkbook exportSdtmWorkbook1 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook2 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook3 = new OASExportSdtmWorkbook();
        OASExportSdtmWorkbook exportSdtmWorkbook4 = new OASExportSdtmWorkbook();

        System.assert(exportSdtmWorkbook1.equals(exportSdtmWorkbook2));
        System.assert(exportSdtmWorkbook2.equals(exportSdtmWorkbook1));
        System.assert(exportSdtmWorkbook3.equals(exportSdtmWorkbook4));
        System.assert(exportSdtmWorkbook4.equals(exportSdtmWorkbook3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmWorkbook exportSdtmWorkbook1 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook2 = new OASExportSdtmWorkbook();

        System.assertEquals(false, exportSdtmWorkbook1.equals('foo'));
        System.assertEquals(false, exportSdtmWorkbook2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmWorkbook exportSdtmWorkbook1 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook2 = new OASExportSdtmWorkbook();
        OASExportSdtmWorkbook exportSdtmWorkbook3;

        System.assertEquals(false, exportSdtmWorkbook1.equals(exportSdtmWorkbook3));
        System.assertEquals(false, exportSdtmWorkbook2.equals(exportSdtmWorkbook3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmWorkbook exportSdtmWorkbook1 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook2 = new OASExportSdtmWorkbook();

        System.assertEquals(exportSdtmWorkbook1.hashCode(), exportSdtmWorkbook1.hashCode());
        System.assertEquals(exportSdtmWorkbook2.hashCode(), exportSdtmWorkbook2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmWorkbook exportSdtmWorkbook1 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook2 = OASExportSdtmWorkbook.getExample();
        OASExportSdtmWorkbook exportSdtmWorkbook3 = new OASExportSdtmWorkbook();
        OASExportSdtmWorkbook exportSdtmWorkbook4 = new OASExportSdtmWorkbook();

        System.assert(exportSdtmWorkbook1.equals(exportSdtmWorkbook2));
        System.assert(exportSdtmWorkbook3.equals(exportSdtmWorkbook4));
        System.assertEquals(exportSdtmWorkbook1.hashCode(), exportSdtmWorkbook2.hashCode());
        System.assertEquals(exportSdtmWorkbook3.hashCode(), exportSdtmWorkbook4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSdtmWorkbook exportSdtmWorkbook = new OASExportSdtmWorkbook();
        Map<String, String> x-property-mappings = exportSdtmWorkbook.getx-property-mappings();
        System.assertEquals('classVariables', x-property-mappings.get('class-variables'));
        System.assertEquals('datasetVariables', x-property-mappings.get('dataset-variables'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportSdtmWorkbook exportSdtmWorkbook = new OASExportSdtmWorkbook();
        System.assertEquals(new List<OASExportSdtmClassVariablesRow>(), exportSdtmWorkbook.classVariables);
        System.assertEquals(new List<OASExportSdtmDatasetVariablesRow>(), exportSdtmWorkbook.datasetVariables);
        System.assertEquals(new List<OASExportSdtmDatasetsRow>(), exportSdtmWorkbook.datasets);
    }
}
