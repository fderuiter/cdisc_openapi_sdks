/*
 * XmlRootCdashigDomainField.h
 *
 * 
 */

#ifndef _XmlRootCdashigDomainField_H_
#define _XmlRootCdashigDomainField_H_


#include <string>
#include "RootCdashigDomainField.h"
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

class XmlRootCdashigDomainField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootCdashigDomainField();
	XmlRootCdashigDomainField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootCdashigDomainField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashigDomainField getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashigDomainField  self);

private:
	RootCdashigDomainField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootCdashigDomainField_H_ */
