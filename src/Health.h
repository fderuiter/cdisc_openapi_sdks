/*
 * Health.h
 *
 * 
 */

#ifndef _Health_H_
#define _Health_H_


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

class Health : public Object {
public:
	/*! \brief Constructor.
	 */
	Health();
	Health(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Health();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getHealthy();

	/*! \brief Set 
	 */
	void setHealthy(bool  healthy);
	/*! \brief Get 
	 */
	bool getLdapAuthenticationHealthy();

	/*! \brief Set 
	 */
	void setLdapAuthenticationHealthy(bool  ldapAuthenticationHealthy);
	/*! \brief Get 
	 */
	bool getLdapAuthorizationHealthy();

	/*! \brief Set 
	 */
	void setLdapAuthorizationHealthy(bool  ldapAuthorizationHealthy);
	/*! \brief Get 
	 */
	bool getDatabaseHealthy();

	/*! \brief Set 
	 */
	void setDatabaseHealthy(bool  databaseHealthy);
	/*! \brief Get 
	 */
	bool getEsHealthy();

	/*! \brief Set 
	 */
	void setEsHealthy(bool  esHealthy);

private:
	bool healthy;
	bool ldapAuthenticationHealthy;
	bool ldapAuthorizationHealthy;
	bool databaseHealthy;
	bool esHealthy;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Health_H_ */
