#ifndef _MeasuresManager_H_
#define _MeasuresManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "DefaultErrorResponse.h"
#include "ExportQrsItemsTable.h"
#include "ExportQrsWorkbook.h"
#include "QrsItem.h"
#include "QrsItems.h"
#include "QrsProduct.h"
#include "QrsResponsegroup.h"
#include "QrsResponsegroups.h"
#include "XmlQrsItem.h"
#include "XmlQrsItems.h"
#include "XmlQrsProduct.h"
#include "XmlQrsResponsegroup.h"
#include "XmlQrsResponsegroups.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Measures Measures
 * \ingroup Operations
 *  @{
 */
class MeasuresManager {
public:
	MeasuresManager();
	virtual ~MeasuresManager();

/*! \brief . *Synchronous*
 *
 * Get QRS Product
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionGetSync(char * accessToken,
	std::string measure, std::string version, 
	void(* handler)(QrsProduct, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get QRS Product
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionGetAsync(char * accessToken,
	std::string measure, std::string version, 
	void(* handler)(QrsProduct, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get QRS Item List
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionItemsGetSync(char * accessToken,
	std::string measure, std::string version, 
	void(* handler)(QrsItems, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get QRS Item List
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionItemsGetAsync(char * accessToken,
	std::string measure, std::string version, 
	void(* handler)(QrsItems, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get QRS Item
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param item QRS Measure Item Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionItemsItemGetSync(char * accessToken,
	std::string measure, std::string version, std::string item, 
	void(* handler)(QrsItem, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get QRS Item
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param item QRS Measure Item Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionItemsItemGetAsync(char * accessToken,
	std::string measure, std::string version, std::string item, 
	void(* handler)(QrsItem, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get QRS Response Group List
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionResponsegroupsGetSync(char * accessToken,
	std::string measure, std::string version, 
	void(* handler)(QrsResponsegroups, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get QRS Response Group List
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionResponsegroupsGetAsync(char * accessToken,
	std::string measure, std::string version, 
	void(* handler)(QrsResponsegroups, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Get QRS Response Group
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param responsegroup QRS Measure's Response Group Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionResponsegroupsResponsegroupGetSync(char * accessToken,
	std::string measure, std::string version, std::string responsegroup, 
	void(* handler)(QrsResponsegroup, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Get QRS Response Group
 * \param measure QRS Measure Identifier *Required*
 * \param version CDISC Library Product Version *Required*
 * \param responsegroup QRS Measure's Response Group Identifier *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrQrsMeasureVersionResponsegroupsResponsegroupGetAsync(char * accessToken,
	std::string measure, std::string version, std::string responsegroup, 
	void(* handler)(QrsResponsegroup, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* MeasuresManager_H_ */
