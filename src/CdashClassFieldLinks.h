/*
 * CdashClassFieldLinks.h
 *
 * 
 */

#ifndef _CdashClassFieldLinks_H_
#define _CdashClassFieldLinks_H_


#include <string>
#include "CdashClassFieldRef.h"
#include "CdashClassRef.h"
#include "CdashProductRef.h"
#include "RootCdashClassFieldRef.h"
#include "RootCtCodelistRefElement.h"
#include "SdtmClassVariableRefTarget.h"
#include "SdtmDatasetVariableRefTarget.h"
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

class CdashClassFieldLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashClassFieldLinks();
	CdashClassFieldLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashClassFieldLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashClassFieldRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashClassFieldRef  self);
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
	RootCdashClassFieldRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootCdashClassFieldRef  rootItem);
	/*! \brief Get 
	 */
	CdashClassFieldRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashClassFieldRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmClassVariableRefTarget> getSdtmClassMappingTargets();

	/*! \brief Set 
	 */
	void setSdtmClassMappingTargets(std::list <SdtmClassVariableRefTarget> sdtmClassMappingTargets);
	/*! \brief Get 
	 */
	std::list<SdtmDatasetVariableRefTarget> getSdtmDatasetMappingTargets();

	/*! \brief Set 
	 */
	void setSdtmDatasetMappingTargets(std::list <SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets);

private:
	CdashClassFieldRef self;
	std::list <RootCtCodelistRefElement>codelist;
	CdashProductRef parentProduct;
	CdashClassRef parentClass;
	RootCdashClassFieldRef rootItem;
	CdashClassFieldRef priorVersion;
	std::list <SdtmClassVariableRefTarget>sdtmClassMappingTargets;
	std::list <SdtmDatasetVariableRefTarget>sdtmDatasetMappingTargets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashClassFieldLinks_H_ */
