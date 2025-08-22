@isTest
private class OASExportCdashigTableTest {
    @isTest
    private static void equalsSameInstance() {
        OASExportCdashigTable exportCdashigTable1 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable2 = exportCdashigTable1;
        OASExportCdashigTable exportCdashigTable3 = new OASExportCdashigTable();
        OASExportCdashigTable exportCdashigTable4 = exportCdashigTable3;

        System.assert(exportCdashigTable1.equals(exportCdashigTable2));
        System.assert(exportCdashigTable2.equals(exportCdashigTable1));
        System.assert(exportCdashigTable1.equals(exportCdashigTable1));
        System.assert(exportCdashigTable3.equals(exportCdashigTable4));
        System.assert(exportCdashigTable4.equals(exportCdashigTable3));
        System.assert(exportCdashigTable3.equals(exportCdashigTable3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASExportCdashigTable exportCdashigTable1 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable2 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable3 = new OASExportCdashigTable();
        OASExportCdashigTable exportCdashigTable4 = new OASExportCdashigTable();

        System.assert(exportCdashigTable1.equals(exportCdashigTable2));
        System.assert(exportCdashigTable2.equals(exportCdashigTable1));
        System.assert(exportCdashigTable3.equals(exportCdashigTable4));
        System.assert(exportCdashigTable4.equals(exportCdashigTable3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASExportCdashigTable exportCdashigTable1 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable2 = new OASExportCdashigTable();

        System.assertEquals(false, exportCdashigTable1.equals('foo'));
        System.assertEquals(false, exportCdashigTable2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASExportCdashigTable exportCdashigTable1 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable2 = new OASExportCdashigTable();
        OASExportCdashigTable exportCdashigTable3;

        System.assertEquals(false, exportCdashigTable1.equals(exportCdashigTable3));
        System.assertEquals(false, exportCdashigTable2.equals(exportCdashigTable3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASExportCdashigTable exportCdashigTable1 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable2 = new OASExportCdashigTable();

        System.assertEquals(exportCdashigTable1.hashCode(), exportCdashigTable1.hashCode());
        System.assertEquals(exportCdashigTable2.hashCode(), exportCdashigTable2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASExportCdashigTable exportCdashigTable1 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable2 = OASExportCdashigTable.getExample();
        OASExportCdashigTable exportCdashigTable3 = new OASExportCdashigTable();
        OASExportCdashigTable exportCdashigTable4 = new OASExportCdashigTable();

        System.assert(exportCdashigTable1.equals(exportCdashigTable2));
        System.assert(exportCdashigTable3.equals(exportCdashigTable4));
        System.assertEquals(exportCdashigTable1.hashCode(), exportCdashigTable2.hashCode());
        System.assertEquals(exportCdashigTable3.hashCode(), exportCdashigTable4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASExportCdashigTable exportCdashigTable = new OASExportCdashigTable();
        Map<String, String> x-property-mappings = exportCdashigTable.getx-property-mappings();
        System.assertEquals('domainVariables', x-property-mappings.get('domain-variables'));
        System.assertEquals('scenarioVariables', x-property-mappings.get('scenario-variables'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASExportCdashigTable exportCdashigTable = new OASExportCdashigTable();
        System.assertEquals(new List<OASExportCdashigDomainVariablesRow>(), exportCdashigTable.domainVariables);
        System.assertEquals(new List<OASExportCdashigScenarioVariablesRow>(), exportCdashigTable.scenarioVariables);
    }
}
