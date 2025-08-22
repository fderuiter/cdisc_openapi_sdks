/*
 * SdtmClassesLinks.h
 *
 * 
 */

#ifndef _SdtmClassesLinks_H_
#define _SdtmClassesLinks_H_


#include <string>
#include "SdtmClassRefElement.h"
#include "SdtmClassesRef.h"
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

class SdtmClassesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmClassesLinks();
	SdtmClassesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmClassesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassesRef  self);
	/*! \brief Get 
	 */
	SdtmClassesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmClassesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmClassRefElement> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <SdtmClassRefElement> classes);

private:
	SdtmClassesRef self;
	SdtmClassesRef priorVersion;
	std::list <SdtmClassRefElement>classes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmClassesLinks_H_ */
