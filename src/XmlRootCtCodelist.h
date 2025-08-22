/*
 * XmlRootCtCodelist.h
 *
 * 
 */

#ifndef _XmlRootCtCodelist_H_
#define _XmlRootCtCodelist_H_


#include <string>
#include "RootCtCodelist.h"
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

class XmlRootCtCodelist : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootCtCodelist();
	XmlRootCtCodelist(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootCtCodelist();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtCodelist getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCtCodelist  self);

private:
	RootCtCodelist self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootCtCodelist_H_ */
