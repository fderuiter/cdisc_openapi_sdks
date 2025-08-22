/*
 * CdashDomainFieldLinks.h
 *
 * 
 */

#ifndef _CdashDomainFieldLinks_H_
#define _CdashDomainFieldLinks_H_


#include <string>
#include "CdashClassRef.h"
#include "CdashDomainFieldRef.h"
#include "CdashDomainRef.h"
#include "CdashProductRef.h"
#include "RootCdashDomainFieldRef.h"
#include "RootCtCodelistRefElement.h"
#include "SdtmDatasetVariableRefTarget.h"
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

class CdashDomainFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashDomainFieldLinks();
	CdashDomainFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashDomainFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashDomainFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashDomainFieldRef  self);
	/*! \brief Get 
	 */
	std::list<RootCtCodelistRefElement> getCodelist();

	/*! \brief Set 
	 */
	void setCodelist(std::list <RootCtCodelistRefElement> codelist);
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
	CdashDomainRef getParentDomain();

	/*! \brief Set 
	 */
	void setParentDomain(CdashDomainRef  parentDomain);
	/*! \brief Get 
	 */
	RootCdashDomainFieldRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootCdashDomainFieldRef  rootItem);
	/*! \brief Get 
	 */
	CdashDomainFieldRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashDomainFieldRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmDatasetVariableRefTarget> getSdtmDatasetMappingTargets();

	/*! \brief Set 
	 */
	void setSdtmDatasetMappingTargets(std::list <SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets);
	/*! \brief Get 
	 */
	std::list<SdtmigDatasetVariableRefTarget> getSdtmigDatasetMappingTargets();

	/*! \brief Set 
	 */
	void setSdtmigDatasetMappingTargets(std::list <SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets);

private:
	CdashDomainFieldRef self;
	std::list <RootCtCodelistRefElement>codelist;
	CdashProductRef parentProduct;
	CdashClassRef parentClass;
	CdashDomainRef parentDomain;
	RootCdashDomainFieldRef rootItem;
	CdashDomainFieldRef priorVersion;
	std::list <SdtmDatasetVariableRefTarget>sdtmDatasetMappingTargets;
	std::list <SdtmigDatasetVariableRefTarget>sdtmigDatasetMappingTargets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashDomainFieldLinks_H_ */
