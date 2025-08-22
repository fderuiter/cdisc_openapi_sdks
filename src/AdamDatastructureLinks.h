/*
 * AdamDatastructureLinks.h
 *
 * 
 */

#ifndef _AdamDatastructureLinks_H_
#define _AdamDatastructureLinks_H_


#include <string>
#include "AdamDatastructureRef.h"
#include "AdamProductRef.h"
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

class AdamDatastructureLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamDatastructureLinks();
	AdamDatastructureLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamDatastructureLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamDatastructureRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamDatastructureRef  self);
	/*! \brief Get 
	 */
	AdamProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(AdamProductRef  parentProduct);
	/*! \brief Get 
	 */
	AdamDatastructureRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(AdamDatastructureRef  priorVersion);

private:
	AdamDatastructureRef self;
	AdamProductRef parentProduct;
	AdamDatastructureRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamDatastructureLinks_H_ */
