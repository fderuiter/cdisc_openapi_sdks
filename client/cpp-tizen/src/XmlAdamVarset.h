/*
 * XmlAdamVarset.h
 *
 * 
 */

#ifndef _XmlAdamVarset_H_
#define _XmlAdamVarset_H_


#include <string>
#include "AdamVarset.h"
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

class XmlAdamVarset : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlAdamVarset();
	XmlAdamVarset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlAdamVarset();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamVarset getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamVarset  self);

private:
	AdamVarset self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlAdamVarset_H_ */
