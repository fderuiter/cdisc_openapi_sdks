/*
 * CdashigProductClassesLinks.h
 *
 * 
 */

#ifndef _CdashigProductClassesLinks_H_
#define _CdashigProductClassesLinks_H_


#include <string>
#include "CdashigClassRefElement.h"
#include "CdashigProductClassesRef.h"
#include "CdashigProductRef.h"
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

class CdashigProductClassesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigProductClassesLinks();
	CdashigProductClassesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigProductClassesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProductClassesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProductClassesRef  self);
	/*! \brief Get 
	 */
	CdashigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashigProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<CdashigClassRefElement> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <CdashigClassRefElement> classes);

private:
	CdashigProductClassesRef self;
	CdashigProductRef parentProduct;
	std::list <CdashigClassRefElement>classes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigProductClassesLinks_H_ */
