/*
 * CdashDomainLinks.h
 *
 * 
 */

#ifndef _CdashDomainLinks_H_
#define _CdashDomainLinks_H_


#include <string>
#include "CdashClassRef.h"
#include "CdashDomainRef.h"
#include "CdashProductRef.h"
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

class CdashDomainLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashDomainLinks();
	CdashDomainLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashDomainLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashDomainRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashDomainRef  self);
	/*! \brief Get 
	 */
	CdashProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashProductRef  parentProduct);
	/*! \brief Get 
	 */
	CdashClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(CdashClassRef  parentClass);
	/*! \brief Get 
	 */
	CdashDomainRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashDomainRef  priorVersion);

private:
	CdashDomainRef self;
	CdashProductRef parentProduct;
	CdashClassRef parentClass;
	CdashDomainRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashDomainLinks_H_ */
