/*
 * CdashigScenarioFieldLinks.h
 *
 * 
 */

#ifndef _CdashigScenarioFieldLinks_H_
#define _CdashigScenarioFieldLinks_H_


#include <string>
#include "CdashigDomainRef.h"
#include "CdashigProductRef.h"
#include "CdashigScenarioFieldRef.h"
#include "CdashigScenarioRef.h"
#include "RootCdashigScenarioFieldRef.h"
#include "RootCtCodelistRefElement.h"
#include "SdtmigDatasetVariableRefTarget.h"
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

class CdashigScenarioFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigScenarioFieldLinks();
	CdashigScenarioFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigScenarioFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigScenarioFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigScenarioFieldRef  self);
	/*! \brief Get 
	 */
	std::list<RootCtCodelistRefElement> getCodelist();

	/*! \brief Set 
	 */
	void setCodelist(std::list <RootCtCodelistRefElement> codelist);
	/*! \brief Get 
	 */
	CdashigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashigProductRef  parentProduct);
	/*! \brief Get 
	 */
	CdashigDomainRef getParentDomain();

	/*! \brief Set 
	 */
	void setParentDomain(CdashigDomainRef  parentDomain);
	/*! \brief Get 
	 */
	CdashigScenarioRef getParentScenario();

	/*! \brief Set 
	 */
	void setParentScenario(CdashigScenarioRef  parentScenario);
	/*! \brief Get 
	 */
	RootCdashigScenarioFieldRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootCdashigScenarioFieldRef  rootItem);
	/*! \brief Get 
	 */
	CdashigScenarioFieldRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashigScenarioFieldRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmigDatasetVariableRefTarget> getSdtmigDatasetMappingTargets();

	/*! \brief Set 
	 */
	void setSdtmigDatasetMappingTargets(std::list <SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets);

private:
	CdashigScenarioFieldRef self;
	std::list <RootCtCodelistRefElement>codelist;
	CdashigProductRef parentProduct;
	CdashigDomainRef parentDomain;
	CdashigScenarioRef parentScenario;
	RootCdashigScenarioFieldRef rootItem;
	CdashigScenarioFieldRef priorVersion;
	std::list <SdtmigDatasetVariableRefTarget>sdtmigDatasetMappingTargets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigScenarioFieldLinks_H_ */
