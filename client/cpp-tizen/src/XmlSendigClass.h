/*
 * XmlSendigClass.h
 *
 * 
 */

#ifndef _XmlSendigClass_H_
#define _XmlSendigClass_H_


#include <string>
#include "SendigClass.h"
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

class XmlSendigClass : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigClass();
	XmlSendigClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigClass();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigClass getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigClass  self);

private:
	SendigClass self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigClass_H_ */
