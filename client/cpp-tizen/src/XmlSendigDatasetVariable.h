/*
 * XmlSendigDatasetVariable.h
 *
 * 
 */

#ifndef _XmlSendigDatasetVariable_H_
#define _XmlSendigDatasetVariable_H_


#include <string>
#include "SendigDatasetVariable.h"
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

class XmlSendigDatasetVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigDatasetVariable();
	XmlSendigDatasetVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigDatasetVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDatasetVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDatasetVariable  self);

private:
	SendigDatasetVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigDatasetVariable_H_ */
