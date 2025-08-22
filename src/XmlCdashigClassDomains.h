/*
 * XmlCdashigClassDomains.h
 *
 * 
 */

#ifndef _XmlCdashigClassDomains_H_
#define _XmlCdashigClassDomains_H_


#include <string>
#include "CdashigClassDomains.h"
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

class XmlCdashigClassDomains : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigClassDomains();
	XmlCdashigClassDomains(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigClassDomains();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigClassDomains getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigClassDomains  self);

private:
	CdashigClassDomains self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigClassDomains_H_ */
