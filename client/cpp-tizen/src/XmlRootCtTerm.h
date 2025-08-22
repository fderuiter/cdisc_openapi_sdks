/*
 * XmlRootCtTerm.h
 *
 * 
 */

#ifndef _XmlRootCtTerm_H_
#define _XmlRootCtTerm_H_


#include <string>
#include "RootCtTerm.h"
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

class XmlRootCtTerm : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootCtTerm();
	XmlRootCtTerm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootCtTerm();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtTerm getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCtTerm  self);

private:
	RootCtTerm self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootCtTerm_H_ */
