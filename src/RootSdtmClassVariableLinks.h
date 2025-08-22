/*
 * RootSdtmClassVariableLinks.h
 *
 * 
 */

#ifndef _RootSdtmClassVariableLinks_H_
#define _RootSdtmClassVariableLinks_H_


#include <string>
#include "RootSdtmClassVariableRef.h"
#include "SdtmClassVariableRefVersion.h"
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

class RootSdtmClassVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSdtmClassVariableLinks();
	RootSdtmClassVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSdtmClassVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmClassVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSdtmClassVariableRef  self);
	/*! \brief Get 
	 */
	std::list<SdtmClassVariableRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <SdtmClassVariableRefVersion> versions);

private:
	RootSdtmClassVariableRef self;
	std::list <SdtmClassVariableRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSdtmClassVariableLinks_H_ */
