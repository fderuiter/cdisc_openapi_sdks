/*
 * ProductgroupTerminologyLinks.h
 *
 * 
 */

#ifndef _ProductgroupTerminologyLinks_H_
#define _ProductgroupTerminologyLinks_H_


#include <string>
#include "CtPackageRefElement.h"
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

class ProductgroupTerminologyLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupTerminologyLinks();
	ProductgroupTerminologyLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupTerminologyLinks();

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
	std::list<CtPackageRefElement> getPackages();

	/*! \brief Set 
	 */
	void setPackages(std::list <CtPackageRefElement> packages);

private:
	ProductgroupRef self;
	std::list <CtPackageRefElement>packages;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupTerminologyLinks_H_ */
