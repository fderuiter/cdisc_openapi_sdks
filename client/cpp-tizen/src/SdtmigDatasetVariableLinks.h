/*
 * SdtmigDatasetVariableLinks.h
 *
 * 
 */

#ifndef _SdtmigDatasetVariableLinks_H_
#define _SdtmigDatasetVariableLinks_H_


#include <string>
#include "RootCtCodelistRefElement.h"
#include "RootSdtmigDatasetVariableRef.h"
#include "SdtmClassVariableRef.h"
#include "SdtmDatasetVariableRef.h"
#include "SdtmigDatasetRef.h"
#include "SdtmigDatasetVariableRef.h"
#include "SdtmigProductRef.h"
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

class SdtmigDatasetVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigDatasetVariableLinks();
	SdtmigDatasetVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigDatasetVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDatasetVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDatasetVariableRef  self);
	/*! \brief Get 
	 */
	std::list<RootCtCodelistRefElement> getCodelist();

	/*! \brief Set 
	 */
	void setCodelist(std::list <RootCtCodelistRefElement> codelist);
	/*! \brief Get 
	 */
	SdtmClassVariableRef getModelClassVariable();

	/*! \brief Set 
	 */
	void setModelClassVariable(SdtmClassVariableRef  modelClassVariable);
	/*! \brief Get 
	 */
	SdtmDatasetVariableRef getModelDatasetVariable();

	/*! \brief Set 
	 */
	void setModelDatasetVariable(SdtmDatasetVariableRef  modelDatasetVariable);
	/*! \brief Get 
	 */
	SdtmigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmigDatasetRef getParentDataset();

	/*! \brief Set 
	 */
	void setParentDataset(SdtmigDatasetRef  parentDataset);
	/*! \brief Get 
	 */
	RootSdtmigDatasetVariableRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootSdtmigDatasetVariableRef  rootItem);
	/*! \brief Get 
	 */
	SdtmigDatasetVariableRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigDatasetVariableRef  priorVersion);

private:
	SdtmigDatasetVariableRef self;
	std::list <RootCtCodelistRefElement>codelist;
	SdtmClassVariableRef modelClassVariable;
	SdtmDatasetVariableRef modelDatasetVariable;
	SdtmigProductRef parentProduct;
	SdtmigDatasetRef parentDataset;
	RootSdtmigDatasetVariableRef rootItem;
	SdtmigDatasetVariableRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigDatasetVariableLinks_H_ */
