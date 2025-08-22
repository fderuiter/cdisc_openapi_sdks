/*
 * XmlAdamVariable.h
 *
 * 
 */

#ifndef _XmlAdamVariable_H_
#define _XmlAdamVariable_H_


#include <string>
#include "AdamVariable.h"
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

class XmlAdamVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlAdamVariable();
	XmlAdamVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlAdamVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamVariable  self);

private:
	AdamVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlAdamVariable_H_ */
