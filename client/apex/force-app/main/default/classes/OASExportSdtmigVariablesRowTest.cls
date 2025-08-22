@isTest
private class OASExportSdtmigVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow1 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow2 = exportSdtmigVariablesRow1;
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow3 = new OASExportSdtmigVariablesRow();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow4 = exportSdtmigVariablesRow3;

        System.assert(exportSdtmigVariablesRow1.equals(exportSdtmigVariablesRow2));
        System.assert(exportSdtmigVariablesRow2.equals(exportSdtmigVariablesRow1));
        System.assert(exportSdtmigVariablesRow1.equals(exportSdtmigVariablesRow1));
        System.assert(exportSdtmigVariablesRow3.equals(exportSdtmigVariablesRow4));
        System.assert(exportSdtmigVariablesRow4.equals(exportSdtmigVariablesRow3));
        System.assert(exportSdtmigVariablesRow3.equals(exportSdtmigVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow1 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow2 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow3 = new OASExportSdtmigVariablesRow();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow4 = new OASExportSdtmigVariablesRow();

        System.assert(exportSdtmigVariablesRow1.equals(exportSdtmigVariablesRow2));
        System.assert(exportSdtmigVariablesRow2.equals(exportSdtmigVariablesRow1));
        System.assert(exportSdtmigVariablesRow3.equals(exportSdtmigVariablesRow4));
        System.assert(exportSdtmigVariablesRow4.equals(exportSdtmigVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow1 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow2 = new OASExportSdtmigVariablesRow();

        System.assertEquals(false, exportSdtmigVariablesRow1.equals('foo'));
        System.assertEquals(false, exportSdtmigVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow1 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow2 = new OASExportSdtmigVariablesRow();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow3;

        System.assertEquals(false, exportSdtmigVariablesRow1.equals(exportSdtmigVariablesRow3));
        System.assertEquals(false, exportSdtmigVariablesRow2.equals(exportSdtmigVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow1 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow2 = new OASExportSdtmigVariablesRow();

        System.assertEquals(exportSdtmigVariablesRow1.hashCode(), exportSdtmigVariablesRow1.hashCode());
        System.assertEquals(exportSdtmigVariablesRow2.hashCode(), exportSdtmigVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow1 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow2 = OASExportSdtmigVariablesRow.getExample();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow3 = new OASExportSdtmigVariablesRow();
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow4 = new OASExportSdtmigVariablesRow();

        System.assert(exportSdtmigVariablesRow1.equals(exportSdtmigVariablesRow2));
        System.assert(exportSdtmigVariablesRow3.equals(exportSdtmigVariablesRow4));
        System.assertEquals(exportSdtmigVariablesRow1.hashCode(), exportSdtmigVariablesRow2.hashCode());
        System.assertEquals(exportSdtmigVariablesRow3.hashCode(), exportSdtmigVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSdtmigVariablesRow exportSdtmigVariablesRow = new OASExportSdtmigVariablesRow();
        Map<String, String> x-property-mappings = exportSdtmigVariablesRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('variableOrder', x-property-mappings.get('Variable Order'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
        System.assertEquals('datasetName', x-property-mappings.get('Dataset Name'));
        System.assertEquals('variableName', x-property-mappings.get('Variable Name'));
        System.assertEquals('variableLabel', x-property-mappings.get('Variable Label'));
        System.assertEquals('type', x-property-mappings.get('Type'));
        System.assertEquals('controlledTermsCodelistOrFormat', x-property-mappings.get('Controlled Terms, Codelist or Format'));
        System.assertEquals('role', x-property-mappings.get('Role'));
        System.assertEquals('cdISCNotes', x-property-mappings.get('CDISC Notes'));
        System.assertEquals('core', x-property-mappings.get('Core'));
    }
}
