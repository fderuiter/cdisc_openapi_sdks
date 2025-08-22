/*
 * RootCdashClassFieldLinks.h
 *
 * 
 */

#ifndef _RootCdashClassFieldLinks_H_
#define _RootCdashClassFieldLinks_H_


#include <string>
#include "CdashClassFieldRefVersion.h"
#include "RootCdashClassFieldRef.h"
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

class RootCdashClassFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashClassFieldLinks();
	RootCdashClassFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashClassFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashClassFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashClassFieldRef  self);
	/*! \brief Get 
	 */
	std::list<CdashClassFieldRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <CdashClassFieldRefVersion> versions);

private:
	RootCdashClassFieldRef self;
	std::list <CdashClassFieldRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashClassFieldLinks_H_ */
