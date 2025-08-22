/*
 * MaintenanceBody.h
 *
 * 
 */

#ifndef _MaintenanceBody_H_
#define _MaintenanceBody_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class MaintenanceBody : public Object {
public:
	/*! \brief Constructor.
	 */
	MaintenanceBody();
	MaintenanceBody(char* str);

	/*! \brief Destructor.
	 */
	virtual ~MaintenanceBody();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getMaintenanceMode();

	/*! \brief Set 
	 */
	void setMaintenanceMode(bool  maintenanceMode);
	/*! \brief Get 
	 */
	std::string getMaintenanceMessage();

	/*! \brief Set 
	 */
	void setMaintenanceMessage(std::string  maintenanceMessage);

private:
	bool maintenanceMode;
	std::string maintenanceMessage;
	void __init();
	void __cleanup();

};
}
}

#endif /* _MaintenanceBody_H_ */
