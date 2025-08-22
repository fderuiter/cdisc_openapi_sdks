/*
 * XmlCdashDomainField.h
 *
 * 
 */

#ifndef _XmlCdashDomainField_H_
#define _XmlCdashDomainField_H_


#include <string>
#include "CdashDomainField.h"
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

class XmlCdashDomainField : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashDomainField();
	XmlCdashDomainField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashDomainField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashDomainField getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashDomainField  self);

private:
	CdashDomainField self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashDomainField_H_ */
