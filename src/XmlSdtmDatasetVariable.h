/*
 * XmlSdtmDatasetVariable.h
 *
 * 
 */

#ifndef _XmlSdtmDatasetVariable_H_
#define _XmlSdtmDatasetVariable_H_


#include <string>
#include "SdtmDatasetVariable.h"
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

class XmlSdtmDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmDatasetVariable();
	XmlSdtmDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDatasetVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDatasetVariable  self);

private:
	SdtmDatasetVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmDatasetVariable_H_ */
