/*
 * XmlAdamDatastructureVarsets.h
 *
 * 
 */

#ifndef _XmlAdamDatastructureVarsets_H_
#define _XmlAdamDatastructureVarsets_H_


#include <string>
#include "AdamDatastructureVarsets.h"
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

class XmlAdamDatastructureVarsets : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlAdamDatastructureVarsets();
	XmlAdamDatastructureVarsets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlAdamDatastructureVarsets();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamDatastructureVarsets getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamDatastructureVarsets  self);

private:
	AdamDatastructureVarsets self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlAdamDatastructureVarsets_H_ */
