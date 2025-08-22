/*
 * SdtmDatasetLinks.h
 *
 * 
 */

#ifndef _SdtmDatasetLinks_H_
#define _SdtmDatasetLinks_H_


#include <string>
#include "SdtmClassRef.h"
#include "SdtmDatasetRef.h"
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

class SdtmDatasetLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmDatasetLinks();
	SdtmDatasetLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmDatasetLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDatasetRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDatasetRef  self);
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
	SdtmDatasetRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmDatasetRef  priorVersion);

private:
	SdtmDatasetRef self;
	SdtmProductRef parentProduct;
	SdtmClassRef parentClass;
	SdtmDatasetRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmDatasetLinks_H_ */
