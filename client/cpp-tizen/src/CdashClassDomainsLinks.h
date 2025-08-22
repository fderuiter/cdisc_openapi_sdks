/*
 * CdashClassDomainsLinks.h
 *
 * 
 */

#ifndef _CdashClassDomainsLinks_H_
#define _CdashClassDomainsLinks_H_


#include <string>
#include "CdashClassDomainsRef.h"
#include "CdashDomainRefElement.h"
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

class CdashClassDomainsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashClassDomainsLinks();
	CdashClassDomainsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashClassDomainsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashClassDomainsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashClassDomainsRef  self);
	/*! \brief Get 
	 */
	std::list<CdashDomainRefElement> getDomains();

	/*! \brief Set 
	 */
	void setDomains(std::list <CdashDomainRefElement> domains);

private:
	CdashClassDomainsRef self;
	std::list <CdashDomainRefElement>domains;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashClassDomainsLinks_H_ */
