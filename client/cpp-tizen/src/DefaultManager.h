#ifndef _DefaultManager_H_
#define _DefaultManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "About.h"
#include "DefaultErrorResponse.h"
#include "Lastupdated.h"
#include "ProductgroupDataAnalysis.h"
#include "ProductgroupDataCollection.h"
#include "ProductgroupDataTabulation.h"
#include "ProductgroupQrs.h"
#include "ProductgroupTerminology.h"
#include "Products.h"
#include "XmlAbout.h"
#include "XmlLastupdated.h"
#include "XmlProductgroupDataAnalysis.h"
#include "XmlProductgroupDataCollection.h"
#include "XmlProductgroupDataTabulation.h"
#include "XmlProductgroupTerminology.h"
#include "XmlProducts.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Default Default
 * \ingroup Operations
 *  @{
 */
class DefaultManager {
public:
	DefaultManager();
	virtual ~DefaultManager();

/*! \brief . *Synchronous*
 *
 * Get Information About CDISC Library
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAboutGetSync(char * accessToken,
	
	void(* handler)(About, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Information About CDISC Library
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAboutGetAsync(char * accessToken,
	
	void(* handler)(About, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Last Updated
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrLastupdatedGetSync(char * accessToken,
	
	void(* handler)(Lastupdated, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Last Updated
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrLastupdatedGetAsync(char * accessToken,
	
	void(* handler)(Lastupdated, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Product Group Data Analysis
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsDataAnalysisGetSync(char * accessToken,
	
	void(* handler)(ProductgroupDataAnalysis, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Product Group Data Analysis
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsDataAnalysisGetAsync(char * accessToken,
	
	void(* handler)(ProductgroupDataAnalysis, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Product Group Data Collection
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsDataCollectionGetSync(char * accessToken,
	
	void(* handler)(ProductgroupDataCollection, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Product Group Data Collection
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsDataCollectionGetAsync(char * accessToken,
	
	void(* handler)(ProductgroupDataCollection, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Product Group Data Tabulation
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsDataTabulationGetSync(char * accessToken,
	
	void(* handler)(ProductgroupDataTabulation, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Product Group Data Tabulation
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsDataTabulationGetAsync(char * accessToken,
	
	void(* handler)(ProductgroupDataTabulation, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Products
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsGetSync(char * accessToken,
	
	void(* handler)(Products, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Products
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsGetAsync(char * accessToken,
	
	void(* handler)(Products, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Product Group QRS
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsMeasuresGetSync(char * accessToken,
	
	void(* handler)(ProductgroupQrs, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Product Group QRS
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsMeasuresGetAsync(char * accessToken,
	
	void(* handler)(ProductgroupQrs, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get CDISC Library Product Group Terminology
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsTerminologyGetSync(char * accessToken,
	
	void(* handler)(ProductgroupTerminology, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get CDISC Library Product Group Terminology
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrProductsTerminologyGetAsync(char * accessToken,
	
	void(* handler)(ProductgroupTerminology, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* DefaultManager_H_ */
