Alias: SCT = http://snomed.info/sct
Alias: $targetStructureMap = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap

RuleSet: Question(context, linkId, text, type, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].repeats = {repeats}

Instance: covid-test-questionnaire
InstanceOf: Questionnaire
Description: "Questionnaire for Covid Tests"
Title: "Covid Test Questionnaire"

* name = "COVID19TestQuestionnaire"
* title = "COVID-19 Test Questionnaire"
* version = "2021"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

* insert Question(,title, COVID Test, display, false)

* insert Question(,patient, Patient data, group, false)
* item[=].required = true
* insert Question(item[=].,patient_id, Patient SSIN, string, false)
* insert Question(item[=].,patient_name, Patient name, string, false)

* insert Question(,device, Device, group, false)
* item[=].required = true
* insert Question(item[=].,device_manufacturer, Device Manufacturer, string, false)
* insert Question(item[=].,device_code, Device Code, string, false)
* item[=].item[=].required = true
* insert Question(item[=].,device_lot, Device Lot number, string, false)
* item[=].item[=].required = true
* insert Question(item[=].,device_expiry_date, Device expiry date, date, false)
* item[=].item[=].required = true

* insert Question(,specimen_type, Specimen collection type, choice, false)
* item[=].answerOption[+].valueString = "oral" 
* item[=].answerOption[+].valueString = "nasal" 
* item[=].answerOption[+].valueString = "nasopharyngeal" 

* insert Question(,test_result, Result, choice, false)
* item[=].required = true
* item[=].answerOption[+].valueString = "Positive" 
* item[=].answerOption[+].valueString = "Negative" 
* item[=].answerOption[+].valueString = "Inconclusive" 

* insert Question(,evidence, Evidence, attachment, false)
* item[=].required = true

* insert Question(,performer, Professional, group, false)
* insert Question(item[=].,professional_id, Professional SSIN, string, false)
* insert Question(item[=].,professional_name, Professional name, string, false)
* item[=].item[=].required = true




//ValueSet: covid-19-fast-test-collection-type
ValueSet: COVID19FastTestCollectionType
* include SCT#472901003 "Swab from nasal sinus (specimen)"
* include SCT#258500001 "Nasopharyngeal swab (specimen)"
* include SCT#461911000124106 "Swab specimen from oropharynx (specimen)"
* include SCT#445297001 "Swab of internal nose (specimen)"


//ValueSet: covid-19-fast-test-result
ValueSet: COVID19FastTestResult
// Source: https://confluence.ihtsdotools.org/display/snomed/SNOMED+CT+COVID-19+Related+Content
Title: "COVID-19 Fast test result"
Description:  "COVID-19 Fast test result values."
* include SCT#10828004 "Positive"
* include SCT#260385009 "Negative"
* include SCT#419984006 "Inconclusive"
