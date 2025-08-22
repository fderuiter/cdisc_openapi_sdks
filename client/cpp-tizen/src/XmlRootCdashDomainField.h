/*
 * XmlRootCdashDomainField.h
 *
 * 
 */

#ifndef _XmlRootCdashDomainField_H_
#define _XmlRootCdashDomainField_H_


#include <string>
#include "RootCdashDomainField.h"
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

class XmlRootCdashDomainField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootCdashDomainField();
	XmlRootCdashDomainField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootCdashDomainField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashDomainField getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashDomainField  self);

private:
	RootCdashDomainField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootCdashDomainField_H_ */
