/*
 * Lastupdated.h
 *
 * 
 */

#ifndef _Lastupdated_H_
#define _Lastupdated_H_


#include <string>
#include "LastupdatedLinks.h"
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

class Lastupdated : public Object {
public:
	/*! \brief Constructor.
	 */
	Lastupdated();
	Lastupdated(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Lastupdated();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	LastupdatedLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(LastupdatedLinks  _links);
	/*! \brief Get 
	 */
	std::string getOverall();

	/*! \brief Set 
	 */
	void setOverall(std::string  overall);
	/*! \brief Get 
	 */
	std::string getDataanalysis();

	/*! \brief Set 
	 */
	void setDataanalysis(std::string  dataanalysis);
	/*! \brief Get 
	 */
	std::string getDatacollection();

	/*! \brief Set 
	 */
	void setDatacollection(std::string  datacollection);
	/*! \brief Get 
	 */
	std::string getDatatabulation();

	/*! \brief Set 
	 */
	void setDatatabulation(std::string  datatabulation);
	/*! \brief Get 
	 */
	std::string getMeasure();

	/*! \brief Set 
	 */
	void setMeasure(std::string  measure);
	/*! \brief Get 
	 */
	std::string getTerminology();

	/*! \brief Set 
	 */
	void setTerminology(std::string  terminology);

private:
	LastupdatedLinks _links;
	std::string overall;
	std::string dataanalysis;
	std::string datacollection;
	std::string datatabulation;
	std::string measure;
	std::string terminology;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Lastupdated_H_ */
