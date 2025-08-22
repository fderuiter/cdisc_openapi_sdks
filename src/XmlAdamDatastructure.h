/*
 * XmlAdamDatastructure.h
 *
 * 
 */

#ifndef _XmlAdamDatastructure_H_
#define _XmlAdamDatastructure_H_


#include <string>
#include "AdamDatastructure.h"
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

class XmlAdamDatastructure : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlAdamDatastructure();
	XmlAdamDatastructure(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlAdamDatastructure();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamDatastructure getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamDatastructure  self);

private:
	AdamDatastructure self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlAdamDatastructure_H_ */
