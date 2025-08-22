/*
 * SdtmigClassesLinks.h
 *
 * 
 */

#ifndef _SdtmigClassesLinks_H_
#define _SdtmigClassesLinks_H_


#include <string>
#include "SdtmigClassRefElement.h"
#include "SdtmigClassesRef.h"
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

class SdtmigClassesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigClassesLinks();
	SdtmigClassesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigClassesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigClassesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigClassesRef  self);
	/*! \brief Get 
	 */
	SdtmigClassesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigClassesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmigClassRefElement> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <SdtmigClassRefElement> classes);

private:
	SdtmigClassesRef self;
	SdtmigClassesRef priorVersion;
	std::list <SdtmigClassRefElement>classes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigClassesLinks_H_ */
