/*
 * RootCtTerm.h
 *
 * 
 */

#ifndef _RootCtTerm_H_
#define _RootCtTerm_H_


#include <string>
#include "RootCtTermLinks.h"
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

class RootCtTerm : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCtTerm();
	RootCtTerm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCtTerm();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtTermLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootCtTermLinks  _links);

private:
	RootCtTermLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCtTerm_H_ */
