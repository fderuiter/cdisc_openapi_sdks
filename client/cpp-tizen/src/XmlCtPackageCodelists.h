/*
 * XmlCtPackageCodelists.h
 *
 * 
 */

#ifndef _XmlCtPackageCodelists_H_
#define _XmlCtPackageCodelists_H_


#include <string>
#include "CtPackageCodelists.h"
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

class XmlCtPackageCodelists : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlCtPackageCodelists();
	XmlCtPackageCodelists(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlCtPackageCodelists();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CtPackageCodelists getSelf();

	/*! \brief Set 
	 */
	void setSelf(CtPackageCodelists  self);

private:
	CtPackageCodelists self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlCtPackageCodelists_H_ */
