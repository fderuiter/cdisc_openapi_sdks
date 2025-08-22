/*
 * XmlSdtmClassVariable.h
 *
 * 
 */

#ifndef _XmlSdtmClassVariable_H_
#define _XmlSdtmClassVariable_H_


#include <string>
#include "SdtmClassVariable.h"
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

class XmlSdtmClassVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmClassVariable();
	XmlSdtmClassVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmClassVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassVariable  self);

private:
	SdtmClassVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmClassVariable_H_ */
