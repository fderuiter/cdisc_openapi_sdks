/*
 * XmlSdtmigDatasetVariable.h
 *
 * 
 */

#ifndef _XmlSdtmigDatasetVariable_H_
#define _XmlSdtmigDatasetVariable_H_


#include <string>
#include "SdtmigDatasetVariable.h"
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

class XmlSdtmigDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigDatasetVariable();
	XmlSdtmigDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDatasetVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDatasetVariable  self);

private:
	SdtmigDatasetVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigDatasetVariable_H_ */
