/*
 * SdtmDatasetsLinks.h
 *
 * 
 */

#ifndef _SdtmDatasetsLinks_H_
#define _SdtmDatasetsLinks_H_


#include <string>
#include "SdtmDatasetRefElement.h"
#include "SdtmDatasetsRef.h"
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

class SdtmDatasetsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmDatasetsLinks();
	SdtmDatasetsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmDatasetsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDatasetsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDatasetsRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmDatasetsRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmDatasetsRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmDatasetRefElement> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SdtmDatasetRefElement> datasets);

private:
	SdtmDatasetsRef self;
	SdtmProductRef parentProduct;
	SdtmDatasetsRef priorVersion;
	std::list <SdtmDatasetRefElement>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmDatasetsLinks_H_ */
