/*
 * XmlRootSendigDatasetVariable.h
 *
 * 
 */

#ifndef _XmlRootSendigDatasetVariable_H_
#define _XmlRootSendigDatasetVariable_H_


#include <string>
#include "RootSendigDatasetVariable.h"
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

class XmlRootSendigDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootSendigDatasetVariable();
	XmlRootSendigDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootSendigDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSendigDatasetVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSendigDatasetVariable  self);

private:
	RootSendigDatasetVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootSendigDatasetVariable_H_ */
