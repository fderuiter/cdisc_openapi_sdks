/*
 * XmlRootCdashClassField.h
 *
 * 
 */

#ifndef _XmlRootCdashClassField_H_
#define _XmlRootCdashClassField_H_


#include <string>
#include "RootCdashClassField.h"
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

class XmlRootCdashClassField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootCdashClassField();
	XmlRootCdashClassField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootCdashClassField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashClassField getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashClassField  self);

private:
	RootCdashClassField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootCdashClassField_H_ */
