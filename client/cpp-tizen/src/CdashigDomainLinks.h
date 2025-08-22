/*
 * CdashigDomainLinks.h
 *
 * 
 */

#ifndef _CdashigDomainLinks_H_
#define _CdashigDomainLinks_H_


#include <string>
#include "CdashigClassRef.h"
#include "CdashigDomainRef.h"
#include "CdashigProductRef.h"
#include "CdashigScenarioRefElement.h"
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

class CdashigDomainLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigDomainLinks();
	CdashigDomainLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigDomainLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigDomainRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigDomainRef  self);
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
	CdashigDomainRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashigDomainRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<CdashigScenarioRefElement> getScenarios();

	/*! \brief Set 
	 */
	void setScenarios(std::list <CdashigScenarioRefElement> scenarios);

private:
	CdashigDomainRef self;
	CdashigProductRef parentProduct;
	CdashigClassRef parentClass;
	CdashigDomainRef priorVersion;
	std::list <CdashigScenarioRefElement>scenarios;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigDomainLinks_H_ */
