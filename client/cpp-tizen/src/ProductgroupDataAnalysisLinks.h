/*
 * ProductgroupDataAnalysisLinks.h
 *
 * 
 */

#ifndef _ProductgroupDataAnalysisLinks_H_
#define _ProductgroupDataAnalysisLinks_H_


#include <string>
#include "AdamProductRefElement.h"
#include "ProductgroupRef.h"
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

class ProductgroupDataAnalysisLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupDataAnalysisLinks();
	ProductgroupDataAnalysisLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupDataAnalysisLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductgroupRef  self);
	/*! \brief Get 
	 */
	std::list<AdamProductRefElement> getAdam();

	/*! \brief Set 
	 */
	void setAdam(std::list <AdamProductRefElement> adam);

private:
	ProductgroupRef self;
	std::list <AdamProductRefElement>adam;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupDataAnalysisLinks_H_ */
