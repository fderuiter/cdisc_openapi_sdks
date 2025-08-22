/*
 * XmlAdamProductDatastructures.h
 *
 * 
 */

#ifndef _XmlAdamProductDatastructures_H_
#define _XmlAdamProductDatastructures_H_


#include <string>
#include "AdamProductDatastructures.h"
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

class XmlAdamProductDatastructures : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlAdamProductDatastructures();
	XmlAdamProductDatastructures(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlAdamProductDatastructures();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamProductDatastructures getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamProductDatastructures  self);

private:
	AdamProductDatastructures self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlAdamProductDatastructures_H_ */
