Instance: example-findRisc-height
InstanceOf: Observation
Title: "Example - FINDRISC patient height"
Description: "FINDRISC screening patient height"
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-scoreresult"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $sct#50373000 "Height/growth measure (observable entity)"
* subject = Reference(rs-findRisc-patient)
* effectiveDateTime = "2020-09-23T02:57:56+00:00"
* performer = Reference(rs-findRisc-patient)
* valueQuantity = 165 'cm' "cm"