/*
 * SdtmigDatasetVariablesLinks.h
 *
 * 
 */

#ifndef _SdtmigDatasetVariablesLinks_H_
#define _SdtmigDatasetVariablesLinks_H_


#include <string>
#include "SdtmDatasetRef.h"
#include "SdtmigClassRef.h"
#include "SdtmigDatasetVariableRefElement.h"
#include "SdtmigDatasetVariablesRef.h"
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

class SdtmigDatasetVariablesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigDatasetVariablesLinks();
	SdtmigDatasetVariablesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigDatasetVariablesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDatasetVariablesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDatasetVariablesRef  self);
	/*! \brief Get 
	 */
	SdtmDatasetRef getModelDataset();

	/*! \brief Set 
	 */
	void setModelDataset(SdtmDatasetRef  modelDataset);
	/*! \brief Get 
	 */
	SdtmigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmigClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(SdtmigClassRef  parentClass);
	/*! \brief Get 
	 */
	SdtmigDatasetVariablesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigDatasetVariablesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmigDatasetVariableRefElement> getDatasetVariables();

	/*! \brief Set 
	 */
	void setDatasetVariables(std::list <SdtmigDatasetVariableRefElement> datasetVariables);

private:
	SdtmigDatasetVariablesRef self;
	SdtmDatasetRef modelDataset;
	SdtmigProductRef parentProduct;
	SdtmigClassRef parentClass;
	SdtmigDatasetVariablesRef priorVersion;
	std::list <SdtmigDatasetVariableRefElement>datasetVariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigDatasetVariablesLinks_H_ */
