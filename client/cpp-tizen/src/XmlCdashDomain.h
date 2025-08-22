/*
 * XmlCdashDomain.h
 *
 * 
 */

#ifndef _XmlCdashDomain_H_
#define _XmlCdashDomain_H_


#include <string>
#include "CdashDomain.h"
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

class XmlCdashDomain : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashDomain();
	XmlCdashDomain(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashDomain();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashDomain getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashDomain  self);

private:
	CdashDomain self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashDomain_H_ */
