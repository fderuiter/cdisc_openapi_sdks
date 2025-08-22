/*
 * RootCtCodelist.h
 *
 * 
 */

#ifndef _RootCtCodelist_H_
#define _RootCtCodelist_H_


#include <string>
#include "RootCtCodelistLinks.h"
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

class RootCtCodelist : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCtCodelist();
	RootCtCodelist(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCtCodelist();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtCodelistLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootCtCodelistLinks  _links);

private:
	RootCtCodelistLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCtCodelist_H_ */
