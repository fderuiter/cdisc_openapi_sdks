/*
 * XmlCtPackage.h
 *
 * 
 */

#ifndef _XmlCtPackage_H_
#define _XmlCtPackage_H_


#include <string>
#include "CtPackage.h"
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

class XmlCtPackage : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCtPackage();
	XmlCtPackage(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCtPackage();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtPackage getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtPackage  self);

private:
	CtPackage self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCtPackage_H_ */
