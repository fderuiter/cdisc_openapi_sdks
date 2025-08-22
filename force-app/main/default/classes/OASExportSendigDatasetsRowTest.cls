@isTest
private class OASExportSendigDatasetsRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSendigDatasetsRow exportSendigDatasetsRow1 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow2 = exportSendigDatasetsRow1;
        OASExportSendigDatasetsRow exportSendigDatasetsRow3 = new OASExportSendigDatasetsRow();
        OASExportSendigDatasetsRow exportSendigDatasetsRow4 = exportSendigDatasetsRow3;

        System.assert(exportSendigDatasetsRow1.equals(exportSendigDatasetsRow2));
        System.assert(exportSendigDatasetsRow2.equals(exportSendigDatasetsRow1));
        System.assert(exportSendigDatasetsRow1.equals(exportSendigDatasetsRow1));
        System.assert(exportSendigDatasetsRow3.equals(exportSendigDatasetsRow4));
        System.assert(exportSendigDatasetsRow4.equals(exportSendigDatasetsRow3));
        System.assert(exportSendigDatasetsRow3.equals(exportSendigDatasetsRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSendigDatasetsRow exportSendigDatasetsRow1 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow2 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow3 = new OASExportSendigDatasetsRow();
        OASExportSendigDatasetsRow exportSendigDatasetsRow4 = new OASExportSendigDatasetsRow();

        System.assert(exportSendigDatasetsRow1.equals(exportSendigDatasetsRow2));
        System.assert(exportSendigDatasetsRow2.equals(exportSendigDatasetsRow1));
        System.assert(exportSendigDatasetsRow3.equals(exportSendigDatasetsRow4));
        System.assert(exportSendigDatasetsRow4.equals(exportSendigDatasetsRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSendigDatasetsRow exportSendigDatasetsRow1 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow2 = new OASExportSendigDatasetsRow();

        System.assertEquals(false, exportSendigDatasetsRow1.equals('foo'));
        System.assertEquals(false, exportSendigDatasetsRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSendigDatasetsRow exportSendigDatasetsRow1 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow2 = new OASExportSendigDatasetsRow();
        OASExportSendigDatasetsRow exportSendigDatasetsRow3;

        System.assertEquals(false, exportSendigDatasetsRow1.equals(exportSendigDatasetsRow3));
        System.assertEquals(false, exportSendigDatasetsRow2.equals(exportSendigDatasetsRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSendigDatasetsRow exportSendigDatasetsRow1 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow2 = new OASExportSendigDatasetsRow();

        System.assertEquals(exportSendigDatasetsRow1.hashCode(), exportSendigDatasetsRow1.hashCode());
        System.assertEquals(exportSendigDatasetsRow2.hashCode(), exportSendigDatasetsRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSendigDatasetsRow exportSendigDatasetsRow1 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow2 = OASExportSendigDatasetsRow.getExample();
        OASExportSendigDatasetsRow exportSendigDatasetsRow3 = new OASExportSendigDatasetsRow();
        OASExportSendigDatasetsRow exportSendigDatasetsRow4 = new OASExportSendigDatasetsRow();

        System.assert(exportSendigDatasetsRow1.equals(exportSendigDatasetsRow2));
        System.assert(exportSendigDatasetsRow3.equals(exportSendigDatasetsRow4));
        System.assertEquals(exportSendigDatasetsRow1.hashCode(), exportSendigDatasetsRow2.hashCode());
        System.assertEquals(exportSendigDatasetsRow3.hashCode(), exportSendigDatasetsRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSendigDatasetsRow exportSendigDatasetsRow = new OASExportSendigDatasetsRow();
        Map<String, String> x-property-mappings = exportSendigDatasetsRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
        System.assertEquals('datasetName', x-property-mappings.get('Dataset Name'));
        System.assertEquals('datasetLabel', x-property-mappings.get('Dataset Label'));
        System.assertEquals('structure', x-property-mappings.get('Structure'));
    }
}
