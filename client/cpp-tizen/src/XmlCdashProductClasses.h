/*
 * XmlCdashProductClasses.h
 *
 * 
 */

#ifndef _XmlCdashProductClasses_H_
#define _XmlCdashProductClasses_H_


#include <string>
#include "CdashProductClasses.h"
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

class XmlCdashProductClasses : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCdashProductClasses();
	XmlCdashProductClasses(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCdashProductClasses();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashProductClasses getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashProductClasses  self);

private:
	CdashProductClasses self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCdashProductClasses_H_ */
