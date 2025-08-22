/*
 * SdtmClassLinks.h
 *
 * 
 */

#ifndef _SdtmClassLinks_H_
#define _SdtmClassLinks_H_


#include <string>
#include "SdtmClassRef.h"
#include "SdtmClassRefSubclass.h"
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

class SdtmClassLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmClassLinks();
	SdtmClassLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmClassLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(SdtmClassRef  parentClass);
	/*! \brief Get 
	 */
	std::list<SdtmClassRefSubclass> getSubclasses();

	/*! \brief Set 
	 */
	void setSubclasses(std::list <SdtmClassRefSubclass> subclasses);
	/*! \brief Get 
	 */
	SdtmClassRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmClassRef  priorVersion);

private:
	SdtmClassRef self;
	SdtmProductRef parentProduct;
	SdtmClassRef parentClass;
	std::list <SdtmClassRefSubclass>subclasses;
	SdtmClassRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmClassLinks_H_ */
