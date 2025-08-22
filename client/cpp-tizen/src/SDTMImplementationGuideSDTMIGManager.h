#ifndef _SDTMImplementationGuideSDTMIGManager_H_
#define _SDTMImplementationGuideSDTMIGManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DefaultErrorResponse.h"
#include "ExportSdtmigDatasetsTable.h"
#include "ExportSdtmigVariablesTable.h"
#include "ExportSdtmigWorkbook.h"
#include "RootSdtmigDatasetVariable.h"
#include "SdtmigClass.h"
#include "SdtmigClassDatasets.h"
#include "SdtmigClasses.h"
#include "SdtmigDataset.h"
#include "SdtmigDatasetVariable.h"
#include "SdtmigDatasetVariables.h"
#include "SdtmigDatasets.h"
#include "SdtmigProduct.h"
#include "XmlRootSdtmigDatasetVariable.h"
#include "XmlSdtmigClass.h"
#include "XmlSdtmigClassDatasets.h"
#include "XmlSdtmigClasses.h"
#include "XmlSdtmigDataset.h"
#include "XmlSdtmigDatasetVariable.h"
#include "XmlSdtmigDatasetVariables.h"
#include "XmlSdtmigDatasets.h"
#include "XmlSdtmigProduct.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup SDTMImplementationGuideSDTMIG SDTMImplementationGuideSDTMIG
 * \ingroup Operations
 *  @{
 */
class SDTMImplementationGuideSDTMIGManager {
public:
	SDTMImplementationGuideSDTMIGManager();
	virtual ~SDTMImplementationGuideSDTMIGManager();

/*! \brief . *Synchronous*
 *
 * Get Root SDTMIG Dataset Variable
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param var SDTMIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSdtmigDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSdtmigDatasetVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root SDTMIG Dataset Variable
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param var SDTMIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSdtmigDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSdtmigDatasetVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG Class Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTMIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionClassesClassDatasetsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClassDatasets, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG Class Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTMIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionClassesClassDatasetsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClassDatasets, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTMIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClass, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTMIG Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmigClass, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigClasses, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigClasses, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG Dataset
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsDatasetGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDataset, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG Dataset
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsDatasetGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDataset, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG Dataset Variable List
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsDatasetVariablesGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDatasetVariables, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG Dataset Variable List
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsDatasetVariablesGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmigDatasetVariables, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG Dataset Variable
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param var SDTMIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SdtmigDatasetVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG Dataset Variable
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTMIG Dataset Identifier *Required*
 * \param var SDTMIG Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SdtmigDatasetVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigDatasets, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionDatasetsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigDatasets, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTMIG product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigProduct, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTMIG product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmigVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmigProduct, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* SDTMImplementationGuideSDTMIGManager_H_ */
