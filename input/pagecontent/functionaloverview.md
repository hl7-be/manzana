

The Manzana project is based on the FHIR R4 specification  and Belgian profiles.  
The diagram below shows the different data entities and elements that are relevant to this project, including the FHIR resources that contain the data.
<div>
{% include score.svg %}
</div>

### Questionnaire-derived scores
The **Manzana Questionnaire** defines the data that is asked from the patient;
Each patient's answer is stored in a single QuestionnaireResponse, and each QuestionnaireResponse can be used to calculate a score



### Calculated
The automated calculation of score from the EHR, uses different types of elements :
The Body Measurements, Observations and Meal Intakes (stored as Observation resources with specific scores), and insulin administration (stored as MedicationAdministration resources).
All these can be calculated via a predefined Operation that is defined with the corresponding OperationDefinition.