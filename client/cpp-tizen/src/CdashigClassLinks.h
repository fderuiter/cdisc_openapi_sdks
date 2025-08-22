/*
 * CdashigClassLinks.h
 *
 * 
 */

#ifndef _CdashigClassLinks_H_
#define _CdashigClassLinks_H_


#include <string>
#include "CdashClassRef.h"
#include "CdashigClassRef.h"
#include "CdashigClassRefSubclass.h"
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

class CdashigClassLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigClassLinks();
	CdashigClassLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigClassLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigClassRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigClassRef  self);
	/*! \brief Get 
	 */
	CdashClassRef getModelClass();

	/*! \brief Set 
	 */
	void setModelClass(CdashClassRef  modelClass);
	/*! \brief Get 
	 */
	CdashigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashigProductRef  parentProduct);
	/*! \brief Get 
	 */
	CdashigClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(CdashigClassRef  parentClass);
	/*! \brief Get 
	 */
	std::list<CdashigClassRefSubclass> getSubclasses();

	/*! \brief Set 
	 */
	void setSubclasses(std::list <CdashigClassRefSubclass> subclasses);
	/*! \brief Get 
	 */
	CdashigClassRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashigClassRef  priorVersion);

private:
	CdashigClassRef self;
	CdashClassRef modelClass;
	CdashigProductRef parentProduct;
	CdashigClassRef parentClass;
	std::list <CdashigClassRefSubclass>subclasses;
	CdashigClassRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigClassLinks_H_ */
