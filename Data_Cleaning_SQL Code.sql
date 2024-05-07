USE CAMH; 
GO

-- Create the new table
CREATE TABLE MHDashboard (Patient_ID float,
    Reason_for_Assessment nvarchar(255),
    Sex nvarchar(255),
    Marital_Status nvarchar(255),
    Language nvarchar(255),
    Education nvarchar(255),
    Employment nvarchar(255),
    Employment_Insurance nvarchar(255),
    Pension nvarchar(255),
    Social_Assistance nvarchar(255),
    Disability_Insurance nvarchar(255),
    Other nvarchar(255),
    Amount_of_Time_Hospitalized nvarchar(255),
    Contact_with_Community_Mental_Health nvarchar(255),
    assessment__Date datetime,
    Number_of_Psychiatric_Admissions_Recent nvarchar(255),
    Number_of_Psychiatric_Admissions_Lifetime nvarchar(255),
    Time_Since_Last_Discharge nvarchar(255),
    Addiction_Counsellor nvarchar(255),
    Alcohol_drug_treatment_smoking_cessation nvarchar(255),
    Date_of_Birth datetime,
    Age_at_First_Hospitalization nvarchar(255),
    Psychologist_or_Psychometrist nvarchar(255));

INSERT INTO MHDashboard (Patient_ID,
    Reason_for_Assessment,
    Sex,
    Marital_Status,
    Language,
    Education,
    Employment,
    Employment_Insurance,
    Pension,
    Social_Assistance,
    Disability_Insurance,
    Other,
    Amount_of_Time_Hospitalized,
    Contact_with_Community_Mental_Health,
    assessment__date,
    Number_of_Psychiatric_Admissions_Recent,
    Number_of_Psychiatric_Admissions_Lifetime,
    Time_Since_Last_Discharge,
    Addiction_Counsellor,
    Alcohol_drug_treatment_smoking_cessation,
    Date_of_Birth,
    Age_at_First_Hospitalization,
    Psychologist_or_Psychometrist)
SELECT Patient_ID,
    Reason_for_Assessment,
    Sex,
    Marital_Status,
    Language,
    Education,
    Employment,
    Employment_Insurance,
    Pension,
    Social_Assistance,
    Disability_Insurance,
    Other,
    Amount_of_Time_Hospitalized,
    Contact_with_Community_Mental_Health,
    assessment__date,
    Number_of_Psychiatric_Admissions_Recent,
    Number_of_Psychiatric_Admissions_Lifetime,
    Time_Since_Last_Discharge,
    Addiction_Counsellor,
    Alcohol_drug_treatment_smoking_cessation,
    Date_of_Birth,
    Age_at_First_Hospitalization,
    Psychologist_or_Psychometrist
FROM MentalHealth
WHERE Patient_ID IS NOT NULL
    AND Reason_for_Assessment IS NOT NULL
    AND Sex IS NOT NULL
    AND Marital_Status IS NOT NULL
    AND Language IS NOT NULL
    AND Education IS NOT NULL
    AND Employment IS NOT NULL
    AND Employment_Insurance IS NOT NULL
    AND Pension IS NOT NULL
    AND Social_Assistance IS NOT NULL
    AND Disability_Insurance IS NOT NULL
    AND Other IS NOT NULL
    AND Amount_of_Time_Hospitalized IS NOT NULL
    AND Contact_with_Community_Mental_Health IS NOT NULL
    AND assessment__date IS NOT NULL
    AND Number_of_Psychiatric_Admissions_Recent IS NOT NULL
    AND Number_of_Psychiatric_Admissions_Lifetime IS NOT NULL
    AND Time_Since_Last_Discharge IS NOT NULL
    AND Addiction_Counsellor IS NOT NULL
    AND Alcohol_drug_treatment_smoking_cessation IS NOT NULL
    AND Date_of_Birth IS NOT NULL
    AND Age_at_First_Hospitalization IS NOT NULL
    AND Psychologist_or_Psychometrist IS NOT NULL;

--show data in newly created MHDashbaord Table
select *
from MHDashboard;

-- Check for null values in the MHDashboard table
SELECT *
FROM MHDashboard
WHERE Patient_ID IS NULL OR LTRIM(RTRIM(Patient_ID)) = ''
	OR Reason_for_Assessment IS NULL OR LTRIM(RTRIM(Reason_for_Assessment)) = ''
	OR Sex IS NULL OR LTRIM(RTRIM(Sex)) = ''
	OR Marital_Status IS NULL OR LTRIM(RTRIM(Marital_Status)) = ''
	OR Language IS NULL OR LTRIM(RTRIM(Language)) = ''
	OR Education IS NULL OR LTRIM(RTRIM(Education)) = ''
	OR Employment IS NULL OR LTRIM(RTRIM(Employment)) = ''
	OR Employment_Insurance IS NULL OR LTRIM(RTRIM(Employment_Insurance)) = ''
	OR Pension IS NULL OR LTRIM(RTRIM(Pension)) = ''
	OR Social_Assistance IS NULL OR LTRIM(RTRIM(Social_Assistance)) = ''
	OR Disability_Insurance IS NULL OR LTRIM(RTRIM(Disability_Insurance)) = ''
	OR Other IS NULL OR LTRIM(RTRIM(Other)) = ''
	OR Amount_of_Time_Hospitalized IS NULL OR LTRIM(RTRIM(Amount_of_Time_Hospitalized)) = ''
	OR Contact_with_Community_Mental_Health IS NULL OR LTRIM(RTRIM(Contact_with_Community_Mental_Health)) = ''
	OR assessment__date IS NULL OR LTRIM(RTRIM(assessment__Date)) = ''
	OR Number_of_Psychiatric_Admissions_Recent IS NULL OR LTRIM(RTRIM(Number_of_Psychiatric_Admissions_Recent)) = ''
	OR Number_of_Psychiatric_Admissions_Lifetime IS NULL OR LTRIM(RTRIM(Number_of_Psychiatric_Admissions_Lifetime)) = ''
	OR Time_Since_Last_Discharge IS NULL OR LTRIM(RTRIM(Time_Since_Last_Discharge)) = ''
	OR Addiction_Counsellor IS NULL OR LTRIM(RTRIM(Addiction_Counsellor)) = ''
	OR Alcohol_drug_treatment_smoking_cessation IS NULL OR LTRIM(RTRIM(Alcohol_drug_treatment_smoking_cessation)) = ''
	OR Date_of_Birth IS NULL OR LTRIM(RTRIM(Date_of_Birth)) = ''
	OR Age_at_First_Hospitalization IS NULL OR LTRIM(RTRIM(Age_at_First_Hospitalization)) = ''
	OR Psychologist_or_Psychometrist IS NULL OR LTRIM(RTRIM(Psychologist_or_Psychometrist)) = '';

--Dropping Null or Blank Values from MHDatabase Table
DELETE FROM MHDashboard
WHERE Patient_ID IS NULL OR LTRIM(RTRIM(Patient_ID)) = ''
	OR Reason_for_Assessment IS NULL OR LTRIM(RTRIM(Reason_for_Assessment)) = ''
	OR Sex IS NULL OR LTRIM(RTRIM(Sex)) = ''
	OR Marital_Status IS NULL OR LTRIM(RTRIM(Marital_Status)) = ''
	OR Language IS NULL OR LTRIM(RTRIM(Language)) = ''
	OR Education IS NULL OR LTRIM(RTRIM(Education)) = ''
	OR Employment IS NULL OR LTRIM(RTRIM(Employment)) = ''
	OR Employment_Insurance IS NULL OR LTRIM(RTRIM(Employment_Insurance)) = ''
	OR Pension IS NULL OR LTRIM(RTRIM(Pension)) = ''
	OR Social_Assistance IS NULL OR LTRIM(RTRIM(Social_Assistance)) = ''
	OR Disability_Insurance IS NULL OR LTRIM(RTRIM(Disability_Insurance)) = ''
	OR Other IS NULL OR LTRIM(RTRIM(Other)) = ''
	OR Amount_of_Time_Hospitalized IS NULL OR LTRIM(RTRIM(Amount_of_Time_Hospitalized)) = ''
	OR Contact_with_Community_Mental_Health IS NULL OR LTRIM(RTRIM(Contact_with_Community_Mental_Health)) = ''
	OR assessment__date IS NULL OR LTRIM(RTRIM(assessment__Date)) = ''
	OR Number_of_Psychiatric_Admissions_Recent IS NULL OR LTRIM(RTRIM(Number_of_Psychiatric_Admissions_Recent)) = ''
	OR Number_of_Psychiatric_Admissions_Lifetime IS NULL OR LTRIM(RTRIM(Number_of_Psychiatric_Admissions_Lifetime)) = ''
	OR Time_Since_Last_Discharge IS NULL OR LTRIM(RTRIM(Time_Since_Last_Discharge)) = ''
	OR Addiction_Counsellor IS NULL OR LTRIM(RTRIM(Addiction_Counsellor)) = ''
	OR Alcohol_drug_treatment_smoking_cessation IS NULL OR LTRIM(RTRIM(Alcohol_drug_treatment_smoking_cessation)) = ''
	OR Date_of_Birth IS NULL OR LTRIM(RTRIM(Date_of_Birth)) = ''
	OR Age_at_First_Hospitalization IS NULL OR LTRIM(RTRIM(Age_at_First_Hospitalization)) = ''
	OR Psychologist_or_Psychometrist IS NULL OR LTRIM(RTRIM(Psychologist_or_Psychometrist)) = '';

-- Check for null values in the MHDashboard table
SELECT *
FROM MHDashboard
WHERE Patient_ID IS NULL OR LTRIM(RTRIM(Patient_ID)) = ''
	OR Reason_for_Assessment IS NULL OR LTRIM(RTRIM(Reason_for_Assessment)) = ''
	OR Sex IS NULL OR LTRIM(RTRIM(Sex)) = ''
	OR Marital_Status IS NULL OR LTRIM(RTRIM(Marital_Status)) = ''
	OR Language IS NULL OR LTRIM(RTRIM(Language)) = ''
	OR Education IS NULL OR LTRIM(RTRIM(Education)) = ''
	OR Employment IS NULL OR LTRIM(RTRIM(Employment)) = ''
	OR Employment_Insurance IS NULL OR LTRIM(RTRIM(Employment_Insurance)) = ''
	OR Pension IS NULL OR LTRIM(RTRIM(Pension)) = ''
	OR Social_Assistance IS NULL OR LTRIM(RTRIM(Social_Assistance)) = ''
	OR Disability_Insurance IS NULL OR LTRIM(RTRIM(Disability_Insurance)) = ''
	OR Other IS NULL OR LTRIM(RTRIM(Other)) = ''
	OR Amount_of_Time_Hospitalized IS NULL OR LTRIM(RTRIM(Amount_of_Time_Hospitalized)) = ''
	OR Contact_with_Community_Mental_Health IS NULL OR LTRIM(RTRIM(Contact_with_Community_Mental_Health)) = ''
	OR assessment__date IS NULL OR LTRIM(RTRIM(assessment__Date)) = ''
	OR Number_of_Psychiatric_Admissions_Recent IS NULL OR LTRIM(RTRIM(Number_of_Psychiatric_Admissions_Recent)) = ''
	OR Number_of_Psychiatric_Admissions_Lifetime IS NULL OR LTRIM(RTRIM(Number_of_Psychiatric_Admissions_Lifetime)) = ''
	OR Time_Since_Last_Discharge IS NULL OR LTRIM(RTRIM(Time_Since_Last_Discharge)) = ''
	OR Addiction_Counsellor IS NULL OR LTRIM(RTRIM(Addiction_Counsellor)) = ''
	OR Alcohol_drug_treatment_smoking_cessation IS NULL OR LTRIM(RTRIM(Alcohol_drug_treatment_smoking_cessation)) = ''
	OR Date_of_Birth IS NULL OR LTRIM(RTRIM(Date_of_Birth)) = ''
	OR Age_at_First_Hospitalization IS NULL OR LTRIM(RTRIM(Age_at_First_Hospitalization)) = ''
	OR Psychologist_or_Psychometrist IS NULL OR LTRIM(RTRIM(Psychologist_or_Psychometrist)) = '';