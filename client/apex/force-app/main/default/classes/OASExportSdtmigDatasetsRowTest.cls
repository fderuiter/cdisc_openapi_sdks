@isTest
private class OASExportSdtmigDatasetsRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow1 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow2 = exportSdtmigDatasetsRow1;
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow3 = new OASExportSdtmigDatasetsRow();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow4 = exportSdtmigDatasetsRow3;

        System.assert(exportSdtmigDatasetsRow1.equals(exportSdtmigDatasetsRow2));
        System.assert(exportSdtmigDatasetsRow2.equals(exportSdtmigDatasetsRow1));
        System.assert(exportSdtmigDatasetsRow1.equals(exportSdtmigDatasetsRow1));
        System.assert(exportSdtmigDatasetsRow3.equals(exportSdtmigDatasetsRow4));
        System.assert(exportSdtmigDatasetsRow4.equals(exportSdtmigDatasetsRow3));
        System.assert(exportSdtmigDatasetsRow3.equals(exportSdtmigDatasetsRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow1 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow2 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow3 = new OASExportSdtmigDatasetsRow();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow4 = new OASExportSdtmigDatasetsRow();

        System.assert(exportSdtmigDatasetsRow1.equals(exportSdtmigDatasetsRow2));
        System.assert(exportSdtmigDatasetsRow2.equals(exportSdtmigDatasetsRow1));
        System.assert(exportSdtmigDatasetsRow3.equals(exportSdtmigDatasetsRow4));
        System.assert(exportSdtmigDatasetsRow4.equals(exportSdtmigDatasetsRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow1 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow2 = new OASExportSdtmigDatasetsRow();

        System.assertEquals(false, exportSdtmigDatasetsRow1.equals('foo'));
        System.assertEquals(false, exportSdtmigDatasetsRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow1 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow2 = new OASExportSdtmigDatasetsRow();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow3;

        System.assertEquals(false, exportSdtmigDatasetsRow1.equals(exportSdtmigDatasetsRow3));
        System.assertEquals(false, exportSdtmigDatasetsRow2.equals(exportSdtmigDatasetsRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow1 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow2 = new OASExportSdtmigDatasetsRow();

        System.assertEquals(exportSdtmigDatasetsRow1.hashCode(), exportSdtmigDatasetsRow1.hashCode());
        System.assertEquals(exportSdtmigDatasetsRow2.hashCode(), exportSdtmigDatasetsRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow1 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow2 = OASExportSdtmigDatasetsRow.getExample();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow3 = new OASExportSdtmigDatasetsRow();
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow4 = new OASExportSdtmigDatasetsRow();

        System.assert(exportSdtmigDatasetsRow1.equals(exportSdtmigDatasetsRow2));
        System.assert(exportSdtmigDatasetsRow3.equals(exportSdtmigDatasetsRow4));
        System.assertEquals(exportSdtmigDatasetsRow1.hashCode(), exportSdtmigDatasetsRow2.hashCode());
        System.assertEquals(exportSdtmigDatasetsRow3.hashCode(), exportSdtmigDatasetsRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSdtmigDatasetsRow exportSdtmigDatasetsRow = new OASExportSdtmigDatasetsRow();
        Map<String, String> x-property-mappings = exportSdtmigDatasetsRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
        System.assertEquals('datasetName', x-property-mappings.get('Dataset Name'));
        System.assertEquals('datasetLabel', x-property-mappings.get('Dataset Label'));
        System.assertEquals('structure', x-property-mappings.get('Structure'));
    }
}
