/*
 * AdamVarsetLinks.h
 *
 * 
 */

#ifndef _AdamVarsetLinks_H_
#define _AdamVarsetLinks_H_


#include <string>
#include "AdamDatastructureRef.h"
#include "AdamProductRef.h"
#include "AdamVarsetRef.h"
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

class AdamVarsetLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamVarsetLinks();
	AdamVarsetLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamVarsetLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamVarsetRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamVarsetRef  self);
	/*! \brief Get 
	 */
	AdamProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(AdamProductRef  parentProduct);
	/*! \brief Get 
	 */
	AdamDatastructureRef getParentDatastructure();

	/*! \brief Set 
	 */
	void setParentDatastructure(AdamDatastructureRef  parentDatastructure);
	/*! \brief Get 
	 */
	AdamVarsetRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(AdamVarsetRef  priorVersion);

private:
	AdamVarsetRef self;
	AdamProductRef parentProduct;
	AdamDatastructureRef parentDatastructure;
	AdamVarsetRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamVarsetLinks_H_ */
