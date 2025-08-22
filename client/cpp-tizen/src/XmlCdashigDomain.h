/*
 * XmlCdashigDomain.h
 *
 * 
 */

#ifndef _XmlCdashigDomain_H_
#define _XmlCdashigDomain_H_


#include <string>
#include "CdashigDomain.h"
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

class XmlCdashigDomain : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigDomain();
	XmlCdashigDomain(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigDomain();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigDomain getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigDomain  self);

private:
	CdashigDomain self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigDomain_H_ */
