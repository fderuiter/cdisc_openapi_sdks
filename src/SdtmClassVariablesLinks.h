/*
 * SdtmClassVariablesLinks.h
 *
 * 
 */

#ifndef _SdtmClassVariablesLinks_H_
#define _SdtmClassVariablesLinks_H_


#include <string>
#include "SdtmClassVariableRefElement.h"
#include "SdtmClassVariablesRef.h"
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

class SdtmClassVariablesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmClassVariablesLinks();
	SdtmClassVariablesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmClassVariablesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmClassVariablesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmClassVariablesRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(SdtmProductRef  parentProduct);
	/*! \brief Get 
	 */
	SdtmClassVariablesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmClassVariablesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<SdtmClassVariableRefElement> getClassVariables();

	/*! \brief Set 
	 */
	void setClassVariables(std::list <SdtmClassVariableRefElement> classVariables);

private:
	SdtmClassVariablesRef self;
	SdtmProductRef parentProduct;
	SdtmClassVariablesRef priorVersion;
	std::list <SdtmClassVariableRefElement>classVariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmClassVariablesLinks_H_ */
