/*
 * XmlSdtmigClasses.h
 *
 * 
 */

#ifndef _XmlSdtmigClasses_H_
#define _XmlSdtmigClasses_H_


#include <string>
#include "SdtmigClasses.h"
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

class XmlSdtmigClasses : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigClasses();
	XmlSdtmigClasses(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigClasses();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigClasses getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigClasses  self);

private:
	SdtmigClasses self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigClasses_H_ */
