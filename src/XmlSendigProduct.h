/*
 * XmlSendigProduct.h
 *
 * 
 */

#ifndef _XmlSendigProduct_H_
#define _XmlSendigProduct_H_


#include <string>
#include "SendigProduct.h"
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

class XmlSendigProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigProduct();
	XmlSendigProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigProduct getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigProduct  self);

private:
	SendigProduct self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigProduct_H_ */
