#ifndef _ClinicalDataAcquisitionStandardsHarmonizationCDASHManager_H_
#define _ClinicalDataAcquisitionStandardsHarmonizationCDASHManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "CdashClass.h"
#include "CdashClassDomains.h"
#include "CdashClassField.h"
#include "CdashDomain.h"
#include "CdashDomainField.h"
#include "CdashDomainFields.h"
#include "CdashProduct.h"
#include "CdashProductClasses.h"
#include "CdashProductDomains.h"
#include "DefaultErrorResponse.h"
#include "ExportCdashTable.h"
#include "RootCdashClassField.h"
#include "RootCdashDomainField.h"
#include "XmlCdashClass.h"
#include "XmlCdashClassDomains.h"
#include "XmlCdashClassField.h"
#include "XmlCdashDomain.h"
#include "XmlCdashDomainField.h"
#include "XmlCdashDomainFields.h"
#include "XmlCdashProduct.h"
#include "XmlCdashProductClasses.h"
#include "XmlCdashProductDomains.h"
#include "XmlRootCdashClassField.h"
#include "XmlRootCdashDomainField.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup ClinicalDataAcquisitionStandardsHarmonizationCDASH ClinicalDataAcquisitionStandardsHarmonizationCDASH
 * \ingroup Operations
 *  @{
 */
class ClinicalDataAcquisitionStandardsHarmonizationCDASHManager {
public:
	ClinicalDataAcquisitionStandardsHarmonizationCDASHManager();
	virtual ~ClinicalDataAcquisitionStandardsHarmonizationCDASHManager();

/*! \brief . *Synchronous*
 *
 * Get CDASH Class Domain List
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASH Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesClassDomainsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClassDomains, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Class Domain List
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASH Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesClassDomainsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClassDomains, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Class Field
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASH Class Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesClassFieldsFieldGetSync(char * accessToken,
	std::string version, std::string r_class, std::string field, 
	void(* handler)(CdashClassField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Class Field
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASH Class Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesClassFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string r_class, std::string field, 
	void(* handler)(CdashClassField, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASH Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClass, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class CDASH Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(CdashClass, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductClasses, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductClasses, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Domain Field
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASH Domain Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashDomainField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Domain Field
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASH Domain Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string version, std::string domain, std::string field, 
	void(* handler)(CdashDomainField, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Domain Field List
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASH Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsDomainFieldsGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomainFields, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Domain Field List
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASH Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsDomainFieldsGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomainFields, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Domain
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASH Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsDomainGetSync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomain, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Domain
 * \param version CDISC Library Product Version *Required*
 * \param domain CDASH Domain Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsDomainGetAsync(char * accessToken,
	std::string version, std::string domain, 
	void(* handler)(CdashDomain, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Domain List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductDomains, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Domain List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionDomainsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProductDomains, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDASH Product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProduct, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDASH Product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCdashVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(CdashProduct, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get Root CDASH Class Field
 * \param r_class CDASH Class Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashClassesClassFieldsFieldGetSync(char * accessToken,
	std::string r_class, std::string field, 
	void(* handler)(RootCdashClassField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root CDASH Class Field
 * \param r_class CDASH Class Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashClassesClassFieldsFieldGetAsync(char * accessToken,
	std::string r_class, std::string field, 
	void(* handler)(RootCdashClassField, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get Root CDASH Domain Field
 * \param domain CDASH Domain Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashDomainsDomainFieldsFieldGetSync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashDomainField, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root CDASH Domain Field
 * \param domain CDASH Domain Identifier *Required*
 * \param field CDASH Field Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCdashDomainsDomainFieldsFieldGetAsync(char * accessToken,
	std::string domain, std::string field, 
	void(* handler)(RootCdashDomainField, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* ClinicalDataAcquisitionStandardsHarmonizationCDASHManager_H_ */
