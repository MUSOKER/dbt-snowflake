WITH transformed_people AS (
    SELECT
        FIRSTNAME AS first_name,
        MIDDLENAME AS middle_name,
        LASTNAME AS last_name,
        NAMELIKES AS name_likes,
        FIRSTCONTACTEVENTID AS first_contact_event_id,
        AGE AS age,
        AGEPROVIDEDONDATE AS age_provided_on_date,
        GENDER AS gender,
        CURRENTRECORDSTATE AS current_record_state,
        GRADSTATUS AS grad_status,
        NEVERCONTACT AS never_contact,
        DECEASED AS deceased,
        PRIMARYEMAILADDRESS AS primary_email,
        SECONDARYEMAILADDRESS AS secondary_email,
        DONOTEMAIL AS do_not_email,
        EMAILABLE AS emailable,
        CREATEDATE AS created_date,
        CREATEDBY AS created_by,
        LASTUPDATEDATE AS last_updated_date,
        LASTUPDATEDBY AS last_updated_by,
        INTRODUCEDBY AS introduced_by,
        WEBUSERID AS web_user_id,
        WEBUSERPASSWORD AS web_user_password,
        DATEOFBIRTH AS date_of_birth,
        PARTICIPATIONPREFERENCECITYID AS participation_preference_city_id,
        PARTICIPATIONPREFERENCECENTERID AS participation_preference_center_id,
        MARITALSTATUS AS marital_status,
        OCCUPATION AS occupation,
        JOBTITLE AS job_title,
        RETIRED AS retired,
        LANGUAGEPREFERENCE1 AS language_preference_1,
        LANGUAGEPREFERENCE2 AS language_preference_2,
        WEBLASTLOGIN AS web_last_login,
        PASSWORDREMINDERQUESTION AS password_reminder_question,
        PASSWORDREMINDERANSWER AS password_reminder_answer,
        FORCEPASSWORDCHANGE AS force_password_change,
        TNCACCEPTDATE AS tnc_accept_date,
        UPDATESOURCE AS update_source,
        NOTES AS notes,
        CORPORATIONID AS corporation_id,
        LEGALWARNINGNOTES AS legal_warning_notes,
        INTRODUCEDBYNAME AS introduced_by_name,
        TNCVERSIONID AS tnc_version_id,
        CONTACTPREFERENCES AS contact_preferences,
        FIRSTCONTACTDATE AS first_contact_date,
        IS18ATFIRSTCONTACT AS is_18_at_first_contact,
        FIRSTCONTACTSOURCE AS first_contact_source,
        INTRODUCEDBYFIRSTNAME AS introduced_by_first_name,
        INTRODUCEDBYLASTNAME AS introduced_by_last_name,
        GUID AS guid,
        INITIALS AS initials,
        LEADERSORTORDER AS leader_sort_order,
        CONSENTVERSIONID AS consent_version_id,
        COUNTRYOFCONSENT AS country_of_consent,
        CONSENTSIGNATUREDATE AS consent_signature_date,
        ONVACATION AS on_vacation,
        EFFECTIVEVACATIONSTARTDATE AS effective_vacation_start_date,
        EFFECTIVEVACATIONENDDATE AS effective_vacation_end_date,
        PROFILEPICTURE AS profile_picture,
        IMPERSONATIONID AS impersonation_id,
        TAXID AS tax_id,
        BANKINGLOCATIONID AS banking_location_id,
        ACTIVE AS active,
        CREATEDBYPID AS created_by_pid,
        LASTUPDATEDBYPID AS last_updated_by_pid,
        PID AS pid,
        HOMECENTERID AS home_center_id,
        SCHEDULERGROUPID AS scheduler_group_id,
        FIRSTNAMEEXTENDED1 AS first_name_extended_1,
        FIRSTNAMEEXTENDED2 AS first_name_extended_2,
        LASTNAMEEXTENDED1 AS last_name_extended_1,
        LASTNAMEEXTENDED2 AS last_name_extended_2,
        CREATEDBYCENTERID AS created_by_center_id,
        GRADUATED AS graduated,
        GRADUATIONDATE AS graduation_date,
        ACTIVECAMPAIGNCONTACTID AS active_campaign_contact_id,
        EXTERNALREFERENCES AS external_references
    FROM {{ source('lisa', 'PEOPLE') }}
)

SELECT * FROM transformed_people
