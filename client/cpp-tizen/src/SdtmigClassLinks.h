/*
 * SdtmigClassLinks.h
 *
 * 
 */

#ifndef _SdtmigClassLinks_H_
#define _SdtmigClassLinks_H_


#include <string>
#include "SdtmClassRef.h"
#include "SdtmigClassRef.h"
#include "SdtmigClassRefSubclass.h"
#include "SdtmigProductRef.h"
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

class SdtmigClassLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigClassLinks();
	SdtmigClassLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigClassLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigClassRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigClassRef  self);
	/*! \brief Get 
	 */
	SdtmClassRef getModelClass();

	/*! \brief Set 
	 */
	void setModelClass(SdtmClassRef  modelClass);
	/*! \brief Get 
	 */
	SdtmigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmigClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(SdtmigClassRef  parentClass);
	/*! \brief Get 
	 */
	std::list<SdtmigClassRefSubclass> getSubclasses();

	/*! \brief Set 
	 */
	void setSubclasses(std::list <SdtmigClassRefSubclass> subclasses);
	/*! \brief Get 
	 */
	SdtmigClassRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigClassRef  priorVersion);

private:
	SdtmigClassRef self;
	SdtmClassRef modelClass;
	SdtmigProductRef parentProduct;
	SdtmigClassRef parentClass;
	std::list <SdtmigClassRefSubclass>subclasses;
	SdtmigClassRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigClassLinks_H_ */
