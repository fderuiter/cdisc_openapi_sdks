/*
 * XmlProductgroupDataCollection.h
 *
 * 
 */

#ifndef _XmlProductgroupDataCollection_H_
#define _XmlProductgroupDataCollection_H_


#include <string>
#include "ProductgroupDataCollection.h"
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

class XmlProductgroupDataCollection : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlProductgroupDataCollection();
	XmlProductgroupDataCollection(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlProductgroupDataCollection();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupDataCollection getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductgroupDataCollection  self);

private:
	ProductgroupDataCollection self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlProductgroupDataCollection_H_ */
