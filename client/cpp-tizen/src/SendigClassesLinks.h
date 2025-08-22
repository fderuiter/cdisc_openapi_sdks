/*
 * SendigClassesLinks.h
 *
 * 
 */

#ifndef _SendigClassesLinks_H_
#define _SendigClassesLinks_H_


#include <string>
#include "SendigClassRefElement.h"
#include "SendigClassesRef.h"
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

class SendigClassesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigClassesLinks();
	SendigClassesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigClassesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigClassesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigClassesRef  self);
	/*! \brief Get 
	 */
	SendigClassesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SendigClassesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SendigClassRefElement> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <SendigClassRefElement> classes);

private:
	SendigClassesRef self;
	SendigClassesRef priorVersion;
	std::list <SendigClassRefElement>classes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigClassesLinks_H_ */
