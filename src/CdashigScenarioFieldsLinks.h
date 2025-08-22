/*
 * CdashigScenarioFieldsLinks.h
 *
 * 
 */

#ifndef _CdashigScenarioFieldsLinks_H_
#define _CdashigScenarioFieldsLinks_H_


#include <string>
#include "CdashigClassRef.h"
#include "CdashigDomainRef.h"
#include "CdashigProductRef.h"
#include "CdashigScenarioFieldRefElement.h"
#include "CdashigScenarioFieldsRef.h"
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

class CdashigScenarioFieldsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigScenarioFieldsLinks();
	CdashigScenarioFieldsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigScenarioFieldsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigScenarioFieldsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigScenarioFieldsRef  self);
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
	CdashigDomainRef getParentDomain();

	/*! \brief Set 
	 */
	void setParentDomain(CdashigDomainRef  parentDomain);
	/*! \brief Get 
	 */
	std::list<CdashigScenarioFieldRefElement> getFields();

	/*! \brief Set 
	 */
	void setFields(std::list <CdashigScenarioFieldRefElement> fields);

private:
	CdashigScenarioFieldsRef self;
	CdashigProductRef parentProduct;
	CdashigClassRef parentClass;
	CdashigDomainRef parentDomain;
	std::list <CdashigScenarioFieldRefElement>fields;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigScenarioFieldsLinks_H_ */
