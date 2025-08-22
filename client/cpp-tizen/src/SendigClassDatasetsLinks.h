/*
 * SendigClassDatasetsLinks.h
 *
 * 
 */

#ifndef _SendigClassDatasetsLinks_H_
#define _SendigClassDatasetsLinks_H_


#include <string>
#include "SendigClassDatasetsRef.h"
#include "SendigDatasetRefElement.h"
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

class SendigClassDatasetsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigClassDatasetsLinks();
	SendigClassDatasetsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigClassDatasetsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigClassDatasetsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigClassDatasetsRef  self);
	/*! \brief Get 
	 */
	SendigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SendigProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<SendigDatasetRefElement> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SendigDatasetRefElement> datasets);

private:
	SendigClassDatasetsRef self;
	SendigProductRef parentProduct;
	std::list <SendigDatasetRefElement>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigClassDatasetsLinks_H_ */
