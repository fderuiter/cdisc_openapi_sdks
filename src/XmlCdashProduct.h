/*
 * XmlCdashProduct.h
 *
 * 
 */

#ifndef _XmlCdashProduct_H_
#define _XmlCdashProduct_H_


#include <string>
#include "CdashProduct.h"
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

class XmlCdashProduct : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashProduct();
	XmlCdashProduct(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashProduct();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashProduct getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashProduct  self);

private:
	CdashProduct self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashProduct_H_ */
