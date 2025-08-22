/*
 * XmlQrsResponsegroup.h
 *
 * 
 */

#ifndef _XmlQrsResponsegroup_H_
#define _XmlQrsResponsegroup_H_


#include <string>
#include "QrsResponsegroup.h"
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

class XmlQrsResponsegroup : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlQrsResponsegroup();
	XmlQrsResponsegroup(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlQrsResponsegroup();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsResponsegroup getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsResponsegroup  self);

private:
	QrsResponsegroup self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlQrsResponsegroup_H_ */
