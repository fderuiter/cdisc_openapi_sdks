/*
 * XmlCdashClassDomains.h
 *
 * 
 */

#ifndef _XmlCdashClassDomains_H_
#define _XmlCdashClassDomains_H_


#include <string>
#include "CdashClassDomains.h"
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

class XmlCdashClassDomains : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashClassDomains();
	XmlCdashClassDomains(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashClassDomains();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashClassDomains getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashClassDomains  self);

private:
	CdashClassDomains self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashClassDomains_H_ */
