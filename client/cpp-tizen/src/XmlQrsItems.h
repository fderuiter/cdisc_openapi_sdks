/*
 * XmlQrsItems.h
 *
 * 
 */

#ifndef _XmlQrsItems_H_
#define _XmlQrsItems_H_


#include <string>
#include "QrsItems.h"
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

class XmlQrsItems : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlQrsItems();
	XmlQrsItems(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlQrsItems();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsItems getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsItems  self);

private:
	QrsItems self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlQrsItems_H_ */
