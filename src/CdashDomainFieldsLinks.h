/*
 * CdashDomainFieldsLinks.h
 *
 * 
 */

#ifndef _CdashDomainFieldsLinks_H_
#define _CdashDomainFieldsLinks_H_


#include <string>
#include "CdashClassRef.h"
#include "CdashDomainFieldRefElement.h"
#include "CdashDomainFieldsRef.h"
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

class CdashDomainFieldsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashDomainFieldsLinks();
	CdashDomainFieldsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashDomainFieldsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashDomainFieldsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashDomainFieldsRef  self);
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
	std::list<CdashDomainFieldRefElement> getFields();

	/*! \brief Set 
	 */
	void setFields(std::list <CdashDomainFieldRefElement> fields);

private:
	CdashDomainFieldsRef self;
	CdashProductRef parentProduct;
	CdashClassRef parentClass;
	std::list <CdashDomainFieldRefElement>fields;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashDomainFieldsLinks_H_ */
