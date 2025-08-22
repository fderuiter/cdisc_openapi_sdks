@isTest
private class OASExportSdtmDatasetsRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow1 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow2 = exportSdtmDatasetsRow1;
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow3 = new OASExportSdtmDatasetsRow();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow4 = exportSdtmDatasetsRow3;

        System.assert(exportSdtmDatasetsRow1.equals(exportSdtmDatasetsRow2));
        System.assert(exportSdtmDatasetsRow2.equals(exportSdtmDatasetsRow1));
        System.assert(exportSdtmDatasetsRow1.equals(exportSdtmDatasetsRow1));
        System.assert(exportSdtmDatasetsRow3.equals(exportSdtmDatasetsRow4));
        System.assert(exportSdtmDatasetsRow4.equals(exportSdtmDatasetsRow3));
        System.assert(exportSdtmDatasetsRow3.equals(exportSdtmDatasetsRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow1 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow2 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow3 = new OASExportSdtmDatasetsRow();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow4 = new OASExportSdtmDatasetsRow();

        System.assert(exportSdtmDatasetsRow1.equals(exportSdtmDatasetsRow2));
        System.assert(exportSdtmDatasetsRow2.equals(exportSdtmDatasetsRow1));
        System.assert(exportSdtmDatasetsRow3.equals(exportSdtmDatasetsRow4));
        System.assert(exportSdtmDatasetsRow4.equals(exportSdtmDatasetsRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow1 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow2 = new OASExportSdtmDatasetsRow();

        System.assertEquals(false, exportSdtmDatasetsRow1.equals('foo'));
        System.assertEquals(false, exportSdtmDatasetsRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow1 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow2 = new OASExportSdtmDatasetsRow();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow3;

        System.assertEquals(false, exportSdtmDatasetsRow1.equals(exportSdtmDatasetsRow3));
        System.assertEquals(false, exportSdtmDatasetsRow2.equals(exportSdtmDatasetsRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow1 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow2 = new OASExportSdtmDatasetsRow();

        System.assertEquals(exportSdtmDatasetsRow1.hashCode(), exportSdtmDatasetsRow1.hashCode());
        System.assertEquals(exportSdtmDatasetsRow2.hashCode(), exportSdtmDatasetsRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow1 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow2 = OASExportSdtmDatasetsRow.getExample();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow3 = new OASExportSdtmDatasetsRow();
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow4 = new OASExportSdtmDatasetsRow();

        System.assert(exportSdtmDatasetsRow1.equals(exportSdtmDatasetsRow2));
        System.assert(exportSdtmDatasetsRow3.equals(exportSdtmDatasetsRow4));
        System.assertEquals(exportSdtmDatasetsRow1.hashCode(), exportSdtmDatasetsRow2.hashCode());
        System.assertEquals(exportSdtmDatasetsRow3.hashCode(), exportSdtmDatasetsRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSdtmDatasetsRow exportSdtmDatasetsRow = new OASExportSdtmDatasetsRow();
        Map<String, String> x-property-mappings = exportSdtmDatasetsRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
        System.assertEquals('datasetName', x-property-mappings.get('Dataset Name'));
        System.assertEquals('datasetLabel', x-property-mappings.get('Dataset Label'));
        System.assertEquals('structure', x-property-mappings.get('Structure'));
    }
}
