/*
 * XmlCdashigDomainField.h
 *
 * 
 */

#ifndef _XmlCdashigDomainField_H_
#define _XmlCdashigDomainField_H_


#include <string>
#include "CdashigDomainField.h"
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

class XmlCdashigDomainField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigDomainField();
	XmlCdashigDomainField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigDomainField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigDomainField getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigDomainField  self);

private:
	CdashigDomainField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigDomainField_H_ */
