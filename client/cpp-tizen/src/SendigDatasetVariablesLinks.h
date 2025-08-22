/*
 * SendigDatasetVariablesLinks.h
 *
 * 
 */

#ifndef _SendigDatasetVariablesLinks_H_
#define _SendigDatasetVariablesLinks_H_


#include <string>
#include "SdtmDatasetRef.h"
#include "SendigClassRef.h"
#include "SendigDatasetVariableRefElement.h"
#include "SendigDatasetVariablesRef.h"
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

class SendigDatasetVariablesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigDatasetVariablesLinks();
	SendigDatasetVariablesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigDatasetVariablesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDatasetVariablesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDatasetVariablesRef  self);
	/*! \brief Get 
	 */
	SdtmDatasetRef getModelDataset();

	/*! \brief Set 
	 */
	void setModelDataset(SdtmDatasetRef  modelDataset);
	/*! \brief Get 
	 */
	SendigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SendigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SendigClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(SendigClassRef  parentClass);
	/*! \brief Get 
	 */
	SendigDatasetVariablesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SendigDatasetVariablesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SendigDatasetVariableRefElement> getDatasetVariables();

	/*! \brief Set 
	 */
	void setDatasetVariables(std::list <SendigDatasetVariableRefElement> datasetVariables);

private:
	SendigDatasetVariablesRef self;
	SdtmDatasetRef modelDataset;
	SendigProductRef parentProduct;
	SendigClassRef parentClass;
	SendigDatasetVariablesRef priorVersion;
	std::list <SendigDatasetVariableRefElement>datasetVariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigDatasetVariablesLinks_H_ */
