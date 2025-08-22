/*
 * RootSdtmigDatasetVariable.h
 *
 * 
 */

#ifndef _RootSdtmigDatasetVariable_H_
#define _RootSdtmigDatasetVariable_H_


#include <string>
#include "RootSdtmigDatasetVariableLinks.h"
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

class RootSdtmigDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSdtmigDatasetVariable();
	RootSdtmigDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSdtmigDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmigDatasetVariableLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootSdtmigDatasetVariableLinks  _links);

private:
	RootSdtmigDatasetVariableLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSdtmigDatasetVariable_H_ */
