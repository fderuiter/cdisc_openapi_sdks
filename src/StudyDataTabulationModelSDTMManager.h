#ifndef _StudyDataTabulationModelSDTMManager_H_
#define _StudyDataTabulationModelSDTMManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DefaultErrorResponse.h"
#include "ExportSdtmDatasetsTable.h"
#include "ExportSdtmVariablesTable.h"
#include "ExportSdtmWorkbook.h"
#include "RootSdtmClassVariable.h"
#include "RootSdtmDatasetVariable.h"
#include "SdtmClass.h"
#include "SdtmClassDatasets.h"
#include "SdtmClassVariable.h"
#include "SdtmClassVariables.h"
#include "SdtmClasses.h"
#include "SdtmDataset.h"
#include "SdtmDatasetVariable.h"
#include "SdtmDatasetVariables.h"
#include "SdtmDatasets.h"
#include "SdtmProduct.h"
#include "XmlRootSdtmClassVariable.h"
#include "XmlRootSdtmDatasetVariable.h"
#include "XmlSdtmClass.h"
#include "XmlSdtmClassDatasets.h"
#include "XmlSdtmClassVariable.h"
#include "XmlSdtmClassVariables.h"
#include "XmlSdtmClasses.h"
#include "XmlSdtmDataset.h"
#include "XmlSdtmDatasetVariable.h"
#include "XmlSdtmDatasetVariables.h"
#include "XmlSdtmDatasets.h"
#include "XmlSdtmProduct.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup StudyDataTabulationModelSDTM StudyDataTabulationModelSDTM
 * \ingroup Operations
 *  @{
 */
class StudyDataTabulationModelSDTMManager {
public:
	StudyDataTabulationModelSDTMManager();
	virtual ~StudyDataTabulationModelSDTMManager();

/*! \brief . *Synchronous*
 *
 * Get Root of SDTM Class Variable
 * \param r_class SDTM Class Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSdtmClassesClassVariablesVarGetSync(char * accessToken,
	std::string r_class, std::string var, 
	void(* handler)(RootSdtmClassVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root of SDTM Class Variable
 * \param r_class SDTM Class Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSdtmClassesClassVariablesVarGetAsync(char * accessToken,
	std::string r_class, std::string var, 
	void(* handler)(RootSdtmClassVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get Root SDTM Dataset Variable
 * \param dataset SDTM Dataset Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSdtmDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSdtmDatasetVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get Root SDTM Dataset Variable
 * \param dataset SDTM Dataset Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrRootSdtmDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string dataset, std::string var, 
	void(* handler)(RootSdtmDatasetVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Class Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassDatasetsGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmClassDatasets, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Class Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassDatasetsGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmClassDatasets, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmClass, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Class
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmClass, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Class Variable List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassVariablesGetSync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmClassVariables, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Class Variable List
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassVariablesGetAsync(char * accessToken,
	std::string version, std::string r_class, 
	void(* handler)(SdtmClassVariables, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Class Variable
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassVariablesVarGetSync(char * accessToken,
	std::string version, std::string r_class, std::string var, 
	void(* handler)(SdtmClassVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Class Variable
 * \param version CDISC Library Product Version *Required*
 * \param r_class SDTM Class Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesClassVariablesVarGetAsync(char * accessToken,
	std::string version, std::string r_class, std::string var, 
	void(* handler)(SdtmClassVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmClasses, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Class List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionClassesGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmClasses, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Dataset
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTM Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsDatasetGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmDataset, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Dataset
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTM Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsDatasetGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmDataset, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Dataset Variable List
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTM Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsDatasetVariablesGetSync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmDatasetVariables, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Dataset Variable List
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTM Dataset Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsDatasetVariablesGetAsync(char * accessToken,
	std::string version, std::string dataset, 
	void(* handler)(SdtmDatasetVariables, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Dataset Variable
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTM Dataset Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsDatasetVariablesVarGetSync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SdtmDatasetVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Dataset Variable
 * \param version CDISC Library Product Version *Required*
 * \param dataset SDTM Dataset Identifier *Required*
 * \param var SDTM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsDatasetVariablesVarGetAsync(char * accessToken,
	std::string version, std::string dataset, std::string var, 
	void(* handler)(SdtmDatasetVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmDatasets, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM Dataset List
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionDatasetsGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmDatasets, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get SDTM product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionGetSync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmProduct, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get SDTM product
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrSdtmVersionGetAsync(char * accessToken,
	std::string version, 
	void(* handler)(SdtmProduct, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* StudyDataTabulationModelSDTMManager_H_ */
