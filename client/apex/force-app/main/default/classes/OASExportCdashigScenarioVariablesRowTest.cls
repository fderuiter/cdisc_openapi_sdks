@isTest
private class OASExportCdashigScenarioVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow1 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow2 = exportCdashigScenarioVariablesRow1;
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow3 = new OASExportCdashigScenarioVariablesRow();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow4 = exportCdashigScenarioVariablesRow3;

        System.assert(exportCdashigScenarioVariablesRow1.equals(exportCdashigScenarioVariablesRow2));
        System.assert(exportCdashigScenarioVariablesRow2.equals(exportCdashigScenarioVariablesRow1));
        System.assert(exportCdashigScenarioVariablesRow1.equals(exportCdashigScenarioVariablesRow1));
        System.assert(exportCdashigScenarioVariablesRow3.equals(exportCdashigScenarioVariablesRow4));
        System.assert(exportCdashigScenarioVariablesRow4.equals(exportCdashigScenarioVariablesRow3));
        System.assert(exportCdashigScenarioVariablesRow3.equals(exportCdashigScenarioVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow1 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow2 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow3 = new OASExportCdashigScenarioVariablesRow();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow4 = new OASExportCdashigScenarioVariablesRow();

        System.assert(exportCdashigScenarioVariablesRow1.equals(exportCdashigScenarioVariablesRow2));
        System.assert(exportCdashigScenarioVariablesRow2.equals(exportCdashigScenarioVariablesRow1));
        System.assert(exportCdashigScenarioVariablesRow3.equals(exportCdashigScenarioVariablesRow4));
        System.assert(exportCdashigScenarioVariablesRow4.equals(exportCdashigScenarioVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow1 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow2 = new OASExportCdashigScenarioVariablesRow();

        System.assertEquals(false, exportCdashigScenarioVariablesRow1.equals('foo'));
        System.assertEquals(false, exportCdashigScenarioVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow1 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow2 = new OASExportCdashigScenarioVariablesRow();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow3;

        System.assertEquals(false, exportCdashigScenarioVariablesRow1.equals(exportCdashigScenarioVariablesRow3));
        System.assertEquals(false, exportCdashigScenarioVariablesRow2.equals(exportCdashigScenarioVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow1 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow2 = new OASExportCdashigScenarioVariablesRow();

        System.assertEquals(exportCdashigScenarioVariablesRow1.hashCode(), exportCdashigScenarioVariablesRow1.hashCode());
        System.assertEquals(exportCdashigScenarioVariablesRow2.hashCode(), exportCdashigScenarioVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow1 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow2 = OASExportCdashigScenarioVariablesRow.getExample();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow3 = new OASExportCdashigScenarioVariablesRow();
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow4 = new OASExportCdashigScenarioVariablesRow();

        System.assert(exportCdashigScenarioVariablesRow1.equals(exportCdashigScenarioVariablesRow2));
        System.assert(exportCdashigScenarioVariablesRow3.equals(exportCdashigScenarioVariablesRow4));
        System.assertEquals(exportCdashigScenarioVariablesRow1.hashCode(), exportCdashigScenarioVariablesRow2.hashCode());
        System.assertEquals(exportCdashigScenarioVariablesRow3.hashCode(), exportCdashigScenarioVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow = new OASExportCdashigScenarioVariablesRow();
        Map<String, String> x-property-mappings = exportCdashigScenarioVariablesRow.getx-property-mappings();
        System.assertEquals('version', x-property-mappings.get('Version'));
        System.assertEquals('propertyClass', x-property-mappings.get('Class'));
        System.assertEquals('domain', x-property-mappings.get('Domain'));
        System.assertEquals('dataCollectionScenario', x-property-mappings.get('Data Collection Scenario'));
        System.assertEquals('variableOrder', x-property-mappings.get('Variable Order'));
        System.assertEquals('cdASHIGVariable', x-property-mappings.get('CDASHIG Variable'));
        System.assertEquals('cdASHIGVariableLabel', x-property-mappings.get('CDASHIG Variable Label'));
        System.assertEquals('drAFTCDASHIGDefinition', x-property-mappings.get('DRAFT CDASHIG Definition'));
        System.assertEquals('questionText', x-property-mappings.get('Question Text'));
        System.assertEquals('prompt', x-property-mappings.get('Prompt'));
        System.assertEquals('type', x-property-mappings.get('Type'));
        System.assertEquals('cdASHIGCore', x-property-mappings.get('CDASHIG Core'));
        System.assertEquals('caseReportFormCompletionInstructions', x-property-mappings.get('Case Report Form Completion Instructions'));
        System.assertEquals('sdTMIGTarget', x-property-mappings.get('SDTMIG Target'));
        System.assertEquals('mappingInstructions', x-property-mappings.get('Mapping Instructions'));
        System.assertEquals('controlledTerminologyCodelistName', x-property-mappings.get('Controlled Terminology Codelist Name'));
        System.assertEquals('implementationNotes', x-property-mappings.get('Implementation Notes'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportCdashigScenarioVariablesRow exportCdashigScenarioVariablesRow = new OASExportCdashigScenarioVariablesRow();
        System.assertEquals(new List<String>(), exportCdashigScenarioVariablesRow.sdTMIGTarget);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.version);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.propertyClass);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.domain);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.dataCollectionScenario);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.variableOrder);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.cdASHIGVariable);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.cdASHIGVariableLabel);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.drAFTCDASHIGDefinition);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.questionText);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.prompt);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.type);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.cdASHIGCore);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.caseReportFormCompletionInstructions);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.mappingInstructions);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.controlledTerminologyCodelistName);
        System.assertEquals(null, exportCdashigScenarioVariablesRow.implementationNotes);
    }
}
