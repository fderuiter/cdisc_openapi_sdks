/*
 * XmlAbout.h
 *
 * 
 */

#ifndef _XmlAbout_H_
#define _XmlAbout_H_


#include <string>
#include "About.h"
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

class XmlAbout : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlAbout();
	XmlAbout(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlAbout();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	About getSelf();

	/*! \brief Set 
	 */
	void setSelf(About  self);

private:
	About self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlAbout_H_ */
