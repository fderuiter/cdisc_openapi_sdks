/*
 * XmlCdashigProductDomains.h
 *
 * 
 */

#ifndef _XmlCdashigProductDomains_H_
#define _XmlCdashigProductDomains_H_


#include <string>
#include "CdashigProductDomains.h"
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

class XmlCdashigProductDomains : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigProductDomains();
	XmlCdashigProductDomains(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigProductDomains();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProductDomains getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProductDomains  self);

private:
	CdashigProductDomains self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigProductDomains_H_ */
