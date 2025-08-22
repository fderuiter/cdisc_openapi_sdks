@isTest
private class OASDefaultSearchScopesTest {
    @isTest
    private static void allowableValues() {
        Set<OASDefaultSearchScopes> expected = new Set<OASDefaultSearchScopes>{
            OASDefaultSearchScopes.CLASS,
            OASDefaultSearchScopes.CODELIST,
            OASDefaultSearchScopes.CONCEPTID,
            OASDefaultSearchScopes.CORE,
            OASDefaultSearchScopes.DATASTRUCTURE,
            OASDefaultSearchScopes.DATASETSTRUCTURE,
            OASDefaultSearchScopes.DEFINITION,
            OASDefaultSearchScopes.DESCRIPTION,
            OASDefaultSearchScopes.DOMAIN,
            OASDefaultSearchScopes.EFFECTIVEDATE,
            OASDefaultSearchScopes.EXTENSIBLE,
            OASDefaultSearchScopes.HREF,
            OASDefaultSearchScopes.LABEL,
            OASDefaultSearchScopes.MEASURETYPE,
            OASDefaultSearchScopes.NAME,
            OASDefaultSearchScopes.PREFERREDTERM,
            OASDefaultSearchScopes.PRODUCT,
            OASDefaultSearchScopes.PRODUCTGROUP,
            OASDefaultSearchScopes.REGISTRATIONSTATUS,
            OASDefaultSearchScopes.ROLEDESCRIPTION,
            OASDefaultSearchScopes.SDTMTARGET,
            OASDefaultSearchScopes.SIMPLEDATATYPE,
            OASDefaultSearchScopes.SUBMISSIONVALUE,
            OASDefaultSearchScopes.SYNONYMS,
            OASDefaultSearchScopes.TYPE,
            OASDefaultSearchScopes.UIHREF,
            OASDefaultSearchScopes.VALUEDOMAIN,
            OASDefaultSearchScopes.VARIABLESET,
            OASDefaultSearchScopes.VERSION
        };
        Set<OASDefaultSearchScopes> actual  = new Set<OASDefaultSearchScopes>(OASDefaultSearchScopes.values());
        System.assertEquals(expected, actual);
    }
}
