/*
 * XmlCdashProductDomains.h
 *
 * 
 */

#ifndef _XmlCdashProductDomains_H_
#define _XmlCdashProductDomains_H_


#include <string>
#include "CdashProductDomains.h"
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

class XmlCdashProductDomains : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashProductDomains();
	XmlCdashProductDomains(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashProductDomains();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashProductDomains getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashProductDomains  self);

private:
	CdashProductDomains self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashProductDomains_H_ */
