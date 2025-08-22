@isTest
private class OASExportSdtmClassVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow1 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow2 = exportSdtmClassVariablesRow1;
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow3 = new OASExportSdtmClassVariablesRow();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow4 = exportSdtmClassVariablesRow3;

        System.assert(exportSdtmClassVariablesRow1.equals(exportSdtmClassVariablesRow2));
        System.assert(exportSdtmClassVariablesRow2.equals(exportSdtmClassVariablesRow1));
        System.assert(exportSdtmClassVariablesRow1.equals(exportSdtmClassVariablesRow1));
        System.assert(exportSdtmClassVariablesRow3.equals(exportSdtmClassVariablesRow4));
        System.assert(exportSdtmClassVariablesRow4.equals(exportSdtmClassVariablesRow3));
        System.assert(exportSdtmClassVariablesRow3.equals(exportSdtmClassVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow1 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow2 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow3 = new OASExportSdtmClassVariablesRow();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow4 = new OASExportSdtmClassVariablesRow();

        System.assert(exportSdtmClassVariablesRow1.equals(exportSdtmClassVariablesRow2));
        System.assert(exportSdtmClassVariablesRow2.equals(exportSdtmClassVariablesRow1));
        System.assert(exportSdtmClassVariablesRow3.equals(exportSdtmClassVariablesRow4));
        System.assert(exportSdtmClassVariablesRow4.equals(exportSdtmClassVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow1 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow2 = new OASExportSdtmClassVariablesRow();

        System.assertEquals(false, exportSdtmClassVariablesRow1.equals('foo'));
        System.assertEquals(false, exportSdtmClassVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow1 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow2 = new OASExportSdtmClassVariablesRow();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow3;

        System.assertEquals(false, exportSdtmClassVariablesRow1.equals(exportSdtmClassVariablesRow3));
        System.assertEquals(false, exportSdtmClassVariablesRow2.equals(exportSdtmClassVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow1 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow2 = new OASExportSdtmClassVariablesRow();

        System.assertEquals(exportSdtmClassVariablesRow1.hashCode(), exportSdtmClassVariablesRow1.hashCode());
        System.assertEquals(exportSdtmClassVariablesRow2.hashCode(), exportSdtmClassVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow1 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow2 = OASExportSdtmClassVariablesRow.getExample();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow3 = new OASExportSdtmClassVariablesRow();
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow4 = new OASExportSdtmClassVariablesRow();

        System.assert(exportSdtmClassVariablesRow1.equals(exportSdtmClassVariablesRow2));
        System.assert(exportSdtmClassVariablesRow3.equals(exportSdtmClassVariablesRow4));
        System.assertEquals(exportSdtmClassVariablesRow1.hashCode(), exportSdtmClassVariablesRow2.hashCode());
        System.assertEquals(exportSdtmClassVariablesRow3.hashCode(), exportSdtmClassVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSdtmClassVariablesRow exportSdtmClassVariablesRow = new OASExportSdtmClassVariablesRow();
        Map<String, String> x-property-mappings = exportSdtmClassVariablesRow.getx-property-mappings();
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
