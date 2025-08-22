/*
 * XmlQrsProduct.h
 *
 * 
 */

#ifndef _XmlQrsProduct_H_
#define _XmlQrsProduct_H_


#include <string>
#include "QrsProduct.h"
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

class XmlQrsProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlQrsProduct();
	XmlQrsProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlQrsProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsProduct getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsProduct  self);

private:
	QrsProduct self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlQrsProduct_H_ */
