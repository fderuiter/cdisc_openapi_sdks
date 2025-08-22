/*
 * QrsResponseLinks.h
 *
 * 
 */

#ifndef _QrsResponseLinks_H_
#define _QrsResponseLinks_H_


#include <string>
#include "RootCtTermRef.h"
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

class QrsResponseLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsResponseLinks();
	QrsResponseLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsResponseLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtTermRef getQrsResponseORRES();

	/*! \brief Set 
	 */
	void setQrsResponseORRES(RootCtTermRef  qrsResponseORRES);
	/*! \brief Get 
	 */
	RootCtTermRef getQrsResponseORRESU();

	/*! \brief Set 
	 */
	void setQrsResponseORRESU(RootCtTermRef  qrsResponseORRESU);
	/*! \brief Get 
	 */
	RootCtTermRef getQrsResponseSTRESC();

	/*! \brief Set 
	 */
	void setQrsResponseSTRESC(RootCtTermRef  qrsResponseSTRESC);
	/*! \brief Get 
	 */
	RootCtTermRef getQrsResponseSTRESCU();

	/*! \brief Set 
	 */
	void setQrsResponseSTRESCU(RootCtTermRef  qrsResponseSTRESCU);

private:
	RootCtTermRef qrsResponseORRES;
	RootCtTermRef qrsResponseORRESU;
	RootCtTermRef qrsResponseSTRESC;
	RootCtTermRef qrsResponseSTRESCU;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsResponseLinks_H_ */
