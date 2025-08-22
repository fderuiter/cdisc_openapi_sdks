/*
 * RootSendigDatasetVariable.h
 *
 * 
 */

#ifndef _RootSendigDatasetVariable_H_
#define _RootSendigDatasetVariable_H_


#include <string>
#include "RootSendigDatasetVariableLinks.h"
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

class RootSendigDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSendigDatasetVariable();
	RootSendigDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSendigDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSendigDatasetVariableLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootSendigDatasetVariableLinks  _links);

private:
	RootSendigDatasetVariableLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSendigDatasetVariable_H_ */
