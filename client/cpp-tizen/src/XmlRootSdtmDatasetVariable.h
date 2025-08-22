/*
 * XmlRootSdtmDatasetVariable.h
 *
 * 
 */

#ifndef _XmlRootSdtmDatasetVariable_H_
#define _XmlRootSdtmDatasetVariable_H_


#include <string>
#include "RootSdtmDatasetVariable.h"
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

class XmlRootSdtmDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootSdtmDatasetVariable();
	XmlRootSdtmDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootSdtmDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmDatasetVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSdtmDatasetVariable  self);

private:
	RootSdtmDatasetVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootSdtmDatasetVariable_H_ */
