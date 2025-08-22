/*
 * SendigClassLinks.h
 *
 * 
 */

#ifndef _SendigClassLinks_H_
#define _SendigClassLinks_H_


#include <string>
#include "SdtmClassRef.h"
#include "SendigClassRef.h"
#include "SendigClassRefSubclass.h"
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

class SendigClassLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigClassLinks();
	SendigClassLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigClassLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigClassRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigClassRef  self);
	/*! \brief Get 
	 */
	SdtmClassRef getModelClass();

	/*! \brief Set 
	 */
	void setModelClass(SdtmClassRef  modelClass);
	/*! \brief Get 
	 */
	SendigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SendigProductRef  parentProduct);
	/*! \brief Get 
	 */
	SendigClassRef getParentClass();

	/*! \brief Set 
	 */
	void setParentClass(SendigClassRef  parentClass);
	/*! \brief Get 
	 */
	std::list<SendigClassRefSubclass> getSubclasses();

	/*! \brief Set 
	 */
	void setSubclasses(std::list <SendigClassRefSubclass> subclasses);
	/*! \brief Get 
	 */
	SendigClassRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SendigClassRef  priorVersion);

private:
	SendigClassRef self;
	SdtmClassRef modelClass;
	SendigProductRef parentProduct;
	SendigClassRef parentClass;
	std::list <SendigClassRefSubclass>subclasses;
	SendigClassRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigClassLinks_H_ */
