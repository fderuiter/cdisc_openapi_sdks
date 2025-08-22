#ifndef _SearchesManager_H_
#define _SearchesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DefaultErrorResponse.h"
#include "DefaultSearchResponse.h"
#include "DefaultSearchScopes.h"
#include "ScopeValues.h"
#include "_mdr_search_scopes_get_200_response.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Searches Searches
 * \ingroup Operations
 *  @{
 */
class SearchesManager {
public:
	SearchesManager();
	virtual ~SearchesManager();

/*! \brief . *Synchronous*
 *
 * Get Search Results Across CDISC Library
 * \param q Search Term Expression *Required*
 * \param highlight Search Highlight Expression
 * \param start Initial Search Result Index
 * \param pageSize Number of Search Results to Return
 * \param r_class Limit Search by Setting Scope to Class
 * \param codelist Limit Search by Setting Scope to Codelist
 * \param conceptId Limit Search by Setting Scope to Concept ID
 * \param core Limit Search by Setting Scope to Core
 * \param dataStructure Limit Search by Setting Scope to Data Structure
 * \param datasetStructure Limit Search by Setting Scope to Dataset Structure
 * \param definition Limit Search by Setting Scope to Definition
 * \param description Limit Search by Setting Scope to Description
 * \param domain Limit Search by Setting Scope to Domain
 * \param effectiveDate Limit Search by Setting Scope to Effective Date
 * \param extensible Limit Search by Setting Scope to Extensible
 * \param href Limit Search by Setting Scope to Href
 * \param label Limit Search by Setting Scope to Label
 * \param measureType SLimit Search by Setting Scope to Measure Type
 * \param name Limit Search by Setting Scope to Name
 * \param preferredTerm Limit Search by Setting Scope to Preferred Term
 * \param product Limit Search by Setting Scope to Product
 * \param productGroup Limit Search by Setting Scope to Product Group
 * \param registrationStatus Limit Search by Setting Scope to Registration Status
 * \param roleDescription Limit Search by Setting Scope to Role Description
 * \param sdtmTarget Limit Search by Setting Scope to SDTM Target
 * \param simpleDatatype Limit Search by Setting Scope to Simple Datatype
 * \param submissionValue Limit Search by Setting Scope to Submission Value
 * \param synonyms Limit Search by Setting Scope to Synonyms
 * \param type Limit Search by Setting Scope to Type
 * \param uiHref Limit Search by Setting Scope to UI Href
 * \param valueDomain Limit Search by Setting Scope to Value Domain
 * \param variableSet Limit Search by Setting Scope to Variable Set
 * \param version Limit Search by Setting Scope to Version
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSearchGetSync(char * accessToken,
	std::string q, std::string highlight, long long start, long long pageSize, std::string r_class, std::string codelist, std::string conceptId, std::string core, std::string dataStructure, std::string datasetStructure, std::string definition, std::string description, std::string domain, std::string effectiveDate, std::string extensible, std::string href, std::string label, std::string measureType, std::string name, std::string preferredTerm, std::string product, std::string productGroup, std::string registrationStatus, std::string roleDescription, std::string sdtmTarget, std::string simpleDatatype, std::string submissionValue, std::string synonyms, std::string type, std::string uiHref, std::string valueDomain, std::string variableSet, std::string version, 
	void(* handler)(DefaultSearchResponse, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Search Results Across CDISC Library
 * \param q Search Term Expression *Required*
 * \param highlight Search Highlight Expression
 * \param start Initial Search Result Index
 * \param pageSize Number of Search Results to Return
 * \param r_class Limit Search by Setting Scope to Class
 * \param codelist Limit Search by Setting Scope to Codelist
 * \param conceptId Limit Search by Setting Scope to Concept ID
 * \param core Limit Search by Setting Scope to Core
 * \param dataStructure Limit Search by Setting Scope to Data Structure
 * \param datasetStructure Limit Search by Setting Scope to Dataset Structure
 * \param definition Limit Search by Setting Scope to Definition
 * \param description Limit Search by Setting Scope to Description
 * \param domain Limit Search by Setting Scope to Domain
 * \param effectiveDate Limit Search by Setting Scope to Effective Date
 * \param extensible Limit Search by Setting Scope to Extensible
 * \param href Limit Search by Setting Scope to Href
 * \param label Limit Search by Setting Scope to Label
 * \param measureType SLimit Search by Setting Scope to Measure Type
 * \param name Limit Search by Setting Scope to Name
 * \param preferredTerm Limit Search by Setting Scope to Preferred Term
 * \param product Limit Search by Setting Scope to Product
 * \param productGroup Limit Search by Setting Scope to Product Group
 * \param registrationStatus Limit Search by Setting Scope to Registration Status
 * \param roleDescription Limit Search by Setting Scope to Role Description
 * \param sdtmTarget Limit Search by Setting Scope to SDTM Target
 * \param simpleDatatype Limit Search by Setting Scope to Simple Datatype
 * \param submissionValue Limit Search by Setting Scope to Submission Value
 * \param synonyms Limit Search by Setting Scope to Synonyms
 * \param type Limit Search by Setting Scope to Type
 * \param uiHref Limit Search by Setting Scope to UI Href
 * \param valueDomain Limit Search by Setting Scope to Value Domain
 * \param variableSet Limit Search by Setting Scope to Variable Set
 * \param version Limit Search by Setting Scope to Version
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSearchGetAsync(char * accessToken,
	std::string q, std::string highlight, long long start, long long pageSize, std::string r_class, std::string codelist, std::string conceptId, std::string core, std::string dataStructure, std::string datasetStructure, std::string definition, std::string description, std::string domain, std::string effectiveDate, std::string extensible, std::string href, std::string label, std::string measureType, std::string name, std::string preferredTerm, std::string product, std::string productGroup, std::string registrationStatus, std::string roleDescription, std::string sdtmTarget, std::string simpleDatatype, std::string submissionValue, std::string synonyms, std::string type, std::string uiHref, std::string valueDomain, std::string variableSet, std::string version, 
	void(* handler)(DefaultSearchResponse, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get Search Results Across CDISC Library
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSearchScopesGetSync(char * accessToken,
	
	void(* handler)(_mdr_search_scopes_get_200_response, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Search Results Across CDISC Library
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSearchScopesGetAsync(char * accessToken,
	
	void(* handler)(_mdr_search_scopes_get_200_response, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get Search Results Limited to Scope
 * \param scope Search Scope *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSearchScopesScopeGetSync(char * accessToken,
	DefaultSearchScopes scope, 
	void(* handler)(ScopeValues, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Search Results Limited to Scope
 * \param scope Search Scope *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSearchScopesScopeGetAsync(char * accessToken,
	DefaultSearchScopes scope, 
	void(* handler)(ScopeValues, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* SearchesManager_H_ */
