/*
 * XmlCtTerm.h
 *
 * 
 */

#ifndef _XmlCtTerm_H_
#define _XmlCtTerm_H_


#include <string>
#include "CtTerm.h"
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

class XmlCtTerm : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCtTerm();
	XmlCtTerm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCtTerm();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtTerm getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtTerm  self);

private:
	CtTerm self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCtTerm_H_ */
