@isTest
private class OASExportSdtmDatasetVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow1 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow2 = exportSdtmDatasetVariablesRow1;
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow3 = new OASExportSdtmDatasetVariablesRow();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow4 = exportSdtmDatasetVariablesRow3;

        System.assert(exportSdtmDatasetVariablesRow1.equals(exportSdtmDatasetVariablesRow2));
        System.assert(exportSdtmDatasetVariablesRow2.equals(exportSdtmDatasetVariablesRow1));
        System.assert(exportSdtmDatasetVariablesRow1.equals(exportSdtmDatasetVariablesRow1));
        System.assert(exportSdtmDatasetVariablesRow3.equals(exportSdtmDatasetVariablesRow4));
        System.assert(exportSdtmDatasetVariablesRow4.equals(exportSdtmDatasetVariablesRow3));
        System.assert(exportSdtmDatasetVariablesRow3.equals(exportSdtmDatasetVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow1 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow2 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow3 = new OASExportSdtmDatasetVariablesRow();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow4 = new OASExportSdtmDatasetVariablesRow();

        System.assert(exportSdtmDatasetVariablesRow1.equals(exportSdtmDatasetVariablesRow2));
        System.assert(exportSdtmDatasetVariablesRow2.equals(exportSdtmDatasetVariablesRow1));
        System.assert(exportSdtmDatasetVariablesRow3.equals(exportSdtmDatasetVariablesRow4));
        System.assert(exportSdtmDatasetVariablesRow4.equals(exportSdtmDatasetVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow1 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow2 = new OASExportSdtmDatasetVariablesRow();

        System.assertEquals(false, exportSdtmDatasetVariablesRow1.equals('foo'));
        System.assertEquals(false, exportSdtmDatasetVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow1 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow2 = new OASExportSdtmDatasetVariablesRow();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow3;

        System.assertEquals(false, exportSdtmDatasetVariablesRow1.equals(exportSdtmDatasetVariablesRow3));
        System.assertEquals(false, exportSdtmDatasetVariablesRow2.equals(exportSdtmDatasetVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow1 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow2 = new OASExportSdtmDatasetVariablesRow();

        System.assertEquals(exportSdtmDatasetVariablesRow1.hashCode(), exportSdtmDatasetVariablesRow1.hashCode());
        System.assertEquals(exportSdtmDatasetVariablesRow2.hashCode(), exportSdtmDatasetVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow1 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow2 = OASExportSdtmDatasetVariablesRow.getExample();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow3 = new OASExportSdtmDatasetVariablesRow();
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow4 = new OASExportSdtmDatasetVariablesRow();

        System.assert(exportSdtmDatasetVariablesRow1.equals(exportSdtmDatasetVariablesRow2));
        System.assert(exportSdtmDatasetVariablesRow3.equals(exportSdtmDatasetVariablesRow4));
        System.assertEquals(exportSdtmDatasetVariablesRow1.hashCode(), exportSdtmDatasetVariablesRow2.hashCode());
        System.assertEquals(exportSdtmDatasetVariablesRow3.hashCode(), exportSdtmDatasetVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSdtmDatasetVariablesRow exportSdtmDatasetVariablesRow = new OASExportSdtmDatasetVariablesRow();
        Map<String, String> x-property-mappings = exportSdtmDatasetVariablesRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('variableOrder', x-property-mappings.get('Variable Order'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
        System.assertEquals('datasetName', x-property-mappings.get('Dataset Name'));
        System.assertEquals('variableName', x-property-mappings.get('Variable Name'));
        System.assertEquals('variableLabel', x-property-mappings.get('Variable Label'));
        System.assertEquals('type', x-property-mappings.get('Type'));
        System.assertEquals('controlledTermsCodelistOrFormat', x-property-mappings.get('Controlled Terms, Codelist or Format'));
        System.assertEquals('role', x-property-mappings.get('Role'));
        System.assertEquals('roleDescription', x-property-mappings.get('Role Description'));
        System.assertEquals('description', x-property-mappings.get('Description'));
    }
}
