/*
 * XmlSdtmigProduct.h
 *
 * 
 */

#ifndef _XmlSdtmigProduct_H_
#define _XmlSdtmigProduct_H_


#include <string>
#include "SdtmigProduct.h"
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

class XmlSdtmigProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigProduct();
	XmlSdtmigProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigProduct getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigProduct  self);

private:
	SdtmigProduct self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigProduct_H_ */
