/*
 * XmlCdashigProductClasses.h
 *
 * 
 */

#ifndef _XmlCdashigProductClasses_H_
#define _XmlCdashigProductClasses_H_


#include <string>
#include "CdashigProductClasses.h"
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

class XmlCdashigProductClasses : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashigProductClasses();
	XmlCdashigProductClasses(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashigProductClasses();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProductClasses getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProductClasses  self);

private:
	CdashigProductClasses self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashigProductClasses_H_ */
