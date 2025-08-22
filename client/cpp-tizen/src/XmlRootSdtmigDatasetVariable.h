/*
 * XmlRootSdtmigDatasetVariable.h
 *
 * 
 */

#ifndef _XmlRootSdtmigDatasetVariable_H_
#define _XmlRootSdtmigDatasetVariable_H_


#include <string>
#include "RootSdtmigDatasetVariable.h"
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

class XmlRootSdtmigDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootSdtmigDatasetVariable();
	XmlRootSdtmigDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootSdtmigDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmigDatasetVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSdtmigDatasetVariable  self);

private:
	RootSdtmigDatasetVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootSdtmigDatasetVariable_H_ */
