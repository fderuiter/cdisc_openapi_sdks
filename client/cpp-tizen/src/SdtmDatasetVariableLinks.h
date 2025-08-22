/*
 * SdtmDatasetVariableLinks.h
 *
 * 
 */

#ifndef _SdtmDatasetVariableLinks_H_
#define _SdtmDatasetVariableLinks_H_


#include <string>
#include "RootSdtmDatasetVariableRef.h"
#include "SdtmDatasetRef.h"
#include "SdtmDatasetVariableRef.h"
#include "SdtmProductRef.h"
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

class SdtmDatasetVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmDatasetVariableLinks();
	SdtmDatasetVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmDatasetVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDatasetVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDatasetVariableRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmDatasetRef getParentDataset();

	/*! \brief Set 
	 */
	void setParentDataset(SdtmDatasetRef  parentDataset);
	/*! \brief Get 
	 */
	RootSdtmDatasetVariableRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootSdtmDatasetVariableRef  rootItem);
	/*! \brief Get 
	 */
	SdtmDatasetVariableRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmDatasetVariableRef  priorVersion);

private:
	SdtmDatasetVariableRef self;
	SdtmProductRef parentProduct;
	SdtmDatasetRef parentDataset;
	RootSdtmDatasetVariableRef rootItem;
	SdtmDatasetVariableRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmDatasetVariableLinks_H_ */
