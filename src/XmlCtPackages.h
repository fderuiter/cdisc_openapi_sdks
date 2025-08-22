/*
 * XmlCtPackages.h
 *
 * 
 */

#ifndef _XmlCtPackages_H_
#define _XmlCtPackages_H_


#include <string>
#include "CtPackages.h"
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

class XmlCtPackages : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCtPackages();
	XmlCtPackages(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCtPackages();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtPackages getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtPackages  self);

private:
	CtPackages self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCtPackages_H_ */
