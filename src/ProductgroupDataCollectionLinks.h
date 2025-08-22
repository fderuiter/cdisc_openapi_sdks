/*
 * ProductgroupDataCollectionLinks.h
 *
 * 
 */

#ifndef _ProductgroupDataCollectionLinks_H_
#define _ProductgroupDataCollectionLinks_H_


#include <string>
#include "CdashProductRefElement.h"
#include "CdashigProductRefElement.h"
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

class ProductgroupDataCollectionLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupDataCollectionLinks();
	ProductgroupDataCollectionLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupDataCollectionLinks();

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
	std::list<CdashProductRefElement> getCdash();

	/*! \brief Set 
	 */
	void setCdash(std::list <CdashProductRefElement> cdash);
	/*! \brief Get 
	 */
	std::list<CdashigProductRefElement> getCdashig();

	/*! \brief Set 
	 */
	void setCdashig(std::list <CdashigProductRefElement> cdashig);

private:
	ProductgroupRef self;
	std::list <CdashProductRefElement>cdash;
	std::list <CdashigProductRefElement>cdashig;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupDataCollectionLinks_H_ */
