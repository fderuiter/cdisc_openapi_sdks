/*
 * XmlLastupdated.h
 *
 * 
 */

#ifndef _XmlLastupdated_H_
#define _XmlLastupdated_H_


#include <string>
#include "Lastupdated.h"
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

class XmlLastupdated : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlLastupdated();
	XmlLastupdated(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlLastupdated();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Lastupdated getSelf();

	/*! \brief Set 
	 */
	void setSelf(Lastupdated  self);

private:
	Lastupdated self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlLastupdated_H_ */
