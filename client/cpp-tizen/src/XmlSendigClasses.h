/*
 * XmlSendigClasses.h
 *
 * 
 */

#ifndef _XmlSendigClasses_H_
#define _XmlSendigClasses_H_


#include <string>
#include "SendigClasses.h"
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

class XmlSendigClasses : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigClasses();
	XmlSendigClasses(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigClasses();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigClasses getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigClasses  self);

private:
	SendigClasses self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigClasses_H_ */
