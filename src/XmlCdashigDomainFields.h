/*
 * XmlCdashigDomainFields.h
 *
 * 
 */

#ifndef _XmlCdashigDomainFields_H_
#define _XmlCdashigDomainFields_H_


#include <string>
#include "CdashigDomainFields.h"
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

class XmlCdashigDomainFields : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigDomainFields();
	XmlCdashigDomainFields(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigDomainFields();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigDomainFields getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigDomainFields  self);

private:
	CdashigDomainFields self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigDomainFields_H_ */
