/*
 * CdashigClassDomainsLinks.h
 *
 * 
 */

#ifndef _CdashigClassDomainsLinks_H_
#define _CdashigClassDomainsLinks_H_


#include <string>
#include "CdashigClassDomainsRef.h"
#include "CdashigDomainRefElement.h"
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

class CdashigClassDomainsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigClassDomainsLinks();
	CdashigClassDomainsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigClassDomainsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigClassDomainsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigClassDomainsRef  self);
	/*! \brief Get 
	 */
	std::list<CdashigDomainRefElement> getDomains();

	/*! \brief Set 
	 */
	void setDomains(std::list <CdashigDomainRefElement> domains);

private:
	CdashigClassDomainsRef self;
	std::list <CdashigDomainRefElement>domains;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigClassDomainsLinks_H_ */
