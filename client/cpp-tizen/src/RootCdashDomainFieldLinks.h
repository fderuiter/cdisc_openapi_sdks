/*
 * RootCdashDomainFieldLinks.h
 *
 * 
 */

#ifndef _RootCdashDomainFieldLinks_H_
#define _RootCdashDomainFieldLinks_H_


#include <string>
#include "CdashDomainFieldRefVersion.h"
#include "RootCdashDomainFieldRef.h"
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

class RootCdashDomainFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootCdashDomainFieldLinks();
	RootCdashDomainFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootCdashDomainFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCdashDomainFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootCdashDomainFieldRef  self);
	/*! \brief Get 
	 */
	std::list<CdashDomainFieldRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <CdashDomainFieldRefVersion> versions);

private:
	RootCdashDomainFieldRef self;
	std::list <CdashDomainFieldRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootCdashDomainFieldLinks_H_ */
