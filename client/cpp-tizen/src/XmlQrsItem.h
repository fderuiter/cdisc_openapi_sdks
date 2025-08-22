/*
 * XmlQrsItem.h
 *
 * 
 */

#ifndef _XmlQrsItem_H_
#define _XmlQrsItem_H_


#include <string>
#include "QrsItem.h"
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

class XmlQrsItem : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlQrsItem();
	XmlQrsItem(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlQrsItem();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsItem getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsItem  self);

private:
	QrsItem self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlQrsItem_H_ */
