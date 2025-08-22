/*
 * CdashigProductDomainsLinks.h
 *
 * 
 */

#ifndef _CdashigProductDomainsLinks_H_
#define _CdashigProductDomainsLinks_H_


#include <string>
#include "CdashigDomainRefElement.h"
#include "CdashigProductDomainsRef.h"
#include "CdashigProductRef.h"
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

class CdashigProductDomainsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigProductDomainsLinks();
	CdashigProductDomainsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigProductDomainsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProductDomainsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProductDomainsRef  self);
	/*! \brief Get 
	 */
	CdashigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashigProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<CdashigDomainRefElement> getDomains();

	/*! \brief Set 
	 */
	void setDomains(std::list <CdashigDomainRefElement> domains);

private:
	CdashigProductDomainsRef self;
	CdashigProductRef parentProduct;
	std::list <CdashigDomainRefElement>domains;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigProductDomainsLinks_H_ */
