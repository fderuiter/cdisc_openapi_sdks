/*
 * XmlSendigDatasetVariables.h
 *
 * 
 */

#ifndef _XmlSendigDatasetVariables_H_
#define _XmlSendigDatasetVariables_H_


#include <string>
#include "SendigDatasetVariables.h"
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

class XmlSendigDatasetVariables : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigDatasetVariables();
	XmlSendigDatasetVariables(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigDatasetVariables();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDatasetVariables getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDatasetVariables  self);

private:
	SendigDatasetVariables self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigDatasetVariables_H_ */
