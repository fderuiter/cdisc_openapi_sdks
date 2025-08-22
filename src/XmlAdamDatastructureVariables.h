/*
 * XmlAdamDatastructureVariables.h
 *
 * 
 */

#ifndef _XmlAdamDatastructureVariables_H_
#define _XmlAdamDatastructureVariables_H_


#include <string>
#include "AdamDatastructureVariables.h"
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

class XmlAdamDatastructureVariables : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlAdamDatastructureVariables();
	XmlAdamDatastructureVariables(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlAdamDatastructureVariables();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamDatastructureVariables getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamDatastructureVariables  self);

private:
	AdamDatastructureVariables self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlAdamDatastructureVariables_H_ */
