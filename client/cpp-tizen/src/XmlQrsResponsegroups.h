/*
 * XmlQrsResponsegroups.h
 *
 * 
 */

#ifndef _XmlQrsResponsegroups_H_
#define _XmlQrsResponsegroups_H_


#include <string>
#include "QrsResponsegroups.h"
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

class XmlQrsResponsegroups : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlQrsResponsegroups();
	XmlQrsResponsegroups(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlQrsResponsegroups();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsResponsegroups getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsResponsegroups  self);

private:
	QrsResponsegroups self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlQrsResponsegroups_H_ */
