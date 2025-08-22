/*
 * SendigDatasetVariableLinks.h
 *
 * 
 */

#ifndef _SendigDatasetVariableLinks_H_
#define _SendigDatasetVariableLinks_H_


#include <string>
#include "RootCtCodelistRefElement.h"
#include "RootSendigDatasetVariableRef.h"
#include "SdtmClassVariableRef.h"
#include "SdtmDatasetVariableRef.h"
#include "SendigDatasetRef.h"
#include "SendigDatasetVariableRef.h"
#include "SendigProductRef.h"
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

class SendigDatasetVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigDatasetVariableLinks();
	SendigDatasetVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigDatasetVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDatasetVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDatasetVariableRef  self);
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
	SendigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SendigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SendigDatasetRef getParentDataset();

	/*! \brief Set 
	 */
	void setParentDataset(SendigDatasetRef  parentDataset);
	/*! \brief Get 
	 */
	RootSendigDatasetVariableRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootSendigDatasetVariableRef  rootItem);
	/*! \brief Get 
	 */
	SendigDatasetVariableRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SendigDatasetVariableRef  priorVersion);

private:
	SendigDatasetVariableRef self;
	std::list <RootCtCodelistRefElement>codelist;
	SdtmClassVariableRef modelClassVariable;
	SdtmDatasetVariableRef modelDatasetVariable;
	SendigProductRef parentProduct;
	SendigDatasetRef parentDataset;
	RootSendigDatasetVariableRef rootItem;
	SendigDatasetVariableRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigDatasetVariableLinks_H_ */
