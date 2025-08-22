/*
 * CdashProductDomainsLinks.h
 *
 * 
 */

#ifndef _CdashProductDomainsLinks_H_
#define _CdashProductDomainsLinks_H_


#include <string>
#include "CdashDomainRefElement.h"
#include "CdashProductDomainsRef.h"
#include "CdashProductRef.h"
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

class CdashProductDomainsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashProductDomainsLinks();
	CdashProductDomainsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashProductDomainsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashProductDomainsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashProductDomainsRef  self);
	/*! \brief Get 
	 */
	CdashProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<CdashDomainRefElement> getDomains();

	/*! \brief Set 
	 */
	void setDomains(std::list <CdashDomainRefElement> domains);

private:
	CdashProductDomainsRef self;
	CdashProductRef parentProduct;
	std::list <CdashDomainRefElement>domains;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashProductDomainsLinks_H_ */
