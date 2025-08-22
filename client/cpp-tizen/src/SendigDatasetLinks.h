/*
 * SendigDatasetLinks.h
 *
 * 
 */

#ifndef _SendigDatasetLinks_H_
#define _SendigDatasetLinks_H_


#include <string>
#include "SdtmDatasetRef.h"
#include "SendigClassRef.h"
#include "SendigDatasetRef.h"
#include "SendigProductRef.h"
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

class SendigDatasetLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigDatasetLinks();
	SendigDatasetLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigDatasetLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDatasetRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDatasetRef  self);
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
	SendigDatasetRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SendigDatasetRef  priorVersion);

private:
	SendigDatasetRef self;
	SdtmDatasetRef modelDataset;
	SendigProductRef parentProduct;
	SendigClassRef parentClass;
	SendigDatasetRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigDatasetLinks_H_ */
