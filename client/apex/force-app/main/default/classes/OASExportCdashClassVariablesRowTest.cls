@isTest
private class OASExportCdashClassVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow1 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow2 = exportCdashClassVariablesRow1;
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow3 = new OASExportCdashClassVariablesRow();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow4 = exportCdashClassVariablesRow3;

        System.assert(exportCdashClassVariablesRow1.equals(exportCdashClassVariablesRow2));
        System.assert(exportCdashClassVariablesRow2.equals(exportCdashClassVariablesRow1));
        System.assert(exportCdashClassVariablesRow1.equals(exportCdashClassVariablesRow1));
        System.assert(exportCdashClassVariablesRow3.equals(exportCdashClassVariablesRow4));
        System.assert(exportCdashClassVariablesRow4.equals(exportCdashClassVariablesRow3));
        System.assert(exportCdashClassVariablesRow3.equals(exportCdashClassVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow1 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow2 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow3 = new OASExportCdashClassVariablesRow();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow4 = new OASExportCdashClassVariablesRow();

        System.assert(exportCdashClassVariablesRow1.equals(exportCdashClassVariablesRow2));
        System.assert(exportCdashClassVariablesRow2.equals(exportCdashClassVariablesRow1));
        System.assert(exportCdashClassVariablesRow3.equals(exportCdashClassVariablesRow4));
        System.assert(exportCdashClassVariablesRow4.equals(exportCdashClassVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow1 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow2 = new OASExportCdashClassVariablesRow();

        System.assertEquals(false, exportCdashClassVariablesRow1.equals('foo'));
        System.assertEquals(false, exportCdashClassVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow1 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow2 = new OASExportCdashClassVariablesRow();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow3;

        System.assertEquals(false, exportCdashClassVariablesRow1.equals(exportCdashClassVariablesRow3));
        System.assertEquals(false, exportCdashClassVariablesRow2.equals(exportCdashClassVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow1 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow2 = new OASExportCdashClassVariablesRow();

        System.assertEquals(exportCdashClassVariablesRow1.hashCode(), exportCdashClassVariablesRow1.hashCode());
        System.assertEquals(exportCdashClassVariablesRow2.hashCode(), exportCdashClassVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow1 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow2 = OASExportCdashClassVariablesRow.getExample();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow3 = new OASExportCdashClassVariablesRow();
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow4 = new OASExportCdashClassVariablesRow();

        System.assert(exportCdashClassVariablesRow1.equals(exportCdashClassVariablesRow2));
        System.assert(exportCdashClassVariablesRow3.equals(exportCdashClassVariablesRow4));
        System.assertEquals(exportCdashClassVariablesRow1.hashCode(), exportCdashClassVariablesRow2.hashCode());
        System.assertEquals(exportCdashClassVariablesRow3.hashCode(), exportCdashClassVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow = new OASExportCdashClassVariablesRow();
        Map<String, String> x-property-mappings = exportCdashClassVariablesRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
        System.assertEquals('domain', x-property-mappings.get('Domain'));
        System.assertEquals('variableOrder', x-property-mappings.get('Variable Order'));
        System.assertEquals('cdASHVariable', x-property-mappings.get('CDASH Variable'));
        System.assertEquals('cdASHVariableLabel', x-property-mappings.get('CDASH Variable Label'));
        System.assertEquals('drAFTCDASHDefinition', x-property-mappings.get('DRAFT CDASH Definition'));
        System.assertEquals('domainSpecific', x-property-mappings.get('Domain Specific'));
        System.assertEquals('questionText', x-property-mappings.get('Question Text'));
        System.assertEquals('prompt', x-property-mappings.get('Prompt'));
        System.assertEquals('type', x-property-mappings.get('Type'));
        System.assertEquals('sdTMTarget', x-property-mappings.get('SDTM Target'));
        System.assertEquals('mappingInstructions', x-property-mappings.get('Mapping Instructions'));
        System.assertEquals('controlledTerminologyCodelistName', x-property-mappings.get('Controlled Terminology Codelist Name'));
        System.assertEquals('implementationNotes', x-property-mappings.get('Implementation Notes'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportCdashClassVariablesRow exportCdashClassVariablesRow = new OASExportCdashClassVariablesRow();
        System.assertEquals(new List<String>(), exportCdashClassVariablesRow.sdTMTarget);
        System.assertEquals(null, exportCdashClassVariablesRow.version);
        System.assertEquals(null, exportCdashClassVariablesRow.propertyClass);
        System.assertEquals(null, exportCdashClassVariablesRow.domain);
        System.assertEquals(null, exportCdashClassVariablesRow.variableOrder);
        System.assertEquals(null, exportCdashClassVariablesRow.cdASHVariable);
        System.assertEquals(null, exportCdashClassVariablesRow.cdASHVariableLabel);
        System.assertEquals(null, exportCdashClassVariablesRow.drAFTCDASHDefinition);
        System.assertEquals(null, exportCdashClassVariablesRow.domainSpecific);
        System.assertEquals(null, exportCdashClassVariablesRow.questionText);
        System.assertEquals(null, exportCdashClassVariablesRow.prompt);
        System.assertEquals(null, exportCdashClassVariablesRow.type);
        System.assertEquals(null, exportCdashClassVariablesRow.mappingInstructions);
        System.assertEquals(null, exportCdashClassVariablesRow.controlledTerminologyCodelistName);
        System.assertEquals(null, exportCdashClassVariablesRow.implementationNotes);
    }
}
