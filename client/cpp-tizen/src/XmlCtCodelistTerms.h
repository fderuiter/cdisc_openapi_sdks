/*
 * XmlCtCodelistTerms.h
 *
 * 
 */

#ifndef _XmlCtCodelistTerms_H_
#define _XmlCtCodelistTerms_H_


#include <string>
#include "CtCodelistTerms.h"
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

class XmlCtCodelistTerms : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCtCodelistTerms();
	XmlCtCodelistTerms(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCtCodelistTerms();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtCodelistTerms getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtCodelistTerms  self);

private:
	CtCodelistTerms self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCtCodelistTerms_H_ */
