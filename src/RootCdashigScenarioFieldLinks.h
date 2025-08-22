/*
 * RootCdashigScenarioFieldLinks.h
 *
 * 
 */

#ifndef _RootCdashigScenarioFieldLinks_H_
#define _RootCdashigScenarioFieldLinks_H_


#include <string>
#include "CdashigScenarioFieldRefVersion.h"
#include "RootCdashigScenarioFieldRef.h"
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

class RootCdashigScenarioFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashigScenarioFieldLinks();
	RootCdashigScenarioFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashigScenarioFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashigScenarioFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashigScenarioFieldRef  self);
	/*! \brief Get 
	 */
	std::list<CdashigScenarioFieldRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <CdashigScenarioFieldRefVersion> versions);

private:
	RootCdashigScenarioFieldRef self;
	std::list <CdashigScenarioFieldRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashigScenarioFieldLinks_H_ */
