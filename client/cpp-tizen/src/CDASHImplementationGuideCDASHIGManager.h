#ifndef _CDASHImplementationGuideCDASHIGManager_H_
#define _CDASHImplementationGuideCDASHIGManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "CdashigClass.h"
#include "CdashigClassDomains.h"
#include "CdashigClassScenarios.h"
#include "CdashigDomain.h"
#include "CdashigDomainField.h"
#include "CdashigDomainFields.h"
#include "CdashigProduct.h"
#include "CdashigProductClasses.h"
#include "CdashigProductDomains.h"
#include "CdashigProductScenarios.h"
#include "CdashigScenario.h"
#include "CdashigScenarioField.h"
#include "CdashigScenarioFields.h"
#include "DefaultErrorResponse.h"
#include "ExportCdashigTable.h"
#include "RootCdashigDomainField.h"
#include "RootCdashigScenarioField.h"
#include "XmlCdashigClass.h"
#include "XmlCdashigClassDomains.h"
#include "XmlCdashigClassScenarios.h"
#include "XmlCdashigDomain.h"
#include "XmlCdashigDomainField.h"
#include "XmlCdashigDomainFields.h"
#include "XmlCdashigProduct.h"
#include "XmlCdashigProductClasses.h"
#include "XmlCdashigProductDomains.h"
#include "XmlCdashigProductScenarios.h"
#include "XmlCdashigScenario.h"
#include "XmlCdashigScenarioField.h"
#include "XmlCdashigScenarioFields.h"
#include "XmlRootCdashigDomainField.h"
#include "XmlRootCdashigScenarioField.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup CDASHImplementationGuideCDASHIG CDASHImplementationGuideCDASHIG
 * \ingroup Operations
 *  @{
 */
class CDASHImplementationGuideCDASHIGManager {
public:
	CDASHImplementationGuideCDASHIGManager();
	virtual ~CDASHImplementationGuideCDASHIGManager();

/*! \brief . *Synchronous*
 *
 * Get CDASHIG Class Domain List
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASHIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesClassDomainsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassDomains, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Class Domain List
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASHIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesClassDomainsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassDomains, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASHIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClass, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASHIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClass, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Class Scenario List
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASHIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesClassScenariosGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassScenarios, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Class Scenario List
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASHIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesClassScenariosGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashigClassScenarios, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductClasses, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductClasses, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Domain Field
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashigDomainField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Domain Field
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashigDomainField, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Domain Field List
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsDomainFieldsGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomainFields, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Domain Field List
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsDomainFieldsGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomainFields, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Domain
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsDomainGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomain, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Domain
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsDomainGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashigDomain, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Domain List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductDomains, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Domain List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionDomainsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductDomains, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProduct, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProduct, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Scenario Field
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetSync(char * accessToken,
	std::string version, std::string domain, std::string scenario, std::string field, 
	void(* handler)(CdashigScenarioField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Scenario Field
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string domain, std::string scenario, std::string field, 
	void(* handler)(CdashigScenarioField, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Scenario Field List
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosDomainScenarioFieldsGetSync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenarioFields, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Scenario Field List
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosDomainScenarioFieldsGetAsync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenarioFields, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Scenario
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosDomainScenarioGetSync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenario, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Scenario
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosDomainScenarioGetAsync(char * accessToken,
	std::string version, std::string domain, std::string scenario, 
	void(* handler)(CdashigScenario, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASHIG Scenario List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductScenarios, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASHIG Scenario List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashigVersionScenariosGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashigProductScenarios, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get Root CDASHIG Domain Field
 * \param domain CDASHIG Domain Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashigDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashigDomainField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root CDASHIG Domain Field
 * \param domain CDASHIG Domain Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashigDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashigDomainField, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get Root CDASHIG Scenario Field
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashigScenariosDomainScenarioFieldsFieldGetSync(char * accessToken,
	std::string domain, std::string scenario, std::string field, 
	void(* handler)(RootCdashigScenarioField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root CDASHIG Scenario Field
 * \param domain CDASHIG Domain Identifier *Required*
 * \param scenario CDASHIG Scenario Identifier *Required*
 * \param field CDASHIG Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashigScenariosDomainScenarioFieldsFieldGetAsync(char * accessToken,
	std::string domain, std::string scenario, std::string field, 
	void(* handler)(RootCdashigScenarioField, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* CDASHImplementationGuideCDASHIGManager_H_ */
