/*
 * XmlCdashigProduct.h
 *
 * 
 */

#ifndef _XmlCdashigProduct_H_
#define _XmlCdashigProduct_H_


#include <string>
#include "CdashigProduct.h"
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

class XmlCdashigProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigProduct();
	XmlCdashigProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProduct getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProduct  self);

private:
	CdashigProduct self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigProduct_H_ */
