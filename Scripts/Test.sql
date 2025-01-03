SELECT 
	CASE WHEN
		CUSTOMER_I_D = ''
		  OR CUSTOMER_I_D IS NULL
		  OR TRIM(CUSTOMER_I_D) != CUSTOMER_I_D
		  OR CUSTOMER_I_D < 100000 OR CUSTOMER_I_D > 700000
		  OR CUSTOMER_I_D NOT LIKE_REGEXPR '^\p{N}{6}$' THEN 'check' ELSE 'ok'
	END AS STATUS
	, customer_i_d
	, customer_since
	, master_data_sub_type
	, master_data_type
	, customer_dunnning_association
	, company_name2
	, master_data_export_date
	, customer_credit_limit
	, customer_search_term
	, customer_payment_method_desc
	, owning_reference
	, customer_name_mdm
	, customer_payment_method
	, customer_shipping_type
	, customer_price_group
	, company_name3
	, customer_credit_terms_desc
	, data_info
	, customer_association
	, customer_o_i_d
	, corporate_currency_mdm
	, customer_change_date
	, reference_date
	, customer_selection
	, customer_dunning_procedure
	, company
	, customer_company_group
	, customer_credit_limit_c_c
	, customer_credit_terms
	, customer_shipping_type_desc
	, customer_credit_limit_o_c
	, customer_a_b_c_classification
	, company_display_name
	, customer_language
	, own_currency_mdm
	, customer_check_credit_limit
	, customer_industry
	, export_version
	, customer_terms_of_delivery_desc
	, customer_work_group
	, customer_supplier_no
	, customer_creation_date
	, customer_change_user
	, customer_discount_visible
	, customer_dunning_procedure_desc
	, company_name1
	, customer_terms_of_delivery
	, customer_discount_group
	, customer_z_i_p
	, customer_creation_user
	, customer_adress_no
	, customer_specialist
FROM
    mig."pa_export" 
WHERE
    (MASTER_DATA_SUB_TYPE = 'Customer')
AND NOT (CUSTOMER_I_D NOT LIKE_REGEXPR '^100000|100001|100002$')
