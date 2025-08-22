/*
 * RootCdashigDomainFieldLinks.h
 *
 * 
 */

#ifndef _RootCdashigDomainFieldLinks_H_
#define _RootCdashigDomainFieldLinks_H_


#include <string>
#include "CdashigDomainFieldRefVersion.h"
#include "RootCdashigDomainFieldRef.h"
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

class RootCdashigDomainFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashigDomainFieldLinks();
	RootCdashigDomainFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashigDomainFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashigDomainFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashigDomainFieldRef  self);
	/*! \brief Get 
	 */
	std::list<CdashigDomainFieldRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <CdashigDomainFieldRefVersion> versions);

private:
	RootCdashigDomainFieldRef self;
	std::list <CdashigDomainFieldRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashigDomainFieldLinks_H_ */
