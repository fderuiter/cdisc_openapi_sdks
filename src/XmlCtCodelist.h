/*
 * XmlCtCodelist.h
 *
 * 
 */

#ifndef _XmlCtCodelist_H_
#define _XmlCtCodelist_H_


#include <string>
#include "CtCodelist.h"
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

class XmlCtCodelist : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCtCodelist();
	XmlCtCodelist(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCtCodelist();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtCodelist getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtCodelist  self);

private:
	CtCodelist self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCtCodelist_H_ */
