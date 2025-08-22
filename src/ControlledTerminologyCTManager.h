#ifndef _ControlledTerminologyCTManager_H_
#define _ControlledTerminologyCTManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "CtCodelist.h"
#include "CtCodelistTerms.h"
#include "CtPackage.h"
#include "CtPackageCodelists.h"
#include "CtPackages.h"
#include "CtTerm.h"
#include "DefaultErrorResponse.h"
#include "ExportCtTable.h"
#include "RootCtCodelist.h"
#include "RootCtTerm.h"
#include "XmlCtCodelist.h"
#include "XmlCtCodelistTerms.h"
#include "XmlCtPackage.h"
#include "XmlCtPackageCodelists.h"
#include "XmlCtPackages.h"
#include "XmlCtTerm.h"
#include "XmlRootCtCodelist.h"
#include "XmlRootCtTerm.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup ControlledTerminologyCT ControlledTerminologyCT
 * \ingroup Operations
 *  @{
 */
class ControlledTerminologyCTManager {
public:
	ControlledTerminologyCTManager();
	virtual ~ControlledTerminologyCTManager();

/*! \brief . *Synchronous*
 *
 * Get CDISC Library CT Package List
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesGetSync(char * accessToken,
	
	void(* handler)(CtPackages, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library CT Package List
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesGetAsync(char * accessToken,
	
	void(* handler)(CtPackages, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library CT Package Codelist
 * \param package CT Package Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsCodelistGetSync(char * accessToken,
	std::string package, std::string codelist, 
	void(* handler)(CtCodelist, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library CT Package Codelist
 * \param package CT Package Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsCodelistGetAsync(char * accessToken,
	std::string package, std::string codelist, 
	void(* handler)(CtCodelist, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library CT Package Codelist Term List
 * \param package CT Package Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsCodelistTermsGetSync(char * accessToken,
	std::string package, std::string codelist, 
	void(* handler)(CtCodelistTerms, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library CT Package Codelist Term List
 * \param package CT Package Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsCodelistTermsGetAsync(char * accessToken,
	std::string package, std::string codelist, 
	void(* handler)(CtCodelistTerms, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library CT Package Codelist Term
 * \param package CT Package Product Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param term CT Codelist Term Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsCodelistTermsTermGetSync(char * accessToken,
	std::string package, std::string codelist, std::string term, 
	void(* handler)(CtTerm, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library CT Package Codelist Term
 * \param package CT Package Product Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param term CT Codelist Term Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsCodelistTermsTermGetAsync(char * accessToken,
	std::string package, std::string codelist, std::string term, 
	void(* handler)(CtTerm, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library CT Package Codelist List
 * \param package CT Package Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsGetSync(char * accessToken,
	std::string package, 
	void(* handler)(CtPackageCodelists, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library CT Package Codelist List
 * \param package CT Package Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesPackageCodelistsGetAsync(char * accessToken,
	std::string package, 
	void(* handler)(CtPackageCodelists, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library CT Package
 * \param product CT Package Product Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesProductGetSync(char * accessToken,
	std::string product, 
	void(* handler)(CtPackage, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library CT Package
 * \param product CT Package Product Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrCtPackagesProductGetAsync(char * accessToken,
	std::string product, 
	void(* handler)(CtPackage, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Root CT Codelist
 * \param productGroup CT Product Group Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCtProductGroupCodelistsCodelistGetSync(char * accessToken,
	std::string productGroup, std::string codelist, 
	void(* handler)(RootCtCodelist, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Root CT Codelist
 * \param productGroup CT Product Group Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCtProductGroupCodelistsCodelistGetAsync(char * accessToken,
	std::string productGroup, std::string codelist, 
	void(* handler)(RootCtCodelist, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Root CT Term
 * \param productGroup CT Product Group Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param term CT Codelist Term Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCtProductGroupCodelistsCodelistTermsTermGetSync(char * accessToken,
	std::string productGroup, std::string codelist, std::string term, 
	void(* handler)(RootCtTerm, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Root CT Term
 * \param productGroup CT Product Group Identifier *Required*
 * \param codelist CT Codelist Identifier *Required*
 * \param term CT Codelist Term Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootCtProductGroupCodelistsCodelistTermsTermGetAsync(char * accessToken,
	std::string productGroup, std::string codelist, std::string term, 
	void(* handler)(RootCtTerm, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* ControlledTerminologyCTManager_H_ */
