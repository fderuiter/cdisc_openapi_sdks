/*
 * XmlSdtmProduct.h
 *
 * 
 */

#ifndef _XmlSdtmProduct_H_
#define _XmlSdtmProduct_H_


#include <string>
#include "SdtmProduct.h"
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

class XmlSdtmProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmProduct();
	XmlSdtmProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmProduct getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmProduct  self);

private:
	SdtmProduct self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmProduct_H_ */
