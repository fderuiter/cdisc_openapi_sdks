/*
 * RootSdtmDatasetVariable.h
 *
 * 
 */

#ifndef _RootSdtmDatasetVariable_H_
#define _RootSdtmDatasetVariable_H_


#include <string>
#include "RootSdtmDatasetVariableLinks.h"
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

class RootSdtmDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSdtmDatasetVariable();
	RootSdtmDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSdtmDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmDatasetVariableLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootSdtmDatasetVariableLinks  _links);

private:
	RootSdtmDatasetVariableLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSdtmDatasetVariable_H_ */
