/*
 * QrsResponsegroupLinks.h
 *
 * 
 */

#ifndef _QrsResponsegroupLinks_H_
#define _QrsResponsegroupLinks_H_


#include <string>
#include "QrsResponsegroupRef.h"
#include "QrsResponses.h"
#include <list>
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

class QrsResponsegroupLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsResponsegroupLinks();
	QrsResponsegroupLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsResponsegroupLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsResponsegroupRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsResponsegroupRef  self);
	/*! \brief Get 
	 */
	std::list<QrsResponses> getResponses();

	/*! \brief Set 
	 */
	void setResponses(std::list <QrsResponses> responses);

private:
	QrsResponsegroupRef self;
	std::list <QrsResponses>responses;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsResponsegroupLinks_H_ */
