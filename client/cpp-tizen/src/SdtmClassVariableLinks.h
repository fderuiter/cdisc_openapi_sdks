/*
 * SdtmClassVariableLinks.h
 *
 * 
 */

#ifndef _SdtmClassVariableLinks_H_
#define _SdtmClassVariableLinks_H_


#include <string>
#include "RootSdtmClassVariableRef.h"
#include "SdtmClassRef.h"
#include "SdtmClassVariableRef.h"
#include "SdtmClassVariableRefQualifies.h"
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

class SdtmClassVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmClassVariableLinks();
	SdtmClassVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmClassVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassVariableRef  self);
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
	std::list<SdtmClassVariableRefQualifies> getQualifiesVariables();

	/*! \brief Set 
	 */
	void setQualifiesVariables(std::list <SdtmClassVariableRefQualifies> qualifiesVariables);
	/*! \brief Get 
	 */
	RootSdtmClassVariableRef getRootItem();

	/*! \brief Set 
	 */
	void setRootItem(RootSdtmClassVariableRef  rootItem);
	/*! \brief Get 
	 */
	SdtmClassVariableRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmClassVariableRef  priorVersion);

private:
	SdtmClassVariableRef self;
	SdtmProductRef parentProduct;
	SdtmClassRef parentClass;
	std::list <SdtmClassVariableRefQualifies>qualifiesVariables;
	RootSdtmClassVariableRef rootItem;
	SdtmClassVariableRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmClassVariableLinks_H_ */
