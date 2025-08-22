/*
 * RootSdtmClassVariable.h
 *
 * 
 */

#ifndef _RootSdtmClassVariable_H_
#define _RootSdtmClassVariable_H_


#include <string>
#include "RootSdtmClassVariableLinks.h"
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

class RootSdtmClassVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSdtmClassVariable();
	RootSdtmClassVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSdtmClassVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmClassVariableLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(RootSdtmClassVariableLinks  _links);

private:
	RootSdtmClassVariableLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSdtmClassVariable_H_ */
