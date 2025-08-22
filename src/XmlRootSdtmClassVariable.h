/*
 * XmlRootSdtmClassVariable.h
 *
 * 
 */

#ifndef _XmlRootSdtmClassVariable_H_
#define _XmlRootSdtmClassVariable_H_


#include <string>
#include "RootSdtmClassVariable.h"
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

class XmlRootSdtmClassVariable : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlRootSdtmClassVariable();
	XmlRootSdtmClassVariable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlRootSdtmClassVariable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmClassVariable getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSdtmClassVariable  self);

private:
	RootSdtmClassVariable self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlRootSdtmClassVariable_H_ */
