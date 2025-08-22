/*
 * CdashigScenarioLinks.h
 *
 * 
 */

#ifndef _CdashigScenarioLinks_H_
#define _CdashigScenarioLinks_H_


#include <string>
#include "CdashigClassRef.h"
#include "CdashigDomainRef.h"
#include "CdashigProductRef.h"
#include "CdashigScenarioRef.h"
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

class CdashigScenarioLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigScenarioLinks();
	CdashigScenarioLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigScenarioLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigScenarioRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigScenarioRef  self);
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
	CdashigScenarioRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashigScenarioRef  priorVersion);

private:
	CdashigScenarioRef self;
	CdashigProductRef parentProduct;
	CdashigClassRef parentClass;
	CdashigDomainRef parentDomain;
	CdashigScenarioRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigScenarioLinks_H_ */
