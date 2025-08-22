#ifndef _StatusesManager_H_
#define _StatusesManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Health.h"
#include "MaintenanceBody.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Statuses Statuses
 * \ingroup Operations
 *  @{
 */
class StatusesManager {
public:
	StatusesManager();
	virtual ~StatusesManager();

/*! \brief . *Synchronous*
 *
 * Check health of system components
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool healthGetSync(char * accessToken,
	
	void(* handler)(Health, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Check health of system components
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool healthGetAsync(char * accessToken,
	
	void(* handler)(Health, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * Set maintenance mode and message
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrMaintenanceGetSync(char * accessToken,
	
	void(* handler)(MaintenanceBody, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * Set maintenance mode and message
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool mdrMaintenanceGetAsync(char * accessToken,
	
	void(* handler)(MaintenanceBody, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://library.cdisc.org/api";
	}
};
/** @}*/

}
}
#endif /* StatusesManager_H_ */
