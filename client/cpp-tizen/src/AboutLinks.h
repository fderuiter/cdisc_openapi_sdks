/*
 * AboutLinks.h
 *
 * 
 */

#ifndef _AboutLinks_H_
#define _AboutLinks_H_


#include <string>
#include "AboutRef.h"
#include "LastupdatedRef.h"
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

class AboutLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AboutLinks();
	AboutLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AboutLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AboutRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AboutRef  self);
	/*! \brief Get 
	 */
	LastupdatedRef getLastupdated();

	/*! \brief Set 
	 */
	void setLastupdated(LastupdatedRef  lastupdated);

private:
	AboutRef self;
	LastupdatedRef lastupdated;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AboutLinks_H_ */
