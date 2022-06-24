Instance: example-findRisc-bmi
InstanceOf: Observation
Title: "Example - FINDRISC patient body mass index"
Description: "FINDRISC question about the patient body mass index"
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-scoreresult"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $sct#60621009 "FHIR Body Mass index (observation entity)"
* subject = Reference(rs-findRisc-patient)
* effectiveDateTime = "2020-09-23T02:57:56+00:00"
* performer = Reference(rs-findRisc-patient)
* valueQuantity = 30 'kg/m2' "kg/m2"