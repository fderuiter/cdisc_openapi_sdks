/*
 * SdtmDatasetVariablesLinks.h
 *
 * 
 */

#ifndef _SdtmDatasetVariablesLinks_H_
#define _SdtmDatasetVariablesLinks_H_


#include <string>
#include "SdtmClassRef.h"
#include "SdtmDatasetVariableRefElement.h"
#include "SdtmDatasetVariablesRef.h"
#include "SdtmProductRef.h"
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

class SdtmDatasetVariablesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmDatasetVariablesLinks();
	SdtmDatasetVariablesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmDatasetVariablesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDatasetVariablesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDatasetVariablesRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(SdtmClassRef  parentClass);
	/*! \brief Get 
	 */
	SdtmDatasetVariablesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmDatasetVariablesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmDatasetVariableRefElement> getDatasetVariables();

	/*! \brief Set 
	 */
	void setDatasetVariables(std::list <SdtmDatasetVariableRefElement> datasetVariables);

private:
	SdtmDatasetVariablesRef self;
	SdtmProductRef parentProduct;
	SdtmClassRef parentClass;
	SdtmDatasetVariablesRef priorVersion;
	std::list <SdtmDatasetVariableRefElement>datasetVariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmDatasetVariablesLinks_H_ */
