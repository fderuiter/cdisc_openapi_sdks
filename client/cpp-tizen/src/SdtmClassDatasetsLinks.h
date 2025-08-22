/*
 * SdtmClassDatasetsLinks.h
 *
 * 
 */

#ifndef _SdtmClassDatasetsLinks_H_
#define _SdtmClassDatasetsLinks_H_


#include <string>
#include "SdtmClassDatasetsRef.h"
#include "SdtmDatasetRefElement.h"
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

class SdtmClassDatasetsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmClassDatasetsLinks();
	SdtmClassDatasetsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmClassDatasetsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassDatasetsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassDatasetsRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmClassDatasetsRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmClassDatasetsRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmDatasetRefElement> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SdtmDatasetRefElement> datasets);

private:
	SdtmClassDatasetsRef self;
	SdtmProductRef parentProduct;
	SdtmClassDatasetsRef priorVersion;
	std::list <SdtmDatasetRefElement>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmClassDatasetsLinks_H_ */
