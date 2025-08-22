@isTest
private class OASExportSendigVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportSendigVariablesRow exportSendigVariablesRow1 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow2 = exportSendigVariablesRow1;
        OASExportSendigVariablesRow exportSendigVariablesRow3 = new OASExportSendigVariablesRow();
        OASExportSendigVariablesRow exportSendigVariablesRow4 = exportSendigVariablesRow3;

        System.assert(exportSendigVariablesRow1.equals(exportSendigVariablesRow2));
        System.assert(exportSendigVariablesRow2.equals(exportSendigVariablesRow1));
        System.assert(exportSendigVariablesRow1.equals(exportSendigVariablesRow1));
        System.assert(exportSendigVariablesRow3.equals(exportSendigVariablesRow4));
        System.assert(exportSendigVariablesRow4.equals(exportSendigVariablesRow3));
        System.assert(exportSendigVariablesRow3.equals(exportSendigVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportSendigVariablesRow exportSendigVariablesRow1 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow2 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow3 = new OASExportSendigVariablesRow();
        OASExportSendigVariablesRow exportSendigVariablesRow4 = new OASExportSendigVariablesRow();

        System.assert(exportSendigVariablesRow1.equals(exportSendigVariablesRow2));
        System.assert(exportSendigVariablesRow2.equals(exportSendigVariablesRow1));
        System.assert(exportSendigVariablesRow3.equals(exportSendigVariablesRow4));
        System.assert(exportSendigVariablesRow4.equals(exportSendigVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportSendigVariablesRow exportSendigVariablesRow1 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow2 = new OASExportSendigVariablesRow();

        System.assertEquals(false, exportSendigVariablesRow1.equals('foo'));
        System.assertEquals(false, exportSendigVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportSendigVariablesRow exportSendigVariablesRow1 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow2 = new OASExportSendigVariablesRow();
        OASExportSendigVariablesRow exportSendigVariablesRow3;

        System.assertEquals(false, exportSendigVariablesRow1.equals(exportSendigVariablesRow3));
        System.assertEquals(false, exportSendigVariablesRow2.equals(exportSendigVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportSendigVariablesRow exportSendigVariablesRow1 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow2 = new OASExportSendigVariablesRow();

        System.assertEquals(exportSendigVariablesRow1.hashCode(), exportSendigVariablesRow1.hashCode());
        System.assertEquals(exportSendigVariablesRow2.hashCode(), exportSendigVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportSendigVariablesRow exportSendigVariablesRow1 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow2 = OASExportSendigVariablesRow.getExample();
        OASExportSendigVariablesRow exportSendigVariablesRow3 = new OASExportSendigVariablesRow();
        OASExportSendigVariablesRow exportSendigVariablesRow4 = new OASExportSendigVariablesRow();

        System.assert(exportSendigVariablesRow1.equals(exportSendigVariablesRow2));
        System.assert(exportSendigVariablesRow3.equals(exportSendigVariablesRow4));
        System.assertEquals(exportSendigVariablesRow1.hashCode(), exportSendigVariablesRow2.hashCode());
        System.assertEquals(exportSendigVariablesRow3.hashCode(), exportSendigVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportSendigVariablesRow exportSendigVariablesRow = new OASExportSendigVariablesRow();
        Map<String, String> x-property-mappings = exportSendigVariablesRow.getx-property-mappings();
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
