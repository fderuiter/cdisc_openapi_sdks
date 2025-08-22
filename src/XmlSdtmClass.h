/*
 * XmlSdtmClass.h
 *
 * 
 */

#ifndef _XmlSdtmClass_H_
#define _XmlSdtmClass_H_


#include <string>
#include "SdtmClass.h"
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

class XmlSdtmClass : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmClass();
	XmlSdtmClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmClass();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClass getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClass  self);

private:
	SdtmClass self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmClass_H_ */
