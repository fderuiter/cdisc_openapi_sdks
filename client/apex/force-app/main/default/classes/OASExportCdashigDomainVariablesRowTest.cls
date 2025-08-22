@isTest
private class OASExportCdashigDomainVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow1 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow2 = exportCdashigDomainVariablesRow1;
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow3 = new OASExportCdashigDomainVariablesRow();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow4 = exportCdashigDomainVariablesRow3;

        System.assert(exportCdashigDomainVariablesRow1.equals(exportCdashigDomainVariablesRow2));
        System.assert(exportCdashigDomainVariablesRow2.equals(exportCdashigDomainVariablesRow1));
        System.assert(exportCdashigDomainVariablesRow1.equals(exportCdashigDomainVariablesRow1));
        System.assert(exportCdashigDomainVariablesRow3.equals(exportCdashigDomainVariablesRow4));
        System.assert(exportCdashigDomainVariablesRow4.equals(exportCdashigDomainVariablesRow3));
        System.assert(exportCdashigDomainVariablesRow3.equals(exportCdashigDomainVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow1 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow2 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow3 = new OASExportCdashigDomainVariablesRow();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow4 = new OASExportCdashigDomainVariablesRow();

        System.assert(exportCdashigDomainVariablesRow1.equals(exportCdashigDomainVariablesRow2));
        System.assert(exportCdashigDomainVariablesRow2.equals(exportCdashigDomainVariablesRow1));
        System.assert(exportCdashigDomainVariablesRow3.equals(exportCdashigDomainVariablesRow4));
        System.assert(exportCdashigDomainVariablesRow4.equals(exportCdashigDomainVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow1 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow2 = new OASExportCdashigDomainVariablesRow();

        System.assertEquals(false, exportCdashigDomainVariablesRow1.equals('foo'));
        System.assertEquals(false, exportCdashigDomainVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow1 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow2 = new OASExportCdashigDomainVariablesRow();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow3;

        System.assertEquals(false, exportCdashigDomainVariablesRow1.equals(exportCdashigDomainVariablesRow3));
        System.assertEquals(false, exportCdashigDomainVariablesRow2.equals(exportCdashigDomainVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow1 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow2 = new OASExportCdashigDomainVariablesRow();

        System.assertEquals(exportCdashigDomainVariablesRow1.hashCode(), exportCdashigDomainVariablesRow1.hashCode());
        System.assertEquals(exportCdashigDomainVariablesRow2.hashCode(), exportCdashigDomainVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow1 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow2 = OASExportCdashigDomainVariablesRow.getExample();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow3 = new OASExportCdashigDomainVariablesRow();
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow4 = new OASExportCdashigDomainVariablesRow();

        System.assert(exportCdashigDomainVariablesRow1.equals(exportCdashigDomainVariablesRow2));
        System.assert(exportCdashigDomainVariablesRow3.equals(exportCdashigDomainVariablesRow4));
        System.assertEquals(exportCdashigDomainVariablesRow1.hashCode(), exportCdashigDomainVariablesRow2.hashCode());
        System.assertEquals(exportCdashigDomainVariablesRow3.hashCode(), exportCdashigDomainVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow = new OASExportCdashigDomainVariablesRow();
        Map<String, String> x-property-mappings = exportCdashigDomainVariablesRow.getx-property-mappings();
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
        OASExportCdashigDomainVariablesRow exportCdashigDomainVariablesRow = new OASExportCdashigDomainVariablesRow();
        System.assertEquals(new List<String>(), exportCdashigDomainVariablesRow.sdTMIGTarget);
        System.assertEquals(null, exportCdashigDomainVariablesRow.version);
        System.assertEquals(null, exportCdashigDomainVariablesRow.propertyClass);
        System.assertEquals(null, exportCdashigDomainVariablesRow.domain);
        System.assertEquals(null, exportCdashigDomainVariablesRow.dataCollectionScenario);
        System.assertEquals(null, exportCdashigDomainVariablesRow.variableOrder);
        System.assertEquals(null, exportCdashigDomainVariablesRow.cdASHIGVariable);
        System.assertEquals(null, exportCdashigDomainVariablesRow.cdASHIGVariableLabel);
        System.assertEquals(null, exportCdashigDomainVariablesRow.drAFTCDASHIGDefinition);
        System.assertEquals(null, exportCdashigDomainVariablesRow.questionText);
        System.assertEquals(null, exportCdashigDomainVariablesRow.prompt);
        System.assertEquals(null, exportCdashigDomainVariablesRow.type);
        System.assertEquals(null, exportCdashigDomainVariablesRow.cdASHIGCore);
        System.assertEquals(null, exportCdashigDomainVariablesRow.caseReportFormCompletionInstructions);
        System.assertEquals(null, exportCdashigDomainVariablesRow.mappingInstructions);
        System.assertEquals(null, exportCdashigDomainVariablesRow.controlledTerminologyCodelistName);
        System.assertEquals(null, exportCdashigDomainVariablesRow.implementationNotes);
    }
}
