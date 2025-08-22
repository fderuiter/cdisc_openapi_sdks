/*
 * SdtmigDatasetLinks.h
 *
 * 
 */

#ifndef _SdtmigDatasetLinks_H_
#define _SdtmigDatasetLinks_H_


#include <string>
#include "SdtmDatasetRef.h"
#include "SdtmigClassRef.h"
#include "SdtmigDatasetRef.h"
#include "SdtmigProductRef.h"
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

class SdtmigDatasetLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigDatasetLinks();
	SdtmigDatasetLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigDatasetLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDatasetRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDatasetRef  self);
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
	SdtmigDatasetRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigDatasetRef  priorVersion);

private:
	SdtmigDatasetRef self;
	SdtmDatasetRef modelDataset;
	SdtmigProductRef parentProduct;
	SdtmigClassRef parentClass;
	SdtmigDatasetRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigDatasetLinks_H_ */
