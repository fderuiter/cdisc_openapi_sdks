/*
 * XmlCdashDomainFields.h
 *
 * 
 */

#ifndef _XmlCdashDomainFields_H_
#define _XmlCdashDomainFields_H_


#include <string>
#include "CdashDomainFields.h"
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

class XmlCdashDomainFields : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashDomainFields();
	XmlCdashDomainFields(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashDomainFields();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashDomainFields getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashDomainFields  self);

private:
	CdashDomainFields self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashDomainFields_H_ */
