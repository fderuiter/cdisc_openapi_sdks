#ifndef _SENDImplementationGuideSENDIGManager_H_
#define _SENDImplementationGuideSENDIGManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DefaultErrorResponse.h"
#include "ExportSendigDatasetsTable.h"
#include "ExportSendigVariablesTable.h"
#include "ExportSendigWorkbook.h"
#include "RootSendigDatasetVariable.h"
#include "SendigClass.h"
#include "SendigClassDatasets.h"
#include "SendigClasses.h"
#include "SendigDataset.h"
#include "SendigDatasetVariable.h"
#include "SendigDatasetVariables.h"
#include "SendigDatasets.h"
#include "SendigProduct.h"
#include "XmlRootSendigDatasetVariable.h"
#include "XmlSendigClass.h"
#include "XmlSendigClassDatasets.h"
#include "XmlSendigClasses.h"
#include "XmlSendigDataset.h"
#include "XmlSendigDatasetVariable.h"
#include "XmlSendigDatasetVariables.h"
#include "XmlSendigDatasets.h"
#include "XmlSendigProduct.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup SENDImplementationGuideSENDIG SENDImplementationGuideSENDIG
 * \ingroup Operations
 *  @{
 */
class SENDImplementationGuideSENDIGManager {
public:
	SENDImplementationGuideSENDIGManager();
	virtual ~SENDImplementationGuideSENDIGManager();

/*! \brief . *Synchronous*
 *
 * Get Root SENDIG Dataset Variable
 * \param dataset SENDIG Dataset Identifier *Required*
 * \param var SENDIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSendigDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSendigDatasetVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root SENDIG Dataset Variable
 * \param dataset SENDIG Dataset Identifier *Required*
 * \param var SENDIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSendigDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSendigDatasetVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG Class Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionClassesClassDatasetsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClassDatasets, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG Class Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionClassesClassDatasetsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClassDatasets, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClass, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SendigClass, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SendigClasses, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SendigClasses, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG Dataset
 * \param version CDISC Library Product Version *Required*
 * \param dataset SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsDatasetGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDataset, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG Dataset
 * \param version CDISC Library Product Version *Required*
 * \param dataset SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsDatasetGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDataset, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG Dataset Variable List
 * \param version CDISC Library Product Version *Required*
 * \param dataset SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsDatasetVariablesGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDatasetVariables, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG Dataset Variable List
 * \param version CDISC Library Product Version *Required*
 * \param dataset SENDIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsDatasetVariablesGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SendigDatasetVariables, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG Dataset Variable
 * \param version CDISC Library Product Version *Required*
 * \param dataset SENDIG Class Identifier *Required*
 * \param var SENDIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SendigDatasetVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG Dataset Variable
 * \param version CDISC Library Product Version *Required*
 * \param dataset SENDIG Class Identifier *Required*
 * \param var SENDIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SendigDatasetVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SendigDatasets, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionDatasetsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SendigDatasets, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SENDIG product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SendigProduct, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SENDIG product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSendigVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SendigProduct, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* SENDImplementationGuideSENDIGManager_H_ */
