/*
 * XmlSdtmClassVariables.h
 *
 * 
 */

#ifndef _XmlSdtmClassVariables_H_
#define _XmlSdtmClassVariables_H_


#include <string>
#include "SdtmClassVariables.h"
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

class XmlSdtmClassVariables : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmClassVariables();
	XmlSdtmClassVariables(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmClassVariables();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassVariables getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassVariables  self);

private:
	SdtmClassVariables self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmClassVariables_H_ */
