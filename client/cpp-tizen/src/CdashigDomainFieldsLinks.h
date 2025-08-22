/*
 * CdashigDomainFieldsLinks.h
 *
 * 
 */

#ifndef _CdashigDomainFieldsLinks_H_
#define _CdashigDomainFieldsLinks_H_


#include <string>
#include "CdashigClassRef.h"
#include "CdashigDomainFieldRefElement.h"
#include "CdashigDomainFieldsRef.h"
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

class CdashigDomainFieldsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigDomainFieldsLinks();
	CdashigDomainFieldsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigDomainFieldsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigDomainFieldsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigDomainFieldsRef  self);
	/*! \brief Get 
	 */
	CdashigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashigProductRef  parentProduct);
	/*! \brief Get 
	 */
	CdashigClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(CdashigClassRef  parentClass);
	/*! \brief Get 
	 */
	std::list<CdashigDomainFieldRefElement> getFields();

	/*! \brief Set 
	 */
	void setFields(std::list <CdashigDomainFieldRefElement> fields);

private:
	CdashigDomainFieldsRef self;
	CdashigProductRef parentProduct;
	CdashigClassRef parentClass;
	std::list <CdashigDomainFieldRefElement>fields;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigDomainFieldsLinks_H_ */
