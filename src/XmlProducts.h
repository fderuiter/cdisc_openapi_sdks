/*
 * XmlProducts.h
 *
 * 
 */

#ifndef _XmlProducts_H_
#define _XmlProducts_H_


#include <string>
#include "Products.h"
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

class XmlProducts : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlProducts();
	XmlProducts(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlProducts();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Products getSelf();

	/*! \brief Set 
	 */
	void setSelf(Products  self);

private:
	Products self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlProducts_H_ */
