/*
 * AdamVariableLinks.h
 *
 * 
 */

#ifndef _AdamVariableLinks_H_
#define _AdamVariableLinks_H_


#include <string>
#include "AdamDatastructureRef.h"
#include "AdamProductRef.h"
#include "AdamVariableRef.h"
#include "AdamVarsetRef.h"
#include "RootCtCodelistRef.h"
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

class AdamVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamVariableLinks();
	AdamVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamVariableRef  self);
	/*! \brief Get 
	 */
	RootCtCodelistRef getCodelist();

	/*! \brief Set 
	 */
	void setCodelist(RootCtCodelistRef  codelist);
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
	AdamVarsetRef getParentVariableSet();

	/*! \brief Set 
	 */
	void setParentVariableSet(AdamVarsetRef  parentVariableSet);
	/*! \brief Get 
	 */
	AdamVariableRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(AdamVariableRef  priorVersion);

private:
	AdamVariableRef self;
	RootCtCodelistRef codelist;
	AdamProductRef parentProduct;
	AdamDatastructureRef parentDatastructure;
	AdamVarsetRef parentVariableSet;
	AdamVariableRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamVariableLinks_H_ */
