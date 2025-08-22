/*
 * XmlSdtmClasses.h
 *
 * 
 */

#ifndef _XmlSdtmClasses_H_
#define _XmlSdtmClasses_H_


#include <string>
#include "SdtmClasses.h"
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

class XmlSdtmClasses : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmClasses();
	XmlSdtmClasses(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmClasses();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClasses getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClasses  self);

private:
	SdtmClasses self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmClasses_H_ */
