/*
 * XmlProductgroupDataTabulation.h
 *
 * 
 */

#ifndef _XmlProductgroupDataTabulation_H_
#define _XmlProductgroupDataTabulation_H_


#include <string>
#include "ProductgroupDataTabulation.h"
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

class XmlProductgroupDataTabulation : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlProductgroupDataTabulation();
	XmlProductgroupDataTabulation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlProductgroupDataTabulation();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupDataTabulation getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductgroupDataTabulation  self);

private:
	ProductgroupDataTabulation self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlProductgroupDataTabulation_H_ */
