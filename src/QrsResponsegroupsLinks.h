/*
 * QrsResponsegroupsLinks.h
 *
 * 
 */

#ifndef _QrsResponsegroupsLinks_H_
#define _QrsResponsegroupsLinks_H_


#include <string>
#include "QrsResponsegroupRefElement.h"
#include "QrsResponsegroupsRef.h"
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

class QrsResponsegroupsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsResponsegroupsLinks();
	QrsResponsegroupsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsResponsegroupsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsResponsegroupsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsResponsegroupsRef  self);
	/*! \brief Get 
	 */
	std::list<QrsResponsegroupRefElement> getResponsegroups();

	/*! \brief Set 
	 */
	void setResponsegroups(std::list <QrsResponsegroupRefElement> responsegroups);

private:
	QrsResponsegroupsRef self;
	std::list <QrsResponsegroupRefElement>responsegroups;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsResponsegroupsLinks_H_ */
