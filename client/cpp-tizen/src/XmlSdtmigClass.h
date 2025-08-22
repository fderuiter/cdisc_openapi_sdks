/*
 * XmlSdtmigClass.h
 *
 * 
 */

#ifndef _XmlSdtmigClass_H_
#define _XmlSdtmigClass_H_


#include <string>
#include "SdtmigClass.h"
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

class XmlSdtmigClass : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigClass();
	XmlSdtmigClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigClass();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigClass getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigClass  self);

private:
	SdtmigClass self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigClass_H_ */
