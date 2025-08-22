/*
 * CdashProductClassesLinks.h
 *
 * 
 */

#ifndef _CdashProductClassesLinks_H_
#define _CdashProductClassesLinks_H_


#include <string>
#include "CdashClassRefElement.h"
#include "CdashProductClassesRef.h"
#include "CdashProductRef.h"
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

class CdashProductClassesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashProductClassesLinks();
	CdashProductClassesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashProductClassesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashProductClassesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashProductClassesRef  self);
	/*! \brief Get 
	 */
	CdashProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<CdashClassRefElement> getClasses();

	/*! \brief Set 
	 */
	void setClasses(std::list <CdashClassRefElement> classes);

private:
	CdashProductClassesRef self;
	CdashProductRef parentProduct;
	std::list <CdashClassRefElement>classes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashProductClassesLinks_H_ */
