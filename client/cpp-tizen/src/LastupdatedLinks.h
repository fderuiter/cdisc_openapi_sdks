/*
 * LastupdatedLinks.h
 *
 * 
 */

#ifndef _LastupdatedLinks_H_
#define _LastupdatedLinks_H_


#include <string>
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

class LastupdatedLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	LastupdatedLinks();
	LastupdatedLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~LastupdatedLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	LastupdatedRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(LastupdatedRef  self);

private:
	LastupdatedRef self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _LastupdatedLinks_H_ */
