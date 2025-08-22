@isTest
private class OASExportCdashDomainVariablesRowTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow1 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow2 = exportCdashDomainVariablesRow1;
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow3 = new OASExportCdashDomainVariablesRow();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow4 = exportCdashDomainVariablesRow3;

        System.assert(exportCdashDomainVariablesRow1.equals(exportCdashDomainVariablesRow2));
        System.assert(exportCdashDomainVariablesRow2.equals(exportCdashDomainVariablesRow1));
        System.assert(exportCdashDomainVariablesRow1.equals(exportCdashDomainVariablesRow1));
        System.assert(exportCdashDomainVariablesRow3.equals(exportCdashDomainVariablesRow4));
        System.assert(exportCdashDomainVariablesRow4.equals(exportCdashDomainVariablesRow3));
        System.assert(exportCdashDomainVariablesRow3.equals(exportCdashDomainVariablesRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow1 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow2 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow3 = new OASExportCdashDomainVariablesRow();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow4 = new OASExportCdashDomainVariablesRow();

        System.assert(exportCdashDomainVariablesRow1.equals(exportCdashDomainVariablesRow2));
        System.assert(exportCdashDomainVariablesRow2.equals(exportCdashDomainVariablesRow1));
        System.assert(exportCdashDomainVariablesRow3.equals(exportCdashDomainVariablesRow4));
        System.assert(exportCdashDomainVariablesRow4.equals(exportCdashDomainVariablesRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow1 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow2 = new OASExportCdashDomainVariablesRow();

        System.assertEquals(false, exportCdashDomainVariablesRow1.equals('foo'));
        System.assertEquals(false, exportCdashDomainVariablesRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow1 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow2 = new OASExportCdashDomainVariablesRow();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow3;

        System.assertEquals(false, exportCdashDomainVariablesRow1.equals(exportCdashDomainVariablesRow3));
        System.assertEquals(false, exportCdashDomainVariablesRow2.equals(exportCdashDomainVariablesRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow1 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow2 = new OASExportCdashDomainVariablesRow();

        System.assertEquals(exportCdashDomainVariablesRow1.hashCode(), exportCdashDomainVariablesRow1.hashCode());
        System.assertEquals(exportCdashDomainVariablesRow2.hashCode(), exportCdashDomainVariablesRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow1 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow2 = OASExportCdashDomainVariablesRow.getExample();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow3 = new OASExportCdashDomainVariablesRow();
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow4 = new OASExportCdashDomainVariablesRow();

        System.assert(exportCdashDomainVariablesRow1.equals(exportCdashDomainVariablesRow2));
        System.assert(exportCdashDomainVariablesRow3.equals(exportCdashDomainVariablesRow4));
        System.assertEquals(exportCdashDomainVariablesRow1.hashCode(), exportCdashDomainVariablesRow2.hashCode());
        System.assertEquals(exportCdashDomainVariablesRow3.hashCode(), exportCdashDomainVariablesRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow = new OASExportCdashDomainVariablesRow();
        Map<String, String> x-property-mappings = exportCdashDomainVariablesRow.getx-property-mappings();
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
        OASExportCdashDomainVariablesRow exportCdashDomainVariablesRow = new OASExportCdashDomainVariablesRow();
        System.assertEquals(new List<String>(), exportCdashDomainVariablesRow.sdTMTarget);
        System.assertEquals(null, exportCdashDomainVariablesRow.version);
        System.assertEquals(null, exportCdashDomainVariablesRow.propertyClass);
        System.assertEquals(null, exportCdashDomainVariablesRow.domain);
        System.assertEquals(null, exportCdashDomainVariablesRow.variableOrder);
        System.assertEquals(null, exportCdashDomainVariablesRow.cdASHVariable);
        System.assertEquals(null, exportCdashDomainVariablesRow.cdASHVariableLabel);
        System.assertEquals(null, exportCdashDomainVariablesRow.drAFTCDASHDefinition);
        System.assertEquals(null, exportCdashDomainVariablesRow.domainSpecific);
        System.assertEquals(null, exportCdashDomainVariablesRow.questionText);
        System.assertEquals(null, exportCdashDomainVariablesRow.prompt);
        System.assertEquals(null, exportCdashDomainVariablesRow.type);
        System.assertEquals(null, exportCdashDomainVariablesRow.mappingInstructions);
        System.assertEquals(null, exportCdashDomainVariablesRow.controlledTerminologyCodelistName);
        System.assertEquals(null, exportCdashDomainVariablesRow.implementationNotes);
    }
}
