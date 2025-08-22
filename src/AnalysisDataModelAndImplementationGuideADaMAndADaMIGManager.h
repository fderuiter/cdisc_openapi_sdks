#ifndef _AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager_H_
#define _AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "AdamDatastructure.h"
#include "AdamDatastructureVariables.h"
#include "AdamDatastructureVarsets.h"
#include "AdamProduct.h"
#include "AdamProductDatastructures.h"
#include "AdamVariable.h"
#include "AdamVarset.h"
#include "DefaultErrorResponse.h"
#include "ExportAdamDatastructuresTable.h"
#include "ExportAdamVariablesTable.h"
#include "ExportAdamWorkbook.h"
#include "XmlAdamDatastructure.h"
#include "XmlAdamDatastructureVariables.h"
#include "XmlAdamDatastructureVarsets.h"
#include "XmlAdamProduct.h"
#include "XmlAdamProductDatastructures.h"
#include "XmlAdamVariable.h"
#include "XmlAdamVarset.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup AnalysisDataModelAndImplementationGuideADaMAndADaMIG AnalysisDataModelAndImplementationGuideADaMAndADaMIG
 * \ingroup Operations
 *  @{
 */
class AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager {
public:
	AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager();
	virtual ~AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager();

/*! \brief . *Synchronous*
 *
 * Get ADaM Data Structure List
 * \param product CDISC Library Product *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresGetSync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProductDatastructures, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get ADaM Data Structure List
 * \param product CDISC Library Product *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresGetAsync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProductDatastructures, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get ADaM Data Structure
 * \param product CDISC Library Product *Required*
 * \param structure Data structure Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureGetSync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructure, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get ADaM Data Structure
 * \param product CDISC Library Product *Required*
 * \param structure Data structure Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureGetAsync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructure, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get ADaM Variable List
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVariablesGetSync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVariables, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get ADaM Variable List
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVariablesGetAsync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVariables, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get ADaM Variable
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param var ADaM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVariablesVarGetSync(char * accessToken,
	std::string product, std::string structure, std::string var, 
	void(* handler)(AdamVariable, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get ADaM Variable
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param var ADaM Variable Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVariablesVarGetAsync(char * accessToken,
	std::string product, std::string structure, std::string var, 
	void(* handler)(AdamVariable, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get ADaM Variable Set List
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVarsetsGetSync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVarsets, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get ADaM Variable Set List
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVarsetsGetAsync(char * accessToken,
	std::string product, std::string structure, 
	void(* handler)(AdamDatastructureVarsets, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get ADaM Variable Set
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param varset ADaM Variable Set Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVarsetsVarsetGetSync(char * accessToken,
	std::string product, std::string structure, std::string varset, 
	void(* handler)(AdamVarset, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get ADaM Variable Set
 * \param product CDISC Library Product *Required*
 * \param structure ADaM Data Structure Identifier *Required*
 * \param varset ADaM Variable Set Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductDatastructuresStructureVarsetsVarsetGetAsync(char * accessToken,
	std::string product, std::string structure, std::string varset, 
	void(* handler)(AdamVarset, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get ADaM Product
 * \param product CDISC Library Product *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductGetSync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProduct, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get ADaM Product
 * \param product CDISC Library Product *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrAdamProductGetAsync(char * accessToken,
	std::string product, 
	void(* handler)(AdamProduct, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* AnalysisDataModelAndImplementationGuideADaMAndADaMIGManager_H_ */
