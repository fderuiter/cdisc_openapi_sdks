@isTest
private class OASExportAdamVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportAdamVariablesRow exportAdamVariablesRow1 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow2 = exportAdamVariablesRow1;
        OASExportAdamVariablesRow exportAdamVariablesRow3 = new OASExportAdamVariablesRow();
        OASExportAdamVariablesRow exportAdamVariablesRow4 = exportAdamVariablesRow3;

        System.assert(exportAdamVariablesRow1.equals(exportAdamVariablesRow2));
        System.assert(exportAdamVariablesRow2.equals(exportAdamVariablesRow1));
        System.assert(exportAdamVariablesRow1.equals(exportAdamVariablesRow1));
        System.assert(exportAdamVariablesRow3.equals(exportAdamVariablesRow4));
        System.assert(exportAdamVariablesRow4.equals(exportAdamVariablesRow3));
        System.assert(exportAdamVariablesRow3.equals(exportAdamVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportAdamVariablesRow exportAdamVariablesRow1 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow2 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow3 = new OASExportAdamVariablesRow();
        OASExportAdamVariablesRow exportAdamVariablesRow4 = new OASExportAdamVariablesRow();

        System.assert(exportAdamVariablesRow1.equals(exportAdamVariablesRow2));
        System.assert(exportAdamVariablesRow2.equals(exportAdamVariablesRow1));
        System.assert(exportAdamVariablesRow3.equals(exportAdamVariablesRow4));
        System.assert(exportAdamVariablesRow4.equals(exportAdamVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportAdamVariablesRow exportAdamVariablesRow1 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow2 = new OASExportAdamVariablesRow();

        System.assertEquals(false, exportAdamVariablesRow1.equals('foo'));
        System.assertEquals(false, exportAdamVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportAdamVariablesRow exportAdamVariablesRow1 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow2 = new OASExportAdamVariablesRow();
        OASExportAdamVariablesRow exportAdamVariablesRow3;

        System.assertEquals(false, exportAdamVariablesRow1.equals(exportAdamVariablesRow3));
        System.assertEquals(false, exportAdamVariablesRow2.equals(exportAdamVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportAdamVariablesRow exportAdamVariablesRow1 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow2 = new OASExportAdamVariablesRow();

        System.assertEquals(exportAdamVariablesRow1.hashCode(), exportAdamVariablesRow1.hashCode());
        System.assertEquals(exportAdamVariablesRow2.hashCode(), exportAdamVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportAdamVariablesRow exportAdamVariablesRow1 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow2 = OASExportAdamVariablesRow.getExample();
        OASExportAdamVariablesRow exportAdamVariablesRow3 = new OASExportAdamVariablesRow();
        OASExportAdamVariablesRow exportAdamVariablesRow4 = new OASExportAdamVariablesRow();

        System.assert(exportAdamVariablesRow1.equals(exportAdamVariablesRow2));
        System.assert(exportAdamVariablesRow3.equals(exportAdamVariablesRow4));
        System.assertEquals(exportAdamVariablesRow1.hashCode(), exportAdamVariablesRow2.hashCode());
        System.assertEquals(exportAdamVariablesRow3.hashCode(), exportAdamVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportAdamVariablesRow exportAdamVariablesRow = new OASExportAdamVariablesRow();
        Map<String, String> x-property-mappings = exportAdamVariablesRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('dataStructureName', x-property-mappings.get('Data Structure Name'));
        System.assertEquals('datasetName', x-property-mappings.get('Dataset Name'));
        System.assertEquals('variableGroup', x-property-mappings.get('Variable Group'));
        System.assertEquals('variableName', x-property-mappings.get('Variable Name'));
        System.assertEquals('variableLabel', x-property-mappings.get('Variable Label'));
        System.assertEquals('type', x-property-mappings.get('Type'));
        System.assertEquals('codelistControlledTerms', x-property-mappings.get('Codelist/Controlled Terms'));
        System.assertEquals('core', x-property-mappings.get('Core'));
        System.assertEquals('cdISCNotes', x-property-mappings.get('CDISC Notes'));
    }
}
