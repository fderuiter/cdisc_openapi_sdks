/*
 * CdashigDomainFieldLinks.h
 *
 * 
 */

#ifndef _CdashigDomainFieldLinks_H_
#define _CdashigDomainFieldLinks_H_


#include <string>
#include "CdashigDomainFieldRef.h"
#include "CdashigDomainRef.h"
#include "CdashigProductRef.h"
#include "RootCdashigDomainFieldRef.h"
#include "RootCtCodelistRefElement.h"
#include "SdtmClassVariableRefTarget.h"
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

class CdashigDomainFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigDomainFieldLinks();
	CdashigDomainFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigDomainFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigDomainFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigDomainFieldRef  self);
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
	RootCdashigDomainFieldRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootCdashigDomainFieldRef  rootItem);
	/*! \brief Get 
	 */
	CdashigDomainFieldRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashigDomainFieldRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmClassVariableRefTarget> getSdtmClassMappingTargets();

	/*! \brief Set 
	 */
	void setSdtmClassMappingTargets(std::list <SdtmClassVariableRefTarget> sdtmClassMappingTargets);
	/*! \brief Get 
	 */
	std::list<SdtmigDatasetVariableRefTarget> getSdtmigDatasetMappingTargets();

	/*! \brief Set 
	 */
	void setSdtmigDatasetMappingTargets(std::list <SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets);

private:
	CdashigDomainFieldRef self;
	std::list <RootCtCodelistRefElement>codelist;
	CdashigProductRef parentProduct;
	CdashigDomainRef parentDomain;
	RootCdashigDomainFieldRef rootItem;
	CdashigDomainFieldRef priorVersion;
	std::list <SdtmClassVariableRefTarget>sdtmClassMappingTargets;
	std::list <SdtmigDatasetVariableRefTarget>sdtmigDatasetMappingTargets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigDomainFieldLinks_H_ */
