/*
 * XmlCdashigClass.h
 *
 * 
 */

#ifndef _XmlCdashigClass_H_
#define _XmlCdashigClass_H_


#include <string>
#include "CdashigClass.h"
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

class XmlCdashigClass : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigClass();
	XmlCdashigClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigClass();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigClass getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigClass  self);

private:
	CdashigClass self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigClass_H_ */
