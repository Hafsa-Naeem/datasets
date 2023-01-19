--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 9.5.25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_institution_temporary_records DROP CONSTRAINT usi_institution_id_foreign;
ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_user_id;
ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_user_group_id_foreign;
ALTER TABLE ONLY public.user_settings DROP CONSTRAINT user_settings_user_id_foreign;
ALTER TABLE ONLY public.user_interests DROP CONSTRAINT user_interests_user_id_foreign;
ALTER TABLE ONLY public.user_interests DROP CONSTRAINT user_interests_controlled_vocab_entry_id_foreign;
ALTER TABLE ONLY public.user_group_stage DROP CONSTRAINT user_group_stage_user_group_id;
ALTER TABLE ONLY public.user_group_stage DROP CONSTRAINT user_group_stage_context_id;
ALTER TABLE ONLY public.user_group_settings DROP CONSTRAINT user_group_settings_user_group_id_foreign;
ALTER TABLE ONLY public.temporary_files DROP CONSTRAINT temporary_files_user_id;
ALTER TABLE ONLY public.submissions DROP CONSTRAINT submissions_current_publication_id;
ALTER TABLE ONLY public.submissions DROP CONSTRAINT submissions_context_id;
ALTER TABLE ONLY public.submission_settings DROP CONSTRAINT submission_settings_submission_id_foreign;
ALTER TABLE ONLY public.submission_search_objects DROP CONSTRAINT submission_search_object_submission;
ALTER TABLE ONLY public.submission_search_object_keywords DROP CONSTRAINT submission_search_object_keywords_object_id_foreign;
ALTER TABLE ONLY public.submission_search_object_keywords DROP CONSTRAINT submission_search_object_keywords_keyword_id;
ALTER TABLE ONLY public.submission_files DROP CONSTRAINT submission_files_uploader_user_id_foreign;
ALTER TABLE ONLY public.submission_files DROP CONSTRAINT submission_files_submission_id;
ALTER TABLE ONLY public.submission_files DROP CONSTRAINT submission_files_source_submission_file_id_foreign;
ALTER TABLE ONLY public.submission_files DROP CONSTRAINT submission_files_genre_id_foreign;
ALTER TABLE ONLY public.submission_files DROP CONSTRAINT submission_files_file_id_foreign;
ALTER TABLE ONLY public.submission_file_settings DROP CONSTRAINT submission_file_settings_submission_file_id_foreign;
ALTER TABLE ONLY public.submission_file_revisions DROP CONSTRAINT submission_file_revisions_submission_file_id_foreign;
ALTER TABLE ONLY public.submission_file_revisions DROP CONSTRAINT submission_file_revisions_file_id_foreign;
ALTER TABLE ONLY public.submission_comments DROP CONSTRAINT submission_comments_submission_id;
ALTER TABLE ONLY public.submission_comments DROP CONSTRAINT submission_comments_author_id_foreign;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT subeditor_submission_group_user_id;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT subeditor_submission_group_user_group_id_foreign;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_user_id;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_user_group_id;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_submission_id_foreign;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_user_id;
ALTER TABLE ONLY public.server_settings DROP CONSTRAINT server_settings_server_id;
ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_server_id_foreign;
ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_review_form_id_foreign;
ALTER TABLE ONLY public.section_settings DROP CONSTRAINT section_settings_section_id_foreign;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT section_editors_context_id;
ALTER TABLE ONLY public.review_round_files DROP CONSTRAINT review_round_files_submission_id_foreign;
ALTER TABLE ONLY public.review_round_files DROP CONSTRAINT review_round_files_submission_file_id_foreign;
ALTER TABLE ONLY public.review_form_settings DROP CONSTRAINT review_form_settings_review_form_id;
ALTER TABLE ONLY public.review_form_responses DROP CONSTRAINT review_form_responses_review_id_foreign;
ALTER TABLE ONLY public.review_form_responses DROP CONSTRAINT review_form_responses_review_form_element_id_foreign;
ALTER TABLE ONLY public.review_form_elements DROP CONSTRAINT review_form_elements_review_form_id;
ALTER TABLE ONLY public.review_form_element_settings DROP CONSTRAINT review_form_element_settings_review_form_element_id;
ALTER TABLE ONLY public.review_files DROP CONSTRAINT review_files_submission_file_id_foreign;
ALTER TABLE ONLY public.review_files DROP CONSTRAINT review_files_review_id_foreign;
ALTER TABLE ONLY public.review_assignments DROP CONSTRAINT review_assignments_submission_id_foreign;
ALTER TABLE ONLY public.review_assignments DROP CONSTRAINT review_assignments_reviewer_id_foreign;
ALTER TABLE ONLY public.review_assignments DROP CONSTRAINT review_assignments_review_round_id_foreign;
ALTER TABLE ONLY public.review_assignments DROP CONSTRAINT review_assignments_review_form_id_foreign;
ALTER TABLE ONLY public.query_participants DROP CONSTRAINT query_participants_user_id_foreign;
ALTER TABLE ONLY public.query_participants DROP CONSTRAINT query_participants_query_id_foreign;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_submission_id_foreign;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_section_id_foreign;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_doi_id_foreign;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_author_id;
ALTER TABLE ONLY public.publication_settings DROP CONSTRAINT publication_settings_publication_id;
ALTER TABLE ONLY public.publication_galleys DROP CONSTRAINT publication_galleys_submission_file_id_foreign;
ALTER TABLE ONLY public.publication_galleys DROP CONSTRAINT publication_galleys_publication_id;
ALTER TABLE ONLY public.publication_galleys DROP CONSTRAINT publication_galleys_doi_id_foreign;
ALTER TABLE ONLY public.publication_galley_settings DROP CONSTRAINT publication_galley_settings_galley_id_foreign;
ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_publication_id_foreign;
ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_category_id_foreign;
ALTER TABLE ONLY public.notification_subscription_settings DROP CONSTRAINT notification_subscription_settings_user_id_foreign;
ALTER TABLE ONLY public.notification_subscription_settings DROP CONSTRAINT notification_subscription_settings_context_foreign;
ALTER TABLE ONLY public.notification_settings DROP CONSTRAINT notification_settings_notification_id_foreign;
ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_user_id_foreign;
ALTER TABLE ONLY public.navigation_menu_item_settings DROP CONSTRAINT navigation_menu_item_settings_navigation_menu_id;
ALTER TABLE ONLY public.navigation_menu_item_assignments DROP CONSTRAINT navigation_menu_item_assignments_navigation_menu_item_id_foreig;
ALTER TABLE ONLY public.navigation_menu_item_assignments DROP CONSTRAINT navigation_menu_item_assignments_navigation_menu_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_monthly DROP CONSTRAINT msm_submission_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_monthly DROP CONSTRAINT msm_context_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly DROP CONSTRAINT msim_submission_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly DROP CONSTRAINT msim_institution_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly DROP CONSTRAINT msim_context_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_institution_daily DROP CONSTRAINT msid_submission_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_institution_daily DROP CONSTRAINT msid_institution_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_institution_daily DROP CONSTRAINT msid_context_id_foreign;
ALTER TABLE ONLY public.metrics_submission_geo_monthly DROP CONSTRAINT msgm_submission_id_foreign;
ALTER TABLE ONLY public.metrics_submission_geo_monthly DROP CONSTRAINT msgm_context_id_foreign;
ALTER TABLE ONLY public.metrics_submission_geo_daily DROP CONSTRAINT msgd_submission_id_foreign;
ALTER TABLE ONLY public.metrics_submission_geo_daily DROP CONSTRAINT msgd_context_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_daily DROP CONSTRAINT msd_submission_id_foreign;
ALTER TABLE ONLY public.metrics_counter_submission_daily DROP CONSTRAINT msd_context_id_foreign;
ALTER TABLE ONLY public.metrics_submission DROP CONSTRAINT metrics_submission_submission_id_foreign;
ALTER TABLE ONLY public.metrics_submission DROP CONSTRAINT metrics_submission_submission_file_id_foreign;
ALTER TABLE ONLY public.metrics_submission DROP CONSTRAINT metrics_submission_representation_id_foreign;
ALTER TABLE ONLY public.metrics_submission DROP CONSTRAINT metrics_submission_context_id_foreign;
ALTER TABLE ONLY public.metrics_context DROP CONSTRAINT metrics_context_context_id_foreign;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_submission_id_foreign;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_context_id;
ALTER TABLE ONLY public.library_file_settings DROP CONSTRAINT library_file_settings_file_id_foreign;
ALTER TABLE ONLY public.item_views DROP CONSTRAINT item_views_user_id_foreign;
ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_context_id_foreign;
ALTER TABLE ONLY public.institution_settings DROP CONSTRAINT institution_settings_institution_id_foreign;
ALTER TABLE ONLY public.institution_ip DROP CONSTRAINT institution_ip_institution_id_foreign;
ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_context_id_foreign;
ALTER TABLE ONLY public.genre_settings DROP CONSTRAINT genre_settings_genre_id_foreign;
ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_filter_group_id_foreign;
ALTER TABLE ONLY public.filter_settings DROP CONSTRAINT filter_settings_filter_id_foreign;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_user_id_foreign;
ALTER TABLE ONLY public.event_log_settings DROP CONSTRAINT event_log_settings_log_id;
ALTER TABLE ONLY public.email_templates_settings DROP CONSTRAINT email_templates_settings_email_id;
ALTER TABLE ONLY public.email_templates DROP CONSTRAINT email_templates_context_id_foreign;
ALTER TABLE ONLY public.email_log_users DROP CONSTRAINT email_log_users_user_id_foreign;
ALTER TABLE ONLY public.email_log_users DROP CONSTRAINT email_log_users_email_log_id_foreign;
ALTER TABLE ONLY public.edit_decisions DROP CONSTRAINT edit_decisions_submission_id;
ALTER TABLE ONLY public.edit_decisions DROP CONSTRAINT edit_decisions_review_round_id_foreign;
ALTER TABLE ONLY public.edit_decisions DROP CONSTRAINT edit_decisions_editor_id;
ALTER TABLE ONLY public.dois DROP CONSTRAINT dois_context_id_foreign;
ALTER TABLE ONLY public.doi_settings DROP CONSTRAINT doi_settings_doi_id_foreign;
ALTER TABLE ONLY public.data_object_tombstone_settings DROP CONSTRAINT data_object_tombstone_settings_tombstone_id;
ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects DROP CONSTRAINT data_object_tombstone_oai_set_objects_tombstone_id;
ALTER TABLE ONLY public.controlled_vocab_entries DROP CONSTRAINT controlled_vocab_entries_controlled_vocab_id_foreign;
ALTER TABLE ONLY public.citations DROP CONSTRAINT citations_publication;
ALTER TABLE ONLY public.citation_settings DROP CONSTRAINT citation_settings_citation_id;
ALTER TABLE ONLY public.category_settings DROP CONSTRAINT category_settings_category_id_foreign;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_parent_id_foreign;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_context_id_foreign;
ALTER TABLE ONLY public.controlled_vocab_entry_settings DROP CONSTRAINT c_v_e_s_entry_id;
ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_user_group_id_foreign;
ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_publication_id;
ALTER TABLE ONLY public.author_settings DROP CONSTRAINT author_settings_author_id;
ALTER TABLE ONLY public.navigation_menu_item_assignment_settings DROP CONSTRAINT assignment_settings_navigation_menu_item_assignment_id;
ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_type_id_foreign;
ALTER TABLE ONLY public.announcement_types DROP CONSTRAINT announcement_types_context_id_foreign;
ALTER TABLE ONLY public.announcement_type_settings DROP CONSTRAINT announcement_type_settings_type_id_foreign;
ALTER TABLE ONLY public.announcement_settings DROP CONSTRAINT announcement_settings_announcement_id_foreign;
ALTER TABLE ONLY public.access_keys DROP CONSTRAINT access_keys_user_id_foreign;
DROP INDEX public.ust_submission_id;
DROP INDEX public.ust_submission_file_id;
DROP INDEX public.ust_representation_id;
DROP INDEX public.ust_context_id;
DROP INDEX public.usir_submission_id;
DROP INDEX public.usir_submission_file_id;
DROP INDEX public.usir_representation_id;
DROP INDEX public.usir_context_id;
DROP INDEX public.usii_submission_id;
DROP INDEX public.usii_submission_file_id;
DROP INDEX public.usii_representation_id;
DROP INDEX public.usii_context_id;
DROP INDEX public.usi_institution_id;
DROP INDEX public.users_username;
DROP INDEX public.users_email;
DROP INDEX public.user_user_groups_user_id;
DROP INDEX public.user_user_groups_user_group_id;
DROP INDEX public.user_settings_user_id;
DROP INDEX public.user_settings_locale_setting_name_index;
DROP INDEX public.user_interests_user_id;
DROP INDEX public.user_interests_controlled_vocab_entry_id;
DROP INDEX public.user_groups_user_group_id;
DROP INDEX public.user_groups_role_id;
DROP INDEX public.user_groups_context_id;
DROP INDEX public.user_group_stage_user_group_id;
DROP INDEX public.user_group_stage_stage_id;
DROP INDEX public.user_group_stage_context_id;
DROP INDEX public.user_group_settings_user_group_id;
DROP INDEX public.temporary_files_user_id;
DROP INDEX public.submissions_context_id;
DROP INDEX public.submission_settings_submission_id;
DROP INDEX public.submission_search_objects_submission_id;
DROP INDEX public.submission_search_object_keywords_object_id;
DROP INDEX public.submission_search_object_keywords_keyword_id;
DROP INDEX public.submission_files_uploader_user_id;
DROP INDEX public.submission_files_submission_id;
DROP INDEX public.submission_files_stage_assoc;
DROP INDEX public.submission_files_source_submission_file_id;
DROP INDEX public.submission_files_genre_id;
DROP INDEX public.submission_files_file_id;
DROP INDEX public.submission_file_settings_submission_file_id;
DROP INDEX public.submission_file_revisions_submission_file_id;
DROP INDEX public.submission_file_revisions_file_id;
DROP INDEX public.submission_comments_submission_id;
DROP INDEX public.submission_comments_author_id;
DROP INDEX public.subeditor_submission_group_user_id;
DROP INDEX public.subeditor_submission_group_user_group_id;
DROP INDEX public.subeditor_submission_group_context_id;
DROP INDEX public.subeditor_submission_group_assoc_id;
DROP INDEX public.stage_assignments_user_id;
DROP INDEX public.stage_assignments_user_group_id;
DROP INDEX public.stage_assignments_submission_id;
DROP INDEX public.sessions_user_id;
DROP INDEX public.server_settings_server_id;
DROP INDEX public.sections_server_id;
DROP INDEX public.sections_review_form_id;
DROP INDEX public.section_settings_section_id;
DROP INDEX public.review_rounds_submission_id;
DROP INDEX public.review_round_files_submission_id;
DROP INDEX public.review_round_files_submission_file_id;
DROP INDEX public.review_form_settings_review_form_id;
DROP INDEX public.review_form_responses_review_id;
DROP INDEX public.review_form_responses_review_form_element_id;
DROP INDEX public.review_form_responses_pkey;
DROP INDEX public.review_form_elements_review_form_id;
DROP INDEX public.review_form_element_settings_review_form_element_id;
DROP INDEX public.review_files_submission_file_id;
DROP INDEX public.review_files_review_id;
DROP INDEX public.review_assignments_submission_id;
DROP INDEX public.review_assignments_reviewer_review;
DROP INDEX public.review_assignments_reviewer_id;
DROP INDEX public.review_assignments_form_id;
DROP INDEX public.review_assignment_reviewer_round;
DROP INDEX public.query_participants_user_id;
DROP INDEX public.query_participants_query_id;
DROP INDEX public.queries_assoc_id;
DROP INDEX public.publications_url_path;
DROP INDEX public.publications_submission_id;
DROP INDEX public.publications_section_id;
DROP INDEX public.publications_doi_id;
DROP INDEX public.publications_author_id;
DROP INDEX public.publication_settings_name_value;
DROP INDEX public.publication_galleys_url_path;
DROP INDEX public.publication_galleys_submission_file_id;
DROP INDEX public.publication_galleys_publication_id;
DROP INDEX public.publication_galleys_doi_id;
DROP INDEX public.publication_galley_settings_name_value;
DROP INDEX public.publication_galley_settings_galley_id;
DROP INDEX public.publication_categories_publication_id;
DROP INDEX public.publication_categories_category_id;
DROP INDEX public.plugin_settings_plugin_name;
DROP INDEX public.notifications_user_id_level;
DROP INDEX public.notifications_context_id_user_id;
DROP INDEX public.notifications_context_id;
DROP INDEX public.notifications_assoc;
DROP INDEX public.notification_subscription_settings_user_id;
DROP INDEX public.notification_subscription_settings_context;
DROP INDEX public.notification_settings_notification_id;
DROP INDEX public.notes_user_id;
DROP INDEX public.notes_assoc;
DROP INDEX public.navigation_menu_item_settings_navigation_menu_item_id;
DROP INDEX public.navigation_menu_item_assignments_navigation_menu_item_id;
DROP INDEX public.navigation_menu_item_assignments_navigation_menu_id;
DROP INDEX public.navigation_menu_item_assignment_settings_n_m_i_a_id;
DROP INDEX public.msm_context_id_submission_id;
DROP INDEX public.msim_submission_id;
DROP INDEX public.msim_institution_id;
DROP INDEX public.msim_context_id_submission_id;
DROP INDEX public.msim_context_id;
DROP INDEX public.msid_submission_id;
DROP INDEX public.msid_load_id;
DROP INDEX public.msid_institution_id;
DROP INDEX public.msid_context_id_submission_id;
DROP INDEX public.msid_context_id;
DROP INDEX public.msgm_submission_id;
DROP INDEX public.msgm_context_id_submission_id;
DROP INDEX public.msgm_context_id;
DROP INDEX public.msgd_submission_id;
DROP INDEX public.msgd_load_id;
DROP INDEX public.msgd_context_id_submission_id;
DROP INDEX public.msgd_context_id;
DROP INDEX public.msd_load_id;
DROP INDEX public.msd_context_id_submission_id;
DROP INDEX public.ms_load_id;
DROP INDEX public.ms_context_id_submission_id_assoc_type_file_type;
DROP INDEX public.metrics_submission_submission_id;
DROP INDEX public.metrics_submission_submission_file_id;
DROP INDEX public.metrics_submission_representation_id;
DROP INDEX public.metrics_submission_context_id;
DROP INDEX public.metrics_counter_submission_monthly_submission_id;
DROP INDEX public.metrics_counter_submission_monthly_context_id;
DROP INDEX public.metrics_counter_submission_daily_submission_id;
DROP INDEX public.metrics_counter_submission_daily_context_id;
DROP INDEX public.metrics_context_load_id;
DROP INDEX public.metrics_context_context_id;
DROP INDEX public.library_files_submission_id;
DROP INDEX public.library_files_context_id;
DROP INDEX public.library_file_settings_file_id;
DROP INDEX public.jobs_queue_reserved_at_index;
DROP INDEX public.item_views_user_id;
DROP INDEX public.institutions_context_id;
DROP INDEX public.institution_settings_institution_id;
DROP INDEX public.institution_ip_start;
DROP INDEX public.institution_ip_institution_id;
DROP INDEX public.institution_ip_end;
DROP INDEX public.genres_context_id;
DROP INDEX public.genre_settings_genre_id;
DROP INDEX public.filters_filter_group_id;
DROP INDEX public.filter_settings_id;
DROP INDEX public.event_log_user_id;
DROP INDEX public.event_log_settings_name_value;
DROP INDEX public.event_log_settings_log_id;
DROP INDEX public.event_log_assoc;
DROP INDEX public.email_templates_settings_email_id;
DROP INDEX public.email_templates_context_id;
DROP INDEX public.email_templates_alternate_to;
DROP INDEX public.email_log_users_user_id;
DROP INDEX public.email_log_users_email_log_id;
DROP INDEX public.email_log_assoc;
DROP INDEX public.edit_decisions_submission_id;
DROP INDEX public.edit_decisions_review_round_id;
DROP INDEX public.edit_decisions_editor_id;
DROP INDEX public.dois_context_id;
DROP INDEX public.doi_settings_doi_id;
DROP INDEX public.data_object_tombstones_data_object_id;
DROP INDEX public.data_object_tombstone_settings_tombstone_id;
DROP INDEX public.data_object_tombstone_oai_set_objects_tombstone_id;
DROP INDEX public.controlled_vocab_entries_cv_id;
DROP INDEX public.controlled_vocab_entries_controlled_vocab_id;
DROP INDEX public.citations_publication;
DROP INDEX public.citation_settings_citation_id;
DROP INDEX public.category_settings_category_id;
DROP INDEX public.category_parent_id;
DROP INDEX public.category_context_parent_id;
DROP INDEX public.category_context_id;
DROP INDEX public.c_v_e_s_entry_id;
DROP INDEX public.authors_user_group_id;
DROP INDEX public.author_settings_author_id;
DROP INDEX public.announcements_type_id;
DROP INDEX public.announcements_assoc;
DROP INDEX public.announcement_types_context_id;
DROP INDEX public.announcement_type_settings_type_id;
DROP INDEX public.announcement_settings_announcement_id;
DROP INDEX public.access_keys_user_id;
DROP INDEX public.access_keys_hash;
ALTER TABLE ONLY public.versions DROP CONSTRAINT versions_pkey;
ALTER TABLE ONLY public.usage_stats_institution_temporary_records DROP CONSTRAINT usitr_load_id_line_number_institution_id;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_user_groups DROP CONSTRAINT user_user_groups_pkey;
ALTER TABLE ONLY public.user_settings DROP CONSTRAINT user_settings_pkey;
ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_pkey;
ALTER TABLE ONLY public.user_group_stage DROP CONSTRAINT user_group_stage_pkey;
ALTER TABLE ONLY public.user_group_settings DROP CONSTRAINT user_group_settings_pkey;
ALTER TABLE ONLY public.user_interests DROP CONSTRAINT u_e_pkey;
ALTER TABLE ONLY public.temporary_files DROP CONSTRAINT temporary_files_pkey;
ALTER TABLE ONLY public.submissions DROP CONSTRAINT submissions_pkey;
ALTER TABLE ONLY public.submission_settings DROP CONSTRAINT submission_settings_pkey;
ALTER TABLE ONLY public.submission_search_objects DROP CONSTRAINT submission_search_objects_pkey;
ALTER TABLE ONLY public.submission_search_object_keywords DROP CONSTRAINT submission_search_object_keywords_pkey;
ALTER TABLE ONLY public.submission_search_keyword_list DROP CONSTRAINT submission_search_keyword_text;
ALTER TABLE ONLY public.submission_search_keyword_list DROP CONSTRAINT submission_search_keyword_list_pkey;
ALTER TABLE ONLY public.submission_files DROP CONSTRAINT submission_files_pkey;
ALTER TABLE ONLY public.submission_file_settings DROP CONSTRAINT submission_file_settings_pkey;
ALTER TABLE ONLY public.submission_file_revisions DROP CONSTRAINT submission_file_revisions_pkey;
ALTER TABLE ONLY public.submission_comments DROP CONSTRAINT submission_comments_pkey;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_pkey;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignment;
ALTER TABLE ONLY public.site_settings DROP CONSTRAINT site_settings_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
ALTER TABLE ONLY public.servers DROP CONSTRAINT servers_pkey;
ALTER TABLE ONLY public.servers DROP CONSTRAINT servers_path;
ALTER TABLE ONLY public.server_settings DROP CONSTRAINT server_settings_pkey;
ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_pkey;
ALTER TABLE ONLY public.section_settings DROP CONSTRAINT section_settings_pkey;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT section_editors_pkey;
ALTER TABLE ONLY public.scheduled_tasks DROP CONSTRAINT scheduled_tasks_pkey;
ALTER TABLE ONLY public.review_rounds DROP CONSTRAINT review_rounds_submission_id_stage_id_round_pkey;
ALTER TABLE ONLY public.review_rounds DROP CONSTRAINT review_rounds_pkey;
ALTER TABLE ONLY public.review_round_files DROP CONSTRAINT review_round_files_pkey;
ALTER TABLE ONLY public.review_forms DROP CONSTRAINT review_forms_pkey;
ALTER TABLE ONLY public.review_form_settings DROP CONSTRAINT review_form_settings_pkey;
ALTER TABLE ONLY public.review_form_elements DROP CONSTRAINT review_form_elements_pkey;
ALTER TABLE ONLY public.review_form_element_settings DROP CONSTRAINT review_form_element_settings_pkey;
ALTER TABLE ONLY public.review_files DROP CONSTRAINT review_files_pkey;
ALTER TABLE ONLY public.review_assignments DROP CONSTRAINT review_assignments_pkey;
ALTER TABLE ONLY public.query_participants DROP CONSTRAINT query_participants_pkey;
ALTER TABLE ONLY public.queries DROP CONSTRAINT queries_pkey;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
ALTER TABLE ONLY public.publication_settings DROP CONSTRAINT publication_settings_pkey;
ALTER TABLE ONLY public.publication_galleys DROP CONSTRAINT publication_galleys_pkey;
ALTER TABLE ONLY public.publication_galley_settings DROP CONSTRAINT publication_galley_settings_pkey;
ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_id;
ALTER TABLE ONLY public.plugin_settings DROP CONSTRAINT plugin_settings_pkey;
ALTER TABLE ONLY public.oai_resumption_tokens DROP CONSTRAINT oai_resumption_tokens_pkey;
ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
ALTER TABLE ONLY public.notification_subscription_settings DROP CONSTRAINT notification_subscription_settings_pkey;
ALTER TABLE ONLY public.notification_settings DROP CONSTRAINT notification_settings_pkey;
ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_pkey;
ALTER TABLE ONLY public.navigation_menus DROP CONSTRAINT navigation_menus_pkey;
ALTER TABLE ONLY public.navigation_menu_items DROP CONSTRAINT navigation_menu_items_pkey;
ALTER TABLE ONLY public.navigation_menu_item_settings DROP CONSTRAINT navigation_menu_item_settings_pkey;
ALTER TABLE ONLY public.navigation_menu_item_assignments DROP CONSTRAINT navigation_menu_item_assignments_pkey;
ALTER TABLE ONLY public.navigation_menu_item_assignment_settings DROP CONSTRAINT navigation_menu_item_assignment_settings_pkey;
ALTER TABLE ONLY public.metrics_counter_submission_monthly DROP CONSTRAINT msm_uc_context_id_submission_id_month;
ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly DROP CONSTRAINT msim_uc_context_id_submission_id_institution_id_month;
ALTER TABLE ONLY public.metrics_counter_submission_institution_daily DROP CONSTRAINT msid_uc_load_id_context_id_submission_id_institution_id_date;
ALTER TABLE ONLY public.metrics_submission_geo_monthly DROP CONSTRAINT msgm_uc_context_submission_c_r_c_month;
ALTER TABLE ONLY public.metrics_submission_geo_daily DROP CONSTRAINT msgd_uc_load_context_submission_c_r_c_date;
ALTER TABLE ONLY public.metrics_counter_submission_daily DROP CONSTRAINT msd_uc_load_id_context_id_submission_id_date;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_pkey;
ALTER TABLE ONLY public.library_file_settings DROP CONSTRAINT library_file_settings_pkey;
ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
ALTER TABLE ONLY public.item_views DROP CONSTRAINT item_views_pkey;
ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_pkey;
ALTER TABLE ONLY public.institution_settings DROP CONSTRAINT institution_settings_pkey;
ALTER TABLE ONLY public.institution_ip DROP CONSTRAINT institution_ip_pkey;
ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
ALTER TABLE ONLY public.genre_settings DROP CONSTRAINT genre_settings_pkey;
ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_pkey;
ALTER TABLE ONLY public.filter_settings DROP CONSTRAINT filter_settings_pkey;
ALTER TABLE ONLY public.filter_groups DROP CONSTRAINT filter_groups_symbolic;
ALTER TABLE ONLY public.filter_groups DROP CONSTRAINT filter_groups_pkey;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
ALTER TABLE ONLY public.event_log_settings DROP CONSTRAINT event_log_settings_pkey;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_pkey;
ALTER TABLE ONLY public.email_templates DROP CONSTRAINT email_templates_pkey;
ALTER TABLE ONLY public.email_templates DROP CONSTRAINT email_templates_email_key;
ALTER TABLE ONLY public.email_templates_default_data DROP CONSTRAINT email_templates_default_data_pkey;
ALTER TABLE ONLY public.email_templates_settings DROP CONSTRAINT email_settings_pkey;
ALTER TABLE ONLY public.email_log_users DROP CONSTRAINT email_log_user_id;
ALTER TABLE ONLY public.email_log DROP CONSTRAINT email_log_pkey;
ALTER TABLE ONLY public.edit_decisions DROP CONSTRAINT edit_decisions_pkey;
ALTER TABLE ONLY public.dois DROP CONSTRAINT dois_pkey;
ALTER TABLE ONLY public.doi_settings DROP CONSTRAINT doi_settings_pkey;
ALTER TABLE ONLY public.data_object_tombstones DROP CONSTRAINT data_object_tombstones_pkey;
ALTER TABLE ONLY public.data_object_tombstone_settings DROP CONSTRAINT data_object_tombstone_settings_pkey;
ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects DROP CONSTRAINT data_object_tombstone_oai_set_objects_pkey;
ALTER TABLE ONLY public.controlled_vocabs DROP CONSTRAINT controlled_vocabs_pkey;
ALTER TABLE ONLY public.controlled_vocabs DROP CONSTRAINT controlled_vocab_symbolic;
ALTER TABLE ONLY public.controlled_vocab_entries DROP CONSTRAINT controlled_vocab_entries_pkey;
ALTER TABLE ONLY public.citations DROP CONSTRAINT citations_publication_seq;
ALTER TABLE ONLY public.citations DROP CONSTRAINT citations_pkey;
ALTER TABLE ONLY public.citation_settings DROP CONSTRAINT citation_settings_pkey;
ALTER TABLE ONLY public.category_settings DROP CONSTRAINT category_settings_pkey;
ALTER TABLE ONLY public.categories DROP CONSTRAINT category_path;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
ALTER TABLE ONLY public.controlled_vocab_entry_settings DROP CONSTRAINT c_v_e_s_pkey;
ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
ALTER TABLE ONLY public.author_settings DROP CONSTRAINT author_settings_pkey;
ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_pkey;
ALTER TABLE ONLY public.announcement_types DROP CONSTRAINT announcement_types_pkey;
ALTER TABLE ONLY public.announcement_type_settings DROP CONSTRAINT announcement_type_settings_pkey;
ALTER TABLE ONLY public.announcement_settings DROP CONSTRAINT announcement_settings_pkey;
ALTER TABLE ONLY public.access_keys DROP CONSTRAINT access_keys_pkey;
ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
ALTER TABLE public.user_groups ALTER COLUMN user_group_id DROP DEFAULT;
ALTER TABLE public.temporary_files ALTER COLUMN file_id DROP DEFAULT;
ALTER TABLE public.submissions ALTER COLUMN submission_id DROP DEFAULT;
ALTER TABLE public.submission_search_objects ALTER COLUMN object_id DROP DEFAULT;
ALTER TABLE public.submission_search_keyword_list ALTER COLUMN keyword_id DROP DEFAULT;
ALTER TABLE public.submission_files ALTER COLUMN submission_file_id DROP DEFAULT;
ALTER TABLE public.submission_file_revisions ALTER COLUMN revision_id DROP DEFAULT;
ALTER TABLE public.submission_comments ALTER COLUMN comment_id DROP DEFAULT;
ALTER TABLE public.stage_assignments ALTER COLUMN stage_assignment_id DROP DEFAULT;
ALTER TABLE public.servers ALTER COLUMN server_id DROP DEFAULT;
ALTER TABLE public.sections ALTER COLUMN section_id DROP DEFAULT;
ALTER TABLE public.review_rounds ALTER COLUMN review_round_id DROP DEFAULT;
ALTER TABLE public.review_forms ALTER COLUMN review_form_id DROP DEFAULT;
ALTER TABLE public.review_form_elements ALTER COLUMN review_form_element_id DROP DEFAULT;
ALTER TABLE public.review_assignments ALTER COLUMN review_id DROP DEFAULT;
ALTER TABLE public.queries ALTER COLUMN query_id DROP DEFAULT;
ALTER TABLE public.publications ALTER COLUMN publication_id DROP DEFAULT;
ALTER TABLE public.publication_galleys ALTER COLUMN galley_id DROP DEFAULT;
ALTER TABLE public.notifications ALTER COLUMN notification_id DROP DEFAULT;
ALTER TABLE public.notification_subscription_settings ALTER COLUMN setting_id DROP DEFAULT;
ALTER TABLE public.notes ALTER COLUMN note_id DROP DEFAULT;
ALTER TABLE public.navigation_menus ALTER COLUMN navigation_menu_id DROP DEFAULT;
ALTER TABLE public.navigation_menu_items ALTER COLUMN navigation_menu_item_id DROP DEFAULT;
ALTER TABLE public.navigation_menu_item_assignments ALTER COLUMN navigation_menu_item_assignment_id DROP DEFAULT;
ALTER TABLE public.library_files ALTER COLUMN file_id DROP DEFAULT;
ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.institutions ALTER COLUMN institution_id DROP DEFAULT;
ALTER TABLE public.institution_ip ALTER COLUMN institution_ip_id DROP DEFAULT;
ALTER TABLE public.genres ALTER COLUMN genre_id DROP DEFAULT;
ALTER TABLE public.filters ALTER COLUMN filter_id DROP DEFAULT;
ALTER TABLE public.filter_groups ALTER COLUMN filter_group_id DROP DEFAULT;
ALTER TABLE public.files ALTER COLUMN file_id DROP DEFAULT;
ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.event_log ALTER COLUMN log_id DROP DEFAULT;
ALTER TABLE public.email_templates ALTER COLUMN email_id DROP DEFAULT;
ALTER TABLE public.email_log ALTER COLUMN log_id DROP DEFAULT;
ALTER TABLE public.edit_decisions ALTER COLUMN edit_decision_id DROP DEFAULT;
ALTER TABLE public.dois ALTER COLUMN doi_id DROP DEFAULT;
ALTER TABLE public.data_object_tombstones ALTER COLUMN tombstone_id DROP DEFAULT;
ALTER TABLE public.data_object_tombstone_oai_set_objects ALTER COLUMN object_id DROP DEFAULT;
ALTER TABLE public.controlled_vocabs ALTER COLUMN controlled_vocab_id DROP DEFAULT;
ALTER TABLE public.controlled_vocab_entries ALTER COLUMN controlled_vocab_entry_id DROP DEFAULT;
ALTER TABLE public.citations ALTER COLUMN citation_id DROP DEFAULT;
ALTER TABLE public.categories ALTER COLUMN category_id DROP DEFAULT;
ALTER TABLE public.authors ALTER COLUMN author_id DROP DEFAULT;
ALTER TABLE public.announcements ALTER COLUMN announcement_id DROP DEFAULT;
ALTER TABLE public.announcement_types ALTER COLUMN type_id DROP DEFAULT;
ALTER TABLE public.access_keys ALTER COLUMN access_key_id DROP DEFAULT;
DROP TABLE public.versions;
DROP SEQUENCE public.users_user_id_seq;
DROP TABLE public.users;
DROP TABLE public.user_user_groups;
DROP TABLE public.user_settings;
DROP TABLE public.user_interests;
DROP SEQUENCE public.user_groups_user_group_id_seq;
DROP TABLE public.user_groups;
DROP TABLE public.user_group_stage;
DROP TABLE public.user_group_settings;
DROP TABLE public.usage_stats_unique_item_requests_temporary_records;
DROP TABLE public.usage_stats_unique_item_investigations_temporary_records;
DROP TABLE public.usage_stats_total_temporary_records;
DROP TABLE public.usage_stats_institution_temporary_records;
DROP SEQUENCE public.temporary_files_file_id_seq;
DROP TABLE public.temporary_files;
DROP SEQUENCE public.submissions_submission_id_seq;
DROP TABLE public.submissions;
DROP TABLE public.submission_settings;
DROP SEQUENCE public.submission_search_objects_object_id_seq;
DROP TABLE public.submission_search_objects;
DROP TABLE public.submission_search_object_keywords;
DROP SEQUENCE public.submission_search_keyword_list_keyword_id_seq;
DROP TABLE public.submission_search_keyword_list;
DROP SEQUENCE public.submission_files_submission_file_id_seq;
DROP TABLE public.submission_files;
DROP TABLE public.submission_file_settings;
DROP SEQUENCE public.submission_file_revisions_revision_id_seq;
DROP TABLE public.submission_file_revisions;
DROP SEQUENCE public.submission_comments_comment_id_seq;
DROP TABLE public.submission_comments;
DROP TABLE public.subeditor_submission_group;
DROP SEQUENCE public.stage_assignments_stage_assignment_id_seq;
DROP TABLE public.stage_assignments;
DROP TABLE public.site_settings;
DROP TABLE public.site;
DROP TABLE public.sessions;
DROP SEQUENCE public.servers_server_id_seq;
DROP TABLE public.servers;
DROP TABLE public.server_settings;
DROP SEQUENCE public.sections_section_id_seq;
DROP TABLE public.sections;
DROP TABLE public.section_settings;
DROP TABLE public.scheduled_tasks;
DROP SEQUENCE public.review_rounds_review_round_id_seq;
DROP TABLE public.review_rounds;
DROP TABLE public.review_round_files;
DROP SEQUENCE public.review_forms_review_form_id_seq;
DROP TABLE public.review_forms;
DROP TABLE public.review_form_settings;
DROP TABLE public.review_form_responses;
DROP SEQUENCE public.review_form_elements_review_form_element_id_seq;
DROP TABLE public.review_form_elements;
DROP TABLE public.review_form_element_settings;
DROP TABLE public.review_files;
DROP SEQUENCE public.review_assignments_review_id_seq;
DROP TABLE public.review_assignments;
DROP TABLE public.query_participants;
DROP SEQUENCE public.queries_query_id_seq;
DROP TABLE public.queries;
DROP SEQUENCE public.publications_publication_id_seq;
DROP TABLE public.publications;
DROP TABLE public.publication_settings;
DROP SEQUENCE public.publication_galleys_galley_id_seq;
DROP TABLE public.publication_galleys;
DROP TABLE public.publication_galley_settings;
DROP TABLE public.publication_categories;
DROP TABLE public.plugin_settings;
DROP TABLE public.oai_resumption_tokens;
DROP SEQUENCE public.notifications_notification_id_seq;
DROP TABLE public.notifications;
DROP SEQUENCE public.notification_subscription_settings_setting_id_seq;
DROP TABLE public.notification_subscription_settings;
DROP TABLE public.notification_settings;
DROP SEQUENCE public.notes_note_id_seq;
DROP TABLE public.notes;
DROP SEQUENCE public.navigation_menus_navigation_menu_id_seq;
DROP TABLE public.navigation_menus;
DROP SEQUENCE public.navigation_menu_items_navigation_menu_item_id_seq;
DROP TABLE public.navigation_menu_items;
DROP TABLE public.navigation_menu_item_settings;
DROP TABLE public.navigation_menu_item_assignment_settings;
DROP SEQUENCE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq;
DROP TABLE public.navigation_menu_item_assignments;
DROP TABLE public.metrics_submission_geo_monthly;
DROP TABLE public.metrics_submission_geo_daily;
DROP TABLE public.metrics_submission;
DROP TABLE public.metrics_counter_submission_monthly;
DROP TABLE public.metrics_counter_submission_institution_monthly;
DROP TABLE public.metrics_counter_submission_institution_daily;
DROP TABLE public.metrics_counter_submission_daily;
DROP TABLE public.metrics_context;
DROP SEQUENCE public.library_files_file_id_seq;
DROP TABLE public.library_files;
DROP TABLE public.library_file_settings;
DROP SEQUENCE public.jobs_id_seq;
DROP TABLE public.jobs;
DROP TABLE public.job_batches;
DROP TABLE public.item_views;
DROP SEQUENCE public.institutions_institution_id_seq;
DROP TABLE public.institutions;
DROP TABLE public.institution_settings;
DROP SEQUENCE public.institution_ip_institution_ip_id_seq;
DROP TABLE public.institution_ip;
DROP SEQUENCE public.genres_genre_id_seq;
DROP TABLE public.genres;
DROP TABLE public.genre_settings;
DROP SEQUENCE public.filters_filter_id_seq;
DROP TABLE public.filters;
DROP TABLE public.filter_settings;
DROP SEQUENCE public.filter_groups_filter_group_id_seq;
DROP TABLE public.filter_groups;
DROP SEQUENCE public.files_file_id_seq;
DROP TABLE public.files;
DROP SEQUENCE public.failed_jobs_id_seq;
DROP TABLE public.failed_jobs;
DROP TABLE public.event_log_settings;
DROP SEQUENCE public.event_log_log_id_seq;
DROP TABLE public.event_log;
DROP TABLE public.email_templates_settings;
DROP SEQUENCE public.email_templates_email_id_seq;
DROP TABLE public.email_templates_default_data;
DROP TABLE public.email_templates;
DROP TABLE public.email_log_users;
DROP SEQUENCE public.email_log_log_id_seq;
DROP TABLE public.email_log;
DROP SEQUENCE public.edit_decisions_edit_decision_id_seq;
DROP TABLE public.edit_decisions;
DROP SEQUENCE public.dois_doi_id_seq;
DROP TABLE public.dois;
DROP TABLE public.doi_settings;
DROP SEQUENCE public.data_object_tombstones_tombstone_id_seq;
DROP TABLE public.data_object_tombstones;
DROP TABLE public.data_object_tombstone_settings;
DROP SEQUENCE public.data_object_tombstone_oai_set_objects_object_id_seq;
DROP TABLE public.data_object_tombstone_oai_set_objects;
DROP SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq;
DROP TABLE public.controlled_vocabs;
DROP TABLE public.controlled_vocab_entry_settings;
DROP SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq;
DROP TABLE public.controlled_vocab_entries;
DROP SEQUENCE public.citations_citation_id_seq;
DROP TABLE public.citations;
DROP TABLE public.citation_settings;
DROP TABLE public.category_settings;
DROP SEQUENCE public.categories_category_id_seq;
DROP TABLE public.categories;
DROP SEQUENCE public.authors_author_id_seq;
DROP TABLE public.authors;
DROP TABLE public.author_settings;
DROP SEQUENCE public.announcements_announcement_id_seq;
DROP TABLE public.announcements;
DROP SEQUENCE public.announcement_types_type_id_seq;
DROP TABLE public.announcement_types;
DROP TABLE public.announcement_type_settings;
DROP TABLE public.announcement_settings;
DROP SEQUENCE public.access_keys_access_key_id_seq;
DROP TABLE public.access_keys;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_keys; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.access_keys (
    access_key_id bigint NOT NULL,
    context character varying(40) NOT NULL,
    key_hash character varying(40) NOT NULL,
    user_id bigint NOT NULL,
    assoc_id bigint,
    expiry_date timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.access_keys OWNER TO "ops-ci";

--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.access_keys_access_key_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.access_keys_access_key_id_seq OWNER TO "ops-ci";

--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.access_keys_access_key_id_seq OWNED BY public.access_keys.access_key_id;


--
-- Name: announcement_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.announcement_settings (
    announcement_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6)
);


ALTER TABLE public.announcement_settings OWNER TO "ops-ci";

--
-- Name: announcement_type_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.announcement_type_settings (
    type_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.announcement_type_settings OWNER TO "ops-ci";

--
-- Name: announcement_types; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.announcement_types (
    type_id bigint NOT NULL,
    context_id bigint NOT NULL
);


ALTER TABLE public.announcement_types OWNER TO "ops-ci";

--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.announcement_types_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcement_types_type_id_seq OWNER TO "ops-ci";

--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.announcement_types_type_id_seq OWNED BY public.announcement_types.type_id;


--
-- Name: announcements; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.announcements (
    announcement_id bigint NOT NULL,
    assoc_type smallint,
    assoc_id bigint NOT NULL,
    type_id bigint,
    date_expire date,
    date_posted timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.announcements OWNER TO "ops-ci";

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.announcements_announcement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_announcement_id_seq OWNER TO "ops-ci";

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.announcements_announcement_id_seq OWNED BY public.announcements.announcement_id;


--
-- Name: author_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.author_settings (
    author_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.author_settings OWNER TO "ops-ci";

--
-- Name: authors; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.authors (
    author_id bigint NOT NULL,
    email character varying(90) NOT NULL,
    include_in_browse smallint DEFAULT '1'::smallint NOT NULL,
    publication_id bigint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    user_group_id bigint
);


ALTER TABLE public.authors OWNER TO "ops-ci";

--
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.authors_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_author_id_seq OWNER TO "ops-ci";

--
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.author_id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.categories (
    category_id bigint NOT NULL,
    context_id bigint NOT NULL,
    parent_id bigint,
    seq bigint,
    path character varying(255) NOT NULL,
    image text
);


ALTER TABLE public.categories OWNER TO "ops-ci";

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_id_seq OWNER TO "ops-ci";

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- Name: category_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.category_settings (
    category_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.category_settings OWNER TO "ops-ci";

--
-- Name: citation_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.citation_settings (
    citation_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.citation_settings OWNER TO "ops-ci";

--
-- Name: citations; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.citations (
    citation_id bigint NOT NULL,
    publication_id bigint NOT NULL,
    raw_citation text NOT NULL,
    seq bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE public.citations OWNER TO "ops-ci";

--
-- Name: citations_citation_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.citations_citation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.citations_citation_id_seq OWNER TO "ops-ci";

--
-- Name: citations_citation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.citations_citation_id_seq OWNED BY public.citations.citation_id;


--
-- Name: controlled_vocab_entries; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.controlled_vocab_entries (
    controlled_vocab_entry_id bigint NOT NULL,
    controlled_vocab_id bigint NOT NULL,
    seq double precision
);


ALTER TABLE public.controlled_vocab_entries OWNER TO "ops-ci";

--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controlled_vocab_entries_controlled_vocab_entry_id_seq OWNER TO "ops-ci";

--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq OWNED BY public.controlled_vocab_entries.controlled_vocab_entry_id;


--
-- Name: controlled_vocab_entry_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.controlled_vocab_entry_settings (
    controlled_vocab_entry_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.controlled_vocab_entry_settings OWNER TO "ops-ci";

--
-- Name: controlled_vocabs; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.controlled_vocabs (
    controlled_vocab_id bigint NOT NULL,
    symbolic character varying(64) NOT NULL,
    assoc_type bigint DEFAULT '0'::bigint NOT NULL,
    assoc_id bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE public.controlled_vocabs OWNER TO "ops-ci";

--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controlled_vocabs_controlled_vocab_id_seq OWNER TO "ops-ci";

--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq OWNED BY public.controlled_vocabs.controlled_vocab_id;


--
-- Name: data_object_tombstone_oai_set_objects; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.data_object_tombstone_oai_set_objects (
    object_id bigint NOT NULL,
    tombstone_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL
);


ALTER TABLE public.data_object_tombstone_oai_set_objects OWNER TO "ops-ci";

--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.data_object_tombstone_oai_set_objects_object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_object_tombstone_oai_set_objects_object_id_seq OWNER TO "ops-ci";

--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.data_object_tombstone_oai_set_objects_object_id_seq OWNED BY public.data_object_tombstone_oai_set_objects.object_id;


--
-- Name: data_object_tombstone_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.data_object_tombstone_settings (
    tombstone_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.data_object_tombstone_settings OWNER TO "ops-ci";

--
-- Name: COLUMN data_object_tombstone_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.data_object_tombstone_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: data_object_tombstones; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.data_object_tombstones (
    tombstone_id bigint NOT NULL,
    data_object_id bigint NOT NULL,
    date_deleted timestamp(0) without time zone NOT NULL,
    set_spec character varying(255) NOT NULL,
    set_name character varying(255) NOT NULL,
    oai_identifier character varying(255) NOT NULL
);


ALTER TABLE public.data_object_tombstones OWNER TO "ops-ci";

--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.data_object_tombstones_tombstone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_object_tombstones_tombstone_id_seq OWNER TO "ops-ci";

--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.data_object_tombstones_tombstone_id_seq OWNED BY public.data_object_tombstones.tombstone_id;


--
-- Name: doi_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.doi_settings (
    doi_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.doi_settings OWNER TO "ops-ci";

--
-- Name: dois; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.dois (
    doi_id bigint NOT NULL,
    context_id bigint NOT NULL,
    doi character varying(255) NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL
);


ALTER TABLE public.dois OWNER TO "ops-ci";

--
-- Name: dois_doi_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.dois_doi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dois_doi_id_seq OWNER TO "ops-ci";

--
-- Name: dois_doi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.dois_doi_id_seq OWNED BY public.dois.doi_id;


--
-- Name: edit_decisions; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.edit_decisions (
    edit_decision_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    review_round_id bigint,
    stage_id bigint,
    round smallint,
    editor_id bigint NOT NULL,
    decision smallint NOT NULL,
    date_decided timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.edit_decisions OWNER TO "ops-ci";

--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.edit_decisions_edit_decision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.edit_decisions_edit_decision_id_seq OWNER TO "ops-ci";

--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.edit_decisions_edit_decision_id_seq OWNED BY public.edit_decisions.edit_decision_id;


--
-- Name: email_log; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.email_log (
    log_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    sender_id bigint NOT NULL,
    date_sent timestamp(0) without time zone NOT NULL,
    event_type bigint,
    from_address character varying(255),
    recipients text,
    cc_recipients text,
    bcc_recipients text,
    subject character varying(255),
    body text
);


ALTER TABLE public.email_log OWNER TO "ops-ci";

--
-- Name: email_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.email_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_log_log_id_seq OWNER TO "ops-ci";

--
-- Name: email_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.email_log_log_id_seq OWNED BY public.email_log.log_id;


--
-- Name: email_log_users; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.email_log_users (
    email_log_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.email_log_users OWNER TO "ops-ci";

--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.email_templates (
    email_id bigint NOT NULL,
    email_key character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    alternate_to character varying(255)
);


ALTER TABLE public.email_templates OWNER TO "ops-ci";

--
-- Name: COLUMN email_templates.email_key; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.email_templates.email_key IS 'Unique identifier for this email.';


--
-- Name: email_templates_default_data; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.email_templates_default_data (
    email_key character varying(255) NOT NULL,
    locale character varying(14) DEFAULT 'en_US'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    body text
);


ALTER TABLE public.email_templates_default_data OWNER TO "ops-ci";

--
-- Name: COLUMN email_templates_default_data.email_key; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.email_templates_default_data.email_key IS 'Unique identifier for this email.';


--
-- Name: email_templates_email_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.email_templates_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_templates_email_id_seq OWNER TO "ops-ci";

--
-- Name: email_templates_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.email_templates_email_id_seq OWNED BY public.email_templates.email_id;


--
-- Name: email_templates_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.email_templates_settings (
    email_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.email_templates_settings OWNER TO "ops-ci";

--
-- Name: event_log; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.event_log (
    log_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    user_id bigint NOT NULL,
    date_logged timestamp(0) without time zone NOT NULL,
    event_type bigint,
    message text,
    is_translated smallint
);


ALTER TABLE public.event_log OWNER TO "ops-ci";

--
-- Name: event_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.event_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_log_log_id_seq OWNER TO "ops-ci";

--
-- Name: event_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.event_log_log_id_seq OWNED BY public.event_log.log_id;


--
-- Name: event_log_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.event_log_settings (
    log_id bigint NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.event_log_settings OWNER TO "ops-ci";

--
-- Name: COLUMN event_log_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.event_log_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO "ops-ci";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO "ops-ci";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.files (
    file_id bigint NOT NULL,
    path character varying(255) NOT NULL,
    mimetype character varying(255) NOT NULL
);


ALTER TABLE public.files OWNER TO "ops-ci";

--
-- Name: files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_file_id_seq OWNER TO "ops-ci";

--
-- Name: files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.files_file_id_seq OWNED BY public.files.file_id;


--
-- Name: filter_groups; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.filter_groups (
    filter_group_id bigint NOT NULL,
    symbolic character varying(255),
    display_name character varying(255),
    description character varying(255),
    input_type character varying(255),
    output_type character varying(255)
);


ALTER TABLE public.filter_groups OWNER TO "ops-ci";

--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.filter_groups_filter_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filter_groups_filter_group_id_seq OWNER TO "ops-ci";

--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.filter_groups_filter_group_id_seq OWNED BY public.filter_groups.filter_group_id;


--
-- Name: filter_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.filter_settings (
    filter_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.filter_settings OWNER TO "ops-ci";

--
-- Name: filters; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.filters (
    filter_id bigint NOT NULL,
    filter_group_id bigint DEFAULT '0'::bigint NOT NULL,
    context_id bigint DEFAULT '0'::bigint NOT NULL,
    display_name character varying(255),
    class_name character varying(255),
    is_template smallint DEFAULT '0'::smallint NOT NULL,
    parent_filter_id bigint DEFAULT '0'::bigint NOT NULL,
    seq bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE public.filters OWNER TO "ops-ci";

--
-- Name: filters_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.filters_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filters_filter_id_seq OWNER TO "ops-ci";

--
-- Name: filters_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.filters_filter_id_seq OWNED BY public.filters.filter_id;


--
-- Name: genre_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.genre_settings (
    genre_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.genre_settings OWNER TO "ops-ci";

--
-- Name: COLUMN genre_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.genre_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: genres; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.genres (
    genre_id bigint NOT NULL,
    context_id bigint NOT NULL,
    seq bigint NOT NULL,
    enabled smallint DEFAULT '1'::smallint NOT NULL,
    category bigint DEFAULT '1'::bigint NOT NULL,
    dependent smallint DEFAULT '0'::smallint NOT NULL,
    supplementary smallint DEFAULT '0'::smallint NOT NULL,
    entry_key character varying(30)
);


ALTER TABLE public.genres OWNER TO "ops-ci";

--
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.genres_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_genre_id_seq OWNER TO "ops-ci";

--
-- Name: genres_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.genres_genre_id_seq OWNED BY public.genres.genre_id;


--
-- Name: institution_ip; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.institution_ip (
    institution_ip_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    ip_string character varying(40) NOT NULL,
    ip_start bigint NOT NULL,
    ip_end bigint
);


ALTER TABLE public.institution_ip OWNER TO "ops-ci";

--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.institution_ip_institution_ip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institution_ip_institution_ip_id_seq OWNER TO "ops-ci";

--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.institution_ip_institution_ip_id_seq OWNED BY public.institution_ip.institution_ip_id;


--
-- Name: institution_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.institution_settings (
    institution_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.institution_settings OWNER TO "ops-ci";

--
-- Name: institutions; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.institutions (
    institution_id bigint NOT NULL,
    context_id bigint NOT NULL,
    ror character varying(255),
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.institutions OWNER TO "ops-ci";

--
-- Name: institutions_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.institutions_institution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_institution_id_seq OWNER TO "ops-ci";

--
-- Name: institutions_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.institutions_institution_id_seq OWNED BY public.institutions.institution_id;


--
-- Name: item_views; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.item_views (
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    user_id bigint,
    date_last_viewed timestamp(0) without time zone
);


ALTER TABLE public.item_views OWNER TO "ops-ci";

--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO "ops-ci";

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO "ops-ci";

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO "ops-ci";

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: library_file_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.library_file_settings (
    file_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.library_file_settings OWNER TO "ops-ci";

--
-- Name: COLUMN library_file_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.library_file_settings.setting_type IS '(bool|int|float|string|object|date)';


--
-- Name: library_files; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.library_files (
    file_id bigint NOT NULL,
    context_id bigint NOT NULL,
    file_name character varying(255) NOT NULL,
    original_file_name character varying(255) NOT NULL,
    file_type character varying(255) NOT NULL,
    file_size bigint NOT NULL,
    type smallint NOT NULL,
    date_uploaded timestamp(0) without time zone NOT NULL,
    date_modified timestamp(0) without time zone NOT NULL,
    submission_id bigint NOT NULL,
    public_access smallint DEFAULT '0'::smallint
);


ALTER TABLE public.library_files OWNER TO "ops-ci";

--
-- Name: library_files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.library_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_files_file_id_seq OWNER TO "ops-ci";

--
-- Name: library_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.library_files_file_id_seq OWNED BY public.library_files.file_id;


--
-- Name: metrics_context; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_context (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    date date NOT NULL,
    metric integer NOT NULL
);


ALTER TABLE public.metrics_context OWNER TO "ops-ci";

--
-- Name: metrics_counter_submission_daily; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_counter_submission_daily (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    date date NOT NULL,
    metric_investigations integer NOT NULL,
    metric_investigations_unique integer NOT NULL,
    metric_requests integer NOT NULL,
    metric_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_daily OWNER TO "ops-ci";

--
-- Name: metrics_counter_submission_institution_daily; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_counter_submission_institution_daily (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    date date NOT NULL,
    metric_investigations integer NOT NULL,
    metric_investigations_unique integer NOT NULL,
    metric_requests integer NOT NULL,
    metric_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_institution_daily OWNER TO "ops-ci";

--
-- Name: metrics_counter_submission_institution_monthly; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_counter_submission_institution_monthly (
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    month integer NOT NULL,
    metric_investigations integer NOT NULL,
    metric_investigations_unique integer NOT NULL,
    metric_requests integer NOT NULL,
    metric_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_institution_monthly OWNER TO "ops-ci";

--
-- Name: metrics_counter_submission_monthly; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_counter_submission_monthly (
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    month integer NOT NULL,
    metric_investigations integer NOT NULL,
    metric_investigations_unique integer NOT NULL,
    metric_requests integer NOT NULL,
    metric_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_monthly OWNER TO "ops-ci";

--
-- Name: metrics_submission; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_submission (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    representation_id bigint,
    submission_file_id bigint,
    file_type bigint,
    assoc_type bigint NOT NULL,
    date date NOT NULL,
    metric integer NOT NULL
);


ALTER TABLE public.metrics_submission OWNER TO "ops-ci";

--
-- Name: metrics_submission_geo_daily; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_submission_geo_daily (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    date date NOT NULL,
    metric integer NOT NULL,
    metric_unique integer NOT NULL
);


ALTER TABLE public.metrics_submission_geo_daily OWNER TO "ops-ci";

--
-- Name: metrics_submission_geo_monthly; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.metrics_submission_geo_monthly (
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    month integer NOT NULL,
    metric integer NOT NULL,
    metric_unique integer NOT NULL
);


ALTER TABLE public.metrics_submission_geo_monthly OWNER TO "ops-ci";

--
-- Name: navigation_menu_item_assignments; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.navigation_menu_item_assignments (
    navigation_menu_item_assignment_id bigint NOT NULL,
    navigation_menu_id bigint NOT NULL,
    navigation_menu_item_id bigint NOT NULL,
    parent_id bigint,
    seq bigint DEFAULT '0'::bigint
);


ALTER TABLE public.navigation_menu_item_assignments OWNER TO "ops-ci";

--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq OWNER TO "ops-ci";

--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq OWNED BY public.navigation_menu_item_assignments.navigation_menu_item_assignment_id;


--
-- Name: navigation_menu_item_assignment_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.navigation_menu_item_assignment_settings (
    navigation_menu_item_assignment_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.navigation_menu_item_assignment_settings OWNER TO "ops-ci";

--
-- Name: navigation_menu_item_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.navigation_menu_item_settings (
    navigation_menu_item_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.navigation_menu_item_settings OWNER TO "ops-ci";

--
-- Name: navigation_menu_items; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.navigation_menu_items (
    navigation_menu_item_id bigint NOT NULL,
    context_id bigint NOT NULL,
    path character varying(255) DEFAULT ''::character varying,
    type character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.navigation_menu_items OWNER TO "ops-ci";

--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.navigation_menu_items_navigation_menu_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menu_items_navigation_menu_item_id_seq OWNER TO "ops-ci";

--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.navigation_menu_items_navigation_menu_item_id_seq OWNED BY public.navigation_menu_items.navigation_menu_item_id;


--
-- Name: navigation_menus; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.navigation_menus (
    navigation_menu_id bigint NOT NULL,
    context_id bigint NOT NULL,
    area_name character varying(255) DEFAULT ''::character varying,
    title character varying(255) NOT NULL
);


ALTER TABLE public.navigation_menus OWNER TO "ops-ci";

--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.navigation_menus_navigation_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menus_navigation_menu_id_seq OWNER TO "ops-ci";

--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.navigation_menus_navigation_menu_id_seq OWNED BY public.navigation_menus.navigation_menu_id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.notes (
    note_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    user_id bigint NOT NULL,
    date_created timestamp(0) without time zone NOT NULL,
    date_modified timestamp(0) without time zone,
    title character varying(255),
    contents text
);


ALTER TABLE public.notes OWNER TO "ops-ci";

--
-- Name: notes_note_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.notes_note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_note_id_seq OWNER TO "ops-ci";

--
-- Name: notes_note_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.notes_note_id_seq OWNED BY public.notes.note_id;


--
-- Name: notification_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.notification_settings (
    notification_id bigint NOT NULL,
    locale character varying(14),
    setting_name character varying(64) NOT NULL,
    setting_value text NOT NULL,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.notification_settings OWNER TO "ops-ci";

--
-- Name: COLUMN notification_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.notification_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: notification_subscription_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.notification_subscription_settings (
    setting_id bigint NOT NULL,
    setting_name character varying(64) NOT NULL,
    setting_value text NOT NULL,
    user_id bigint NOT NULL,
    context bigint NOT NULL,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.notification_subscription_settings OWNER TO "ops-ci";

--
-- Name: COLUMN notification_subscription_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.notification_subscription_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.notification_subscription_settings_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_subscription_settings_setting_id_seq OWNER TO "ops-ci";

--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.notification_subscription_settings_setting_id_seq OWNED BY public.notification_subscription_settings.setting_id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.notifications (
    notification_id bigint NOT NULL,
    context_id bigint NOT NULL,
    user_id bigint,
    level bigint NOT NULL,
    type bigint NOT NULL,
    date_created timestamp(0) without time zone NOT NULL,
    date_read timestamp(0) without time zone,
    assoc_type bigint,
    assoc_id bigint
);


ALTER TABLE public.notifications OWNER TO "ops-ci";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.notifications_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_notification_id_seq OWNER TO "ops-ci";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.notifications_notification_id_seq OWNED BY public.notifications.notification_id;


--
-- Name: oai_resumption_tokens; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.oai_resumption_tokens (
    token character varying(32) NOT NULL,
    expire bigint NOT NULL,
    record_offset integer NOT NULL,
    params text
);


ALTER TABLE public.oai_resumption_tokens OWNER TO "ops-ci";

--
-- Name: plugin_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.plugin_settings (
    plugin_name character varying(80) NOT NULL,
    context_id bigint NOT NULL,
    setting_name character varying(80) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.plugin_settings OWNER TO "ops-ci";

--
-- Name: COLUMN plugin_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.plugin_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: publication_categories; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.publication_categories (
    publication_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.publication_categories OWNER TO "ops-ci";

--
-- Name: publication_galley_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.publication_galley_settings (
    galley_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.publication_galley_settings OWNER TO "ops-ci";

--
-- Name: publication_galleys; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.publication_galleys (
    galley_id bigint NOT NULL,
    locale character varying(14),
    publication_id bigint NOT NULL,
    label character varying(255),
    submission_file_id bigint,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    remote_url character varying(2047),
    is_approved smallint DEFAULT '0'::smallint NOT NULL,
    url_path character varying(64),
    doi_id bigint
);


ALTER TABLE public.publication_galleys OWNER TO "ops-ci";

--
-- Name: publication_galleys_galley_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.publication_galleys_galley_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publication_galleys_galley_id_seq OWNER TO "ops-ci";

--
-- Name: publication_galleys_galley_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.publication_galleys_galley_id_seq OWNED BY public.publication_galleys.galley_id;


--
-- Name: publication_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.publication_settings (
    publication_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.publication_settings OWNER TO "ops-ci";

--
-- Name: publications; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.publications (
    publication_id bigint NOT NULL,
    access_status bigint DEFAULT '0'::bigint,
    date_published date,
    last_modified timestamp(0) without time zone,
    primary_contact_id bigint,
    section_id bigint,
    submission_id bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    url_path character varying(64),
    version bigint,
    doi_id bigint
);


ALTER TABLE public.publications OWNER TO "ops-ci";

--
-- Name: publications_publication_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.publications_publication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publications_publication_id_seq OWNER TO "ops-ci";

--
-- Name: publications_publication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.publications_publication_id_seq OWNED BY public.publications.publication_id;


--
-- Name: queries; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.queries (
    query_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    stage_id smallint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    date_posted timestamp(0) without time zone,
    date_modified timestamp(0) without time zone,
    closed smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.queries OWNER TO "ops-ci";

--
-- Name: queries_query_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.queries_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queries_query_id_seq OWNER TO "ops-ci";

--
-- Name: queries_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.queries_query_id_seq OWNED BY public.queries.query_id;


--
-- Name: query_participants; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.query_participants (
    query_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.query_participants OWNER TO "ops-ci";

--
-- Name: review_assignments; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_assignments (
    review_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    reviewer_id bigint NOT NULL,
    competing_interests text,
    recommendation smallint,
    date_assigned timestamp(0) without time zone,
    date_notified timestamp(0) without time zone,
    date_confirmed timestamp(0) without time zone,
    date_completed timestamp(0) without time zone,
    date_acknowledged timestamp(0) without time zone,
    date_due timestamp(0) without time zone,
    date_response_due timestamp(0) without time zone,
    last_modified timestamp(0) without time zone,
    reminder_was_automatic smallint DEFAULT '0'::smallint NOT NULL,
    declined smallint DEFAULT '0'::smallint NOT NULL,
    cancelled smallint DEFAULT '0'::smallint NOT NULL,
    reviewer_file_id bigint,
    date_rated timestamp(0) without time zone,
    date_reminded timestamp(0) without time zone,
    quality smallint,
    review_round_id bigint NOT NULL,
    stage_id smallint NOT NULL,
    review_method smallint DEFAULT '1'::smallint NOT NULL,
    round smallint DEFAULT '1'::smallint NOT NULL,
    step smallint DEFAULT '1'::smallint NOT NULL,
    review_form_id bigint,
    unconsidered smallint,
    request_resent smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.review_assignments OWNER TO "ops-ci";

--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.review_assignments_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_assignments_review_id_seq OWNER TO "ops-ci";

--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.review_assignments_review_id_seq OWNED BY public.review_assignments.review_id;


--
-- Name: review_files; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_files (
    review_id bigint NOT NULL,
    submission_file_id bigint NOT NULL
);


ALTER TABLE public.review_files OWNER TO "ops-ci";

--
-- Name: review_form_element_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_form_element_settings (
    review_form_element_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.review_form_element_settings OWNER TO "ops-ci";

--
-- Name: review_form_elements; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_form_elements (
    review_form_element_id bigint NOT NULL,
    review_form_id bigint NOT NULL,
    seq double precision,
    element_type bigint,
    required smallint,
    included smallint
);


ALTER TABLE public.review_form_elements OWNER TO "ops-ci";

--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.review_form_elements_review_form_element_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_form_elements_review_form_element_id_seq OWNER TO "ops-ci";

--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.review_form_elements_review_form_element_id_seq OWNED BY public.review_form_elements.review_form_element_id;


--
-- Name: review_form_responses; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_form_responses (
    review_form_element_id bigint NOT NULL,
    review_id bigint NOT NULL,
    response_type character varying(6),
    response_value text
);


ALTER TABLE public.review_form_responses OWNER TO "ops-ci";

--
-- Name: review_form_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_form_settings (
    review_form_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.review_form_settings OWNER TO "ops-ci";

--
-- Name: review_forms; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_forms (
    review_form_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    seq double precision,
    is_active smallint
);


ALTER TABLE public.review_forms OWNER TO "ops-ci";

--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.review_forms_review_form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_forms_review_form_id_seq OWNER TO "ops-ci";

--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.review_forms_review_form_id_seq OWNED BY public.review_forms.review_form_id;


--
-- Name: review_round_files; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_round_files (
    submission_id bigint NOT NULL,
    review_round_id bigint NOT NULL,
    stage_id smallint NOT NULL,
    submission_file_id bigint NOT NULL
);


ALTER TABLE public.review_round_files OWNER TO "ops-ci";

--
-- Name: review_rounds; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.review_rounds (
    review_round_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    stage_id bigint,
    round smallint NOT NULL,
    review_revision bigint,
    status bigint
);


ALTER TABLE public.review_rounds OWNER TO "ops-ci";

--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.review_rounds_review_round_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_rounds_review_round_id_seq OWNER TO "ops-ci";

--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.review_rounds_review_round_id_seq OWNED BY public.review_rounds.review_round_id;


--
-- Name: scheduled_tasks; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.scheduled_tasks (
    class_name character varying(255) NOT NULL,
    last_run timestamp(0) without time zone
);


ALTER TABLE public.scheduled_tasks OWNER TO "ops-ci";

--
-- Name: section_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.section_settings (
    section_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.section_settings OWNER TO "ops-ci";

--
-- Name: COLUMN section_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.section_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: sections; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.sections (
    section_id bigint NOT NULL,
    server_id bigint NOT NULL,
    review_form_id bigint,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    editor_restricted smallint DEFAULT '0'::smallint NOT NULL,
    meta_indexed smallint DEFAULT '0'::smallint NOT NULL,
    meta_reviewed smallint DEFAULT '1'::smallint NOT NULL,
    abstracts_not_required smallint DEFAULT '0'::smallint NOT NULL,
    hide_title smallint DEFAULT '0'::smallint NOT NULL,
    hide_author smallint DEFAULT '0'::smallint NOT NULL,
    is_inactive smallint DEFAULT '0'::smallint NOT NULL,
    abstract_word_count bigint
);


ALTER TABLE public.sections OWNER TO "ops-ci";

--
-- Name: sections_section_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.sections_section_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_section_id_seq OWNER TO "ops-ci";

--
-- Name: sections_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.sections_section_id_seq OWNED BY public.sections.section_id;


--
-- Name: server_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.server_settings (
    server_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6)
);


ALTER TABLE public.server_settings OWNER TO "ops-ci";

--
-- Name: servers; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.servers (
    server_id bigint NOT NULL,
    path character varying(32) NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    primary_locale character varying(14) NOT NULL,
    enabled smallint DEFAULT '1'::smallint NOT NULL
);


ALTER TABLE public.servers OWNER TO "ops-ci";

--
-- Name: COLUMN servers.seq; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.servers.seq IS 'Used to order lists of servers';


--
-- Name: COLUMN servers.enabled; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.servers.enabled IS 'Controls whether or not the server is considered "live" and will appear on the website. (Note that disabled servers may still be accessible, but only if the user knows the URL.)';


--
-- Name: servers_server_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.servers_server_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servers_server_id_seq OWNER TO "ops-ci";

--
-- Name: servers_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.servers_server_id_seq OWNED BY public.servers.server_id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.sessions (
    session_id character varying(128) NOT NULL,
    user_id bigint,
    ip_address character varying(39) NOT NULL,
    user_agent character varying(255),
    created bigint DEFAULT '0'::bigint NOT NULL,
    last_used bigint DEFAULT '0'::bigint NOT NULL,
    remember smallint DEFAULT '0'::smallint NOT NULL,
    data text NOT NULL,
    domain character varying(255)
);


ALTER TABLE public.sessions OWNER TO "ops-ci";

--
-- Name: site; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.site (
    redirect bigint DEFAULT '0'::bigint NOT NULL,
    primary_locale character varying(14) NOT NULL,
    min_password_length smallint DEFAULT '6'::smallint NOT NULL,
    installed_locales character varying(1024) DEFAULT 'en_US'::character varying NOT NULL,
    supported_locales character varying(1024),
    original_style_file_name character varying(255)
);


ALTER TABLE public.site OWNER TO "ops-ci";

--
-- Name: COLUMN site.redirect; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.site.redirect IS 'If not 0, redirect to the specified journal/conference/... site.';


--
-- Name: COLUMN site.primary_locale; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.site.primary_locale IS 'Primary locale for the site.';


--
-- Name: COLUMN site.installed_locales; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.site.installed_locales IS 'Locales for which support has been installed.';


--
-- Name: COLUMN site.supported_locales; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.site.supported_locales IS 'Locales supported by the site (for hosted journals/conferences/...).';


--
-- Name: site_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.site_settings (
    setting_name character varying(255) NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_value text
);


ALTER TABLE public.site_settings OWNER TO "ops-ci";

--
-- Name: stage_assignments; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.stage_assignments (
    stage_assignment_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    user_group_id bigint NOT NULL,
    user_id bigint NOT NULL,
    date_assigned timestamp(0) without time zone NOT NULL,
    recommend_only smallint DEFAULT '0'::smallint NOT NULL,
    can_change_metadata smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.stage_assignments OWNER TO "ops-ci";

--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.stage_assignments_stage_assignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stage_assignments_stage_assignment_id_seq OWNER TO "ops-ci";

--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.stage_assignments_stage_assignment_id_seq OWNED BY public.stage_assignments.stage_assignment_id;


--
-- Name: subeditor_submission_group; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.subeditor_submission_group (
    context_id bigint NOT NULL,
    assoc_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    user_id bigint NOT NULL,
    user_group_id bigint NOT NULL
);


ALTER TABLE public.subeditor_submission_group OWNER TO "ops-ci";

--
-- Name: submission_comments; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_comments (
    comment_id bigint NOT NULL,
    comment_type bigint,
    role_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    assoc_id bigint NOT NULL,
    author_id bigint NOT NULL,
    comment_title text NOT NULL,
    comments text,
    date_posted timestamp(0) without time zone,
    date_modified timestamp(0) without time zone,
    viewable smallint
);


ALTER TABLE public.submission_comments OWNER TO "ops-ci";

--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.submission_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_comments_comment_id_seq OWNER TO "ops-ci";

--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.submission_comments_comment_id_seq OWNED BY public.submission_comments.comment_id;


--
-- Name: submission_file_revisions; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_file_revisions (
    revision_id bigint NOT NULL,
    submission_file_id bigint NOT NULL,
    file_id bigint NOT NULL
);


ALTER TABLE public.submission_file_revisions OWNER TO "ops-ci";

--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.submission_file_revisions_revision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_file_revisions_revision_id_seq OWNER TO "ops-ci";

--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.submission_file_revisions_revision_id_seq OWNED BY public.submission_file_revisions.revision_id;


--
-- Name: submission_file_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_file_settings (
    submission_file_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) DEFAULT 'string'::character varying NOT NULL
);


ALTER TABLE public.submission_file_settings OWNER TO "ops-ci";

--
-- Name: COLUMN submission_file_settings.setting_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.submission_file_settings.setting_type IS '(bool|int|float|string|object|date)';


--
-- Name: submission_files; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_files (
    submission_file_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    file_id bigint NOT NULL,
    source_submission_file_id bigint,
    genre_id bigint,
    file_stage bigint NOT NULL,
    direct_sales_price character varying(255),
    sales_type character varying(255),
    viewable smallint,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    uploader_user_id bigint,
    assoc_type bigint,
    assoc_id bigint
);


ALTER TABLE public.submission_files OWNER TO "ops-ci";

--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.submission_files_submission_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_files_submission_file_id_seq OWNER TO "ops-ci";

--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.submission_files_submission_file_id_seq OWNED BY public.submission_files.submission_file_id;


--
-- Name: submission_search_keyword_list; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_search_keyword_list (
    keyword_id bigint NOT NULL,
    keyword_text character varying(60) NOT NULL
);


ALTER TABLE public.submission_search_keyword_list OWNER TO "ops-ci";

--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.submission_search_keyword_list_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_search_keyword_list_keyword_id_seq OWNER TO "ops-ci";

--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.submission_search_keyword_list_keyword_id_seq OWNED BY public.submission_search_keyword_list.keyword_id;


--
-- Name: submission_search_object_keywords; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_search_object_keywords (
    object_id bigint NOT NULL,
    keyword_id bigint NOT NULL,
    pos integer NOT NULL
);


ALTER TABLE public.submission_search_object_keywords OWNER TO "ops-ci";

--
-- Name: COLUMN submission_search_object_keywords.pos; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.submission_search_object_keywords.pos IS 'Word position of the keyword in the object.';


--
-- Name: submission_search_objects; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_search_objects (
    object_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    type integer NOT NULL,
    assoc_id bigint
);


ALTER TABLE public.submission_search_objects OWNER TO "ops-ci";

--
-- Name: COLUMN submission_search_objects.type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.submission_search_objects.type IS 'Type of item. E.g., abstract, fulltext, etc.';


--
-- Name: COLUMN submission_search_objects.assoc_id; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.submission_search_objects.assoc_id IS 'Optional ID of an associated record (e.g., a file_id)';


--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.submission_search_objects_object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_search_objects_object_id_seq OWNER TO "ops-ci";

--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.submission_search_objects_object_id_seq OWNED BY public.submission_search_objects.object_id;


--
-- Name: submission_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submission_settings (
    submission_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.submission_settings OWNER TO "ops-ci";

--
-- Name: submissions; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.submissions (
    submission_id bigint NOT NULL,
    context_id bigint NOT NULL,
    current_publication_id bigint,
    date_last_activity timestamp(0) without time zone,
    date_submitted timestamp(0) without time zone,
    last_modified timestamp(0) without time zone,
    stage_id bigint DEFAULT '5'::bigint NOT NULL,
    locale character varying(14),
    status smallint DEFAULT '1'::smallint NOT NULL,
    submission_progress character varying(50) DEFAULT 'files'::character varying NOT NULL,
    work_type smallint DEFAULT '0'::smallint
);


ALTER TABLE public.submissions OWNER TO "ops-ci";

--
-- Name: submissions_submission_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.submissions_submission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submissions_submission_id_seq OWNER TO "ops-ci";

--
-- Name: submissions_submission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.submissions_submission_id_seq OWNED BY public.submissions.submission_id;


--
-- Name: temporary_files; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.temporary_files (
    file_id bigint NOT NULL,
    user_id bigint NOT NULL,
    file_name character varying(90) NOT NULL,
    file_type character varying(255),
    file_size bigint NOT NULL,
    original_file_name character varying(127),
    date_uploaded timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.temporary_files OWNER TO "ops-ci";

--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.temporary_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temporary_files_file_id_seq OWNER TO "ops-ci";

--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.temporary_files_file_id_seq OWNED BY public.temporary_files.file_id;


--
-- Name: usage_stats_institution_temporary_records; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.usage_stats_institution_temporary_records (
    load_id character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    institution_id bigint NOT NULL
);


ALTER TABLE public.usage_stats_institution_temporary_records OWNER TO "ops-ci";

--
-- Name: usage_stats_total_temporary_records; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.usage_stats_total_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    canonical_url character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_total_temporary_records OWNER TO "ops-ci";

--
-- Name: usage_stats_unique_item_investigations_temporary_records; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.usage_stats_unique_item_investigations_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_unique_item_investigations_temporary_records OWNER TO "ops-ci";

--
-- Name: usage_stats_unique_item_requests_temporary_records; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.usage_stats_unique_item_requests_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_unique_item_requests_temporary_records OWNER TO "ops-ci";

--
-- Name: user_group_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.user_group_settings (
    user_group_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.user_group_settings OWNER TO "ops-ci";

--
-- Name: user_group_stage; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.user_group_stage (
    context_id bigint NOT NULL,
    user_group_id bigint NOT NULL,
    stage_id bigint NOT NULL
);


ALTER TABLE public.user_group_stage OWNER TO "ops-ci";

--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.user_groups (
    user_group_id bigint NOT NULL,
    context_id bigint NOT NULL,
    role_id bigint NOT NULL,
    is_default smallint DEFAULT '0'::smallint NOT NULL,
    show_title smallint DEFAULT '1'::smallint NOT NULL,
    permit_self_registration smallint DEFAULT '0'::smallint NOT NULL,
    permit_metadata_edit smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.user_groups OWNER TO "ops-ci";

--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.user_groups_user_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_user_group_id_seq OWNER TO "ops-ci";

--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.user_groups_user_group_id_seq OWNED BY public.user_groups.user_group_id;


--
-- Name: user_interests; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.user_interests (
    user_id bigint NOT NULL,
    controlled_vocab_entry_id bigint NOT NULL
);


ALTER TABLE public.user_interests OWNER TO "ops-ci";

--
-- Name: user_settings; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.user_settings (
    user_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.user_settings OWNER TO "ops-ci";

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.user_user_groups (
    user_group_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO "ops-ci";

--
-- Name: users; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.users (
    user_id bigint NOT NULL,
    username character varying(32) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    url character varying(2047),
    phone character varying(32),
    mailing_address character varying(255),
    billing_address character varying(255),
    country character varying(90),
    locales character varying(255) DEFAULT '[]'::character varying NOT NULL,
    gossip text,
    date_last_email timestamp(0) without time zone,
    date_registered timestamp(0) without time zone NOT NULL,
    date_validated timestamp(0) without time zone,
    date_last_login timestamp(0) without time zone,
    must_change_password smallint,
    auth_id bigint,
    auth_str character varying(255),
    disabled smallint DEFAULT '0'::smallint NOT NULL,
    disabled_reason text,
    inline_help smallint
);


ALTER TABLE public.users OWNER TO "ops-ci";

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ops-ci
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO "ops-ci";

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ops-ci
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: ops-ci
--

CREATE TABLE public.versions (
    major integer DEFAULT 0 NOT NULL,
    minor integer DEFAULT 0 NOT NULL,
    revision integer DEFAULT 0 NOT NULL,
    build integer DEFAULT 0 NOT NULL,
    date_installed timestamp(0) without time zone NOT NULL,
    current smallint DEFAULT '0'::smallint NOT NULL,
    product_type character varying(30),
    product character varying(30),
    product_class_name character varying(80),
    lazy_load smallint DEFAULT '0'::smallint NOT NULL,
    sitewide smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.versions OWNER TO "ops-ci";

--
-- Name: COLUMN versions.major; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.major IS 'Major component of version number, e.g. the 2 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.minor; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.minor IS 'Minor component of version number, e.g. the 3 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.revision; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.revision IS 'Revision component of version number, e.g. the 8 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.build; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.build IS 'Build component of version number, e.g. the 0 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.current; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.current IS '1 iff the version entry being described is currently active. This permits the table to store past installation history for forensic purposes.';


--
-- Name: COLUMN versions.product_type; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.product_type IS 'Describes the type of product this row describes, e.g. "plugins.generic" (for a generic plugin) or "core" for the application itelf';


--
-- Name: COLUMN versions.product; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.product IS 'Uniquely identifies the product this version row describes, e.g. "ojs2" for OJS 2.x, "languageToggle" for the language toggle block plugin, etc.';


--
-- Name: COLUMN versions.product_class_name; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.product_class_name IS 'Specifies the class name associated with this product, for plugins, or the empty string where not applicable.';


--
-- Name: COLUMN versions.lazy_load; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.lazy_load IS '1 iff the row describes a lazy-load plugin; 0 otherwise';


--
-- Name: COLUMN versions.sitewide; Type: COMMENT; Schema: public; Owner: ops-ci
--

COMMENT ON COLUMN public.versions.sitewide IS '1 iff the row describes a site-wide plugin; 0 otherwise';


--
-- Name: access_key_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.access_keys ALTER COLUMN access_key_id SET DEFAULT nextval('public.access_keys_access_key_id_seq'::regclass);


--
-- Name: type_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcement_types ALTER COLUMN type_id SET DEFAULT nextval('public.announcement_types_type_id_seq'::regclass);


--
-- Name: announcement_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcements ALTER COLUMN announcement_id SET DEFAULT nextval('public.announcements_announcement_id_seq'::regclass);


--
-- Name: author_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);


--
-- Name: category_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: citation_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.citations ALTER COLUMN citation_id SET DEFAULT nextval('public.citations_citation_id_seq'::regclass);


--
-- Name: controlled_vocab_entry_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries ALTER COLUMN controlled_vocab_entry_id SET DEFAULT nextval('public.controlled_vocab_entries_controlled_vocab_entry_id_seq'::regclass);


--
-- Name: controlled_vocab_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocabs ALTER COLUMN controlled_vocab_id SET DEFAULT nextval('public.controlled_vocabs_controlled_vocab_id_seq'::regclass);


--
-- Name: object_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects ALTER COLUMN object_id SET DEFAULT nextval('public.data_object_tombstone_oai_set_objects_object_id_seq'::regclass);


--
-- Name: tombstone_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.data_object_tombstones ALTER COLUMN tombstone_id SET DEFAULT nextval('public.data_object_tombstones_tombstone_id_seq'::regclass);


--
-- Name: doi_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.dois ALTER COLUMN doi_id SET DEFAULT nextval('public.dois_doi_id_seq'::regclass);


--
-- Name: edit_decision_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.edit_decisions ALTER COLUMN edit_decision_id SET DEFAULT nextval('public.edit_decisions_edit_decision_id_seq'::regclass);


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_log ALTER COLUMN log_id SET DEFAULT nextval('public.email_log_log_id_seq'::regclass);


--
-- Name: email_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_templates ALTER COLUMN email_id SET DEFAULT nextval('public.email_templates_email_id_seq'::regclass);


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.event_log ALTER COLUMN log_id SET DEFAULT nextval('public.event_log_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.files ALTER COLUMN file_id SET DEFAULT nextval('public.files_file_id_seq'::regclass);


--
-- Name: filter_group_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filter_groups ALTER COLUMN filter_group_id SET DEFAULT nextval('public.filter_groups_filter_group_id_seq'::regclass);


--
-- Name: filter_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filters ALTER COLUMN filter_id SET DEFAULT nextval('public.filters_filter_id_seq'::regclass);


--
-- Name: genre_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_genre_id_seq'::regclass);


--
-- Name: institution_ip_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institution_ip ALTER COLUMN institution_ip_id SET DEFAULT nextval('public.institution_ip_institution_ip_id_seq'::regclass);


--
-- Name: institution_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institutions ALTER COLUMN institution_id SET DEFAULT nextval('public.institutions_institution_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.library_files ALTER COLUMN file_id SET DEFAULT nextval('public.library_files_file_id_seq'::regclass);


--
-- Name: navigation_menu_item_assignment_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments ALTER COLUMN navigation_menu_item_assignment_id SET DEFAULT nextval('public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq'::regclass);


--
-- Name: navigation_menu_item_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_items ALTER COLUMN navigation_menu_item_id SET DEFAULT nextval('public.navigation_menu_items_navigation_menu_item_id_seq'::regclass);


--
-- Name: navigation_menu_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menus ALTER COLUMN navigation_menu_id SET DEFAULT nextval('public.navigation_menus_navigation_menu_id_seq'::regclass);


--
-- Name: note_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notes ALTER COLUMN note_id SET DEFAULT nextval('public.notes_note_id_seq'::regclass);


--
-- Name: setting_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notification_subscription_settings ALTER COLUMN setting_id SET DEFAULT nextval('public.notification_subscription_settings_setting_id_seq'::regclass);


--
-- Name: notification_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notifications ALTER COLUMN notification_id SET DEFAULT nextval('public.notifications_notification_id_seq'::regclass);


--
-- Name: galley_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_galleys ALTER COLUMN galley_id SET DEFAULT nextval('public.publication_galleys_galley_id_seq'::regclass);


--
-- Name: publication_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publications ALTER COLUMN publication_id SET DEFAULT nextval('public.publications_publication_id_seq'::regclass);


--
-- Name: query_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.queries ALTER COLUMN query_id SET DEFAULT nextval('public.queries_query_id_seq'::regclass);


--
-- Name: review_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_assignments ALTER COLUMN review_id SET DEFAULT nextval('public.review_assignments_review_id_seq'::regclass);


--
-- Name: review_form_element_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_elements ALTER COLUMN review_form_element_id SET DEFAULT nextval('public.review_form_elements_review_form_element_id_seq'::regclass);


--
-- Name: review_form_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_forms ALTER COLUMN review_form_id SET DEFAULT nextval('public.review_forms_review_form_id_seq'::regclass);


--
-- Name: review_round_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_rounds ALTER COLUMN review_round_id SET DEFAULT nextval('public.review_rounds_review_round_id_seq'::regclass);


--
-- Name: section_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.sections ALTER COLUMN section_id SET DEFAULT nextval('public.sections_section_id_seq'::regclass);


--
-- Name: server_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.servers ALTER COLUMN server_id SET DEFAULT nextval('public.servers_server_id_seq'::regclass);


--
-- Name: stage_assignment_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.stage_assignments ALTER COLUMN stage_assignment_id SET DEFAULT nextval('public.stage_assignments_stage_assignment_id_seq'::regclass);


--
-- Name: comment_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.submission_comments_comment_id_seq'::regclass);


--
-- Name: revision_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_file_revisions ALTER COLUMN revision_id SET DEFAULT nextval('public.submission_file_revisions_revision_id_seq'::regclass);


--
-- Name: submission_file_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_files ALTER COLUMN submission_file_id SET DEFAULT nextval('public.submission_files_submission_file_id_seq'::regclass);


--
-- Name: keyword_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list ALTER COLUMN keyword_id SET DEFAULT nextval('public.submission_search_keyword_list_keyword_id_seq'::regclass);


--
-- Name: object_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_objects ALTER COLUMN object_id SET DEFAULT nextval('public.submission_search_objects_object_id_seq'::regclass);


--
-- Name: submission_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submissions ALTER COLUMN submission_id SET DEFAULT nextval('public.submissions_submission_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.temporary_files ALTER COLUMN file_id SET DEFAULT nextval('public.temporary_files_file_id_seq'::regclass);


--
-- Name: user_group_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_groups ALTER COLUMN user_group_id SET DEFAULT nextval('public.user_groups_user_group_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: access_keys; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.access_keys (access_key_id, context, key_hash, user_id, assoc_id, expiry_date) FROM stdin;
\.


--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.access_keys_access_key_id_seq', 1, false);


--
-- Data for Name: announcement_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.announcement_settings (announcement_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: announcement_type_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.announcement_type_settings (type_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: announcement_types; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.announcement_types (type_id, context_id) FROM stdin;
\.


--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.announcement_types_type_id_seq', 1, false);


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.announcements (announcement_id, assoc_type, assoc_id, type_id, date_expire, date_posted) FROM stdin;
\.


--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.announcements_announcement_id_seq', 1, false);


--
-- Data for Name: author_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.author_settings (author_id, locale, setting_name, setting_value) FROM stdin;
1	en_US	affiliation	University of Bologna
1		country	IT
1	en_US	familyName	Corino
1	en_US	givenName	Carlo
3	fr_CA	familyName	\N
3	fr_CA	givenName	\N
23	en_US	affiliation	Barcelona University
23		country	ES
23	en_US	familyName	Rossi
23	en_US	givenName	Rosanna
24	en_US	affiliation	University of Tehran
24		country	IR
24	en_US	familyName	Karbasizaed
2	en_US	affiliation	University of Windsor
2		country	CA
2	en_US	familyName	Kwantes
2	en_US	givenName	Catherine
3		country	FI
3	en_US	familyName	Kekkonen
3	en_US	givenName	Urho
5	en_US	affiliation	University of Alberta
5		country	CA
5	en_US	familyName	Montgomerie
5	en_US	givenName	Craig
6	en_US	affiliation	University of Victoria
6		country	CA
6	en_US	familyName	Irvine
6	en_US	givenName	Mark
7	en_US	affiliation	University of Alberta
7		country	CA
7	en_US	familyName	Montgomerie
7	en_US	givenName	Craig
8	en_US	affiliation	University of Victoria
8		country	CA
8	en_US	familyName	Irvine
8	en_US	givenName	Mark
9	en_US	affiliation	Alexandria University
9		country	EG
9	en_US	familyName	Diouf
9	en_US	givenName	Diaga
10	en_US	affiliation	University of Toronto
10		country	CA
10	en_US	familyName	Phillips
10	en_US	givenName	Dana
11	en_US	affiliation	University College Cork
11		country	IE
11	en_US	familyName	Sokoloff
11	en_US	givenName	Domatilia
12	en_US	affiliation	Indiana University
12		country	US
12	en_US	familyName	Ostrom
12	en_US	givenName	Elinor
13	en_US	affiliation	Indiana University
13		country	US
13	en_US	familyName	van Laerhoven
13	en_US	givenName	Frank
14	en_US	affiliation	University of Rome
14		country	IT
14	en_US	familyName	Paglieri
14	en_US	givenName	Fabio
15	en_US	affiliation	University of Cape Town
15		country	ZA
15	en_US	familyName	Mwandenga
15	en_US	givenName	John
16	en_US	affiliation	Aalborg University
16		country	DK
16	en_US	familyName	Novak
16	en_US	givenName	John
17	en_US	affiliation	Stanford University
17		country	US
17	en_US	familyName	Al-Khafaji
17	en_US	givenName	Karim
18	en_US	affiliation	Stanford University
18		country	US
18	en_US	familyName	Morse
18	en_US	givenName	Margaret
19	en_US	affiliation	Australian National University
19		country	AU
19	en_US	familyName	Christopher
19	en_US	givenName	Leo
20	en_US	affiliation	University of Cape Town
20		country	ZA
20	en_US	familyName	Kumiega
20	en_US	givenName	Lise
21	en_US	affiliation	University of Wolverhampton
21		country	GB
21	en_US	familyName	Daniel
21	en_US	givenName	Patricia
22	en_US	affiliation	University of Nairobi
22		country	KE
22	en_US	familyName	Baiyewu
22	en_US	givenName	Rana
24	en_US	givenName	Vajiheh
25	en_US	affiliation	University of Windsor
25		country	CA
25	en_US	familyName	Williamson
25	en_US	givenName	Valerie
26	en_US	affiliation	CUNY
26		country	US
26	en_US	familyName	Woods
26	en_US	givenName	Zita
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.authors (author_id, email, include_in_browse, publication_id, seq, user_group_id) FROM stdin;
1	ccorino@mailinator.com	1	1	0	4
2	ckwantes@mailinator.com	1	2	0	4
3	notanemailukk@mailinator.com	1	2	1	4
5	cmontgomerie@mailinator.com	1	3	0	4
6	mirvine@mailinator.com	1	3	0	4
7	cmontgomerie@mailinator.com	1	4	0	4
8	mirvine@mailinator.com	1	4	0	4
9	ddiouf@mailinator.com	1	5	0	4
10	dphillips@mailinator.com	1	6	0	4
11	dsokoloff@mailinator.com	1	7	0	4
12	eostrom@mailinator.com	1	8	0	4
13	fvanlaerhoven@mailinator.com	1	8	0	4
14	fpaglieri@mailinator.com	1	9	0	4
15	jmwandenga@mailinator.com	1	10	0	4
16	jnovak@mailinator.com	1	11	0	4
17	kalkhafaji@mailinator.com	1	12	0	4
18	mmorse@mailinator.com	1	12	0	4
19	lchristopher@mailinator.com	1	13	0	4
20	lkumiega@mailinator.com	1	14	0	4
21	pdaniel@mailinator.com	1	15	0	4
22	rbaiyewu@mailinator.com	1	16	0	4
23	rrossi@mailinator.com	1	17	0	4
24	vkarbasizaed@mailinator.com	1	18	0	4
25	vwilliamson@mailinator.com	1	19	0	4
26	zwoods@mailinator.com	1	20	0	4
\.


--
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 26, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.categories (category_id, context_id, parent_id, seq, path, image) FROM stdin;
2	1	\N	1	biology	\N
1	1	\N	3	history	\N
4	1	\N	4	mathematics	\N
3	1	\N	5	social-sciences	\N
5	1	1	10000	cultural-history	\N
\.


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 5, true);


--
-- Data for Name: category_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.category_settings (category_id, locale, setting_name, setting_value) FROM stdin;
1		sortOption	title-ASC
1	en_US	title	History
1	fr_CA	title	
1	en_US	description	
1	fr_CA	description	
2		sortOption	title-ASC
2	en_US	title	Biology
2	fr_CA	title	
2	en_US	description	
2	fr_CA	description	
3		sortOption	title-ASC
3	en_US	title	Social sciences
3	fr_CA	title	
3	en_US	description	
3	fr_CA	description	
4		sortOption	title-ASC
4	en_US	title	Mathematics
4	fr_CA	title	
4	en_US	description	
4	fr_CA	description	
5		sortOption	title-ASC
5	en_US	title	Cultural History
5	fr_CA	title	
5	en_US	description	
5	fr_CA	description	
\.


--
-- Data for Name: citation_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.citation_settings (citation_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: citations; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.citations (citation_id, publication_id, raw_citation, seq) FROM stdin;
\.


--
-- Name: citations_citation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.citations_citation_id_seq', 1, false);


--
-- Data for Name: controlled_vocab_entries; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.controlled_vocab_entries (controlled_vocab_entry_id, controlled_vocab_id, seq) FROM stdin;
3	7	1
4	7	2
76	32	1
77	32	2
81	37	1
82	37	2
83	37	3
85	52	1
90	57	1
91	57	2
92	57	3
93	57	4
96	62	1
97	62	2
99	67	1
34	12	1
35	12	2
36	12	3
37	12	4
38	12	5
39	12	6
40	12	7
41	12	8
110	72	1
111	72	2
112	72	3
113	72	4
114	72	5
115	72	6
116	72	7
117	72	8
118	72	9
119	72	10
122	82	1
123	82	2
127	92	1
128	92	2
66	17	1
67	17	2
68	17	3
69	17	4
70	17	5
71	17	6
72	17	7
73	17	8
129	92	3
132	97	1
133	97	2
\.


--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.controlled_vocab_entries_controlled_vocab_entry_id_seq', 133, true);


--
-- Data for Name: controlled_vocab_entry_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.controlled_vocab_entry_settings (controlled_vocab_entry_id, locale, setting_name, setting_value, setting_type) FROM stdin;
3	en_US	submissionKeyword	employees	string
4	en_US	submissionKeyword	survey	string
76	en_US	submissionKeyword	education	string
77	en_US	submissionKeyword	citizenship	string
81	en_US	submissionKeyword	Common pool resource	string
82	en_US	submissionKeyword	common property	string
83	en_US	submissionKeyword	intellectual developments	string
85	en_US	submissionKeyword	water	string
90	en_US	submissionKeyword	Development	string
91	en_US	submissionKeyword	engineering education	string
92	en_US	submissionKeyword	service learning	string
93	en_US	submissionKeyword	sustainability	string
96	en_US	submissionKeyword	pigs	string
97	en_US	submissionKeyword	food security	string
99	en_US	submissionKeyword	water	string
34	en_US	submissionKeyword	Integrating Technology	string
35	en_US	submissionKeyword	Computer Skills	string
36	en_US	submissionKeyword	Survey	string
37	en_US	submissionKeyword	Alberta	string
38	en_US	submissionKeyword	National	string
39	en_US	submissionKeyword	Provincial	string
40	en_US	submissionKeyword	Professional Development	string
41	en_US	submissionKeyword	employees	string
110	en_US	submissionKeyword	21st Century	string
111	en_US	submissionKeyword	Diversity	string
112	en_US	submissionKeyword	Multilingual	string
113	en_US	submissionKeyword	Multiethnic	string
114	en_US	submissionKeyword	Participatory Pedagogy	string
115	en_US	submissionKeyword	Language	string
116	en_US	submissionKeyword	Culture	string
117	en_US	submissionKeyword	Gender	string
118	en_US	submissionKeyword	Egalitarianism	string
119	en_US	submissionKeyword	Social Transformation	string
122	en_US	submissionKeyword	cattle	string
123	en_US	submissionKeyword	food security	string
127	en_US	submissionKeyword	Self-Organization	string
128	en_US	submissionKeyword	Multi-Level Institutions	string
66	en_US	submissionKeyword	Integrating Technology	string
67	en_US	submissionKeyword	Computer Skills	string
68	en_US	submissionKeyword	Survey	string
69	en_US	submissionKeyword	Alberta	string
70	en_US	submissionKeyword	National	string
71	en_US	submissionKeyword	Provincial	string
72	en_US	submissionKeyword	Professional Development	string
73	en_US	submissionKeyword	employees	string
129	en_US	submissionKeyword	Goverance	string
132	en_US	submissionKeyword	education	string
133	en_US	submissionKeyword	citizenship	string
\.


--
-- Data for Name: controlled_vocabs; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.controlled_vocabs (controlled_vocab_id, symbolic, assoc_type, assoc_id) FROM stdin;
1	interest	0	0
2	submissionKeyword	1048588	1
3	submissionSubject	1048588	1
4	submissionDiscipline	1048588	1
5	submissionLanguage	1048588	1
6	submissionAgency	1048588	1
7	submissionKeyword	1048588	2
8	submissionSubject	1048588	2
9	submissionDiscipline	1048588	2
10	submissionLanguage	1048588	2
11	submissionAgency	1048588	2
12	submissionKeyword	1048588	3
13	submissionSubject	1048588	3
14	submissionDiscipline	1048588	3
15	submissionLanguage	1048588	3
16	submissionAgency	1048588	3
17	submissionKeyword	1048588	4
18	submissionSubject	1048588	4
19	submissionDiscipline	1048588	4
20	submissionLanguage	1048588	4
21	submissionAgency	1048588	4
22	submissionKeyword	1048588	5
23	submissionSubject	1048588	5
24	submissionDiscipline	1048588	5
25	submissionLanguage	1048588	5
26	submissionAgency	1048588	5
27	submissionKeyword	1048588	6
28	submissionSubject	1048588	6
29	submissionDiscipline	1048588	6
30	submissionLanguage	1048588	6
31	submissionAgency	1048588	6
32	submissionKeyword	1048588	7
33	submissionSubject	1048588	7
34	submissionDiscipline	1048588	7
35	submissionLanguage	1048588	7
36	submissionAgency	1048588	7
37	submissionKeyword	1048588	8
38	submissionSubject	1048588	8
39	submissionDiscipline	1048588	8
40	submissionLanguage	1048588	8
41	submissionAgency	1048588	8
42	submissionKeyword	1048588	9
43	submissionSubject	1048588	9
44	submissionDiscipline	1048588	9
45	submissionLanguage	1048588	9
46	submissionAgency	1048588	9
47	submissionKeyword	1048588	10
48	submissionSubject	1048588	10
49	submissionDiscipline	1048588	10
50	submissionLanguage	1048588	10
51	submissionAgency	1048588	10
52	submissionKeyword	1048588	11
53	submissionSubject	1048588	11
54	submissionDiscipline	1048588	11
55	submissionLanguage	1048588	11
56	submissionAgency	1048588	11
57	submissionKeyword	1048588	12
58	submissionSubject	1048588	12
59	submissionDiscipline	1048588	12
60	submissionLanguage	1048588	12
61	submissionAgency	1048588	12
62	submissionKeyword	1048588	13
63	submissionSubject	1048588	13
64	submissionDiscipline	1048588	13
65	submissionLanguage	1048588	13
66	submissionAgency	1048588	13
67	submissionKeyword	1048588	14
68	submissionSubject	1048588	14
69	submissionDiscipline	1048588	14
70	submissionLanguage	1048588	14
71	submissionAgency	1048588	14
72	submissionKeyword	1048588	15
73	submissionSubject	1048588	15
74	submissionDiscipline	1048588	15
75	submissionLanguage	1048588	15
76	submissionAgency	1048588	15
77	submissionKeyword	1048588	16
78	submissionSubject	1048588	16
79	submissionDiscipline	1048588	16
80	submissionLanguage	1048588	16
81	submissionAgency	1048588	16
82	submissionKeyword	1048588	17
83	submissionSubject	1048588	17
84	submissionDiscipline	1048588	17
85	submissionLanguage	1048588	17
86	submissionAgency	1048588	17
87	submissionKeyword	1048588	18
88	submissionSubject	1048588	18
89	submissionDiscipline	1048588	18
90	submissionLanguage	1048588	18
91	submissionAgency	1048588	18
92	submissionKeyword	1048588	19
93	submissionSubject	1048588	19
94	submissionDiscipline	1048588	19
95	submissionLanguage	1048588	19
96	submissionAgency	1048588	19
97	submissionKeyword	1048588	20
98	submissionSubject	1048588	20
99	submissionDiscipline	1048588	20
100	submissionLanguage	1048588	20
101	submissionAgency	1048588	20
\.


--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.controlled_vocabs_controlled_vocab_id_seq', 101, true);


--
-- Data for Name: data_object_tombstone_oai_set_objects; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.data_object_tombstone_oai_set_objects (object_id, tombstone_id, assoc_type, assoc_id) FROM stdin;
\.


--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.data_object_tombstone_oai_set_objects_object_id_seq', 4, true);


--
-- Data for Name: data_object_tombstone_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.data_object_tombstone_settings (tombstone_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: data_object_tombstones; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.data_object_tombstones (tombstone_id, data_object_id, date_deleted, set_spec, set_name, oai_identifier) FROM stdin;
\.


--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.data_object_tombstones_tombstone_id_seq', 2, true);


--
-- Data for Name: doi_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.doi_settings (doi_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: dois; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.dois (doi_id, context_id, doi, status) FROM stdin;
\.


--
-- Name: dois_doi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.dois_doi_id_seq', 1, false);


--
-- Data for Name: edit_decisions; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.edit_decisions (edit_decision_id, submission_id, review_round_id, stage_id, round, editor_id, decision, date_decided) FROM stdin;
1	4	\N	5	\N	3	8	2023-01-19 10:45:25
2	4	\N	5	\N	3	16	2023-01-19 10:45:32
3	4	\N	5	\N	3	8	2023-01-19 10:45:39
\.


--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.edit_decisions_edit_decision_id_seq', 3, true);


--
-- Data for Name: email_log; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.email_log (log_id, assoc_type, assoc_id, sender_id, date_sent, event_type, from_address, recipients, cc_recipients, bcc_recipients, subject, body) FROM stdin;
1	1048585	1	0	2023-01-19 10:42:29	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">The influence of lactation on the quantity and quality of cashmere production</a><br />Carlo Corino</p><p><b>Abstract</b></p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P>0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P<0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P<0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P<0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
2	1048585	1	0	2023-01-19 10:42:29	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">The influence of lactation on the quantity and quality of cashmere production</a><br />Carlo Corino</p><p><b>Abstract</b></p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P>0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P<0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P<0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P<0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
3	1048585	1	0	2023-01-19 10:42:29	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">The influence of lactation on the quantity and quality of cashmere production</a><br />Carlo Corino</p><p><b>Abstract</b></p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P>0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P<0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P<0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P<0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
4	1048585	1	0	2023-01-19 10:42:29	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Carlo Corino" <ccorino@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Carlo Corino,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, The influence of lactation on the quantity and quality of cashmere production, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/1</p><p>If you have been logged out, you can login again with the username ccorino.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/1">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
15	1048585	4	0	2023-01-19 10:45:13	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">Genetic transformation of forest trees</a><br />Diaga Diouf</p><p><b>Abstract</b></p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
5	1048585	2	0	2023-01-19 10:43:38	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence</a><br />Catherine Kwantes, Urho Kekkonen</p><p><b>Abstract</b></p><p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p><p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
6	1048585	2	0	2023-01-19 10:43:38	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence</a><br />Catherine Kwantes, Urho Kekkonen</p><p><b>Abstract</b></p><p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p><p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
7	1048585	2	0	2023-01-19 10:43:39	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence</a><br />Catherine Kwantes, Urho Kekkonen</p><p><b>Abstract</b></p><p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p><p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
8	1048585	2	0	2023-01-19 10:43:39	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Catherine Kwantes" <ckwantes@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Catherine Kwantes,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/2</p><p>If you have been logged out, you can login again with the username ckwantes.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/2">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
9	1048585	2	0	2023-01-19 10:43:39	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Urho Kekkonen" <notanemailukk@mailinator.com>			Submission Acknowledgement	<p>Dear Urho Kekkonen,</p><p>You have been named as a co-author on a preprint submitted to Public Knowledge Preprint Server. The submitter, Catherine Kwantes, provided the following details:</p><p>The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this server as a venue for your work.</p><p>Kind regards,</p><br><br><p><a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href="mailto:%20%7B$contactEmail%7D">{$contactEmail}</a></p>
10	1048585	3	0	2023-01-19 10:44:17	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice</a><br />Craig Montgomerie, Mark Irvine</p><p><b>Abstract</b></p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
11	1048585	3	0	2023-01-19 10:44:17	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice</a><br />Craig Montgomerie, Mark Irvine</p><p><b>Abstract</b></p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
12	1048585	3	0	2023-01-19 10:44:17	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice</a><br />Craig Montgomerie, Mark Irvine</p><p><b>Abstract</b></p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
13	1048585	3	0	2023-01-19 10:44:17	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Craig Montgomerie" <cmontgomerie@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Craig Montgomerie,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/3</p><p>If you have been logged out, you can login again with the username cmontgomerie.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/3">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
14	1048585	3	0	2023-01-19 10:44:17	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Mark Irvine" <mirvine@mailinator.com>			Submission Acknowledgement	<p>Dear Mark Irvine,</p><p>You have been named as a co-author on a preprint submitted to Public Knowledge Preprint Server. The submitter, Craig Montgomerie, provided the following details:</p><p>Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this server as a venue for your work.</p><p>Kind regards,</p><br><br><p><a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href="mailto:%20%7B$contactEmail%7D">{$contactEmail}</a></p>
16	1048585	4	0	2023-01-19 10:45:13	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">Genetic transformation of forest trees</a><br />Diaga Diouf</p><p><b>Abstract</b></p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
17	1048585	4	0	2023-01-19 10:45:13	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">Genetic transformation of forest trees</a><br />Diaga Diouf</p><p><b>Abstract</b></p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
18	1048585	4	0	2023-01-19 10:45:14	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Diaga Diouf,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Genetic transformation of forest trees, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/4</p><p>If you have been logged out, you can login again with the username ddiouf.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/4">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
19	1048585	4	3	2023-01-19 10:45:25	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			Your submission has been declined	<p>Dear Diaga Diouf,</p><p>I’m sorry to inform you that, after reviewing your submission, Genetic transformation of forest trees, the editor has found that it does not meet our requirements for publication in Public Knowledge Preprint Server.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p><p>Daniel Barnes</p>
20	1048585	4	3	2023-01-19 10:45:32	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			We have reversed the decision to decline your submission	<p>Dear Diaga Diouf,</p>\n<p>The decision to decline your submission, Genetic transformation of forest trees, has been reversed. \nAn editor will look further at your submission before deciding whether to decline \nthe submission or send it for review.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/4">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p><p>Daniel Barnes</p></p>\n
21	1048585	4	3	2023-01-19 10:45:39	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			Your submission has been declined	<p>Dear Diaga Diouf,</p><p>I’m sorry to inform you that, after reviewing your submission, Genetic transformation of forest trees, the editor has found that it does not meet our requirements for publication in Public Knowledge Preprint Server.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p><p>Daniel Barnes</p>
22	1048585	5	0	2023-01-19 10:46:06	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement</a><br />Dana Phillips</p><p><b>Abstract</b></p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
34	1048585	7	0	2023-01-19 10:47:30	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Frank van Laerhoven" <fvanlaerhoven@mailinator.com>			Submission Acknowledgement	<p>Dear Frank van Laerhoven,</p><p>You have been named as a co-author on a preprint submitted to Public Knowledge Preprint Server. The submitter, Elinor Ostrom, provided the following details:</p><p>Developing efficacy beliefs in the classroom<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this server as a venue for your work.</p><p>Kind regards,</p><br><br><p><a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href="mailto:%20%7B$contactEmail%7D">{$contactEmail}</a></p>
23	1048585	5	0	2023-01-19 10:46:06	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement</a><br />Dana Phillips</p><p><b>Abstract</b></p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
24	1048585	5	0	2023-01-19 10:46:07	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement</a><br />Dana Phillips</p><p><b>Abstract</b></p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
25	1048585	5	0	2023-01-19 10:46:07	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Dana Phillips" <dphillips@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Dana Phillips,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/5</p><p>If you have been logged out, you can login again with the username dphillips.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/5">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
26	1048585	6	0	2023-01-19 10:46:56	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">Developing efficacy beliefs in the classroom</a><br />Domatilia Sokoloff</p><p><b>Abstract</b></p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
27	1048585	6	0	2023-01-19 10:46:56	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">Developing efficacy beliefs in the classroom</a><br />Domatilia Sokoloff</p><p><b>Abstract</b></p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
28	1048585	6	0	2023-01-19 10:46:56	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">Developing efficacy beliefs in the classroom</a><br />Domatilia Sokoloff</p><p><b>Abstract</b></p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
29	1048585	6	0	2023-01-19 10:46:56	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Domatilia Sokoloff" <dsokoloff@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Domatilia Sokoloff,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Developing efficacy beliefs in the classroom, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/6</p><p>If you have been logged out, you can login again with the username dsokoloff.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/6">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
30	1048585	7	0	2023-01-19 10:47:30	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Developing efficacy beliefs in the classroom</a><br />Elinor Ostrom, Frank van Laerhoven</p><p><b>Abstract</b></p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
31	1048585	7	0	2023-01-19 10:47:30	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Developing efficacy beliefs in the classroom</a><br />Elinor Ostrom, Frank van Laerhoven</p><p><b>Abstract</b></p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
32	1048585	7	0	2023-01-19 10:47:30	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Developing efficacy beliefs in the classroom</a><br />Elinor Ostrom, Frank van Laerhoven</p><p><b>Abstract</b></p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
33	1048585	7	0	2023-01-19 10:47:30	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Elinor Ostrom" <eostrom@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Elinor Ostrom,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Developing efficacy beliefs in the classroom, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/7</p><p>If you have been logged out, you can login again with the username eostrom.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/7">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
35	1048585	8	0	2023-01-19 10:48:04	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Hansen & Pinto: Reason Reclaimed</a><br />Fabio Paglieri</p><p><b>Abstract</b></p>None.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
36	1048585	8	0	2023-01-19 10:48:04	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Hansen & Pinto: Reason Reclaimed</a><br />Fabio Paglieri</p><p><b>Abstract</b></p>None.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
37	1048585	8	0	2023-01-19 10:48:04	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Hansen & Pinto: Reason Reclaimed</a><br />Fabio Paglieri</p><p><b>Abstract</b></p>None.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
38	1048585	8	0	2023-01-19 10:48:04	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Fabio Paglieri" <fpaglieri@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Fabio Paglieri,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Hansen & Pinto: Reason Reclaimed, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/8</p><p>If you have been logged out, you can login again with the username fpaglieri.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/8">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
39	1048585	9	0	2023-01-19 10:48:38	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence</a><br />John Mwandenga</p><p><b>Abstract</b></p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
40	1048585	9	0	2023-01-19 10:48:38	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence</a><br />John Mwandenga</p><p><b>Abstract</b></p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
41	1048585	9	0	2023-01-19 10:48:38	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence</a><br />John Mwandenga</p><p><b>Abstract</b></p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
42	1048585	9	0	2023-01-19 10:48:38	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"John Mwandenga" <jmwandenga@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear John Mwandenga,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/9</p><p>If you have been logged out, you can login again with the username jmwandenga.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/9">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
43	1048585	10	0	2023-01-19 10:49:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br />John Novak</p><p><b>Abstract</b></p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
44	1048585	10	0	2023-01-19 10:49:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br />John Novak</p><p><b>Abstract</b></p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
45	1048585	10	0	2023-01-19 10:49:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br />John Novak</p><p><b>Abstract</b></p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
46	1048585	10	0	2023-01-19 10:49:12	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"John Novak" <jnovak@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear John Novak,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Condensing Water Availability Models to Focus on Specific Water Management Systems, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/10</p><p>If you have been logged out, you can login again with the username jnovak.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/10">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
74	1048585	17	0	2023-01-19 10:53:27	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran</a><br />Vajiheh Karbasizaed</p><p><b>Abstract</b></p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (>56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
47	1048585	11	0	2023-01-19 10:49:47	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Learning Sustainable Design through Service</a><br />Karim Al-Khafaji, Margaret Morse</p><p><b>Abstract</b></p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
48	1048585	11	0	2023-01-19 10:49:47	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Learning Sustainable Design through Service</a><br />Karim Al-Khafaji, Margaret Morse</p><p><b>Abstract</b></p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
49	1048585	11	0	2023-01-19 10:49:47	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Learning Sustainable Design through Service</a><br />Karim Al-Khafaji, Margaret Morse</p><p><b>Abstract</b></p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
50	1048585	11	0	2023-01-19 10:49:47	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Karim Al-Khafaji" <kalkhafaji@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Karim Al-Khafaji,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Learning Sustainable Design through Service, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/11</p><p>If you have been logged out, you can login again with the username kalkhafaji.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/11">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
51	1048585	11	0	2023-01-19 10:49:48	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Margaret Morse" <mmorse@mailinator.com>			Submission Acknowledgement	<p>Dear Margaret Morse,</p><p>You have been named as a co-author on a preprint submitted to Public Knowledge Preprint Server. The submitter, Karim Al-Khafaji, provided the following details:</p><p>Learning Sustainable Design through Service<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this server as a venue for your work.</p><p>Kind regards,</p><br><br><p><a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href="mailto:%20%7B$contactEmail%7D">{$contactEmail}</a></p>
75	1048585	17	0	2023-01-19 10:53:27	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Vajiheh Karbasizaed" <vkarbasizaed@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Vajiheh Karbasizaed,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/17</p><p>If you have been logged out, you can login again with the username vkarbasizaed.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/17">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
52	1048585	12	0	2023-01-19 10:50:23	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Sodium butyrate improves growth performance of weaned piglets during the first period after weaning</a><br />Leo Christopher</p><p><b>Abstract</b></p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P<0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
53	1048585	12	0	2023-01-19 10:50:23	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Sodium butyrate improves growth performance of weaned piglets during the first period after weaning</a><br />Leo Christopher</p><p><b>Abstract</b></p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P<0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
54	1048585	12	0	2023-01-19 10:50:23	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Sodium butyrate improves growth performance of weaned piglets during the first period after weaning</a><br />Leo Christopher</p><p><b>Abstract</b></p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P<0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
55	1048585	12	0	2023-01-19 10:50:23	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Leo Christopher" <lchristopher@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Leo Christopher,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Sodium butyrate improves growth performance of weaned piglets during the first period after weaning, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/12</p><p>If you have been logged out, you can login again with the username lchristopher.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/12">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
76	1048585	18	0	2023-01-19 10:54:04	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/18">Self-Organization in Multi-Level Institutions in Networked Environments</a><br />Valerie Williamson</p><p><b>Abstract</b></p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
56	1048585	13	0	2023-01-19 10:50:59	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br />Lise Kumiega</p><p><b>Abstract</b></p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
57	1048585	13	0	2023-01-19 10:50:59	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br />Lise Kumiega</p><p><b>Abstract</b></p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
58	1048585	13	0	2023-01-19 10:51:00	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br />Lise Kumiega</p><p><b>Abstract</b></p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
59	1048585	13	0	2023-01-19 10:51:00	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Lise Kumiega" <lkumiega@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Lise Kumiega,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/13</p><p>If you have been logged out, you can login again with the username lkumiega.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/13">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
60	1048585	14	0	2023-01-19 10:51:36	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua</a><br />Patricia Daniel</p><p><b>Abstract</b></p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
61	1048585	14	0	2023-01-19 10:51:36	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua</a><br />Patricia Daniel</p><p><b>Abstract</b></p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
62	1048585	14	0	2023-01-19 10:51:36	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua</a><br />Patricia Daniel</p><p><b>Abstract</b></p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
63	1048585	14	0	2023-01-19 10:51:36	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Patricia Daniel" <pdaniel@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Patricia Daniel,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/14</p><p>If you have been logged out, you can login again with the username pdaniel.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/14">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
64	1048585	15	0	2023-01-19 10:52:13	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Yam diseases and its management in Nigeria</a><br />Rana Baiyewu</p><p><b>Abstract</b></p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
77	1048585	18	0	2023-01-19 10:54:04	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/18">Self-Organization in Multi-Level Institutions in Networked Environments</a><br />Valerie Williamson</p><p><b>Abstract</b></p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
65	1048585	15	0	2023-01-19 10:52:13	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Yam diseases and its management in Nigeria</a><br />Rana Baiyewu</p><p><b>Abstract</b></p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
66	1048585	15	0	2023-01-19 10:52:14	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Yam diseases and its management in Nigeria</a><br />Rana Baiyewu</p><p><b>Abstract</b></p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
67	1048585	15	0	2023-01-19 10:52:14	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Rana Baiyewu" <rbaiyewu@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Rana Baiyewu,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Yam diseases and its management in Nigeria, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/15</p><p>If you have been logged out, you can login again with the username rbaiyewu.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/15">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
68	1048585	16	0	2023-01-19 10:52:50	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat</a><br />Rosanna Rossi</p><p><b>Abstract</b></p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
69	1048585	16	0	2023-01-19 10:52:50	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat</a><br />Rosanna Rossi</p><p><b>Abstract</b></p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
70	1048585	16	0	2023-01-19 10:52:50	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat</a><br />Rosanna Rossi</p><p><b>Abstract</b></p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
71	1048585	16	0	2023-01-19 10:52:50	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Rosanna Rossi" <rrossi@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Rosanna Rossi,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/16</p><p>If you have been logged out, you can login again with the username rrossi.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/16">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
72	1048585	17	0	2023-01-19 10:53:27	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran</a><br />Vajiheh Karbasizaed</p><p><b>Abstract</b></p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (>56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
73	1048585	17	0	2023-01-19 10:53:27	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran</a><br />Vajiheh Karbasizaed</p><p><b>Abstract</b></p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (>56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
78	1048585	18	0	2023-01-19 10:54:04	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/18">Self-Organization in Multi-Level Institutions in Networked Environments</a><br />Valerie Williamson</p><p><b>Abstract</b></p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
79	1048585	18	0	2023-01-19 10:54:04	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Valerie Williamson" <vwilliamson@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Valerie Williamson,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Self-Organization in Multi-Level Institutions in Networked Environments, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/18</p><p>If you have been logged out, you can login again with the username vwilliamson.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/18">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
80	1048585	19	0	2023-01-19 10:54:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/19">Finocchiaro: Arguments About Arguments</a><br />Zita Woods</p><p><b>Abstract</b></p>None.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
81	1048585	19	0	2023-01-19 10:54:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/19">Finocchiaro: Arguments About Arguments</a><br />Zita Woods</p><p><b>Abstract</b></p>None.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
82	1048585	19	0	2023-01-19 10:54:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/19">Finocchiaro: Arguments About Arguments</a><br />Zita Woods</p><p><b>Abstract</b></p>None.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a>.</p>
83	1048585	19	0	2023-01-19 10:54:41	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Zita Woods" <zwoods@mailinator.com>			Thank you for your submission to {$serverName}	<p>Dear Zita Woods,</p><p>Thank you for your submission to Public Knowledge Preprint Server. We have received your preprint, Finocchiaro: Arguments About Arguments, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/19</p><p>If you have been logged out, you can login again with the username zwoods.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/19">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Preprint Server as a venue for your work.</p>{$signature}
\.


--
-- Name: email_log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.email_log_log_id_seq', 83, true);


--
-- Data for Name: email_log_users; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.email_log_users (email_log_id, user_id) FROM stdin;
1	1
2	2
3	3
4	7
5	1
6	2
7	3
8	8
10	1
11	2
12	3
13	9
15	1
16	2
17	3
18	10
19	10
20	10
21	10
22	1
23	2
24	3
25	11
26	1
27	2
28	3
29	12
30	1
31	2
32	3
33	13
35	1
36	2
37	3
38	14
39	1
40	2
41	3
42	15
43	1
44	2
45	3
46	16
47	1
48	2
49	3
50	17
52	1
53	2
54	3
55	18
56	1
57	2
58	3
59	19
60	1
61	2
62	3
63	20
64	1
65	2
66	3
67	21
68	1
69	2
70	3
71	22
72	1
73	2
74	3
75	23
76	1
77	2
78	3
79	24
80	1
81	2
82	3
83	25
\.


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.email_templates (email_id, email_key, context_id, alternate_to) FROM stdin;
1	EDITOR_ASSIGN	1	DISCUSSION_NOTIFICATION_PRODUCTION
\.


--
-- Data for Name: email_templates_default_data; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.email_templates_default_data (email_key, locale, name, subject, body) FROM stdin;
PASSWORD_RESET_CONFIRM	en_US	Password Reset Confirm	Password Reset Confirmation	We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$passwordResetUrl}<br />\n<br />\n{$siteContactName}
PASSWORD_RESET	en_US	Password Reset	Password Reset	Your password has been successfully reset for use with the {$siteTitle} web site. Please retain this username and password, as it is necessary for all work with the server.<br />\n<br />\nYour username: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\n{$siteContactName}
USER_REGISTER	en_US	User Created	Server Registration	{$recipientName}<br />\n<br />\nYou have now been registered as a user with {$serverName}. We have included your username and password in this email, which are needed for all work with this server through its website. At any point, you can ask to be removed from the server's list of users by contacting me.<br />\n<br />\nUsername: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$signature}
USER_VALIDATE_CONTEXT	en_US	Validate Email (Server Registration)	Validate Your Account	{$recipientName}<br />\n<br />\nYou have created an account with {$serverName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$signature}
USER_VALIDATE_SITE	en_US	Validate Email (Site)	Validate Your Account	{$recipientName}<br />\n<br />\nYou have created an account with {$siteTitle}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$signature}
SUBMISSION_ACK	en_US	Submission Acknowledgement (Pending Moderation)	Thank you for your submission to {$serverName}	<p>Dear {$recipientName},</p><p>Thank you for your submission to {$serverName}. We have received your preprint, {$submissionTitle}, and a moderator  will see it soon. Once the moderator has reviewed your submission, they will post your preprint or contact you.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: {$authorSubmissionUrl}</p><p>If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Thank you for considering {$serverName} as a venue for your work.</p>{$signature}
POSTED_ACK	en_US	Posted Acknowledgement	Preprint Posted Acknowledgement	{$recipientName}:<br />\n<br />\nYour preprint, &quot;{$submissionTitle}&quot; has been posted online on {$serverName}.<br />\n<br />\nPreprint URL: {$submissionUrl}<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n{$signature}
POSTED_NEW_VERSION_ACK	en_US	New Version Posted	New Version Posted Acknowledgement	<p>Dear {$recipientName},</p><p>Thank you for posting a new version of your preprint to {$serverName}. The new version is now <a href="{$submissionPublishedUrl}">available</a>.</p><p>If you have any questions, please contact me.</p>{$signature}
SUBMISSION_ACK_CAN_POST	en_US	Submission Acknowledgement (No Moderation Required)	Thank you for your submission to {$serverName}	<p>Dear {$recipientName},</p><p>Thank you for your submission to {$serverName}. You can post your preprint, {$submissionTitle}, at any time by following the link below.</p><p>Submission URL: {$authorSubmissionUrl}</p><p>If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Thank you for considering {$serverName} as a venue for your work.</p>{$signature}
SUBMISSION_ACK_NOT_USER	en_US	Submission Confirmation (Other Authors)	Submission Acknowledgement	<p>Dear {$recipientName},</p><p>You have been named as a co-author on a preprint submitted to {$serverName}. The submitter, {$submitterName}, provided the following details:</p><p>{$submissionTitle}<br>{$authorsWithAffiliation}</p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering this server as a venue for your work.</p><p>Kind regards,</p>{$serverSignature}
EDITOR_DECISION_ACCEPT	en_US	Submission Accepted	Moderator Decision	{$authors}:<br />\n<br />\nWe have reached a decision regarding your submission to {$serverName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Accept Submission
EDITOR_DECISION_INITIAL_DECLINE	en_US	Submission Declined	Your submission has been declined	<p>Dear {$recipientName},</p><p>I’m sorry to inform you that, after reviewing your submission, {$submissionTitle}, the editor has found that it does not meet our requirements for publication in {$serverName}.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p>{$signature}
EDITOR_DECISION_REVERT_INITIAL_DECLINE	en_US	Reinstate Submission Declined Without Review	We have reversed the decision to decline your submission	<p>Dear {$recipientName},</p>\n<p>The decision to decline your submission, {$submissionTitle}, has been reversed. \nAn editor will look further at your submission before deciding whether to decline \nthe submission or send it for review.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_NOTIFY_OTHER_AUTHORS	en_US	Notify Other Authors	An update regarding your submission	<p>The following email was sent to {$submittingAuthorName} from {$serverName} regarding {$submissionTitle}.</p>\n<p>You are receiving a copy of this notification because you are identified as an author of the submission. Any instructions in the message below are intended for the submitting author, {$submittingAuthorName}, and no action is required of you at this time.</p>\n\n{$messageToSubmittingAuthor}
STATISTICS_REPORT_NOTIFICATION	en_US	Statistics Report Notification	Preprint Server activity for {$month}, {$year}	\n{$recipientName}, <br />\n<br />\nYour preprint health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n\t<li>New submissions this month: {$newSubmissions}</li>\n\t<li>Declined submissions this month: {$declinedSubmissions}</li>\n\t<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n\t<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the the preprint server to view more detailed <a href="{$editorialStatsLink}">trends</a> and <a href="{$publicationStatsLink}">posted preprint stats</a>. A full copy of this month's trends is attached.<br />\n<br />\nSincerely,<br />\n{$serverSignature}
ANNOUNCEMENT	en_US	New Announcement	{$announcementTitle}	<b>{$announcementTitle}</b><br />\n<br />\n{$announcementSummary}<br />\n<br />\nVisit our website to read the <a href="{$announcementUrl}">full announcement</a>.
DISCUSSION_NOTIFICATION_PRODUCTION	en_US	Discussion (Production)	A message regarding {$serverName}	Please enter your message.
EDITOR_ASSIGN	en_US	Editor Assigned	Moderator Assignment	{$recipientName}:<br />\n<br />\nThe submission, &quot;{$submissionTitle},&quot; to {$serverName} has been assigned to you to see through the screening process in your role as Moderator.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$recipientUsername}<br />\n<br />\nThank you.
VERSION_CREATED	en_US	Version Created	A new version was created for {$submissionTitle}	<p>Dear {$recipientName}, </p><p>This is an automated message to inform you that a new version of your submission, {$submissionTitle}, was created. You can view this version from your submission dashboard at the following link:</p><p><a href="{$submissionUrl}">{$submissionTitle}</a></p><hr><p>This is an automatic email sent from <a href="{$serverUrl}">{$serverName}</a>.</p>
SUBMISSION_SAVED_FOR_LATER	en_US	Submission Saved for Later	Resume your submission to {$serverName}	<p>Dear {$recipientName},</p><p>Your submission details have been saved in our system, but it has not yet been submitted for consideration. You can return to complete your submission at any time by following the link below.</p><p><a href="{$submissionWizardUrl}">{$authorsShort} — {$submissionTitle}</a></p><hr><p>This is an automated email from <a href="{$serverUrl}">{$serverName}</a>.</p>
SUBMISSION_NEEDS_EDITOR	en_US	Submission Needs Editor	A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear {$recipientName},</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="{$serverUrl}">{$serverName}</a>.</p>
PASSWORD_RESET_CONFIRM	fr_CA		Confirmation de la réinitialisation du mot de passe	Nous avons reçu une demande concernant la réinitialisation de votre mot de passe pour le site Web {$siteTitle}.<br />\n<br />\nSi vous n'avez pas fait cette demande, veuillez ne pas tenir compte du présent message, votre mot de passe restera le même. Si vous souhaitez réinitialiser votre mot de passe, cliquer sur l'URL ci-dessous.<br />\n<br />\nRéinitialisation de mon mot de passe : {$passwordResetUrl}<br />\n<br />\n{$siteContactName}
PASSWORD_RESET	fr_CA		Réinitialisation du mot de passe	Votre mot de passe pour le site Web {$siteTitle} a été réinitialisé avec succès. Veuillez conserver votre nom d'utilisateur-trice ainsi que votre mot de passe. Vous en aurez besoin pour chacune de vos interactions avec le serveur.\n<br />\n<br />\nVotre nom d'utilisateur-trice : {$recipientUsername}<br />\nMot de passe : {$password}<br />\n<br />\n{$siteContactName}
USER_REGISTER	fr_CA		Inscription au serveur	{$recipientName},<br />\n<br />\nVous êtes désormais inscrit-e en tant qu'utilisateur-trice pour {$serverName}. Votre nom d'utilisateur-trice et votre mot de passe figurent dans ce courriel, lesquels sont requis pour toute interaction avec le serveur via son site Web. À n'importe quel moment, vous pouvez demander à être retiré-e de la liste des utilisateurs-trices du serveur en nous contactant.<br />\n<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\nMot de passe : {$password}<br />\n<br />\nMerci,<br />\n{$signature}
USER_VALIDATE_CONTEXT	fr_CA		Valider votre compte	{$recipientName},<br />\n<br />\nVous avez créé un compte avec {$serverName}. Pour pouvoir commencer à l'utiliser vous devez d'abord valider votre compte de courriel. Pour ce faire, vous n'avez qu'à suivre le lien ci-dessous :<br />\n<br />\n{$activateUrl}<br />\n<br />\nMerci,<br />\n{$signature}
USER_VALIDATE_SITE	fr_CA			
SUBMISSION_ACK	fr_CA		Accusé de réception de la soumission	{$recipientName},<br />\n<br />\nNous vous remercions d'avoir soumis le manuscrit intitulé « {$submissionTitle} » à la revue {$serverName}. Grâce à notre système de gestion en ligne, vous pourrez suivre votre soumission tout au long du processus d'édition en accédant au site Web de la revue :<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec nous. Nous vous remercions d'avoir pensé à notre revue pour la publication de vos travaux.<br />\n<br />\n{$serverSignature}
POSTED_ACK	fr_CA			
POSTED_NEW_VERSION_ACK	fr_CA			
SUBMISSION_ACK_CAN_POST	fr_CA		Accusé de réception de la soumission	
SUBMISSION_ACK_NOT_USER	fr_CA		Accusé de réception de la soumission	Bonjour,<br />\n<br />\nLe manuscrit intitulé , « {$submissionTitle} » , a été soumis par {$submitterName} à {$serverName}.<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec nous. Nous vous remercions d'avoir pensé à {$serverName} pour la publication de vos travaux.<br />\n<br />\n{$serverSignature}
EDITOR_DECISION_ACCEPT	fr_CA			
EDITOR_DECISION_INITIAL_DECLINE	fr_CA		Décision du rédacteur	\n\t\t\t{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à  la revue {$serverName}.<br />\n<br />\nNotre décision est de refuser votre soumission.
EDITOR_DECISION_REVERT_INITIAL_DECLINE	fr_CA			
EDITOR_DECISION_NOTIFY_OTHER_AUTHORS	fr_CA			
STATISTICS_REPORT_NOTIFICATION	fr_CA			
ANNOUNCEMENT	fr_CA			
DISCUSSION_NOTIFICATION_PRODUCTION	fr_CA		Un message à propos de la revue {$serverName}	Prière de saisir votre message.
EDITOR_ASSIGN	fr_CA			
VERSION_CREATED	fr_CA			
SUBMISSION_SAVED_FOR_LATER	fr_CA			
SUBMISSION_NEEDS_EDITOR	fr_CA			
\.


--
-- Name: email_templates_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.email_templates_email_id_seq', 1, true);


--
-- Data for Name: email_templates_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.email_templates_settings (email_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: event_log; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.event_log (log_id, assoc_type, assoc_id, user_id, date_logged, event_type, message, is_translated) FROM stdin;
1	1048585	1	7	2023-01-19 10:42:14	268435458	submission.event.general.metadataUpdated	0
2	1048585	1	7	2023-01-19 10:42:15	268435458	submission.event.general.metadataUpdated	0
3	515	1	7	2023-01-19 10:42:25	1342177281	submission.event.fileUploaded	0
4	1048585	1	7	2023-01-19 10:42:25	1342177288	submission.event.fileRevised	0
5	515	1	7	2023-01-19 10:42:28	1342177296	submission.event.fileEdited	0
6	1048585	1	7	2023-01-19 10:42:28	1342177296	submission.event.fileEdited	0
7	1048585	1	7	2023-01-19 10:42:29	268435457	submission.event.submissionSubmitted	0
8	1048585	2	8	2023-01-19 10:42:39	268435458	submission.event.general.metadataUpdated	0
9	1048585	2	8	2023-01-19 10:42:39	268435458	submission.event.general.metadataUpdated	0
10	515	2	8	2023-01-19 10:42:50	1342177281	submission.event.fileUploaded	0
11	1048585	2	8	2023-01-19 10:42:50	1342177288	submission.event.fileRevised	0
12	515	2	8	2023-01-19 10:42:53	1342177296	submission.event.fileEdited	0
13	1048585	2	8	2023-01-19 10:42:53	1342177296	submission.event.fileEdited	0
14	1048585	2	8	2023-01-19 10:43:24	268435458	submission.event.general.metadataUpdated	0
15	1048585	2	8	2023-01-19 10:43:30	268435458	submission.event.general.metadataUpdated	0
16	1048585	2	8	2023-01-19 10:43:39	268435457	submission.event.submissionSubmitted	0
17	1048585	2	3	2023-01-19 10:43:52	268435462	publication.event.published	0
18	1048585	3	9	2023-01-19 10:44:02	268435458	submission.event.general.metadataUpdated	0
19	1048585	3	9	2023-01-19 10:44:02	268435458	submission.event.general.metadataUpdated	0
20	515	3	9	2023-01-19 10:44:13	1342177281	submission.event.fileUploaded	0
21	1048585	3	9	2023-01-19 10:44:13	1342177288	submission.event.fileRevised	0
22	515	3	9	2023-01-19 10:44:15	1342177296	submission.event.fileEdited	0
23	1048585	3	9	2023-01-19 10:44:15	1342177296	submission.event.fileEdited	0
24	1048585	3	9	2023-01-19 10:44:17	268435457	submission.event.submissionSubmitted	0
25	1048585	3	3	2023-01-19 10:44:25	268435462	publication.event.published	0
26	1048585	3	3	2023-01-19 10:44:33	268435463	publication.event.unpublished	0
27	1048585	3	3	2023-01-19 10:44:36	268435458	submission.event.general.metadataUpdated	0
28	1048585	3	3	2023-01-19 10:44:39	268435462	publication.event.published	0
29	1048585	3	3	2023-01-19 10:44:43	268435458	submission.event.general.metadataUpdated	0
30	1048585	3	3	2023-01-19 10:44:43	268435464	publication.event.versionCreated	0
31	1048585	3	3	2023-01-19 10:44:46	268435458	submission.event.general.metadataUpdated	0
32	1048585	3	3	2023-01-19 10:44:49	268435462	publication.event.versionPublished	0
33	1048585	4	10	2023-01-19 10:44:59	268435458	submission.event.general.metadataUpdated	0
34	1048585	4	10	2023-01-19 10:44:59	268435458	submission.event.general.metadataUpdated	0
35	515	4	10	2023-01-19 10:45:10	1342177281	submission.event.fileUploaded	0
36	1048585	4	10	2023-01-19 10:45:10	1342177288	submission.event.fileRevised	0
37	515	4	10	2023-01-19 10:45:12	1342177296	submission.event.fileEdited	0
38	1048585	4	10	2023-01-19 10:45:12	1342177296	submission.event.fileEdited	0
39	1048585	4	10	2023-01-19 10:45:13	268435457	submission.event.submissionSubmitted	0
40	1048585	4	3	2023-01-19 10:45:25	805306371	editor.submission.decision.decline.log	0
41	1048585	4	3	2023-01-19 10:45:32	805306371	editor.submission.decision.revertDecline.log	0
42	1048585	4	3	2023-01-19 10:45:39	805306371	editor.submission.decision.decline.log	0
43	1048585	5	11	2023-01-19 10:45:52	268435458	submission.event.general.metadataUpdated	0
44	1048585	5	11	2023-01-19 10:45:52	268435458	submission.event.general.metadataUpdated	0
45	515	5	11	2023-01-19 10:46:03	1342177281	submission.event.fileUploaded	0
46	1048585	5	11	2023-01-19 10:46:03	1342177288	submission.event.fileRevised	0
47	515	5	11	2023-01-19 10:46:05	1342177296	submission.event.fileEdited	0
48	1048585	5	11	2023-01-19 10:46:05	1342177296	submission.event.fileEdited	0
49	1048585	5	11	2023-01-19 10:46:07	268435457	submission.event.submissionSubmitted	0
50	1048585	5	3	2023-01-19 10:46:15	268435462	publication.event.published	0
51	1048585	5	3	2023-01-19 10:46:22	268435463	publication.event.unpublished	0
52	1048585	5	3	2023-01-19 10:46:31	268435462	publication.event.published	0
53	1048585	6	12	2023-01-19 10:46:41	268435458	submission.event.general.metadataUpdated	0
54	1048585	6	12	2023-01-19 10:46:42	268435458	submission.event.general.metadataUpdated	0
55	515	6	12	2023-01-19 10:46:52	1342177281	submission.event.fileUploaded	0
56	1048585	6	12	2023-01-19 10:46:52	1342177288	submission.event.fileRevised	0
57	515	6	12	2023-01-19 10:46:55	1342177296	submission.event.fileEdited	0
58	1048585	6	12	2023-01-19 10:46:55	1342177296	submission.event.fileEdited	0
59	1048585	6	12	2023-01-19 10:46:56	268435457	submission.event.submissionSubmitted	0
60	1048585	6	3	2023-01-19 10:47:04	268435462	publication.event.published	0
61	1048585	7	13	2023-01-19 10:47:15	268435458	submission.event.general.metadataUpdated	0
62	1048585	7	13	2023-01-19 10:47:16	268435458	submission.event.general.metadataUpdated	0
63	515	7	13	2023-01-19 10:47:26	1342177281	submission.event.fileUploaded	0
64	1048585	7	13	2023-01-19 10:47:26	1342177288	submission.event.fileRevised	0
65	515	7	13	2023-01-19 10:47:28	1342177296	submission.event.fileEdited	0
66	1048585	7	13	2023-01-19 10:47:29	1342177296	submission.event.fileEdited	0
67	1048585	7	13	2023-01-19 10:47:30	268435457	submission.event.submissionSubmitted	0
68	1048585	7	3	2023-01-19 10:47:39	268435462	publication.event.published	0
69	1048585	8	14	2023-01-19 10:47:50	268435458	submission.event.general.metadataUpdated	0
70	1048585	8	14	2023-01-19 10:47:50	268435458	submission.event.general.metadataUpdated	0
71	515	8	14	2023-01-19 10:48:00	1342177281	submission.event.fileUploaded	0
72	1048585	8	14	2023-01-19 10:48:00	1342177288	submission.event.fileRevised	0
73	515	8	14	2023-01-19 10:48:03	1342177296	submission.event.fileEdited	0
74	1048585	8	14	2023-01-19 10:48:03	1342177296	submission.event.fileEdited	0
75	1048585	8	14	2023-01-19 10:48:04	268435457	submission.event.submissionSubmitted	0
76	1048585	8	3	2023-01-19 10:48:13	268435462	publication.event.published	0
77	1048585	9	15	2023-01-19 10:48:23	268435458	submission.event.general.metadataUpdated	0
78	1048585	9	15	2023-01-19 10:48:24	268435458	submission.event.general.metadataUpdated	0
79	515	9	15	2023-01-19 10:48:34	1342177281	submission.event.fileUploaded	0
80	1048585	9	15	2023-01-19 10:48:34	1342177288	submission.event.fileRevised	0
81	515	9	15	2023-01-19 10:48:37	1342177296	submission.event.fileEdited	0
82	1048585	9	15	2023-01-19 10:48:37	1342177296	submission.event.fileEdited	0
83	1048585	9	15	2023-01-19 10:48:38	268435457	submission.event.submissionSubmitted	0
84	1048585	9	3	2023-01-19 10:48:46	268435462	publication.event.published	0
85	1048585	10	16	2023-01-19 10:48:57	268435458	submission.event.general.metadataUpdated	0
86	1048585	10	16	2023-01-19 10:48:58	268435458	submission.event.general.metadataUpdated	0
87	515	10	16	2023-01-19 10:49:08	1342177281	submission.event.fileUploaded	0
88	1048585	10	16	2023-01-19 10:49:08	1342177288	submission.event.fileRevised	0
89	515	10	16	2023-01-19 10:49:11	1342177296	submission.event.fileEdited	0
90	1048585	10	16	2023-01-19 10:49:11	1342177296	submission.event.fileEdited	0
91	1048585	10	16	2023-01-19 10:49:12	268435457	submission.event.submissionSubmitted	0
92	1048585	10	3	2023-01-19 10:49:20	268435462	publication.event.published	0
93	1048585	11	17	2023-01-19 10:49:32	268435458	submission.event.general.metadataUpdated	0
94	1048585	11	17	2023-01-19 10:49:33	268435458	submission.event.general.metadataUpdated	0
95	515	11	17	2023-01-19 10:49:43	1342177281	submission.event.fileUploaded	0
96	1048585	11	17	2023-01-19 10:49:43	1342177288	submission.event.fileRevised	0
97	515	11	17	2023-01-19 10:49:46	1342177296	submission.event.fileEdited	0
98	1048585	11	17	2023-01-19 10:49:46	1342177296	submission.event.fileEdited	0
99	1048585	11	17	2023-01-19 10:49:47	268435457	submission.event.submissionSubmitted	0
100	1048585	11	3	2023-01-19 10:49:56	268435462	publication.event.published	0
101	1048585	12	18	2023-01-19 10:50:08	268435458	submission.event.general.metadataUpdated	0
102	1048585	12	18	2023-01-19 10:50:09	268435458	submission.event.general.metadataUpdated	0
103	515	12	18	2023-01-19 10:50:20	1342177281	submission.event.fileUploaded	0
104	1048585	12	18	2023-01-19 10:50:20	1342177288	submission.event.fileRevised	0
105	515	12	18	2023-01-19 10:50:22	1342177296	submission.event.fileEdited	0
106	1048585	12	18	2023-01-19 10:50:22	1342177296	submission.event.fileEdited	0
107	1048585	12	18	2023-01-19 10:50:23	268435457	submission.event.submissionSubmitted	0
108	1048585	12	3	2023-01-19 10:50:32	268435462	publication.event.published	0
109	1048585	13	19	2023-01-19 10:50:44	268435458	submission.event.general.metadataUpdated	0
110	1048585	13	19	2023-01-19 10:50:45	268435458	submission.event.general.metadataUpdated	0
111	515	13	19	2023-01-19 10:50:56	1342177281	submission.event.fileUploaded	0
112	1048585	13	19	2023-01-19 10:50:56	1342177288	submission.event.fileRevised	0
113	515	13	19	2023-01-19 10:50:58	1342177296	submission.event.fileEdited	0
114	1048585	13	19	2023-01-19 10:50:58	1342177296	submission.event.fileEdited	0
115	1048585	13	19	2023-01-19 10:51:00	268435457	submission.event.submissionSubmitted	0
116	1048585	13	3	2023-01-19 10:51:09	268435462	publication.event.published	0
117	1048585	14	20	2023-01-19 10:51:21	268435458	submission.event.general.metadataUpdated	0
118	1048585	14	20	2023-01-19 10:51:22	268435458	submission.event.general.metadataUpdated	0
119	515	14	20	2023-01-19 10:51:33	1342177281	submission.event.fileUploaded	0
120	1048585	14	20	2023-01-19 10:51:33	1342177288	submission.event.fileRevised	0
121	515	14	20	2023-01-19 10:51:35	1342177296	submission.event.fileEdited	0
122	1048585	14	20	2023-01-19 10:51:35	1342177296	submission.event.fileEdited	0
123	1048585	14	20	2023-01-19 10:51:36	268435457	submission.event.submissionSubmitted	0
124	1048585	14	3	2023-01-19 10:51:46	268435462	publication.event.published	0
125	1048585	15	21	2023-01-19 10:51:59	268435458	submission.event.general.metadataUpdated	0
126	1048585	15	21	2023-01-19 10:51:59	268435458	submission.event.general.metadataUpdated	0
127	515	15	21	2023-01-19 10:52:10	1342177281	submission.event.fileUploaded	0
128	1048585	15	21	2023-01-19 10:52:10	1342177288	submission.event.fileRevised	0
129	515	15	21	2023-01-19 10:52:12	1342177296	submission.event.fileEdited	0
130	1048585	15	21	2023-01-19 10:52:12	1342177296	submission.event.fileEdited	0
131	1048585	15	21	2023-01-19 10:52:14	268435457	submission.event.submissionSubmitted	0
132	1048585	15	3	2023-01-19 10:52:23	268435462	publication.event.published	0
133	1048585	16	22	2023-01-19 10:52:35	268435458	submission.event.general.metadataUpdated	0
134	1048585	16	22	2023-01-19 10:52:36	268435458	submission.event.general.metadataUpdated	0
135	515	16	22	2023-01-19 10:52:46	1342177281	submission.event.fileUploaded	0
136	1048585	16	22	2023-01-19 10:52:46	1342177288	submission.event.fileRevised	0
137	515	16	22	2023-01-19 10:52:49	1342177296	submission.event.fileEdited	0
138	1048585	16	22	2023-01-19 10:52:49	1342177296	submission.event.fileEdited	0
139	1048585	16	22	2023-01-19 10:52:50	268435457	submission.event.submissionSubmitted	0
140	1048585	16	3	2023-01-19 10:53:00	268435462	publication.event.published	0
141	1048585	17	23	2023-01-19 10:53:12	268435458	submission.event.general.metadataUpdated	0
142	1048585	17	23	2023-01-19 10:53:13	268435458	submission.event.general.metadataUpdated	0
143	515	17	23	2023-01-19 10:53:23	1342177281	submission.event.fileUploaded	0
144	1048585	17	23	2023-01-19 10:53:23	1342177288	submission.event.fileRevised	0
145	515	17	23	2023-01-19 10:53:26	1342177296	submission.event.fileEdited	0
146	1048585	17	23	2023-01-19 10:53:26	1342177296	submission.event.fileEdited	0
147	1048585	17	23	2023-01-19 10:53:27	268435457	submission.event.submissionSubmitted	0
148	1048585	17	3	2023-01-19 10:53:37	268435462	publication.event.published	0
149	1048585	18	24	2023-01-19 10:53:49	268435458	submission.event.general.metadataUpdated	0
150	1048585	18	24	2023-01-19 10:53:50	268435458	submission.event.general.metadataUpdated	0
151	515	18	24	2023-01-19 10:54:01	1342177281	submission.event.fileUploaded	0
152	1048585	18	24	2023-01-19 10:54:01	1342177288	submission.event.fileRevised	0
153	515	18	24	2023-01-19 10:54:03	1342177296	submission.event.fileEdited	0
154	1048585	18	24	2023-01-19 10:54:03	1342177296	submission.event.fileEdited	0
155	1048585	18	24	2023-01-19 10:54:04	268435457	submission.event.submissionSubmitted	0
156	1048585	18	3	2023-01-19 10:54:14	268435462	publication.event.published	0
157	1048585	19	25	2023-01-19 10:54:26	268435458	submission.event.general.metadataUpdated	0
158	1048585	19	25	2023-01-19 10:54:27	268435458	submission.event.general.metadataUpdated	0
159	515	19	25	2023-01-19 10:54:38	1342177281	submission.event.fileUploaded	0
160	1048585	19	25	2023-01-19 10:54:38	1342177288	submission.event.fileRevised	0
161	515	19	25	2023-01-19 10:54:40	1342177296	submission.event.fileEdited	0
162	1048585	19	25	2023-01-19 10:54:40	1342177296	submission.event.fileEdited	0
163	1048585	19	25	2023-01-19 10:54:41	268435457	submission.event.submissionSubmitted	0
164	1048585	19	3	2023-01-19 10:54:51	268435462	publication.event.published	0
\.


--
-- Name: event_log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.event_log_log_id_seq', 164, true);


--
-- Data for Name: event_log_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.event_log_settings (log_id, setting_name, setting_value, setting_type) FROM stdin;
3	fileStage	10	int
3	sourceSubmissionFileId	\N	string
3	submissionFileId	1	int
3	fileId	1	int
3	submissionId	1	int
3	originalFileName	The influence of lactation on the quantity and quality of cashmere production.pdf	string
3	username	ccorino	string
4	fileStage	10	int
4	submissionFileId	1	int
4	fileId	1	int
4	submissionId	1	int
4	username	ccorino	string
4	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
5	fileStage	10	int
5	sourceSubmissionFileId	\N	string
5	submissionFileId	1	int
5	fileId	1	int
5	submissionId	1	int
5	originalFileName	The influence of lactation on the quantity and quality of cashmere production.pdf	string
5	username	ccorino	string
6	fileStage	10	int
6	sourceSubmissionFileId	\N	string
6	submissionFileId	1	int
6	fileId	1	int
6	submissionId	1	int
6	username	ccorino	string
6	originalFileName	The influence of lactation on the quantity and quality of cashmere production.pdf	string
6	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
10	fileStage	10	int
10	sourceSubmissionFileId	\N	string
10	submissionFileId	2	int
10	fileId	2	int
10	submissionId	2	int
10	originalFileName	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
10	username	ckwantes	string
11	fileStage	10	int
11	submissionFileId	2	int
11	fileId	2	int
11	submissionId	2	int
11	username	ckwantes	string
11	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
12	fileStage	10	int
12	sourceSubmissionFileId	\N	string
12	submissionFileId	2	int
12	fileId	2	int
12	submissionId	2	int
12	originalFileName	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
12	username	ckwantes	string
13	fileStage	10	int
13	sourceSubmissionFileId	\N	string
13	submissionFileId	2	int
13	fileId	2	int
13	submissionId	2	int
13	username	ckwantes	string
13	originalFileName	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
13	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
20	fileStage	10	int
20	sourceSubmissionFileId	\N	string
20	submissionFileId	3	int
20	fileId	3	int
20	submissionId	3	int
20	originalFileName	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
20	username	cmontgomerie	string
21	fileStage	10	int
21	submissionFileId	3	int
21	fileId	3	int
21	submissionId	3	int
21	username	cmontgomerie	string
21	name	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
22	fileStage	10	int
22	sourceSubmissionFileId	\N	string
22	submissionFileId	3	int
22	fileId	3	int
22	submissionId	3	int
22	originalFileName	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
22	username	cmontgomerie	string
23	fileStage	10	int
23	sourceSubmissionFileId	\N	string
23	submissionFileId	3	int
23	fileId	3	int
23	submissionId	3	int
23	username	cmontgomerie	string
23	originalFileName	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
23	name	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
35	fileStage	10	int
35	sourceSubmissionFileId	\N	string
35	submissionFileId	4	int
35	fileId	4	int
35	submissionId	4	int
35	originalFileName	Genetic transformation of forest trees.pdf	string
35	username	ddiouf	string
36	fileStage	10	int
36	submissionFileId	4	int
36	fileId	4	int
36	submissionId	4	int
36	username	ddiouf	string
36	name	Genetic transformation of forest trees.pdf	string
37	fileStage	10	int
37	sourceSubmissionFileId	\N	string
37	submissionFileId	4	int
37	fileId	4	int
37	submissionId	4	int
37	originalFileName	Genetic transformation of forest trees.pdf	string
37	username	ddiouf	string
38	fileStage	10	int
38	sourceSubmissionFileId	\N	string
38	submissionFileId	4	int
38	fileId	4	int
38	submissionId	4	int
38	username	ddiouf	string
38	originalFileName	Genetic transformation of forest trees.pdf	string
38	name	Genetic transformation of forest trees.pdf	string
40	editorId	3	int
40	editorName	Daniel Barnes	string
40	submissionId	4	int
40	decision	8	int
41	editorId	3	int
41	editorName	Daniel Barnes	string
41	submissionId	4	int
41	decision	16	int
42	editorId	3	int
42	editorName	Daniel Barnes	string
42	submissionId	4	int
42	decision	8	int
45	fileStage	10	int
45	sourceSubmissionFileId	\N	string
45	submissionFileId	5	int
45	fileId	5	int
45	submissionId	5	int
45	originalFileName	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
45	username	dphillips	string
46	fileStage	10	int
46	submissionFileId	5	int
46	fileId	5	int
46	submissionId	5	int
46	username	dphillips	string
46	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
47	fileStage	10	int
47	sourceSubmissionFileId	\N	string
47	submissionFileId	5	int
47	fileId	5	int
47	submissionId	5	int
47	originalFileName	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
47	username	dphillips	string
48	fileStage	10	int
48	sourceSubmissionFileId	\N	string
48	submissionFileId	5	int
48	fileId	5	int
48	submissionId	5	int
48	username	dphillips	string
48	originalFileName	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
48	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
55	fileStage	10	int
55	sourceSubmissionFileId	\N	string
55	submissionFileId	6	int
55	fileId	6	int
55	submissionId	6	int
55	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
55	username	dsokoloff	string
56	fileStage	10	int
56	submissionFileId	6	int
56	fileId	6	int
56	submissionId	6	int
56	username	dsokoloff	string
56	name	Developing efficacy beliefs in the classroom.pdf	string
57	fileStage	10	int
57	sourceSubmissionFileId	\N	string
57	submissionFileId	6	int
57	fileId	6	int
57	submissionId	6	int
57	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
57	username	dsokoloff	string
58	fileStage	10	int
58	sourceSubmissionFileId	\N	string
58	submissionFileId	6	int
58	fileId	6	int
58	submissionId	6	int
58	username	dsokoloff	string
58	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
58	name	Developing efficacy beliefs in the classroom.pdf	string
63	fileStage	10	int
63	sourceSubmissionFileId	\N	string
63	submissionFileId	7	int
63	fileId	7	int
63	submissionId	7	int
63	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
63	username	eostrom	string
64	fileStage	10	int
64	submissionFileId	7	int
64	fileId	7	int
64	submissionId	7	int
64	username	eostrom	string
64	name	Developing efficacy beliefs in the classroom.pdf	string
65	fileStage	10	int
65	sourceSubmissionFileId	\N	string
65	submissionFileId	7	int
65	fileId	7	int
65	submissionId	7	int
65	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
65	username	eostrom	string
66	fileStage	10	int
66	sourceSubmissionFileId	\N	string
66	submissionFileId	7	int
66	fileId	7	int
66	submissionId	7	int
66	username	eostrom	string
66	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
66	name	Developing efficacy beliefs in the classroom.pdf	string
71	fileStage	10	int
71	sourceSubmissionFileId	\N	string
71	submissionFileId	8	int
71	fileId	8	int
71	submissionId	8	int
71	originalFileName	Hansen & Pinto: Reason Reclaimed.pdf	string
71	username	fpaglieri	string
72	fileStage	10	int
72	submissionFileId	8	int
72	fileId	8	int
72	submissionId	8	int
72	username	fpaglieri	string
72	name	Hansen & Pinto: Reason Reclaimed.pdf	string
73	fileStage	10	int
73	sourceSubmissionFileId	\N	string
73	submissionFileId	8	int
73	fileId	8	int
73	submissionId	8	int
73	originalFileName	Hansen & Pinto: Reason Reclaimed.pdf	string
73	username	fpaglieri	string
74	fileStage	10	int
74	sourceSubmissionFileId	\N	string
74	submissionFileId	8	int
74	fileId	8	int
74	submissionId	8	int
74	username	fpaglieri	string
74	originalFileName	Hansen & Pinto: Reason Reclaimed.pdf	string
74	name	Hansen & Pinto: Reason Reclaimed.pdf	string
79	fileStage	10	int
79	sourceSubmissionFileId	\N	string
79	submissionFileId	9	int
79	fileId	9	int
79	submissionId	9	int
79	originalFileName	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
79	username	jmwandenga	string
80	fileStage	10	int
80	submissionFileId	9	int
80	fileId	9	int
80	submissionId	9	int
80	username	jmwandenga	string
80	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
81	fileStage	10	int
81	sourceSubmissionFileId	\N	string
81	submissionFileId	9	int
81	fileId	9	int
81	submissionId	9	int
81	originalFileName	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
81	username	jmwandenga	string
82	fileStage	10	int
82	sourceSubmissionFileId	\N	string
82	submissionFileId	9	int
82	fileId	9	int
82	submissionId	9	int
82	username	jmwandenga	string
82	originalFileName	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
82	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
87	fileStage	10	int
87	sourceSubmissionFileId	\N	string
87	submissionFileId	10	int
87	fileId	10	int
87	submissionId	10	int
87	originalFileName	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
87	username	jnovak	string
88	fileStage	10	int
88	submissionFileId	10	int
88	fileId	10	int
88	submissionId	10	int
88	username	jnovak	string
88	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
89	fileStage	10	int
89	sourceSubmissionFileId	\N	string
89	submissionFileId	10	int
89	fileId	10	int
89	submissionId	10	int
89	originalFileName	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
89	username	jnovak	string
90	fileStage	10	int
90	sourceSubmissionFileId	\N	string
90	submissionFileId	10	int
90	fileId	10	int
90	submissionId	10	int
90	username	jnovak	string
90	originalFileName	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
90	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
95	fileStage	10	int
95	sourceSubmissionFileId	\N	string
95	submissionFileId	11	int
95	fileId	11	int
95	submissionId	11	int
95	originalFileName	Learning Sustainable Design through Service.pdf	string
95	username	kalkhafaji	string
96	fileStage	10	int
96	submissionFileId	11	int
96	fileId	11	int
96	submissionId	11	int
96	username	kalkhafaji	string
96	name	Learning Sustainable Design through Service.pdf	string
97	fileStage	10	int
97	sourceSubmissionFileId	\N	string
97	submissionFileId	11	int
97	fileId	11	int
97	submissionId	11	int
97	originalFileName	Learning Sustainable Design through Service.pdf	string
97	username	kalkhafaji	string
98	fileStage	10	int
98	sourceSubmissionFileId	\N	string
98	submissionFileId	11	int
98	fileId	11	int
98	submissionId	11	int
98	username	kalkhafaji	string
98	originalFileName	Learning Sustainable Design through Service.pdf	string
98	name	Learning Sustainable Design through Service.pdf	string
103	fileStage	10	int
103	sourceSubmissionFileId	\N	string
103	submissionFileId	12	int
103	fileId	12	int
103	submissionId	12	int
103	originalFileName	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
103	username	lchristopher	string
104	fileStage	10	int
104	submissionFileId	12	int
104	fileId	12	int
104	submissionId	12	int
104	username	lchristopher	string
104	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
105	fileStage	10	int
105	sourceSubmissionFileId	\N	string
105	submissionFileId	12	int
105	fileId	12	int
105	submissionId	12	int
105	originalFileName	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
105	username	lchristopher	string
106	fileStage	10	int
106	sourceSubmissionFileId	\N	string
106	submissionFileId	12	int
106	fileId	12	int
106	submissionId	12	int
106	username	lchristopher	string
106	originalFileName	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
106	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
111	fileStage	10	int
111	sourceSubmissionFileId	\N	string
111	submissionFileId	13	int
111	fileId	13	int
111	submissionId	13	int
111	originalFileName	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
111	username	lkumiega	string
112	fileStage	10	int
112	submissionFileId	13	int
112	fileId	13	int
112	submissionId	13	int
112	username	lkumiega	string
112	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
113	fileStage	10	int
113	sourceSubmissionFileId	\N	string
113	submissionFileId	13	int
113	fileId	13	int
113	submissionId	13	int
113	originalFileName	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
113	username	lkumiega	string
114	fileStage	10	int
114	sourceSubmissionFileId	\N	string
114	submissionFileId	13	int
114	fileId	13	int
114	submissionId	13	int
114	username	lkumiega	string
114	originalFileName	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
114	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
119	fileStage	10	int
119	sourceSubmissionFileId	\N	string
119	submissionFileId	14	int
119	fileId	14	int
119	submissionId	14	int
119	originalFileName	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
119	username	pdaniel	string
120	fileStage	10	int
120	submissionFileId	14	int
120	fileId	14	int
120	submissionId	14	int
120	username	pdaniel	string
120	name	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
121	fileStage	10	int
121	sourceSubmissionFileId	\N	string
121	submissionFileId	14	int
121	fileId	14	int
121	submissionId	14	int
121	originalFileName	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
121	username	pdaniel	string
122	fileStage	10	int
122	sourceSubmissionFileId	\N	string
122	submissionFileId	14	int
122	fileId	14	int
122	submissionId	14	int
122	username	pdaniel	string
122	originalFileName	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
122	name	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
127	fileStage	10	int
127	sourceSubmissionFileId	\N	string
127	submissionFileId	15	int
127	fileId	15	int
127	submissionId	15	int
127	originalFileName	Yam diseases and its management in Nigeria.pdf	string
127	username	rbaiyewu	string
128	fileStage	10	int
128	submissionFileId	15	int
128	fileId	15	int
128	submissionId	15	int
128	username	rbaiyewu	string
128	name	Yam diseases and its management in Nigeria.pdf	string
129	fileStage	10	int
129	sourceSubmissionFileId	\N	string
129	submissionFileId	15	int
129	fileId	15	int
129	submissionId	15	int
129	originalFileName	Yam diseases and its management in Nigeria.pdf	string
129	username	rbaiyewu	string
130	fileStage	10	int
130	sourceSubmissionFileId	\N	string
130	submissionFileId	15	int
130	fileId	15	int
130	submissionId	15	int
130	username	rbaiyewu	string
130	originalFileName	Yam diseases and its management in Nigeria.pdf	string
130	name	Yam diseases and its management in Nigeria.pdf	string
135	fileStage	10	int
135	sourceSubmissionFileId	\N	string
135	submissionFileId	16	int
135	fileId	16	int
135	submissionId	16	int
135	originalFileName	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
135	username	rrossi	string
136	fileStage	10	int
136	submissionFileId	16	int
136	fileId	16	int
136	submissionId	16	int
136	username	rrossi	string
136	name	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
137	fileStage	10	int
137	sourceSubmissionFileId	\N	string
137	submissionFileId	16	int
137	fileId	16	int
137	submissionId	16	int
137	originalFileName	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
137	username	rrossi	string
138	fileStage	10	int
138	sourceSubmissionFileId	\N	string
138	submissionFileId	16	int
138	fileId	16	int
138	submissionId	16	int
138	username	rrossi	string
138	originalFileName	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
138	name	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
143	fileStage	10	int
143	sourceSubmissionFileId	\N	string
143	submissionFileId	17	int
143	fileId	17	int
143	submissionId	17	int
143	originalFileName	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
143	username	vkarbasizaed	string
144	fileStage	10	int
144	submissionFileId	17	int
144	fileId	17	int
144	submissionId	17	int
144	username	vkarbasizaed	string
144	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
145	fileStage	10	int
145	sourceSubmissionFileId	\N	string
145	submissionFileId	17	int
145	fileId	17	int
145	submissionId	17	int
145	originalFileName	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
145	username	vkarbasizaed	string
146	fileStage	10	int
146	sourceSubmissionFileId	\N	string
146	submissionFileId	17	int
146	fileId	17	int
146	submissionId	17	int
146	username	vkarbasizaed	string
146	originalFileName	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
146	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
151	fileStage	10	int
151	sourceSubmissionFileId	\N	string
151	submissionFileId	18	int
151	fileId	18	int
151	submissionId	18	int
151	originalFileName	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
151	username	vwilliamson	string
152	fileStage	10	int
152	submissionFileId	18	int
152	fileId	18	int
152	submissionId	18	int
152	username	vwilliamson	string
152	name	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
153	fileStage	10	int
153	sourceSubmissionFileId	\N	string
153	submissionFileId	18	int
153	fileId	18	int
153	submissionId	18	int
153	originalFileName	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
153	username	vwilliamson	string
154	fileStage	10	int
154	sourceSubmissionFileId	\N	string
154	submissionFileId	18	int
154	fileId	18	int
154	submissionId	18	int
154	username	vwilliamson	string
154	originalFileName	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
154	name	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
159	fileStage	10	int
159	sourceSubmissionFileId	\N	string
159	submissionFileId	19	int
159	fileId	19	int
159	submissionId	19	int
159	originalFileName	Finocchiaro: Arguments About Arguments.pdf	string
159	username	zwoods	string
160	fileStage	10	int
160	submissionFileId	19	int
160	fileId	19	int
160	submissionId	19	int
160	username	zwoods	string
160	name	Finocchiaro: Arguments About Arguments.pdf	string
161	fileStage	10	int
161	sourceSubmissionFileId	\N	string
161	submissionFileId	19	int
161	fileId	19	int
161	submissionId	19	int
161	originalFileName	Finocchiaro: Arguments About Arguments.pdf	string
161	username	zwoods	string
162	fileStage	10	int
162	sourceSubmissionFileId	\N	string
162	submissionFileId	19	int
162	fileId	19	int
162	submissionId	19	int
162	username	zwoods	string
162	originalFileName	Finocchiaro: Arguments About Arguments.pdf	string
162	name	Finocchiaro: Arguments About Arguments.pdf	string
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.files (file_id, path, mimetype) FROM stdin;
1	contexts/1/submissions/1/63c91e91e8dd7.pdf	application/pdf
2	contexts/1/submissions/2/63c91eaa9e9b6.pdf	application/pdf
3	contexts/1/submissions/3/63c91efd5341f.pdf	application/pdf
4	contexts/1/submissions/4/63c91f3663553.pdf	application/pdf
5	contexts/1/submissions/5/63c91f6b6ad0e.pdf	application/pdf
6	contexts/1/submissions/6/63c91f9c99388.pdf	application/pdf
7	contexts/1/submissions/7/63c91fbe88dfa.pdf	application/pdf
8	contexts/1/submissions/8/63c91fe0eb207.pdf	application/pdf
9	contexts/1/submissions/9/63c92002a7109.pdf	application/pdf
10	contexts/1/submissions/10/63c9202485647.pdf	application/pdf
11	contexts/1/submissions/11/63c92047c693b.pdf	application/pdf
12	contexts/1/submissions/12/63c9206c178cf.pdf	application/pdf
13	contexts/1/submissions/13/63c920902b9eb.pdf	application/pdf
14	contexts/1/submissions/14/63c920b4f3fe4.pdf	application/pdf
15	contexts/1/submissions/15/63c920da40904.pdf	application/pdf
16	contexts/1/submissions/16/63c920fec531a.pdf	application/pdf
17	contexts/1/submissions/17/63c92123c6ca7.pdf	application/pdf
18	contexts/1/submissions/18/63c921491763e.pdf	application/pdf
19	contexts/1/submissions/19/63c9216e01d81.pdf	application/pdf
\.


--
-- Name: files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.files_file_id_seq', 19, true);


--
-- Data for Name: filter_groups; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.filter_groups (filter_group_id, symbolic, display_name, description, input_type, output_type) FROM stdin;
1	preprint=>crossref-xml	plugins.importexport.crossref.displayName	plugins.importexport.crossref.description	class::classes.submission.Submission[]	xml::schema(https://www.crossref.org/schemas/crossref5.3.1.xsd)
2	preprint=>dc11	plugins.metadata.dc11.preprintAdapter.displayName	plugins.metadata.dc11.preprintAdapter.description	class::classes.submission.Submission	metadata::APP\\plugins\\metadata\\dc11\\schema\\Dc11Schema(PREPRINT)
3	preprint=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.submission.Submission[]	xml::schema(plugins/importexport/native/native.xsd)
4	native-xml=>preprint	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.submission.Submission[]
5	author=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.author.Author[]	xml::schema(plugins/importexport/native/native.xsd)
6	native-xml=>author	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.author.Author[]
7	SubmissionFile=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::lib.pkp.classes.submissionFile.SubmissionFile	xml::schema(plugins/importexport/native/native.xsd)
8	native-xml=>SubmissionFile	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::lib.pkp.classes.submissionFile.SubmissionFile[]
9	preprint-galley=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::lib.pkp.classes.galley.Galley	xml::schema(plugins/importexport/native/native.xsd)
10	native-xml=>PreprintGalley	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::lib.pkp.classes.galley.Galley[]
11	publication=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.publication.Publication	xml::schema(plugins/importexport/native/native.xsd)
12	native-xml=>Publication	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.publication.Publication[]
\.


--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.filter_groups_filter_group_id_seq', 12, true);


--
-- Data for Name: filter_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.filter_settings (filter_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: filters; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.filters (filter_id, filter_group_id, context_id, display_name, class_name, is_template, parent_filter_id, seq) FROM stdin;
1	1	0	Crossref XML preprint export	APP\\plugins\\generic\\crossref\\filter\\PreprintCrossrefXmlFilter	0	0	0
2	2	0	Extract metadata from a(n) Submission	APP\\plugins\\metadata\\dc11\\filter\\Dc11SchemaPreprintAdapter	0	0	0
3	3	0	Native XML submission export	APP\\plugins\\importexport\\native\\filter\\PreprintNativeXmlFilter	0	0	0
4	4	0	Native XML submission import	APP\\plugins\\importexport\\native\\filter\\NativeXmlPreprintFilter	0	0	0
5	5	0	Native XML author export	\N	0	0	0
6	6	0	Native XML author import	APP\\plugins\\importexport\\native\\filter\\NativeXmlAuthorFilter	0	0	0
7	8	0	Native XML submission file import	APP\\plugins\\importexport\\native\\filter\\NativeXmlPreprintFileFilter	0	0	0
8	7	0	Native XML submission file export	PKP\\plugins\\importexport\\native\\filter\\SubmissionFileNativeXmlFilter	0	0	0
9	9	0	Native XML representation export	APP\\plugins\\importexport\\native\\filter\\PreprintGalleyNativeXmlFilter	0	0	0
10	10	0	Native XML representation import	APP\\plugins\\importexport\\native\\filter\\NativeXmlPreprintGalleyFilter	0	0	0
11	11	0	Native XML Publication export	APP\\plugins\\importexport\\native\\filter\\PublicationNativeXmlFilter	0	0	0
12	12	0	Native XML publication import	APP\\plugins\\importexport\\native\\filter\\NativeXmlPublicationFilter	0	0	0
\.


--
-- Name: filters_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.filters_filter_id_seq', 12, true);


--
-- Data for Name: genre_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.genre_settings (genre_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en_US	name	Preprint Text	string
1	fr_CA	name	Texte de la prépublication	string
2	en_US	name	Research Instrument	string
2	fr_CA	name	##default.genres.researchInstrument##	string
3	en_US	name	Research Materials	string
3	fr_CA	name	##default.genres.researchMaterials##	string
4	en_US	name	Research Results	string
4	fr_CA	name	##default.genres.researchResults##	string
5	en_US	name	Transcripts	string
5	fr_CA	name	##default.genres.transcripts##	string
6	en_US	name	Data Analysis	string
6	fr_CA	name	##default.genres.dataAnalysis##	string
7	en_US	name	Data Set	string
7	fr_CA	name	##default.genres.dataSet##	string
8	en_US	name	Source Texts	string
8	fr_CA	name	##default.genres.sourceTexts##	string
9	en_US	name	Multimedia	string
9	fr_CA	name	Multimédias	string
10	en_US	name	Image	string
10	fr_CA	name	Image	string
11	en_US	name	HTML Stylesheet	string
11	fr_CA	name	Feuille de style HTML	string
12	en_US	name	Other	string
12	fr_CA	name	Autre	string
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.genres (genre_id, context_id, seq, enabled, category, dependent, supplementary, entry_key) FROM stdin;
1	1	0	1	1	0	0	SUBMISSION
2	1	1	1	3	0	1	RESEARCHINSTRUMENT
3	1	2	1	3	0	1	RESEARCHMATERIALS
4	1	3	1	3	0	1	RESEARCHRESULTS
5	1	4	1	3	0	1	TRANSCRIPTS
6	1	5	1	3	0	1	DATAANALYSIS
7	1	6	1	3	0	1	DATASET
8	1	7	1	3	0	1	SOURCETEXTS
9	1	8	1	1	1	1	MULTIMEDIA
10	1	9	1	2	1	0	IMAGE
11	1	10	1	1	1	0	STYLE
12	1	11	1	3	0	1	OTHER
\.


--
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.genres_genre_id_seq', 12, true);


--
-- Data for Name: institution_ip; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.institution_ip (institution_ip_id, institution_id, ip_string, ip_start, ip_end) FROM stdin;
\.


--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.institution_ip_institution_ip_id_seq', 1, false);


--
-- Data for Name: institution_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.institution_settings (institution_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.institutions (institution_id, context_id, ror, deleted_at) FROM stdin;
\.


--
-- Name: institutions_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.institutions_institution_id_seq', 1, false);


--
-- Data for Name: item_views; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.item_views (assoc_type, assoc_id, user_id, date_last_viewed) FROM stdin;
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
9842c12e-3541-4c5e-8433-aeaf009431bf		0	0	0	[]	YTowOnt9	\N	1674124762	\N
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.jobs_id_seq', 41, true);


--
-- Data for Name: library_file_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.library_file_settings (file_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: library_files; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.library_files (file_id, context_id, file_name, original_file_name, file_type, file_size, type, date_uploaded, date_modified, submission_id, public_access) FROM stdin;
\.


--
-- Name: library_files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.library_files_file_id_seq', 1, false);


--
-- Data for Name: metrics_context; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_context (load_id, context_id, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_daily; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_counter_submission_daily (load_id, context_id, submission_id, date, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_institution_daily; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_counter_submission_institution_daily (load_id, context_id, submission_id, institution_id, date, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_institution_monthly; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_counter_submission_institution_monthly (context_id, submission_id, institution_id, month, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_monthly; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_counter_submission_monthly (context_id, submission_id, month, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_submission; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_submission (load_id, context_id, submission_id, representation_id, submission_file_id, file_type, assoc_type, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_submission_geo_daily; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_submission_geo_daily (load_id, context_id, submission_id, country, region, city, date, metric, metric_unique) FROM stdin;
\.


--
-- Data for Name: metrics_submission_geo_monthly; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.metrics_submission_geo_monthly (context_id, submission_id, country, region, city, month, metric, metric_unique) FROM stdin;
\.


--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq', 22, true);


--
-- Data for Name: navigation_menu_item_assignment_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.navigation_menu_item_assignment_settings (navigation_menu_item_assignment_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: navigation_menu_item_assignments; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.navigation_menu_item_assignments (navigation_menu_item_assignment_id, navigation_menu_id, navigation_menu_item_id, parent_id, seq) FROM stdin;
1	1	1	0	0
2	1	2	0	1
3	1	3	0	2
4	1	4	3	0
5	1	5	3	1
6	1	6	3	2
7	1	7	3	3
8	2	8	0	0
9	2	9	0	1
10	2	10	0	2
11	2	11	10	0
12	2	12	10	1
13	2	13	10	2
14	2	14	10	3
15	3	15	0	0
16	3	16	0	1
17	3	17	0	2
18	3	18	17	0
19	3	19	17	1
20	3	20	17	2
21	3	21	17	3
22	3	22	17	4
\.


--
-- Data for Name: navigation_menu_item_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.navigation_menu_item_settings (navigation_menu_item_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1		titleLocaleKey	navigation.register	string
2		titleLocaleKey	navigation.login	string
3		titleLocaleKey	{$loggedInUsername}	string
4		titleLocaleKey	navigation.dashboard	string
5		titleLocaleKey	common.viewProfile	string
6		titleLocaleKey	navigation.admin	string
7		titleLocaleKey	user.logOut	string
8		titleLocaleKey	navigation.register	string
9		titleLocaleKey	navigation.login	string
10		titleLocaleKey	{$loggedInUsername}	string
11		titleLocaleKey	navigation.dashboard	string
12		titleLocaleKey	common.viewProfile	string
13		titleLocaleKey	navigation.admin	string
14		titleLocaleKey	user.logOut	string
15		titleLocaleKey	manager.announcements	string
16		titleLocaleKey	navigation.archives	string
17		titleLocaleKey	navigation.about	string
18		titleLocaleKey	about.aboutContext	string
19		titleLocaleKey	about.submissions	string
20		titleLocaleKey	about.editorialTeam	string
21		titleLocaleKey	manager.setup.privacyStatement	string
22		titleLocaleKey	about.contact	string
23		titleLocaleKey	common.search	string
\.


--
-- Data for Name: navigation_menu_items; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.navigation_menu_items (navigation_menu_item_id, context_id, path, type) FROM stdin;
1	0	\N	NMI_TYPE_USER_REGISTER
2	0	\N	NMI_TYPE_USER_LOGIN
3	0	\N	NMI_TYPE_USER_DASHBOARD
4	0	\N	NMI_TYPE_USER_DASHBOARD
5	0	\N	NMI_TYPE_USER_PROFILE
6	0	\N	NMI_TYPE_ADMINISTRATION
7	0	\N	NMI_TYPE_USER_LOGOUT
8	1	\N	NMI_TYPE_USER_REGISTER
9	1	\N	NMI_TYPE_USER_LOGIN
10	1	\N	NMI_TYPE_USER_DASHBOARD
11	1	\N	NMI_TYPE_USER_DASHBOARD
12	1	\N	NMI_TYPE_USER_PROFILE
13	1	\N	NMI_TYPE_ADMINISTRATION
14	1	\N	NMI_TYPE_USER_LOGOUT
15	1	\N	NMI_TYPE_ANNOUNCEMENTS
16	1	\N	NMI_TYPE_ARCHIVES
17	1	\N	NMI_TYPE_ABOUT
18	1	\N	NMI_TYPE_ABOUT
19	1	\N	NMI_TYPE_SUBMISSIONS
20	1	\N	NMI_TYPE_EDITORIAL_TEAM
21	1	\N	NMI_TYPE_PRIVACY
22	1	\N	NMI_TYPE_CONTACT
23	1	\N	NMI_TYPE_SEARCH
\.


--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.navigation_menu_items_navigation_menu_item_id_seq', 23, true);


--
-- Data for Name: navigation_menus; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.navigation_menus (navigation_menu_id, context_id, area_name, title) FROM stdin;
1	0	user	User Navigation Menu
2	1	user	User Navigation Menu
3	1	primary	Primary Navigation Menu
\.


--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.navigation_menus_navigation_menu_id_seq', 3, true);


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.notes (note_id, assoc_type, assoc_id, user_id, date_created, date_modified, title, contents) FROM stdin;
\.


--
-- Name: notes_note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.notes_note_id_seq', 1, false);


--
-- Data for Name: notification_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.notification_settings (notification_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: notification_subscription_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.notification_subscription_settings (setting_id, setting_name, setting_value, user_id, context, setting_type) FROM stdin;
1	blocked_emailed_notification	8	7	1	int
2	blocked_emailed_notification	8	8	1	int
3	blocked_emailed_notification	8	9	1	int
4	blocked_emailed_notification	8	10	1	int
5	blocked_emailed_notification	8	11	1	int
6	blocked_emailed_notification	8	12	1	int
7	blocked_emailed_notification	8	13	1	int
8	blocked_emailed_notification	8	14	1	int
9	blocked_emailed_notification	8	15	1	int
10	blocked_emailed_notification	8	16	1	int
11	blocked_emailed_notification	8	17	1	int
12	blocked_emailed_notification	8	18	1	int
13	blocked_emailed_notification	8	19	1	int
14	blocked_emailed_notification	8	20	1	int
15	blocked_emailed_notification	8	21	1	int
16	blocked_emailed_notification	8	22	1	int
17	blocked_emailed_notification	8	23	1	int
18	blocked_emailed_notification	8	24	1	int
19	blocked_emailed_notification	8	25	1	int
\.


--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.notification_subscription_settings_setting_id_seq', 19, true);


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.notifications (notification_id, context_id, user_id, level, type, date_created, date_read, assoc_type, assoc_id) FROM stdin;
75	1	0	3	16777220	2023-01-19 10:49:47	\N	1048585	11
2	1	0	3	16777220	2023-01-19 10:42:29	\N	1048585	1
3	1	0	3	16777222	2023-01-19 10:42:29	\N	1048585	1
4	1	0	3	16777223	2023-01-19 10:42:29	\N	1048585	1
5	1	0	3	16777224	2023-01-19 10:42:29	\N	1048585	1
6	1	1	3	16777247	2023-01-19 10:42:29	\N	1048585	1
7	1	2	3	16777247	2023-01-19 10:42:29	\N	1048585	1
8	1	3	3	16777247	2023-01-19 10:42:29	\N	1048585	1
9	1	0	3	16777220	2023-01-19 10:43:38	\N	1048585	2
10	1	0	3	16777222	2023-01-19 10:43:38	\N	1048585	2
11	1	0	3	16777223	2023-01-19 10:43:38	\N	1048585	2
12	1	0	3	16777224	2023-01-19 10:43:38	\N	1048585	2
13	1	1	3	16777247	2023-01-19 10:43:38	\N	1048585	2
14	1	2	3	16777247	2023-01-19 10:43:38	\N	1048585	2
15	1	3	3	16777247	2023-01-19 10:43:38	\N	1048585	2
16	1	0	3	16777220	2023-01-19 10:44:17	\N	1048585	3
17	1	0	3	16777222	2023-01-19 10:44:17	\N	1048585	3
18	1	0	3	16777223	2023-01-19 10:44:17	\N	1048585	3
19	1	0	3	16777224	2023-01-19 10:44:17	\N	1048585	3
20	1	1	3	16777247	2023-01-19 10:44:17	\N	1048585	3
21	1	2	3	16777247	2023-01-19 10:44:17	\N	1048585	3
22	1	3	3	16777247	2023-01-19 10:44:17	\N	1048585	3
23	1	9	3	16777259	2023-01-19 10:44:43	\N	1048585	3
24	1	0	3	16777220	2023-01-19 10:45:13	\N	1048585	4
25	1	0	3	16777222	2023-01-19 10:45:13	\N	1048585	4
26	1	0	3	16777223	2023-01-19 10:45:13	\N	1048585	4
27	1	0	3	16777224	2023-01-19 10:45:13	\N	1048585	4
28	1	1	3	16777247	2023-01-19 10:45:13	\N	1048585	4
29	1	2	3	16777247	2023-01-19 10:45:13	\N	1048585	4
30	1	3	3	16777247	2023-01-19 10:45:13	\N	1048585	4
32	1	10	2	16777234	2023-01-19 10:45:39	\N	1048585	4
33	1	0	3	16777220	2023-01-19 10:46:06	\N	1048585	5
34	1	0	3	16777222	2023-01-19 10:46:06	\N	1048585	5
35	1	0	3	16777223	2023-01-19 10:46:06	\N	1048585	5
36	1	0	3	16777224	2023-01-19 10:46:06	\N	1048585	5
37	1	1	3	16777247	2023-01-19 10:46:06	\N	1048585	5
38	1	2	3	16777247	2023-01-19 10:46:06	\N	1048585	5
39	1	3	3	16777247	2023-01-19 10:46:06	\N	1048585	5
40	1	0	3	16777220	2023-01-19 10:46:56	\N	1048585	6
41	1	0	3	16777222	2023-01-19 10:46:56	\N	1048585	6
42	1	0	3	16777223	2023-01-19 10:46:56	\N	1048585	6
43	1	0	3	16777224	2023-01-19 10:46:56	\N	1048585	6
44	1	1	3	16777247	2023-01-19 10:46:56	\N	1048585	6
45	1	2	3	16777247	2023-01-19 10:46:56	\N	1048585	6
46	1	3	3	16777247	2023-01-19 10:46:56	\N	1048585	6
47	1	0	3	16777220	2023-01-19 10:47:30	\N	1048585	7
48	1	0	3	16777222	2023-01-19 10:47:30	\N	1048585	7
49	1	0	3	16777223	2023-01-19 10:47:30	\N	1048585	7
50	1	0	3	16777224	2023-01-19 10:47:30	\N	1048585	7
51	1	1	3	16777247	2023-01-19 10:47:30	\N	1048585	7
52	1	2	3	16777247	2023-01-19 10:47:30	\N	1048585	7
53	1	3	3	16777247	2023-01-19 10:47:30	\N	1048585	7
54	1	0	3	16777220	2023-01-19 10:48:04	\N	1048585	8
55	1	0	3	16777222	2023-01-19 10:48:04	\N	1048585	8
56	1	0	3	16777223	2023-01-19 10:48:04	\N	1048585	8
57	1	0	3	16777224	2023-01-19 10:48:04	\N	1048585	8
58	1	1	3	16777247	2023-01-19 10:48:04	\N	1048585	8
59	1	2	3	16777247	2023-01-19 10:48:04	\N	1048585	8
60	1	3	3	16777247	2023-01-19 10:48:04	\N	1048585	8
61	1	0	3	16777220	2023-01-19 10:48:38	\N	1048585	9
62	1	0	3	16777222	2023-01-19 10:48:38	\N	1048585	9
63	1	0	3	16777223	2023-01-19 10:48:38	\N	1048585	9
64	1	0	3	16777224	2023-01-19 10:48:38	\N	1048585	9
65	1	1	3	16777247	2023-01-19 10:48:38	\N	1048585	9
66	1	2	3	16777247	2023-01-19 10:48:38	\N	1048585	9
67	1	3	3	16777247	2023-01-19 10:48:38	\N	1048585	9
68	1	0	3	16777220	2023-01-19 10:49:11	\N	1048585	10
69	1	0	3	16777222	2023-01-19 10:49:11	\N	1048585	10
70	1	0	3	16777223	2023-01-19 10:49:11	\N	1048585	10
71	1	0	3	16777224	2023-01-19 10:49:11	\N	1048585	10
72	1	1	3	16777247	2023-01-19 10:49:12	\N	1048585	10
73	1	2	3	16777247	2023-01-19 10:49:12	\N	1048585	10
74	1	3	3	16777247	2023-01-19 10:49:12	\N	1048585	10
76	1	0	3	16777222	2023-01-19 10:49:47	\N	1048585	11
77	1	0	3	16777223	2023-01-19 10:49:47	\N	1048585	11
78	1	0	3	16777224	2023-01-19 10:49:47	\N	1048585	11
79	1	1	3	16777247	2023-01-19 10:49:47	\N	1048585	11
80	1	2	3	16777247	2023-01-19 10:49:47	\N	1048585	11
81	1	3	3	16777247	2023-01-19 10:49:47	\N	1048585	11
82	1	0	3	16777220	2023-01-19 10:50:23	\N	1048585	12
83	1	0	3	16777222	2023-01-19 10:50:23	\N	1048585	12
84	1	0	3	16777223	2023-01-19 10:50:23	\N	1048585	12
85	1	0	3	16777224	2023-01-19 10:50:23	\N	1048585	12
86	1	1	3	16777247	2023-01-19 10:50:23	\N	1048585	12
87	1	2	3	16777247	2023-01-19 10:50:23	\N	1048585	12
88	1	3	3	16777247	2023-01-19 10:50:23	\N	1048585	12
89	1	0	3	16777220	2023-01-19 10:50:59	\N	1048585	13
90	1	0	3	16777222	2023-01-19 10:50:59	\N	1048585	13
91	1	0	3	16777223	2023-01-19 10:50:59	\N	1048585	13
92	1	0	3	16777224	2023-01-19 10:50:59	\N	1048585	13
93	1	1	3	16777247	2023-01-19 10:50:59	\N	1048585	13
94	1	2	3	16777247	2023-01-19 10:50:59	\N	1048585	13
95	1	3	3	16777247	2023-01-19 10:50:59	\N	1048585	13
96	1	0	3	16777220	2023-01-19 10:51:36	\N	1048585	14
97	1	0	3	16777222	2023-01-19 10:51:36	\N	1048585	14
98	1	0	3	16777223	2023-01-19 10:51:36	\N	1048585	14
99	1	0	3	16777224	2023-01-19 10:51:36	\N	1048585	14
100	1	1	3	16777247	2023-01-19 10:51:36	\N	1048585	14
101	1	2	3	16777247	2023-01-19 10:51:36	\N	1048585	14
102	1	3	3	16777247	2023-01-19 10:51:36	\N	1048585	14
103	1	0	3	16777220	2023-01-19 10:52:13	\N	1048585	15
104	1	0	3	16777222	2023-01-19 10:52:13	\N	1048585	15
105	1	0	3	16777223	2023-01-19 10:52:13	\N	1048585	15
106	1	0	3	16777224	2023-01-19 10:52:13	\N	1048585	15
107	1	1	3	16777247	2023-01-19 10:52:13	\N	1048585	15
108	1	2	3	16777247	2023-01-19 10:52:13	\N	1048585	15
109	1	3	3	16777247	2023-01-19 10:52:13	\N	1048585	15
110	1	0	3	16777220	2023-01-19 10:52:50	\N	1048585	16
111	1	0	3	16777222	2023-01-19 10:52:50	\N	1048585	16
112	1	0	3	16777223	2023-01-19 10:52:50	\N	1048585	16
113	1	0	3	16777224	2023-01-19 10:52:50	\N	1048585	16
114	1	1	3	16777247	2023-01-19 10:52:50	\N	1048585	16
115	1	2	3	16777247	2023-01-19 10:52:50	\N	1048585	16
116	1	3	3	16777247	2023-01-19 10:52:50	\N	1048585	16
117	1	0	3	16777220	2023-01-19 10:53:27	\N	1048585	17
118	1	0	3	16777222	2023-01-19 10:53:27	\N	1048585	17
119	1	0	3	16777223	2023-01-19 10:53:27	\N	1048585	17
120	1	0	3	16777224	2023-01-19 10:53:27	\N	1048585	17
121	1	1	3	16777247	2023-01-19 10:53:27	\N	1048585	17
122	1	2	3	16777247	2023-01-19 10:53:27	\N	1048585	17
123	1	3	3	16777247	2023-01-19 10:53:27	\N	1048585	17
124	1	0	3	16777220	2023-01-19 10:54:04	\N	1048585	18
125	1	0	3	16777222	2023-01-19 10:54:04	\N	1048585	18
126	1	0	3	16777223	2023-01-19 10:54:04	\N	1048585	18
127	1	0	3	16777224	2023-01-19 10:54:04	\N	1048585	18
128	1	1	3	16777247	2023-01-19 10:54:04	\N	1048585	18
129	1	2	3	16777247	2023-01-19 10:54:04	\N	1048585	18
130	1	3	3	16777247	2023-01-19 10:54:04	\N	1048585	18
131	1	0	3	16777220	2023-01-19 10:54:41	\N	1048585	19
132	1	0	3	16777222	2023-01-19 10:54:41	\N	1048585	19
133	1	0	3	16777223	2023-01-19 10:54:41	\N	1048585	19
134	1	0	3	16777224	2023-01-19 10:54:41	\N	1048585	19
135	1	1	3	16777247	2023-01-19 10:54:41	\N	1048585	19
136	1	2	3	16777247	2023-01-19 10:54:41	\N	1048585	19
137	1	3	3	16777247	2023-01-19 10:54:41	\N	1048585	19
\.


--
-- Name: notifications_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.notifications_notification_id_seq', 137, true);


--
-- Data for Name: oai_resumption_tokens; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.oai_resumption_tokens (token, expire, record_offset, params) FROM stdin;
\.


--
-- Data for Name: plugin_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.plugin_settings (plugin_name, context_id, setting_name, setting_value, setting_type) FROM stdin;
tinymceplugin	0	enabled	1	bool
defaultthemeplugin	0	enabled	1	bool
usageeventplugin	0	enabled	1	bool
usageeventplugin	0	uniqueSiteId		string
acronplugin	0	enabled	1	bool
acronplugin	0	crontab	[{"className":"PKP\\\\task\\\\StatisticsReport","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\RemoveUnvalidatedExpiredUsers","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\UpdateIPGeoDB","frequency":{"day":"10"},"args":[]},{"className":"APP\\\\tasks\\\\UsageStatsLoader","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\ProcessQueueJobs","frequency":{"hour":24},"args":[]}]	object
developedbyblockplugin	0	enabled	0	bool
developedbyblockplugin	0	seq	0	int
languagetoggleblockplugin	0	enabled	1	bool
languagetoggleblockplugin	0	seq	4	int
tinymceplugin	1	enabled	1	bool
defaultthemeplugin	1	enabled	1	bool
developedbyblockplugin	1	enabled	0	bool
developedbyblockplugin	1	seq	0	int
languagetoggleblockplugin	1	enabled	1	bool
languagetoggleblockplugin	1	seq	4	int
pdfjsviewerplugin	1	enabled	1	bool
webfeedplugin	1	enabled	1	bool
webfeedplugin	1	displayPage	homepage	string
webfeedplugin	1	recentItems	30	int
webfeedplugin	1	includeIdentifiers	0	bool
googlescholarplugin	1	enabled	1	bool
defaultthemeplugin	1	typography	notoSans	string
defaultthemeplugin	1	baseColour	#1E6292	string
defaultthemeplugin	1	showDescriptionInServerIndex	false	string
defaultthemeplugin	1	useHomepageImageAsHeader	false	string
defaultthemeplugin	1	displayStats	none	string
\.


--
-- Data for Name: publication_categories; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.publication_categories (publication_id, category_id) FROM stdin;
\.


--
-- Data for Name: publication_galley_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.publication_galley_settings (galley_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: publication_galleys; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.publication_galleys (galley_id, locale, publication_id, label, submission_file_id, seq, remote_url, is_approved, url_path, doi_id) FROM stdin;
1	en_US	1	PDF	1	0		0		\N
2	en_US	2	PDF	2	0		0		\N
3	en_US	3	PDF	3	0		0		\N
4	en_US	4	PDF	3	0		0		\N
5	en_US	5	PDF	4	0		0		\N
6	en_US	6	PDF	5	0		0		\N
7	en_US	7	PDF	6	0		0		\N
8	en_US	8	PDF	7	0		0		\N
9	en_US	9	PDF	8	0		0		\N
10	en_US	10	PDF	9	0		0		\N
11	en_US	11	PDF	10	0		0		\N
12	en_US	12	PDF	11	0		0		\N
13	en_US	13	PDF	12	0		0		\N
14	en_US	14	PDF	13	0		0		\N
15	en_US	15	PDF	14	0		0		\N
16	en_US	16	PDF	15	0		0		\N
17	en_US	17	PDF	16	0		0		\N
18	en_US	18	PDF	17	0		0		\N
19	en_US	19	PDF	18	0		0		\N
20	en_US	20	PDF	19	0		0		\N
\.


--
-- Name: publication_galleys_galley_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.publication_galleys_galley_id_seq', 20, true);


--
-- Data for Name: publication_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.publication_settings (publication_id, locale, setting_name, setting_value) FROM stdin;
1	en_US	abstract	The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P>0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P<0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P<0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P<0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.
1		categoryIds	[]
1	en_US	title	The influence of lactation on the quantity and quality of cashmere production
2	en_US	abstract	<p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p>
2		categoryIds	[]
2	en_US	copyrightHolder	Public Knowledge Preprint Server
2	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
2		copyrightYear	2023
2	en_US	title	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence
3		categoryIds	[]
3	en_US	title	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice
10	en_US	abstract	The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.
10		categoryIds	[]
10	en_US	title	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence
4		categoryIds	[]
4	en_US	copyrightHolder	Craig Montgomerie
4	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
4		copyrightYear	2023
4	en_US	title	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice
5	en_US	abstract	In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.
5		categoryIds	[]
6	en_US	abstract	Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.
3	en_US	abstract	The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.
3	en_US	copyrightHolder	Public Knowledge Preprint Server
3	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
3		copyrightYear	2023
6		categoryIds	[]
6	en_US	copyrightHolder	Public Knowledge Preprint Server
6	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
4	en_US	abstract	The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.
5	en_US	title	Genetic transformation of forest trees
6		copyrightYear	2023
6	en_US	title	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement
7		categoryIds	[]
7	en_US	copyrightHolder	Public Knowledge Preprint Server
7	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
7		copyrightYear	2023
7	en_US	title	Developing efficacy beliefs in the classroom
7	en_US	abstract	A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.
8	en_US	abstract	The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world.
8		categoryIds	[]
8	en_US	copyrightHolder	Public Knowledge Preprint Server
8	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
8		copyrightYear	2023
8	en_US	title	Developing efficacy beliefs in the classroom
9	en_US	abstract	None.
9		categoryIds	[]
9	en_US	copyrightHolder	Public Knowledge Preprint Server
9	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
9		copyrightYear	2023
9	en_US	title	Hansen & Pinto: Reason Reclaimed
10	en_US	copyrightHolder	Public Knowledge Preprint Server
10	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
10		copyrightYear	2023
11	en_US	abstract	The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.
11		categoryIds	[]
11	en_US	copyrightHolder	Public Knowledge Preprint Server
11	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
11		copyrightYear	2023
11	en_US	title	Condensing Water Availability Models to Focus on Specific Water Management Systems
12	en_US	abstract	Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.
12		categoryIds	[]
12	en_US	copyrightHolder	Public Knowledge Preprint Server
12	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
12		copyrightYear	2023
12	en_US	title	Learning Sustainable Design through Service
13	en_US	abstract	The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P<0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.
13		categoryIds	[]
13	en_US	copyrightHolder	Public Knowledge Preprint Server
13	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
13		copyrightYear	2023
13	en_US	title	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning
14	en_US	abstract	The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.
14		categoryIds	[]
14	en_US	copyrightHolder	Public Knowledge Preprint Server
14	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
14		copyrightYear	2023
14	en_US	title	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions
15	en_US	abstract	One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.
15		categoryIds	[]
15	en_US	copyrightHolder	Public Knowledge Preprint Server
15	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
15		copyrightYear	2023
15	en_US	title	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua
16	en_US	abstract	This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.
16		categoryIds	[]
16	en_US	copyrightHolder	Public Knowledge Preprint Server
16	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
16		copyrightYear	2023
16	en_US	title	Yam diseases and its management in Nigeria
17	en_US	abstract	Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.
17		categoryIds	[]
17	en_US	copyrightHolder	Public Knowledge Preprint Server
17	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
17		copyrightYear	2023
17	en_US	title	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat
18	en_US	abstract	The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (>56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.
18		categoryIds	[]
18	en_US	copyrightHolder	Public Knowledge Preprint Server
18	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
18		copyrightYear	2023
18	en_US	title	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran
19	en_US	abstract	We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.
19		categoryIds	[]
19	en_US	copyrightHolder	Public Knowledge Preprint Server
19	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
19		copyrightYear	2023
19	en_US	title	Self-Organization in Multi-Level Institutions in Networked Environments
20	en_US	abstract	None.
20		categoryIds	[]
20	en_US	copyrightHolder	Public Knowledge Preprint Server
20	fr_CA	copyrightHolder	Serveur de prépublication de la connaissance du public
20		copyrightYear	2023
20	en_US	title	Finocchiaro: Arguments About Arguments
\.


--
-- Data for Name: publications; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.publications (publication_id, access_status, date_published, last_modified, primary_contact_id, section_id, submission_id, status, url_path, version, doi_id) FROM stdin;
1	0	\N	2023-01-19 10:42:15	1	1	1	1	\N	1	\N
17	0	2023-01-19	2023-01-19 10:52:59	23	1	16	3	\N	1	\N
2	0	2023-01-19	2023-01-19 10:43:52	2	1	2	3	\N	1	\N
18	0	2023-01-19	2023-01-19 10:53:37	24	1	17	3	\N	1	\N
3	0	2023-01-19	2023-01-19 10:44:39	5	1	3	3	\N	1	\N
19	0	2023-01-19	2023-01-19 10:54:14	25	1	18	3	\N	1	\N
4	0	2023-01-19	2023-01-19 10:44:48	7	1	3	3	\N	2	\N
5	0	\N	2023-01-19 10:44:59	9	1	4	1	\N	1	\N
20	0	2023-01-19	2023-01-19 10:54:50	26	1	19	3	\N	1	\N
6	0	2023-01-19	2023-01-19 10:46:30	10	1	5	3	\N	1	\N
7	0	2023-01-19	2023-01-19 10:47:04	11	1	6	3	\N	1	\N
8	0	2023-01-19	2023-01-19 10:47:39	12	1	7	3	\N	1	\N
9	0	2023-01-19	2023-01-19 10:48:12	14	1	8	3	\N	1	\N
10	0	2023-01-19	2023-01-19 10:48:46	15	1	9	3	\N	1	\N
11	0	2023-01-19	2023-01-19 10:49:20	16	1	10	3	\N	1	\N
12	0	2023-01-19	2023-01-19 10:49:56	17	1	11	3	\N	1	\N
13	0	2023-01-19	2023-01-19 10:50:32	19	1	12	3	\N	1	\N
14	0	2023-01-19	2023-01-19 10:51:09	20	1	13	3	\N	1	\N
15	0	2023-01-19	2023-01-19 10:51:46	21	1	14	3	\N	1	\N
16	0	2023-01-19	2023-01-19 10:52:23	22	1	15	3	\N	1	\N
\.


--
-- Name: publications_publication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.publications_publication_id_seq', 20, true);


--
-- Data for Name: queries; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.queries (query_id, assoc_type, assoc_id, stage_id, seq, date_posted, date_modified, closed) FROM stdin;
\.


--
-- Name: queries_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.queries_query_id_seq', 1, false);


--
-- Data for Name: query_participants; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.query_participants (query_id, user_id) FROM stdin;
\.


--
-- Data for Name: review_assignments; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_assignments (review_id, submission_id, reviewer_id, competing_interests, recommendation, date_assigned, date_notified, date_confirmed, date_completed, date_acknowledged, date_due, date_response_due, last_modified, reminder_was_automatic, declined, cancelled, reviewer_file_id, date_rated, date_reminded, quality, review_round_id, stage_id, review_method, round, step, review_form_id, unconsidered, request_resent) FROM stdin;
\.


--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.review_assignments_review_id_seq', 1, false);


--
-- Data for Name: review_files; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_files (review_id, submission_file_id) FROM stdin;
\.


--
-- Data for Name: review_form_element_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_form_element_settings (review_form_element_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: review_form_elements; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_form_elements (review_form_element_id, review_form_id, seq, element_type, required, included) FROM stdin;
\.


--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.review_form_elements_review_form_element_id_seq', 1, false);


--
-- Data for Name: review_form_responses; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_form_responses (review_form_element_id, review_id, response_type, response_value) FROM stdin;
\.


--
-- Data for Name: review_form_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_form_settings (review_form_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: review_forms; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_forms (review_form_id, assoc_type, assoc_id, seq, is_active) FROM stdin;
\.


--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.review_forms_review_form_id_seq', 1, false);


--
-- Data for Name: review_round_files; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_round_files (submission_id, review_round_id, stage_id, submission_file_id) FROM stdin;
\.


--
-- Data for Name: review_rounds; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.review_rounds (review_round_id, submission_id, stage_id, round, review_revision, status) FROM stdin;
\.


--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.review_rounds_review_round_id_seq', 1, false);


--
-- Data for Name: scheduled_tasks; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.scheduled_tasks (class_name, last_run) FROM stdin;
PKP\\task\\StatisticsReport	2023-01-19 10:39:22
PKP\\task\\RemoveUnvalidatedExpiredUsers	2023-01-19 10:39:22
PKP\\task\\UpdateIPGeoDB	2023-01-19 10:39:22
APP\\tasks\\UsageStatsLoader	2023-01-19 10:39:25
PKP\\task\\ProcessQueueJobs	2023-01-19 10:39:25
\.


--
-- Data for Name: section_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.section_settings (section_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en_US	title	Preprints	string
1	en_US	policy	Section default policy	string
1	en_US	abbrev	PRE	string
1		path	preprints	string
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.sections (section_id, server_id, review_form_id, seq, editor_restricted, meta_indexed, meta_reviewed, abstracts_not_required, hide_title, hide_author, is_inactive, abstract_word_count) FROM stdin;
1	1	\N	0	0	1	1	0	0	0	0	0
\.


--
-- Name: sections_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.sections_section_id_seq', 1, true);


--
-- Data for Name: server_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.server_settings (server_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	fr_CA	beginSubmissionHelp	##default.submission.step.beforeYouBegin##	\N
1	en_US	contributorsHelp	<p>Add details for all of the contributors to this submission. Contributors added here will be sent an email confirmation of the submission.</p><p> If a contributor can not be contacted by email, because they must remain anonymous or do not have an email account, please do not enter a fake email address. You can add information about this contributor in a message to the moderators at a later step in the submission process.</p>	\N
1	fr_CA	contributorsHelp	##default.submission.step.contributors##	\N
1		country	IS	\N
1		defaultReviewMode	2	\N
1	en_US	description	<p>The Public Knowledge Preprint Server is a preprint service on the subject of public access to science.</p>	\N
1	fr_CA	description	<p>Le Serveur de prépublication de la connaissance du public est une service trimestrielle évaluée par les pairs sur le thème de l'accès du public à la science.</p>	\N
1	en_US	detailsHelp	<p>Please provide the following details to help us manage your submission in our system.</p>	\N
1	fr_CA	detailsHelp	##default.submission.step.details##	\N
1		copySubmissionAckPrimaryContact	0	\N
1		copySubmissionAckAddress		\N
1		emailSignature	<br/><hr /><br/><p><a href="http://localhost/index.php/publicknowledge">Public Knowledge Preprint Server</a></p><p>{$mailingAddress}</p><p>{$contactName}, <a href="mailto: {$contactEmail}">{$contactEmail}</a></p>	\N
1		enableDois	1	\N
1		doiSuffixType	default	\N
1		registrationAgency		\N
1		disableSubmissions	0	\N
1		editorialStatsEmail	1	\N
1	en_US	forTheEditorsHelp	<p>Please provide the following details in order to help readers discover your preprint.</p><p>When entering metadata such as keywords, provide entries that you think would be most helpful to readers looking for research like yours.</p>	\N
1	fr_CA	forTheEditorsHelp	##default.submission.step.forTheEditors##	\N
1		itemsPerPage	25	\N
1		keywords	request	\N
1	en_US	librarianInformation	We encourage research librarians to list this server among their library's holdings. As well, it may be worth noting that this server's open source system is suitable for libraries to host for their faculty members to use (see <a href="https://pkp.sfu.ca">Public Knowledge Project</a>).	\N
1	fr_CA	librarianInformation	##default.contextSettings.forLibrarians##	\N
1	en_US	name	Public Knowledge Preprint Server	\N
1	fr_CA	name	Serveur de prépublication de la connaissance du public	\N
1		notifyAllAuthors	1	\N
1		numPageLinks	10	\N
1		numWeeksPerResponse	4	\N
1		numWeeksPerReview	4	\N
1	en_US	openAccessPolicy	This server provides immediate open access to its content on the principle that making research freely available to the public supports a greater global exchange of knowledge.	\N
1	fr_CA	openAccessPolicy	##default.contextSettings.openAccessPolicy##	\N
1	en_US	privacyStatement	<p>The names and email addresses entered in this server site will be used exclusively for the stated purposes of this server and will not be made available for any other purpose or to any other party.</p>	\N
1	fr_CA	privacyStatement	##default.contextSettings.privacyStatement##	\N
1	en_US	readerInformation	We encourage readers to sign up for the posting notification service for this server. Use the <a href="http://localhost/index.php/publicknowledge/user/register">Register</a> link at the top of the home page. This list also allows the server to claim a certain level of support or readership. See the <a href="http://localhost/index.php/publicknowledge/about/submissions#privacyStatement">Privacy Statement</a>, which assures readers that their name and email address will not be used for other purposes.	\N
1	fr_CA	readerInformation	##default.contextSettings.forReaders##	\N
1	en_US	reviewHelp	<p>Review the information you have entered before you complete your submission. You can change any of the details displayed here by clicking the edit button at the top of each section.</p>	\N
1	fr_CA	reviewHelp	##default.submission.step.review##	\N
1		submissionAcknowledgement	allAuthors	\N
1	en_US	acronym	JPKPKP	\N
1	fr_CA	authorGuidelines	##default.contextSettings.authorGuidelines##	\N
1	en_US	authorInformation	Interested in submitting to this server? We recommend that you review the <a href="http://localhost/index.php/publicknowledge/about">About</a> page for the policies, as well as the <a href="http://localhost/index.php/publicknowledge/about/submissions#authorGuidelines">Author Guidelines</a>. Authors need to <a href="http://localhost/index.php/publicknowledge/user/register">register</a> prior to submitting or, if already registered, can simply <a href="http://localhost/index.php/index/login">log in</a> and begin the process.	\N
1	fr_CA	authorInformation	##default.contextSettings.forAuthors##	\N
1	en_US	beginSubmissionHelp	<p>Thank you for posting your preprint at Public Knowledge Preprint Server. You will be asked to upload files, identify co-authors, and provide information such as the title and abstract.<p><p>Please read our <a href="http://localhost/index.php/publicknowledge/about/submissions" target="_blank">Submission Guidelines</a> if you have not done so already. When filling out the forms, provide as many details as possible in order to help our readers find your work.</p><p>Once you begin, you can save your submission and come back to it later. You will be able to review and correct any information before you submit.</p>	\N
1		contactEmail	rvaca@mailinator.com	\N
1		contactName	Ramiro Vaca	\N
1	en_US	submissionChecklist	<p>All submissions must meet the following requirements.</p><ul><li>This submission meets the requirements outlined in the <a href="http://localhost/index.php/publicknowledge/about/submissions">Author Guidelines</a>.</li><li>This submission has not been previously posted.</li><li>All references have been checked for accuracy and completeness.</li><li>All tables and figures have been numbered and labeled.</li><li>Permission has been obtained to post all photos, datasets and other material provided with this preprint.</li></ul>	\N
1	fr_CA	submissionChecklist	##default.contextSettings.checklist##	\N
1		supportedFormLocales	["en_US","fr_CA"]	\N
1		supportedLocales	["en_US","fr_CA"]	\N
1		supportedSubmissionLocales	["en_US","fr_CA"]	\N
1		supportEmail	rvaca@mailinator.com	\N
1		supportName	Ramiro Vaca	\N
1		themePluginPath	default	\N
1	en_US	uploadFilesHelp	<p>Upload the preprint you would like to share. In addition to the main work, you may wish to upload data sets or other supplementary files that will help researchers understand and evaluate your work.</p>	\N
1	fr_CA	uploadFilesHelp	##default.submission.step.uploadFiles##	\N
1		enableGeoUsageStats		\N
1		enableInstitutionUsageStats	0	\N
1		isSushiApiPublic	1	\N
1	en_US	abbreviation	publicknowledgePub Know Pre	\N
1		enableAuthorScreening	0	\N
1		postedAcknowledgement	1	\N
1		enableOai	1	\N
1	en_US	authorGuidelines	<p>Researchers are invited to submit a preprint to be posted on this server. All preprints will be moderated to determine whether they meet the aims and scope of this server. Those considered to be a good fit will be posted and the author will be notified.</p><p>Before submitting a preprint, authors are responsible for obtaining permission to share any material included with the preprint, such as photos, documents and datasets. All authors identified on the preprint must consent to be identified as an author. Where appropriate, research should be approved by an appropriate ethics committee in accordance with the legal requirements of the study's country.</p><p> When you're satisfied that your preprint meets this standard, please follow the checklist below to prepare your submission.</p>	\N
1	en_US	customHeaders	<meta name="pkp" content="Test metatag.">	\N
1		mailingAddress	123 456th Street\nBurnaby, British Columbia\nCanada	\N
1	en_US	searchDescription	The Public Knowledge Preprint Server is a preprint service on the subject of public access to science.	\N
\.


--
-- Data for Name: servers; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.servers (server_id, path, seq, primary_locale, enabled) FROM stdin;
1	publicknowledge	1	en_US	1
\.


--
-- Name: servers_server_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.servers_server_id_seq', 1, true);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.sessions (session_id, user_id, ip_address, user_agent, created, last_used, remember, data, domain) FROM stdin;
bbftgrdkfm26oi0ec295vmbtp6	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124789	1674124814	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1674124814;s:5:"token";s:32:"a92cc44a756d4a8a887abd4445a3dad6";}	localhost
97ioqa5mvjcuobij549frl74mu	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124893	1674124899	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1674124899;s:5:"token";s:32:"82454202d781f4c0f4ed136783f6d3d1";}	localhost
d752um8r70m6gs5kkpgtlgnnpk	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124762	1674124789	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1674124789;s:5:"token";s:32:"1e4ae65d57e2a9ba5efac75d434c45d9";}	localhost
kfj4jl97ehopqf7dnqtfuipfo1	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124816	1674124829	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1674124829;s:5:"token";s:32:"6c76ad719317676495194b3b41a7047f";}	localhost
s5aemh9pu6obc3ppcri4ti3p2i	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124842	1674124882	0	username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1674124881;s:5:"token";s:32:"e1408cbc63ef74fb2c4a99f8dc3e9825";}	localhost
fgmgtphb7nksifct4lvl2bv9ad	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124831	1674124838	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1674124838;s:5:"token";s:32:"b2739fd53db83fc4ff2c9e497e20c35e";}	localhost
0rtcq3uadidn6iqng8tptfp88b	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125058	1674125066	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125066;s:5:"token";s:32:"545e268267767f75ba94d7aed0760b8c";}	localhost
eut4ki324v451lqms74sigkvnq	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125036	1674125058	0	csrf|a:2:{s:9:"timestamp";i:1674125057;s:5:"token";s:32:"fcbc229c13bce58ef6e56ae9a1137cc3";}username|s:12:"cmontgomerie";	localhost
6qdddssljv8e8a8sausaktf6uq	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124882	1674124889	0	username|s:5:"rvaca";csrf|a:2:{s:9:"timestamp";i:1674124889;s:5:"token";s:32:"90a0a260c390347d5af1306db6d35410";}	localhost
6stp8sjpgq4ddnqdj1sn4cn4bj	7	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124929	1674124949	0	csrf|a:2:{s:9:"timestamp";i:1674124949;s:5:"token";s:32:"32f7cd27f0847154283b4a2d64261535";}username|s:7:"ccorino";userId|i:7;	localhost
il4ga3rggiv16dlm5jieoq5sl2	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124902	1674124926	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1674124926;s:5:"token";s:32:"d60e8fe01dd6d24e3368113e6aa8e645";}	localhost
r1q5ea4f9b33m3at2q22coc1ja	8	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674124953	1674125025	0	csrf|a:2:{s:9:"timestamp";i:1674125025;s:5:"token";s:32:"c3b0d7b64c24d54a2c47efd9a1fe052c";}username|s:8:"ckwantes";userId|i:8;	localhost
ahpm0n7gcqmj2ufh1ja8k0e49j	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125026	1674125033	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125034;s:5:"token";s:32:"d8d3cb7e09e05097a4a78edbbd424dc2";}	localhost
oo7uikvavhfsdjofdom5fjlnbf	10	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125093	1674125113	0	csrf|a:2:{s:9:"timestamp";i:1674125113;s:5:"token";s:32:"f039dc7ca5293b35d07a6ce6ce147b52";}username|s:6:"ddiouf";userId|i:10;	localhost
30a2bc4d9mqjorv1thp51146mj	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125066	1674125090	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125090;s:5:"token";s:32:"6b285b48d83c6e8d8ff28a80093aedd4";}	localhost
a7o3lrek8fned0c4mqfg29rur1	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125115	1674125142	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125143;s:5:"token";s:32:"363caa271992533935bf63edd9f07816";}	localhost
j0iueeui7o033n1827et882gnq	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125145	1674125167	0	csrf|a:2:{s:9:"timestamp";i:1674125167;s:5:"token";s:32:"0c2cbf480bb3f57421e1aa3e680fc630";}username|s:9:"dphillips";	localhost
ecb03abnv19s47hgbsofiqep65	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125167	1674125175	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125175;s:5:"token";s:32:"c1a8265cc4bee2ed1d16ca601b77fa26";}	localhost
hkfhg3h3apt12ppealk0spoj0o	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125177	1674125185	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125185;s:5:"token";s:32:"9b9a73b3ef694842d5ebdea8c1b8954e";}	localhost
m056lt92lvh4v7ltgtqqebiuq2	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125185	1674125191	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125192;s:5:"token";s:32:"20d3da252179b42fe9cda7e05551bd89";}	localhost
3777ntuadc134055rjmbqnloce	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125194	1674125216	0	csrf|a:2:{s:9:"timestamp";i:1674125216;s:5:"token";s:32:"3545643051316e37bf11c2f6d9b7bfd9";}username|s:9:"dsokoloff";	localhost
08p7atkaifdam0dl4913140vdg	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125285	1674125293	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125293;s:5:"token";s:32:"9c8c43c84f202461b1b6657c5d646579";}	localhost
j3ebi56iv30ok5viculmf3p3ao	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125461	1674125470	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125470;s:5:"token";s:32:"246177bc8791e6173ab8ea3bc313df27";}	localhost
bpursnvqt0d58duv0shijk5unk	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125353	1674125361	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125361;s:5:"token";s:32:"943b976c7a32afcbc08b97deacde5653";}	localhost
oh3dkir9gaut6gvpgt3ah6bkai	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125296	1674125318	0	csrf|a:2:{s:9:"timestamp";i:1674125318;s:5:"token";s:32:"b5b45bb054ce5a7c35da14d18b3f053e";}username|s:10:"jmwandenga";	localhost
q2jmdeh5d3fufkunp8d0kg81it	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125228	1674125251	0	csrf|a:2:{s:9:"timestamp";i:1674125251;s:5:"token";s:32:"2eaabda73ef15dd0acc820531c42a554";}username|s:7:"eostrom";	localhost
fq19s09sha4hh23jsvhv4ilhu3	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125251	1674125260	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125260;s:5:"token";s:32:"abefbf20bcae623d6672815d6e1214f4";}	localhost
cc7kurg7alahe5mbt8195lr1sm	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125217	1674125225	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125225;s:5:"token";s:32:"852ae5ba22c0cfdd1fb874947d47a163";}	localhost
amkcitepk3fnsnc6732jstt25q	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125263	1674125285	0	csrf|a:2:{s:9:"timestamp";i:1674125284;s:5:"token";s:32:"88551c118f29c059ea45f909659ff997";}username|s:9:"fpaglieri";	localhost
igmhbtrncuffsov5l4t1b1fcn1	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125330	1674125352	0	csrf|a:2:{s:9:"timestamp";i:1674125352;s:5:"token";s:32:"f6054bc03cea79d185d6b116f8de557e";}username|s:6:"jnovak";	localhost
v6gk4eafj97m8mki8io7g0s5lt	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125319	1674125327	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125327;s:5:"token";s:32:"f9b07c3788793263681d492b2427684e";}	localhost
gkhgj7to4ru4bthq7sqn142bpj	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125400	1674125424	0	csrf|a:2:{s:9:"timestamp";i:1674125424;s:5:"token";s:32:"84e2fcf540100e35d3506df56e56c441";}username|s:12:"lchristopher";	localhost
97flba6n03kovslh1748gtu66v	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125364	1674125388	0	csrf|a:2:{s:9:"timestamp";i:1674125388;s:5:"token";s:32:"3674d9f8f72c67862695a2cb022f9a41";}username|s:10:"kalkhafaji";	localhost
994jud8ec3e4ctoml4hqnjgkri	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125388	1674125397	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125397;s:5:"token";s:32:"4f59a21d42b7ee05323926c9348ff3f1";}	localhost
glrftuej27lrgb5qqu0uroucih	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125424	1674125433	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125433;s:5:"token";s:32:"78048191988057b1161fb59d0b23f2b4";}	localhost
i9hp74ucq1jlktem7vj7s5n3bi	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125436	1674125460	0	csrf|a:2:{s:9:"timestamp";i:1674125460;s:5:"token";s:32:"10296471c8d3353fd17e0d14e8bf0c42";}username|s:8:"lkumiega";	localhost
76228iab76vmsig1lv43spua99	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125510	1674125534	0	csrf|a:2:{s:9:"timestamp";i:1674125534;s:5:"token";s:32:"a6419023942f62c46e3128f5c0d99aad";}username|s:8:"rbaiyewu";	localhost
ttie9jr5lqp9qk2u2ei34hqr8m	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125473	1674125497	0	csrf|a:2:{s:9:"timestamp";i:1674125497;s:5:"token";s:32:"df44cd175ea793ad70fab25b18e31b3c";}username|s:7:"pdaniel";	localhost
87gjuec6h5qis99fk72ggdmgir	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125497	1674125507	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125507;s:5:"token";s:32:"c2343dde61b9614e61c48b607e4e2b39";}	localhost
elsujb9hqrob1favat1aq79bes	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125534	1674125544	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125544;s:5:"token";s:32:"cf54dbfd1afdc20d9bfa8fcc8964289f";}	localhost
4dgorf6adj74drikn7hc1j0es4	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125547	1674125571	0	csrf|a:2:{s:9:"timestamp";i:1674125570;s:5:"token";s:32:"62129638460a756c4bb179f56370583a";}username|s:6:"rrossi";	localhost
oc8alfekdobln6inlmh5mq7pq7	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125571	1674125581	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125581;s:5:"token";s:32:"3ab8de76b3f248b637b111309abf46c0";}	localhost
3uf6qjupo5glos5cuskdbf9k4r	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125682	1674125692	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125692;s:5:"token";s:32:"862c9e5acb50704451678718d7609349";}	localhost
j7janeoofifnrnafef17bhf1r7	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125583	1674125608	0	csrf|a:2:{s:9:"timestamp";i:1674125607;s:5:"token";s:32:"03cfe447c5709b02bee8022c3635d20f";}username|s:12:"vkarbasizaed";	localhost
kc6onf102d6riu8461q897comt	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125621	1674125645	0	csrf|a:2:{s:9:"timestamp";i:1674125645;s:5:"token";s:32:"d5b508590f26f1ce09c9c9d82a45d4ec";}username|s:11:"vwilliamson";	localhost
n21l68qlm5gqteeld3286oeiop	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125608	1674125618	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125618;s:5:"token";s:32:"630827a7d449ebbe0f2e4750861f5aa2";}	localhost
860fkcmk2shhgsm2svn4tf7f3g	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125645	1674125655	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1674125655;s:5:"token";s:32:"deae0823fffee3bb0033d27ece6e17b5";}	localhost
e8anvt14g2cfsgj6ec97t6ckek	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/105.0.5195.102 Safari/537.36	1674125658	1674125682	0	csrf|a:2:{s:9:"timestamp";i:1674125681;s:5:"token";s:32:"5d3e8756857ce3e637964f446dd0f708";}username|s:6:"zwoods";	localhost
\.


--
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.site (redirect, primary_locale, min_password_length, installed_locales, supported_locales, original_style_file_name) FROM stdin;
0	en_US	6	["en_US","fr_CA"]	["en_US","fr_CA"]	\N
\.


--
-- Data for Name: site_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.site_settings (setting_name, locale, setting_value) FROM stdin;
contactEmail	en_US	pkpadmin@mailinator.com
contactName	en_US	Open Preprint Systems
contactName	fr_CA	Open Preprint Systems
compressStatsLogs		0
enableGeoUsageStats		disabled
enableInstitutionUsageStats		0
keepDailyUsageStats		0
isSiteSushiPlatform		0
isSushiApiPublic		1
themePluginPath		default
\.


--
-- Data for Name: stage_assignments; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.stage_assignments (stage_assignment_id, submission_id, user_group_id, user_id, date_assigned, recommend_only, can_change_metadata) FROM stdin;
1	1	4	7	2023-01-19 10:42:29	0	1
19	19	4	25	2023-01-19 10:54:41	0	1
2	2	4	8	2023-01-19 10:43:39	0	1
3	3	4	9	2023-01-19 10:44:17	0	1
4	4	4	10	2023-01-19 10:45:13	0	1
5	5	4	11	2023-01-19 10:46:07	0	1
6	6	4	12	2023-01-19 10:46:56	0	1
7	7	4	13	2023-01-19 10:47:30	0	1
8	8	4	14	2023-01-19 10:48:04	0	1
9	9	4	15	2023-01-19 10:48:38	0	1
10	10	4	16	2023-01-19 10:49:12	0	1
11	11	4	17	2023-01-19 10:49:47	0	1
12	12	4	18	2023-01-19 10:50:23	0	1
13	13	4	19	2023-01-19 10:51:00	0	1
14	14	4	20	2023-01-19 10:51:36	0	1
15	15	4	21	2023-01-19 10:52:14	0	1
16	16	4	22	2023-01-19 10:52:50	0	1
17	17	4	23	2023-01-19 10:53:27	0	1
18	18	4	24	2023-01-19 10:54:04	0	1
\.


--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.stage_assignments_stage_assignment_id_seq', 19, true);


--
-- Data for Name: subeditor_submission_group; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.subeditor_submission_group (context_id, assoc_id, assoc_type, user_id, user_group_id) FROM stdin;
\.


--
-- Data for Name: submission_comments; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_comments (comment_id, comment_type, role_id, submission_id, assoc_id, author_id, comment_title, comments, date_posted, date_modified, viewable) FROM stdin;
\.


--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.submission_comments_comment_id_seq', 1, false);


--
-- Data for Name: submission_file_revisions; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_file_revisions (revision_id, submission_file_id, file_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
6	6	6
7	7	7
8	8	8
9	9	9
10	10	10
11	11	11
12	12	12
13	13	13
14	14	14
15	15	15
16	16	16
17	17	17
18	18	18
19	19	19
\.


--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.submission_file_revisions_revision_id_seq', 19, true);


--
-- Data for Name: submission_file_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_file_settings (submission_file_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en_US	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
1	fr_CA	name		string
2	en_US	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
2	fr_CA	name		string
3	en_US	name	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
3	fr_CA	name		string
4	en_US	name	Genetic transformation of forest trees.pdf	string
4	fr_CA	name		string
5	en_US	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
5	fr_CA	name		string
6	en_US	name	Developing efficacy beliefs in the classroom.pdf	string
6	fr_CA	name		string
7	en_US	name	Developing efficacy beliefs in the classroom.pdf	string
7	fr_CA	name		string
8	en_US	name	Hansen & Pinto: Reason Reclaimed.pdf	string
8	fr_CA	name		string
9	en_US	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
9	fr_CA	name		string
10	en_US	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
10	fr_CA	name		string
11	en_US	name	Learning Sustainable Design through Service.pdf	string
11	fr_CA	name		string
12	en_US	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
12	fr_CA	name		string
13	en_US	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
13	fr_CA	name		string
14	en_US	name	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
14	fr_CA	name		string
15	en_US	name	Yam diseases and its management in Nigeria.pdf	string
15	fr_CA	name		string
16	en_US	name	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
16	fr_CA	name		string
17	en_US	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
17	fr_CA	name		string
18	en_US	name	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
18	fr_CA	name		string
19	en_US	name	Finocchiaro: Arguments About Arguments.pdf	string
19	fr_CA	name		string
\.


--
-- Data for Name: submission_files; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_files (submission_file_id, submission_id, file_id, source_submission_file_id, genre_id, file_stage, direct_sales_price, sales_type, viewable, created_at, updated_at, uploader_user_id, assoc_type, assoc_id) FROM stdin;
1	1	1	\N	1	10	\N	\N	\N	2023-01-19 10:42:25	2023-01-19 10:42:28	7	521	1
2	2	2	\N	1	10	\N	\N	\N	2023-01-19 10:42:50	2023-01-19 10:42:53	8	521	2
3	3	3	\N	1	10	\N	\N	\N	2023-01-19 10:44:13	2023-01-19 10:44:15	9	521	3
4	4	4	\N	1	10	\N	\N	\N	2023-01-19 10:45:10	2023-01-19 10:45:12	10	521	5
5	5	5	\N	1	10	\N	\N	\N	2023-01-19 10:46:03	2023-01-19 10:46:05	11	521	6
6	6	6	\N	1	10	\N	\N	\N	2023-01-19 10:46:52	2023-01-19 10:46:55	12	521	7
7	7	7	\N	1	10	\N	\N	\N	2023-01-19 10:47:26	2023-01-19 10:47:28	13	521	8
8	8	8	\N	1	10	\N	\N	\N	2023-01-19 10:48:00	2023-01-19 10:48:03	14	521	9
9	9	9	\N	1	10	\N	\N	\N	2023-01-19 10:48:34	2023-01-19 10:48:37	15	521	10
10	10	10	\N	1	10	\N	\N	\N	2023-01-19 10:49:08	2023-01-19 10:49:11	16	521	11
11	11	11	\N	1	10	\N	\N	\N	2023-01-19 10:49:43	2023-01-19 10:49:46	17	521	12
12	12	12	\N	1	10	\N	\N	\N	2023-01-19 10:50:20	2023-01-19 10:50:22	18	521	13
13	13	13	\N	1	10	\N	\N	\N	2023-01-19 10:50:56	2023-01-19 10:50:58	19	521	14
14	14	14	\N	1	10	\N	\N	\N	2023-01-19 10:51:33	2023-01-19 10:51:35	20	521	15
15	15	15	\N	1	10	\N	\N	\N	2023-01-19 10:52:10	2023-01-19 10:52:12	21	521	16
16	16	16	\N	1	10	\N	\N	\N	2023-01-19 10:52:46	2023-01-19 10:52:49	22	521	17
17	17	17	\N	1	10	\N	\N	\N	2023-01-19 10:53:23	2023-01-19 10:53:26	23	521	18
18	18	18	\N	1	10	\N	\N	\N	2023-01-19 10:54:01	2023-01-19 10:54:03	24	521	19
19	19	19	\N	1	10	\N	\N	\N	2023-01-19 10:54:38	2023-01-19 10:54:40	25	521	20
\.


--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.submission_files_submission_file_id_seq', 19, true);


--
-- Data for Name: submission_search_keyword_list; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_search_keyword_list (keyword_id, keyword_text) FROM stdin;
1	carlo
2	corino
3	university
4	bologna
5	influence
6	lactation
7	quantity
8	quality
9	cashmere
10	production
11	effects
12	pressed
13	beet
14	pulp
15	silage
16	pbps
17	replacing
18	barley
19	basis
20	studied
21	heavy
22	pigs
23	fed
24	dairy
25	whey-diluted
26	diets
27	hypor
28	average
29	initial
30	weight
31	barrows
32	gilts
33	homogeneously
34	allocated
35	exper-
36	imental
37	groups
38	control
39	traditional
40	sweet
41	whey-
42	diluted
43	diet
44	ratio
45	whey
46	dry
47	matter
48	replaced
49	period
50	beginning
51	133rd
52	day
53	trial
54	experimental
55	feed
56	group
57	significant
58	differences
59	observed
60	growth
61	parameters
62	adg
63	fcr
64	contain-
65	ing
66	showed
67	significantly
68	higher
69	percentages
70	lean
71	cuts
72	lower
73	fat
74	ham
75	losses
76	seasoning
77	moderate
78	marked
79	pbps-fed
80	prob-
81	consequence
82	adiposity
83	degree
84	fatty
85	acid
86	composition
87	unaffected
88	regard
89	semimembranosus
90	colour
91	receiving
92	chroma
93	values
94	economical
95	point
96	view
97	concluded
98	partially
99	pig
100	interest
101	areas
102	products
103	readily
104	catherine
105	kwantes
106	windsor
107	facets
108	job
109	satisfaction
110	nine-nation
111	comparative
112	study
113	construct
114	equivalence
115	urho
116	kekkonen
117	archival
118	data
119	attitude
120	survey
121	employees
122	single
123	multinational
124	organization
125	examine
126	national
127	culture
128	affects
129	nature
130	responses
131	countries
132	compiled
133	create
134	benchmark
135	nations
136	individually
137	compared
138	factor
139	analysis
140	revealed
141	factors
142	organizational
143	communication
144	efficiency
145	effectiveness
146	support
147	personal
148	benefit
149	comparisons
150	structures
151	exhibited
152	satisfied
153	china
154	brazil
155	consistent
156	previous
157	findings
158	individuals
159	collectivistic
160	report
161	research
162	suggest
163	cultural
164	context
165	exerts
166	effect
167	craig
168	montgomerie
169	alberta
170	computer
171	skill
172	requirements
173	existing
174	teachers
175	implications
176	policy
177	practice
178	integration
179	technology
180	classroom
181	major
182	issue
183	education
184	today
185	provincial
186	initiatives
187	skills
188	students
189	demonstrate
190	grade
191	level
192	government
193	province
194	canada
195	mandated
196	implementation
197	curriculum
198	began
199	september
200	called
201	information
202	infused
203	core
204	courses
205	specifies
206	“expected
207	respect
208	technology”
209	learning
210	required
211	implement
212	school
213	jurisdictions
214	turning
215	professional
216	development
217	strategies
218	hiring
219	standards
220	upgrade
221	teachers’
222	meet
223	goal
224	paper
225	summarizes
226	results
227	telephone
228	administered
229	public
230	response
231	rate
232	examined
233	require
234	newly
235	hired
236	employed
237	integrating
238	mark
239	irvine
240	victoria
241	diaga
242	diouf
243	alexandria
244	genetic
245	transformation
246	forest
247	trees
248	review
249	recent
250	progress
251	discussed
252	applications
253	engineering
254	improving
255	understanding
256	mechanisms
257	governing
258	genes
259	expression
260	woody
261	plants
262	dana
263	phillips
264	toronto
265	investigating
266	shared
267	background
268	argument
269	critique
270	fogelins
271	thesis
272	deep
273	disagreement
274	robert
275	fogelin
276	claims
277	interlocutors
278	share
279	framework
280	beliefs
281	commitments
282	order
283	fruitfully
284	pursue
285	refute
286	fogelin’s
287	claim
288	productive
289	find
290	consists
291	common
292	topic
293	hand
294	pro-cedural
295	competencies
296	supporters
297	mistakenly
298	part
299	procedural
300	com-mitments
301	difficult
302	uphold
303	people’s
304	diverge
305	widely
306	domatilia
307	sokoloff
308	college
309	cork
310	developing
311	efficacy
312	equip
313	children
314	knowledge
315	self-belief
316	confident
317	informed
318	citizens
319	continue
320	learners
321	graduation
322	key
323	role
324	nurturing
325	learn
326	participate
327	society
328	conducted
329	social
330	studies
331	presented
332	showing
333	strategy
334	instruction
335	enhance
336	self-efficacy
337	creative
338	problem
339	solving
340	cps
341	taught
342	means
343	motivate
344	shown
345	positive
346	valuable
347	involve
348	decision-making
349	leads
350	action
351	enhancing
352	motivation
353	citizenship
354	elinor
355	ostrom
356	indiana
357	commons
358	expe-
359	rienced
360	substantial
361	past
362	decades1
363	distinguished
364	scholars
365	disciplines
366	long
367	specific
368	resources
369	managed
370	mismanaged
371	times
372	places
373	coward
374	los
375	reyes
376	mackenzie
377	wittfogel
378	researchers
379	mid-1980s
380	contemporary
381	colleagues
382	work
383	sec-
384	tors
385	region
386	regions
387	world
388	pool
389	resource
390	property
391	intellectual
392	developments
393	frank
394	van
395	laerhoven
396	fabio
397	paglieri
398	rome
399	hansen
400	pinto
401	reason
402	reclaimed
403	john
404	mwandenga
405	cape
406	town
407	signalling
408	theory
409	dividends
410	literature
411	empirical
412	evidence
413	signaling
414	suggests
415	signal
416	future
417	prospects
418	firm
419	offer
420	conclusive
421	conflicting
422	financial
423	economists
424	practical
425	dividend
426	guidance
427	management
428	potential
429	investors
430	shareholding
431	corporate
432	investment
433	financing
434	distribution
435	decisions
436	continuous
437	function
438	rely
439	intuitive
440	evaluation
441	novak
442	aalborg
443	condensing
444	water
445	availability
446	models
447	focus
448	systems
449	texas
450	modeling
451	system
452	routinely
453	applied
454	administration
455	rights
456	permit
457	regional
458	statewide
459	planning
460	expanding
461	variety
462	endeavors
463	river
464	basins
465	state
466	reflects
467	permits
468	reservoirs
469	datasets
470	necessarily
471	large
472	complex
473	provide
474	decision-support
475	capabilities
476	developed
477	features
478	added
479	types
480	growing
481	enhanced
482	simplifying
483	simulation
484	input
485	methodology
486	condensed
487	dataset
488	selected
489	reservoir
490	impacts
491	accompanying
492	removed
493	original
494	complete
495	set
496	streamflows
497	represents
498	flows
499	basin
500	contained
501	model
502	included
503	develop
504	brazos
505	authority
506	based
507	modifying
508	karim
509	al-khafaji
510	stanford
511	sustainable
512	design
513	service
514	environmental
515	sustainability
516	principles
517	vital
518	topics
519	largely
520	failed
521	address
522	service-learning
523	integrates
524	academic
525	setting
526	emerging
527	tool
528	leveraged
529	teach
530	engineers
531	present
532	experiences
533	chapter
534	involves
535	identification
536	projects
537	partner
538	organizations
539	student
540	led
541	project-based
542	internships
543	coordinated
544	successful
545	limitations
546	challenges
547	exist
548	directions
549	margaret
550	morse
551	leo
552	christopher
553	australian
554	sodium
555	butyrate
556	improves
557	performance
558	weaned
559	piglets
560	weaning
561	aim
562	assess
563	long-term
564	supplementation
565	profile
566	adipose
567	tissue
568	fifty-four
569	white
570	averaging
571	randomized
572	matched
573	weights
574	isoenergetic
575	supplemented
576	tallow
577	maize
578	oil
579	rapeseed
580	fats
581	supplement-
582	slaughtering
583	slaughter
584	backfat
585	samples
586	collected
587	ten
588	animals
589	treatment
590	analyzed
591	close-
592	reflected
593	highest
594	saturated
595	content
596	sfa
597	polyunsaturated
598	pufa
599	lowest
600	monounsaturated
601	mufa
602	linolenic
603	c18
604	cis
605	11-
606	ecosenoic
607	c20
608	linoleic
609	levels
610	iodine
611	result-
612	accepted
613	parma
614	consortium
615	dry-cured
616	unsaturation
617	index
618	layers
619	subcutaneous
620	differed
621	treatments
622	show
623	dietary
624	increases
625	proportion
626	“healthy”
627	acids
628	nutritional
629	technological
630	carefully
631	assessed
632	food
633	security
634	lise
635	kumiega
636	hydrologic
637	connectivity
638	edwards
639	aquifer
640	san
641	marcos
642	springs
643	barton
644	drought
645	conditions
646	serves
647	primary
648	supply
649	south-central
650	source
651	plan
652	protect
653	endangered
654	species
655	immediately
656	downstream
657	questions
658	raised
659	established
660	concept
661	divide
662	antonio
663	segments
664	water-level
665	collection
666	program
667	hydrogeologic
668	groundwater-level
669	groundwater
670	exists
671	vicinity
672	surface
673	drainage
674	onion
675	creek
676	blanco
677	wet
678	normal
679	dissipated
680	longer
681	hydrologically
682	separated
683	result
684	flow
685	droughts
686	bearings
687	assessments
688	simulations
689	numerical
690	cfs
691	flowing
692	appears
693	influenced
694	recharge
695	vulnerable
696	extended
697	periods
698	extensive
699	pumping
700	kyle
701	buda
702	shows
703	low
704	gradient
705	potentiometric
706	variation
707	non-drought
708	slopes
709	north
710	dramatic
711	discontinuity
712	change
713	gradients
714	dynamic
715	unknown
716	structural
717	influences
718	hydraulic
719	properties
720	inherent
721	connection
722	rapid
723	population
724	increased
725	demands
726	necessitates
727	continual
728	monitoring
729	trend
730	analyses
731	patricia
732	daniel
733	wolverhampton
734	designing
735	intercultural
736	case
737	atlantic
738	coast
739	nicaragua
740	met
741	21st
742	century
743	genuinely
744	embracing
745	diversity
746	overcome
747	barriers
748	people
749	language
750	gender
751	takes
752	multilingual
753	multiethnic
754	examines
755	community
756	uraccan
757	contributing
758	interculturality
759	describes
760	participatory
761	carried
762	staff
763	intention
764	defining
765	delivering
766	discussions
767	wales
768	council
769	emphasises
770	belonging
771	individual
772	communities
773	cultures
774	time
775	supporting
776	include
777	university’s
778	close
779	involvement
780	ethnic
781	ethno-linguistic
782	power
783	relations
784	country
785	militate
786	egalitarianism
787	highlights
788	importance
789	pedagogy
790	promoting
791	achieving
792	lasting
793	rana
794	baiyewu
795	nairobi
796	yam
797	diseases
798	nigeria
799	presents
800	combating
801	menace
802	field
803	storage
804	anthracnose
805	regarded
806	spread
807	mosaic
808	virus
809	disease
810	considered
811	severe
812	yams
813	rot
814	devastating
815	reduction
816	marketable
817	edible
818	portions
819	tubers
820	reductions
821	stored
822	adopted
823	advocated
824	includes
825	crop
826	rotation
827	fallowing
828	planting
829	healthy
830	material
831	destruction
832	infected
833	cultivars
834	resistant
835	tecto
836	thiabendazole
837	locally
838	made
839	gins
840	wood
841	ash
842	found
843	fungal
844	infection
845	finally
846	processing
847	chips
848	cubes
849	shelf
850	live
851	months
852	year
853	rosanna
854	rossi
855	barcelona
856	nutrition
857	general
858	situation
859	cattle
860	slaughtered
861	cameroon
862	representative
863	central
864	african
865	sub-region
866	safety
867	beef
868	abattoir
869	yaoundé
870	largest
871	january
872	march
873	pre-slaughter
874	characteristics
875	carcasses
876	recorded
877	longissimus
878	thoracis
879	represent
880	bulls
881	origin
882	guinea
883	high
884	savannah
885	transhumance
886	gudali
887	fulani
888	red
889	mbororo
890	breeds
891	predominant
892	carcass
893	affected
894	rearing
895	category
896	markedly
897	varied
898	meat
899	similar
900	toughest
901	cows
902	pregnant
903	abnormal
904	encountered
905	ectoparasites
906	fatigue
907	lameness
908	fungal-like
909	skin
910	lesions
911	enlarged
912	lymph
913	nodes
914	respiratory
915	distress
916	nodular
917	organs
918	condemned
919	liver
920	flukes
921	completely
922	due
923	tuberculosis
924	lungs
925	aid
926	authorities
927	draw
928	programmes
929	strengthen
930	improve
931	prevent
932	promote
933	trade
934	vajiheh
935	karbasizaed
936	tehran
937	antimicrobial
938	metal
939	resistance
940	plasmid
941	coliforms
942	isolated
943	nosocomial
944	infections
945	hospital
946	isfahan
947	iran
948	patterns
949	profiles
950	enterobacteriacea
951	human
952	faeces
953	fifteen
954	isolates
955	identified
956	escherichia
957	coli
958	remaining
959	kelebsiella
960	pneumoniae
961	seventy
962	percent
963	strains
964	possess
965	multiple
966	antibiotics
967	difference
968	minimal
969	inhibitory
970	concentration
971	mic
972	clinical
973	cases
974	metals
975	tolerant
976	persons
977	relationship
978	pattern
979	conjugative
980	encoding
981	recovered
982	multidrug-resistance
983	valerie
984	williamson
985	self-organization
986	multi-level
987	institutions
988	networked
989	environments
990	compare
991	actors
992	decide
993	sanction
994	sanctions
995	implemented
996	collectively
997	agree
998	actor
999	sanctioned
1000	collective
1001	sanctioning
1002	problematic
1003	difficulty
1004	reaching
1005	consensus
1006	decision
1007	perverse
1008	punishing
1009	contributors
1010	ruled
1011	goverance
1012	zita
1013	woods
1014	cuny
1015	finocchiaro
1016	arguments
\.


--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.submission_search_keyword_list_keyword_id_seq', 1016, true);


--
-- Data for Name: submission_search_object_keywords; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_search_object_keywords (object_id, keyword_id, pos) FROM stdin;
1	1	0
1	2	1
1	3	2
1	4	3
2	5	0
2	6	1
2	7	2
2	8	3
2	9	4
2	10	5
3	11	0
3	12	1
3	13	2
3	14	3
3	15	4
3	16	5
3	17	6
3	18	7
3	19	8
3	20	9
3	21	10
3	22	11
3	23	12
3	24	13
3	25	14
3	26	15
3	27	16
3	22	17
3	28	18
3	29	19
3	30	20
3	31	21
3	32	22
3	33	23
3	34	24
3	35	25
3	36	26
3	37	27
3	38	28
3	22	29
3	23	30
3	39	31
3	40	32
3	41	33
3	42	34
3	43	35
3	44	36
3	45	37
3	46	38
3	47	39
3	16	40
3	48	41
3	18	42
3	19	43
3	49	44
3	50	45
3	51	46
3	52	47
3	53	48
3	19	49
3	16	50
3	48	51
3	18	52
3	19	53
3	54	54
3	49	55
3	26	56
3	55	57
3	24	58
3	25	59
3	56	60
3	57	61
3	58	62
3	59	63
3	60	64
3	61	65
3	62	66
3	63	67
3	22	68
3	26	69
3	64	70
3	65	71
3	16	72
3	66	73
3	67	74
3	68	75
3	69	76
3	70	77
3	71	78
3	72	79
3	69	80
3	73	81
3	71	82
3	74	83
3	30	84
3	75	85
3	76	86
3	77	87
3	67	88
3	78	89
3	79	90
3	22	91
3	80	92
3	81	93
3	72	94
3	82	95
3	83	96
3	84	97
3	85	98
3	86	99
3	74	100
3	73	101
3	87	102
3	26	103
3	88	104
3	89	105
3	90	106
3	22	107
3	91	108
3	16	109
3	66	110
3	72	111
3	92	112
3	93	113
3	94	114
3	95	115
3	96	116
3	97	117
3	16	118
3	98	119
3	17	120
3	18	121
3	24	122
3	45	123
3	21	124
3	99	125
3	10	126
3	100	127
3	101	128
3	102	129
3	103	130
9	104	0
9	105	1
9	3	2
9	106	3
9	115	4
9	116	5
10	107	0
10	108	1
10	109	2
10	110	3
10	111	4
10	112	5
10	113	6
10	114	7
11	117	0
11	118	1
11	119	2
11	120	3
11	121	4
11	122	5
11	123	6
11	124	7
11	125	8
11	83	9
11	126	10
11	127	11
11	128	12
11	129	13
11	108	14
11	109	15
11	130	16
11	131	17
11	132	18
11	133	19
11	134	20
11	135	21
11	136	22
11	137	23
11	138	24
11	139	25
11	140	26
11	141	27
11	142	28
11	143	29
11	142	30
11	144	31
11	145	32
11	142	33
11	146	34
11	147	35
11	148	36
11	149	37
11	138	38
11	150	39
11	142	40
11	143	41
11	151	42
11	113	43
11	114	44
11	147	45
11	148	46
11	152	47
11	121	48
11	153	49
11	152	50
11	154	51
11	155	52
11	156	53
11	157	54
11	158	55
11	159	56
11	135	57
11	160	58
11	68	59
11	109	60
11	161	61
11	157	62
11	162	63
11	126	64
11	163	65
11	164	66
11	165	67
11	166	68
11	129	69
11	108	70
11	109	71
13	121	0
13	120	1
49	262	0
49	263	1
49	3	2
49	264	3
50	265	0
50	266	1
50	267	2
50	210	3
50	268	4
50	269	5
50	270	6
50	271	7
50	272	8
50	273	9
51	274	0
51	275	1
51	276	2
51	277	3
51	278	4
51	279	5
51	267	6
51	280	7
51	281	8
51	282	9
51	283	10
51	284	11
51	268	12
51	285	13
51	286	14
51	287	15
51	265	16
51	266	17
51	267	18
51	210	19
51	288	20
51	268	21
51	289	22
51	267	23
51	290	24
51	291	25
51	280	26
51	292	27
51	293	28
51	266	29
51	294	30
51	281	31
51	295	32
51	162	33
51	275	34
51	296	35
51	297	36
51	96	37
51	266	38
51	280	39
51	298	40
51	210	41
51	267	42
51	288	43
51	268	44
51	299	45
51	300	46
51	301	47
51	302	48
51	303	49
51	280	50
145	934	0
145	935	1
145	3	2
145	936	3
146	937	0
146	21	1
146	938	2
146	939	3
146	940	4
146	565	5
146	941	6
146	942	7
146	943	8
146	944	9
146	945	10
146	946	11
146	947	12
147	937	0
51	304	51
51	305	52
51	292	53
51	293	54
147	21	1
147	938	2
147	939	3
147	948	4
147	940	5
147	949	6
147	941	7
147	950	8
147	942	9
147	943	10
147	944	11
147	829	12
147	951	13
147	952	14
147	137	15
147	953	16
147	954	17
147	943	18
147	944	19
147	955	20
147	956	21
147	957	22
147	958	23
147	959	24
147	960	25
147	961	26
147	962	27
147	963	28
147	942	29
147	943	30
147	944	31
147	964	32
147	965	33
147	939	34
147	966	35
147	137	36
147	963	37
147	829	38
147	951	39
147	952	40
147	967	41
147	968	42
147	969	43
147	970	44
147	971	45
147	93	46
147	963	47
147	972	48
147	973	49
147	952	50
147	21	51
147	974	52
147	57	53
147	963	54
147	942	55
147	945	56
147	975	57
147	21	58
147	938	59
147	829	60
147	976	61
147	155	62
147	977	63
147	940	64
147	565	65
147	56	66
147	937	67
147	939	68
147	978	69
147	979	70
147	940	71
147	980	72
147	939	73
147	21	74
57	306	0
57	307	1
57	3	2
57	308	3
57	309	4
58	310	0
58	311	1
58	280	2
58	180	3
59	181	0
59	223	1
59	183	2
59	312	3
59	313	4
59	314	5
59	187	6
59	315	7
59	316	8
59	317	9
59	318	10
59	318	11
59	319	12
59	320	13
59	321	14
59	224	15
59	322	16
59	323	17
59	324	18
59	311	19
59	280	20
59	282	21
59	325	22
59	326	23
59	212	24
25	167	0
25	168	1
25	3	2
25	169	3
25	238	4
25	239	5
25	3	6
25	240	7
26	170	0
26	171	1
26	172	2
26	173	3
26	174	4
26	175	5
26	176	6
26	177	7
27	178	0
27	179	1
27	180	2
27	181	3
27	182	4
27	183	5
27	184	6
27	126	7
27	185	8
27	186	9
27	179	10
27	187	11
27	188	12
27	189	13
27	190	14
27	191	15
27	192	16
27	193	17
27	169	18
27	194	19
27	195	20
27	196	21
27	197	22
27	198	23
27	199	24
27	200	25
27	201	26
27	143	27
27	179	28
27	197	29
27	202	30
27	203	31
27	204	32
27	205	33
27	188	34
27	206	35
27	207	36
27	208	37
27	169	38
27	209	39
27	174	40
27	210	41
27	211	42
27	197	43
27	212	44
27	213	45
27	214	46
27	215	47
27	216	48
27	217	49
27	218	50
27	219	51
27	220	52
27	221	53
27	170	54
27	187	55
27	222	56
27	223	57
27	224	58
27	225	59
27	226	60
27	227	61
27	120	62
27	228	63
27	229	64
27	212	65
27	213	66
27	193	67
27	169	68
27	230	69
27	231	70
27	232	71
27	170	72
27	187	73
27	212	74
27	213	75
27	233	76
27	234	77
27	235	78
27	174	79
27	146	80
27	217	81
27	236	82
27	236	83
27	174	84
29	237	0
29	179	1
29	170	2
29	187	3
29	120	4
29	169	5
29	126	6
29	185	7
29	215	8
29	216	9
29	121	10
33	241	0
33	242	1
33	243	2
33	3	3
34	244	0
34	245	1
34	246	2
34	247	3
35	248	0
35	249	1
35	250	2
35	244	3
35	245	4
35	246	5
35	247	6
35	251	7
35	252	8
35	244	9
35	253	10
35	254	11
35	246	12
35	247	13
35	255	14
35	256	15
35	257	16
35	258	17
35	259	18
35	260	19
35	261	20
65	354	0
65	355	1
65	356	2
65	3	3
65	393	4
65	394	5
65	395	6
65	356	7
65	3	8
66	310	0
66	311	1
66	280	2
66	180	3
67	112	0
67	357	1
67	358	2
67	359	3
67	360	4
67	60	5
67	216	6
67	361	7
67	362	8
67	363	9
67	364	10
67	365	11
67	366	12
67	20	13
67	367	14
67	368	15
67	369	16
67	370	17
67	371	18
67	372	19
67	373	20
67	374	21
67	375	22
67	376	23
67	377	24
67	378	25
67	20	26
67	367	27
67	357	28
67	379	29
67	380	30
67	381	31
67	317	32
67	382	33
67	364	34
67	365	35
67	383	36
59	327	25
59	161	26
59	157	27
59	328	28
59	329	29
59	330	30
59	164	31
59	331	32
59	332	33
59	333	34
59	334	35
59	335	36
59	336	37
59	209	38
59	298	39
59	161	40
59	337	41
59	338	42
59	339	43
59	340	44
59	341	45
59	313	46
59	342	47
59	343	48
59	146	49
59	209	50
59	344	51
59	340	52
59	345	53
59	11	54
59	336	55
59	209	56
59	346	57
59	279	58
59	347	59
59	313	60
59	348	61
59	349	62
59	329	63
59	350	64
59	175	65
59	351	66
59	336	67
59	352	68
59	325	69
59	180	70
59	251	71
61	183	0
61	353	1
67	384	37
67	385	38
67	100	39
67	386	40
67	387	41
69	291	0
69	388	1
69	389	2
69	291	3
69	390	4
69	391	5
69	392	6
73	396	0
73	397	1
73	3	2
73	398	3
74	399	0
74	400	1
74	401	2
74	402	3
97	508	0
97	509	1
97	510	2
97	3	3
97	549	4
97	550	5
97	510	6
97	3	7
98	209	0
98	511	1
98	512	2
98	513	3
99	514	0
99	515	1
99	511	2
99	216	3
99	516	4
99	517	5
99	518	6
99	253	7
99	183	8
99	519	9
99	520	10
99	521	11
99	522	12
99	523	13
99	329	14
81	403	0
81	404	1
81	3	2
81	405	3
81	406	4
82	407	0
82	408	1
82	409	2
82	248	3
82	410	4
82	411	5
82	412	6
83	413	0
83	408	1
83	414	2
83	409	3
83	415	4
83	416	5
83	417	6
83	418	7
83	249	8
83	411	9
83	412	10
83	419	11
83	420	12
83	412	13
83	182	14
83	421	15
83	176	16
83	175	17
83	422	18
83	423	19
83	424	20
83	425	21
83	176	22
83	426	23
83	427	24
83	173	25
83	428	26
83	429	27
83	430	28
83	431	29
83	432	30
83	433	31
83	434	32
83	435	33
83	436	34
83	437	35
83	427	36
83	425	37
83	435	38
83	438	39
83	439	40
83	440	41
99	513	15
99	524	16
99	525	17
99	526	18
99	527	19
99	528	20
99	529	21
99	511	22
99	512	23
99	416	24
99	530	25
99	531	26
99	501	27
99	522	28
99	529	29
99	511	30
99	512	31
99	506	32
99	532	33
99	510	34
99	533	35
99	530	36
99	511	37
99	387	38
99	501	39
99	534	40
99	535	41
99	536	42
99	537	43
99	538	44
99	539	45
99	540	46
99	541	47
99	512	48
99	542	49
99	543	50
99	537	51
99	538	52
99	501	53
99	544	54
99	545	55
99	546	56
99	547	57
99	251	58
99	416	59
99	548	60
99	460	61
99	501	62
101	216	0
101	253	1
101	183	2
101	513	3
101	209	4
101	515	5
147	974	75
147	966	76
147	981	77
147	963	78
147	942	79
147	943	80
147	944	81
147	226	82
147	982	83
147	941	84
147	428	85
147	943	86
147	844	87
147	385	88
105	551	0
105	552	1
105	553	2
105	126	3
105	3	4
106	554	0
106	555	1
106	556	2
106	60	3
106	557	4
106	558	5
106	559	6
106	49	7
106	560	8
107	561	0
107	112	1
107	562	2
107	5	3
107	563	4
107	73	5
107	564	6
107	84	7
107	85	8
107	565	9
107	21	10
107	99	11
107	566	12
107	567	13
107	568	14
107	471	15
107	569	16
107	31	17
107	570	18
107	571	19
107	572	20
107	573	21
107	574	22
107	26	23
107	575	24
107	576	25
107	577	26
107	578	27
107	579	28
107	578	29
107	580	30
107	581	31
89	403	0
89	441	1
89	442	2
89	3	3
90	443	0
90	444	1
90	445	2
90	446	3
90	447	4
90	367	5
90	444	6
90	427	7
90	448	8
91	449	0
91	444	1
91	445	2
91	450	3
91	451	4
91	452	5
91	453	6
91	454	7
91	444	8
91	455	9
91	456	10
91	451	11
91	457	12
91	458	13
91	459	14
91	460	15
91	461	16
91	462	17
91	450	18
91	444	19
91	427	20
91	463	21
91	464	22
91	465	23
91	466	24
91	444	25
91	467	26
91	468	27
91	469	28
91	470	29
91	471	30
91	472	31
91	473	32
91	474	33
91	475	34
91	450	35
91	451	36
91	476	37
91	450	38
91	477	39
91	478	40
91	479	41
91	252	42
91	480	43
91	252	44
91	481	45
91	482	46
91	483	47
91	484	48
91	469	49
91	447	50
91	444	51
91	427	52
91	448	53
91	485	54
91	331	55
91	310	56
91	486	57
91	487	58
91	488	59
91	489	60
91	451	61
91	466	62
91	490	63
91	444	64
91	455	65
91	491	66
91	468	67
91	492	68
91	493	69
91	494	70
91	487	71
91	495	72
91	496	73
91	476	74
91	497	75
91	498	76
91	488	77
91	451	78
91	11	79
91	444	80
91	455	81
91	463	82
91	499	83
91	500	84
91	493	85
91	494	86
91	501	87
91	484	88
91	487	89
91	502	90
91	486	91
91	487	92
91	485	93
91	453	94
91	503	95
91	486	96
91	501	97
91	504	98
91	463	99
91	505	100
91	489	101
91	451	102
91	506	103
91	507	104
91	449	105
91	444	106
91	445	107
91	450	108
91	451	109
91	487	110
91	504	111
91	463	112
91	499	113
93	444	0
121	731	0
121	732	1
121	3	2
121	733	3
122	734	0
122	735	1
122	197	2
122	736	3
122	112	4
122	737	5
122	738	6
122	739	7
123	546	0
123	740	1
123	741	2
123	742	3
123	743	4
123	744	5
123	745	6
123	183	7
123	746	8
123	747	9
123	319	10
123	547	11
123	748	12
123	19	13
123	749	14
123	127	15
123	750	16
123	736	17
123	112	18
123	751	19
123	737	20
123	738	21
123	739	22
123	752	23
123	753	24
123	385	25
123	754	26
123	755	27
123	3	28
123	756	29
123	757	30
123	216	31
123	758	32
123	759	33
123	760	34
123	161	35
123	761	36
123	3	37
123	762	38
123	188	39
123	763	40
123	764	41
123	735	42
123	197	43
123	217	44
123	765	45
123	501	46
123	19	47
123	766	48
123	501	49
123	755	50
123	255	51
123	767	52
107	23	32
107	582	33
107	583	34
107	584	35
107	585	36
107	586	37
107	587	38
107	588	39
107	589	40
107	590	41
107	84	42
107	85	43
107	86	44
107	584	45
107	591	46
107	592	47
107	84	48
107	85	49
107	86	50
107	575	51
107	580	52
107	584	53
107	22	54
107	23	55
107	593	56
107	594	57
107	84	58
107	85	59
107	595	60
107	596	61
107	23	62
107	593	63
107	595	64
107	597	65
107	84	66
107	85	67
107	598	68
107	599	69
107	600	70
107	84	71
107	85	72
107	601	73
107	595	74
107	23	75
107	593	76
107	595	77
107	602	78
107	85	79
107	603	80
107	604	81
107	605	82
107	606	83
107	85	84
107	607	85
107	589	86
107	166	87
107	608	88
107	85	89
107	609	90
107	610	91
107	584	92
107	611	93
107	65	94
107	609	95
107	68	96
107	603	97
107	612	98
107	613	99
107	614	100
107	615	101
107	74	102
107	616	103
107	617	104
107	618	105
107	619	106
107	584	107
107	567	108
107	620	109
107	67	110
107	621	111
107	226	112
107	622	113
107	563	114
107	623	115
107	564	116
107	580	117
107	84	118
107	85	119
107	565	120
107	21	121
107	99	122
107	566	123
107	567	124
107	564	125
107	579	126
107	578	127
107	624	128
107	625	129
107	626	130
107	84	131
107	627	132
107	99	133
107	73	134
107	254	135
107	628	136
107	8	137
107	11	138
107	629	139
107	8	140
107	73	141
107	630	142
107	631	143
109	22	0
109	632	1
109	633	2
123	197	53
123	768	54
123	769	55
123	770	56
123	771	57
123	772	58
123	773	59
123	774	60
123	141	61
123	775	62
123	216	63
123	735	64
123	197	65
123	776	66
123	777	67
123	778	68
123	779	69
123	780	70
123	772	71
123	646	72
123	781	73
123	782	74
123	783	75
123	385	76
123	784	77
123	785	78
123	786	79
123	3	80
123	161	81
123	787	82
123	788	83
123	760	84
123	789	85
123	19	86
123	790	87
123	758	88
123	791	89
123	792	90
123	329	91
123	245	92
125	741	0
125	742	1
125	745	2
125	752	3
125	753	4
125	760	5
125	789	6
125	749	7
125	127	8
125	750	9
125	786	10
125	329	11
125	245	12
129	793	0
129	794	1
129	3	2
129	795	3
130	796	0
130	797	1
130	427	2
130	798	3
131	248	0
131	799	1
131	797	2
131	796	3
131	427	4
131	217	5
131	236	6
131	800	7
131	801	8
131	798	9
131	802	10
131	803	11
131	797	12
131	331	13
131	804	14
131	805	15
131	305	16
131	806	17
131	802	18
131	797	19
131	796	20
131	807	21
131	808	22
131	809	23
131	810	24
131	811	25
131	75	26
131	812	27
131	46	28
131	813	29
131	810	30
131	814	31
131	803	32
131	797	33
131	796	34
131	46	35
131	813	36
131	812	37
131	78	38
131	815	39
131	7	40
131	816	41
131	817	42
131	818	43
131	819	44
131	820	45
131	811	46
131	821	47
131	812	48
131	427	49
131	217	50
131	822	51
131	823	52
131	800	53
131	802	54
131	797	55
131	824	56
131	825	57
131	826	58
131	827	59
131	828	60
131	829	61
131	830	62
131	831	63
131	832	64
131	825	65
131	833	66
131	834	67
131	833	68
131	803	69
131	797	70
131	835	71
131	836	72
131	837	73
131	838	74
131	46	75
131	839	76
131	840	77
131	841	78
131	803	79
131	842	80
131	652	81
131	796	82
131	819	83
131	843	84
131	844	85
131	803	86
131	845	87
131	846	88
131	796	89
131	819	90
131	847	91
131	848	92
131	624	93
131	849	94
131	850	95
131	49	96
131	851	97
131	852	98
113	634	0
113	635	1
113	3	2
113	405	3
113	406	4
114	636	0
114	637	1
114	638	2
114	639	3
114	640	4
114	641	5
114	642	6
114	643	7
114	642	8
114	644	9
114	645	10
115	638	0
115	639	1
115	646	2
115	647	3
115	444	4
115	648	5
115	649	6
115	449	7
115	650	8
115	181	9
115	642	10
115	310	11
115	651	12
115	652	13
115	653	14
115	654	15
115	655	16
115	656	17
115	640	18
115	641	19
115	642	20
115	657	21
115	658	22
115	659	23
115	660	24
115	636	25
115	661	26
115	640	27
115	662	28
115	643	29
115	642	30
115	663	31
115	638	32
115	639	33
115	644	34
115	645	35
115	521	36
115	657	37
115	664	38
115	118	39
115	665	40
115	666	41
115	667	42
115	112	43
115	328	44
115	139	45
115	668	46
115	118	47
115	669	48
115	661	49
115	670	50
115	671	51
115	672	52
115	673	53
115	661	54
115	674	55
115	675	56
115	676	57
115	463	58
115	677	59
115	678	60
115	636	61
115	645	62
115	139	63
115	118	64
115	586	65
115	644	66
115	414	67
115	669	68
115	661	69
115	679	70
115	680	71
115	681	72
115	682	73
115	663	74
115	683	75
115	428	76
115	669	77
115	684	78
115	361	79
115	640	80
115	641	81
115	642	82
115	643	83
115	642	84
115	181	85
115	685	86
115	175	87
115	686	88
115	427	89
115	445	90
115	669	91
115	638	92
115	639	93
115	687	94
115	688	95
115	689	96
115	501	97
115	162	98
115	690	99
115	691	100
115	361	101
115	640	102
115	641	103
115	643	104
115	642	105
115	644	106
115	645	107
115	669	108
115	661	109
115	692	110
115	693	111
115	694	112
115	674	113
115	675	114
115	676	115
115	463	116
115	692	117
115	695	118
115	696	119
115	697	120
115	694	121
115	698	122
115	699	123
115	671	124
115	700	125
115	701	126
115	118	127
115	495	128
115	702	129
115	703	130
115	704	131
115	705	132
115	672	133
115	640	134
115	641	135
115	642	136
115	700	137
115	706	138
115	609	139
115	644	140
115	707	141
115	697	142
115	700	143
115	643	144
115	642	145
115	705	146
115	672	147
115	708	148
115	67	149
115	709	150
115	710	151
115	609	152
115	644	153
115	707	154
115	697	155
115	650	156
115	129	157
115	711	158
115	712	159
115	705	160
115	713	161
115	714	162
115	444	163
115	191	164
115	230	165
115	700	166
115	715	167
115	716	168
115	717	169
115	718	170
115	719	171
115	720	172
115	639	173
115	711	174
115	5	175
115	83	176
115	636	177
115	721	178
115	640	179
115	641	180
115	643	181
115	642	182
115	722	183
115	723	184
115	60	185
115	724	186
115	444	187
115	725	188
115	700	189
115	701	190
115	101	191
115	726	192
115	727	193
115	669	194
115	191	195
115	728	196
115	666	197
115	640	198
115	641	199
115	642	200
115	701	201
115	473	202
115	118	203
115	416	204
115	667	205
115	729	206
115	730	207
117	444	0
153	983	0
153	984	1
153	3	2
153	106	3
154	985	0
154	986	1
154	987	2
154	988	3
154	989	4
155	990	0
155	525	1
155	991	2
155	136	3
155	992	4
155	993	5
155	525	6
155	994	7
155	995	8
155	991	9
155	996	10
155	997	11
155	998	12
155	999	13
155	1000	14
155	1001	15
155	435	16
155	1002	17
155	922	18
155	1003	19
155	1004	20
155	1005	21
155	1006	22
155	838	23
155	996	24
155	1007	25
155	1001	26
155	1008	27
155	883	28
155	1009	29
155	771	30
155	991	31
155	1010	32
155	1000	33
155	1001	34
155	435	35
155	100	36
155	56	37
157	985	0
157	986	1
157	987	2
157	1011	3
137	853	0
137	854	1
137	855	2
137	3	3
138	5	0
138	563	1
138	856	2
138	623	3
138	580	4
138	84	5
138	85	6
138	86	7
138	21	8
138	22	9
138	584	10
139	561	0
139	161	1
139	473	2
139	857	3
139	858	4
139	859	5
139	860	6
139	861	7
139	862	8
139	863	9
139	864	10
139	865	11
139	8	12
139	866	13
139	867	14
139	868	15
139	869	16
139	870	17
139	861	18
139	810	19
139	871	20
139	872	21
139	873	22
139	645	23
139	874	24
139	859	25
139	875	26
139	876	27
139	877	28
139	878	29
139	583	30
139	875	31
139	488	32
139	879	33
139	880	34
139	860	35
139	8	36
139	61	37
139	86	38
139	877	39
139	878	40
139	761	41
139	881	42
139	859	43
139	882	44
139	883	45
139	884	46
139	885	47
139	291	48
139	10	49
139	451	50
139	886	51
139	569	52
139	887	53
139	888	54
139	889	55
139	890	56
139	891	57
139	892	58
139	30	59
139	893	60
139	894	61
139	451	62
139	859	63
139	895	64
139	896	65
139	897	66
139	852	67
139	898	68
139	8	69
139	73	70
139	595	71
139	703	72
139	899	73
139	890	74
139	886	75
139	66	76
139	900	77
139	898	78
139	901	79
139	860	80
139	902	81
139	291	82
139	903	83
139	645	84
139	904	85
139	905	86
139	906	87
139	907	88
139	908	89
139	909	90
139	910	91
139	911	92
139	912	93
139	913	94
139	914	95
139	915	96
139	916	97
139	910	98
139	875	99
139	917	100
139	918	101
139	919	102
139	920	103
139	921	104
139	918	105
139	922	106
139	923	107
139	893	108
139	924	109
139	118	110
139	925	111
139	926	112
139	927	113
139	928	114
139	561	115
139	929	116
139	859	117
139	10	118
139	930	119
139	867	120
139	648	121
139	38	122
139	931	123
139	59	124
139	797	125
139	932	126
139	457	127
139	933	128
141	859	0
141	632	1
141	633	2
161	1012	0
161	1013	1
161	1014	2
162	1015	0
162	1016	1
162	1016	2
165	183	0
165	353	1
\.


--
-- Data for Name: submission_search_objects; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_search_objects (object_id, submission_id, type, assoc_id) FROM stdin;
1	1	1	0
2	1	2	0
3	1	4	0
4	1	16	0
5	1	17	0
6	1	8	0
7	1	32	0
8	1	64	0
9	2	1	0
10	2	2	0
11	2	4	0
12	2	16	0
13	2	17	0
14	2	8	0
15	2	32	0
16	2	64	0
25	3	1	0
26	3	2	0
27	3	4	0
28	3	16	0
29	3	17	0
30	3	8	0
31	3	32	0
32	3	64	0
33	4	1	0
34	4	2	0
35	4	4	0
36	4	16	0
37	4	17	0
38	4	8	0
39	4	32	0
40	4	64	0
49	5	1	0
50	5	2	0
51	5	4	0
52	5	16	0
53	5	17	0
54	5	8	0
55	5	32	0
56	5	64	0
57	6	1	0
58	6	2	0
59	6	4	0
60	6	16	0
61	6	17	0
62	6	8	0
63	6	32	0
64	6	64	0
65	7	1	0
66	7	2	0
67	7	4	0
68	7	16	0
69	7	17	0
70	7	8	0
71	7	32	0
72	7	64	0
73	8	1	0
74	8	2	0
75	8	4	0
76	8	16	0
77	8	17	0
78	8	8	0
79	8	32	0
80	8	64	0
81	9	1	0
82	9	2	0
83	9	4	0
84	9	16	0
85	9	17	0
86	9	8	0
87	9	32	0
88	9	64	0
89	10	1	0
90	10	2	0
91	10	4	0
92	10	16	0
93	10	17	0
94	10	8	0
95	10	32	0
96	10	64	0
97	11	1	0
98	11	2	0
99	11	4	0
100	11	16	0
101	11	17	0
102	11	8	0
103	11	32	0
104	11	64	0
105	12	1	0
106	12	2	0
107	12	4	0
108	12	16	0
109	12	17	0
110	12	8	0
111	12	32	0
112	12	64	0
113	13	1	0
114	13	2	0
115	13	4	0
116	13	16	0
117	13	17	0
118	13	8	0
119	13	32	0
120	13	64	0
121	14	1	0
122	14	2	0
123	14	4	0
124	14	16	0
125	14	17	0
126	14	8	0
127	14	32	0
128	14	64	0
129	15	1	0
130	15	2	0
131	15	4	0
132	15	16	0
133	15	17	0
134	15	8	0
135	15	32	0
136	15	64	0
137	16	1	0
138	16	2	0
139	16	4	0
140	16	16	0
141	16	17	0
142	16	8	0
143	16	32	0
144	16	64	0
145	17	1	0
146	17	2	0
147	17	4	0
148	17	16	0
149	17	17	0
150	17	8	0
151	17	32	0
152	17	64	0
153	18	1	0
154	18	2	0
155	18	4	0
156	18	16	0
157	18	17	0
158	18	8	0
159	18	32	0
160	18	64	0
161	19	1	0
162	19	2	0
163	19	4	0
164	19	16	0
165	19	17	0
166	19	8	0
167	19	32	0
168	19	64	0
\.


--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.submission_search_objects_object_id_seq', 168, true);


--
-- Data for Name: submission_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submission_settings (submission_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.submissions (submission_id, context_id, current_publication_id, date_last_activity, date_submitted, last_modified, stage_id, locale, status, submission_progress, work_type) FROM stdin;
4	1	5	2023-01-19 10:45:39	2023-01-19 10:45:13	2023-01-19 10:45:13	5	en_US	4		0
1	1	1	2023-01-19 10:42:29	2023-01-19 10:42:29	2023-01-19 10:42:29	5	en_US	1		0
9	1	10	2023-01-19 10:48:46	2023-01-19 10:48:38	2023-01-19 10:48:38	5	en_US	3		0
15	1	16	2023-01-19 10:52:23	2023-01-19 10:52:13	2023-01-19 10:52:13	5	en_US	3		0
5	1	6	2023-01-19 10:46:31	2023-01-19 10:46:06	2023-01-19 10:46:06	5	en_US	3		0
2	1	2	2023-01-19 10:43:52	2023-01-19 10:43:38	2023-01-19 10:43:38	5	en_US	3		0
10	1	11	2023-01-19 10:49:20	2023-01-19 10:49:11	2023-01-19 10:49:11	5	en_US	3		0
16	1	17	2023-01-19 10:53:00	2023-01-19 10:52:50	2023-01-19 10:52:50	5	en_US	3		0
6	1	7	2023-01-19 10:47:04	2023-01-19 10:46:56	2023-01-19 10:46:56	5	en_US	3		0
11	1	12	2023-01-19 10:49:56	2023-01-19 10:49:47	2023-01-19 10:49:47	5	en_US	3		0
3	1	4	2023-01-19 10:44:49	2023-01-19 10:44:17	2023-01-19 10:44:17	5	en_US	3		0
7	1	8	2023-01-19 10:47:39	2023-01-19 10:47:30	2023-01-19 10:47:30	5	en_US	3		0
17	1	18	2023-01-19 10:53:37	2023-01-19 10:53:27	2023-01-19 10:53:27	5	en_US	3		0
12	1	13	2023-01-19 10:50:32	2023-01-19 10:50:23	2023-01-19 10:50:23	5	en_US	3		0
8	1	9	2023-01-19 10:48:13	2023-01-19 10:48:04	2023-01-19 10:48:04	5	en_US	3		0
18	1	19	2023-01-19 10:54:14	2023-01-19 10:54:04	2023-01-19 10:54:04	5	en_US	3		0
13	1	14	2023-01-19 10:51:09	2023-01-19 10:50:59	2023-01-19 10:50:59	5	en_US	3		0
19	1	20	2023-01-19 10:54:51	2023-01-19 10:54:41	2023-01-19 10:54:41	5	en_US	3		0
14	1	15	2023-01-19 10:51:46	2023-01-19 10:51:36	2023-01-19 10:51:36	5	en_US	3		0
\.


--
-- Name: submissions_submission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.submissions_submission_id_seq', 19, true);


--
-- Data for Name: temporary_files; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.temporary_files (file_id, user_id, file_name, file_type, file_size, original_file_name, date_uploaded) FROM stdin;
\.


--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.temporary_files_file_id_seq', 1, false);


--
-- Data for Name: usage_stats_institution_temporary_records; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.usage_stats_institution_temporary_records (load_id, line_number, institution_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_total_temporary_records; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.usage_stats_total_temporary_records (date, ip, user_agent, line_number, canonical_url, context_id, submission_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_item_investigations_temporary_records; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.usage_stats_unique_item_investigations_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_item_requests_temporary_records; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.usage_stats_unique_item_requests_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: user_group_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.user_group_settings (user_group_id, locale, setting_name, setting_value) FROM stdin;
1	en_US	name	Site Admin
1	fr_CA	name	Administrateur-trice du site
2	fr_CA	abbrev	##default.groups.abbrev.manager##
2	en_US	abbrev	PSM
2	fr_CA	name	##default.groups.name.manager##
2	en_US	name	Preprint Server manager
2		nameLocaleKey	default.groups.name.manager
2		abbrevLocaleKey	default.groups.abbrev.manager
3	fr_CA	abbrev	##default.groups.abbrev.sectionEditor##
3	en_US	abbrev	MOD
3	fr_CA	name	##default.groups.name.sectionEditor##
3	en_US	name	Moderator
3		nameLocaleKey	default.groups.name.sectionEditor
3		abbrevLocaleKey	default.groups.abbrev.sectionEditor
4	fr_CA	abbrev	AU
4	en_US	abbrev	AU
4	fr_CA	name	Auteur-e
4	en_US	name	Author
4		nameLocaleKey	default.groups.name.author
4		abbrevLocaleKey	default.groups.abbrev.author
5	en_US	abbrev	Read
5	fr_CA	abbrev	Lect
5	en_US	name	Reader
5	fr_CA	name	Lecteur-trice
5		nameLocaleKey	default.groups.name.reader
5		abbrevLocaleKey	default.groups.abbrev.reader
\.


--
-- Data for Name: user_group_stage; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.user_group_stage (context_id, user_group_id, stage_id) FROM stdin;
1	2	1
1	2	5
1	3	1
1	3	5
1	4	1
1	4	5
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.user_groups (user_group_id, context_id, role_id, is_default, show_title, permit_self_registration, permit_metadata_edit) FROM stdin;
1	0	1	1	1	0	0
2	1	16	1	1	0	1
3	1	17	1	1	0	1
4	1	65536	1	1	1	1
5	1	1048576	1	1	1	0
\.


--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.user_groups_user_group_id_seq', 5, true);


--
-- Data for Name: user_interests; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.user_interests (user_id, controlled_vocab_entry_id) FROM stdin;
\.


--
-- Data for Name: user_settings; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.user_settings (user_id, locale, setting_name, setting_value) FROM stdin;
1	en_US	givenName	admin
7	en_US	affiliation	University of Bologna
7	en_US	familyName	Corino
7	en_US	givenName	Carlo
4	en_US	affiliation	University of Chicago
4	fr_CA	affiliation	
4	en_US	biography	
4	fr_CA	biography	
4	en_US	familyName	Buskins
4	fr_CA	familyName	
4	en_US	givenName	David
4	fr_CA	givenName	
4		orcid	
4	en_US	preferredPublicName	
4	fr_CA	preferredPublicName	
4	en_US	signature	
4	fr_CA	signature	
5	en_US	affiliation	University of Toronto
5	fr_CA	affiliation	
5	en_US	biography	
5	fr_CA	biography	
5	en_US	familyName	Berardo
5	fr_CA	familyName	
5	en_US	givenName	Stephanie
5	fr_CA	givenName	
5		orcid	
5	en_US	preferredPublicName	
5	fr_CA	preferredPublicName	
5	en_US	signature	
5	fr_CA	signature	
6	en_US	affiliation	Kyoto University
6	fr_CA	affiliation	
6	en_US	biography	
6	fr_CA	biography	
6	en_US	familyName	Inoue
6	fr_CA	familyName	
6	en_US	givenName	Minoti
6	fr_CA	givenName	
6		orcid	
6	en_US	preferredPublicName	
6	fr_CA	preferredPublicName	
6	en_US	signature	
6	fr_CA	signature	
8	en_US	affiliation	University of Windsor
8	en_US	familyName	Kwantes
8	en_US	givenName	Catherine
16	en_US	affiliation	Aalborg University
12	en_US	affiliation	University College Cork
12	en_US	familyName	Sokoloff
12	en_US	givenName	Domatilia
16	en_US	familyName	Novak
10	en_US	affiliation	Alexandria University
9	en_US	affiliation	University of Alberta
9	en_US	familyName	Montgomerie
9	en_US	givenName	Craig
10	en_US	familyName	Diouf
10	en_US	givenName	Diaga
2	en_US	affiliation	Universidad Nacional Autónoma de México
2	fr_CA	affiliation	
2	en_US	biography	
2	fr_CA	biography	
2	en_US	familyName	Vaca
2	fr_CA	familyName	
2	en_US	givenName	Ramiro
2	fr_CA	givenName	
2		orcid	
2	en_US	preferredPublicName	
2	fr_CA	preferredPublicName	
2	en_US	signature	
2	fr_CA	signature	
15	en_US	affiliation	University of Cape Town
15	en_US	familyName	Mwandenga
1	en_US	familyName	admin
15	en_US	givenName	John
3	en_US	biography	
17	en_US	affiliation	Stanford University
17	en_US	familyName	Al-Khafaji
16	en_US	givenName	John
19	en_US	affiliation	University of Cape Town
14	en_US	affiliation	University of Rome
14	en_US	familyName	Paglieri
13	en_US	affiliation	Indiana University
13	en_US	familyName	Ostrom
13	en_US	givenName	Elinor
17	en_US	givenName	Karim
3	en_US	signature	
11	en_US	affiliation	University of Toronto
11	en_US	familyName	Phillips
11	en_US	givenName	Dana
20	en_US	affiliation	University of Wolverhampton
14	en_US	givenName	Fabio
19	en_US	familyName	Kumiega
19	en_US	givenName	Lise
3	fr_CA	familyName	
3	en_US	familyName	Barnes
3	en_US	givenName	Daniel
3	en_US	preferredPublicName	
20	en_US	familyName	Daniel
18	en_US	affiliation	Australian National University
18	en_US	familyName	Christopher
18	en_US	givenName	Leo
3	fr_CA	signature	
3	fr_CA	affiliation	
20	en_US	givenName	Patricia
3	fr_CA	preferredPublicName	
21	en_US	affiliation	University of Nairobi
21	en_US	familyName	Baiyewu
21	en_US	givenName	Rana
3		orcid	
22	en_US	affiliation	Barcelona University
22	en_US	familyName	Rossi
22	en_US	givenName	Rosanna
3	fr_CA	givenName	
23	en_US	affiliation	University of Tehran
23	en_US	familyName	Karbasizaed
23	en_US	givenName	Vajiheh
3	fr_CA	biography	
24	en_US	familyName	Williamson
24	en_US	givenName	Valerie
24	en_US	affiliation	University of Windsor
25	en_US	affiliation	CUNY
25	en_US	familyName	Woods
25	en_US	givenName	Zita
3	en_US	affiliation	University of Melbourne
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.user_user_groups (user_group_id, user_id) FROM stdin;
1	1
2	1
2	2
2	3
3	4
3	5
3	6
5	7
4	7
5	8
4	8
5	9
4	9
5	10
4	10
5	11
4	11
5	12
4	12
5	13
4	13
5	14
4	14
5	15
4	15
5	16
4	16
5	17
4	17
5	18
4	18
5	19
4	19
5	20
4	20
5	21
4	21
5	22
4	22
5	23
4	23
5	24
4	24
5	25
4	25
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.users (user_id, username, password, email, url, phone, mailing_address, billing_address, country, locales, gossip, date_last_email, date_registered, date_validated, date_last_login, must_change_password, auth_id, auth_str, disabled, disabled_reason, inline_help) FROM stdin;
16	jnovak	$2y$10$1SK.E2IUSFRdD9dMFfVmyeUtUwNM5uI5/tYZ1G1S939atS/grTNAy	jnovak@mailinator.com	\N	\N	\N	\N	DK	[]	\N	\N	2023-01-19 10:48:55	\N	2023-01-19 10:48:55	\N	\N	\N	0	\N	1
25	zwoods	$2y$10$ucrtiW4MmtL3dRtIHw0VlOTFGnQOWm44cyjU5db6I77wqFkRf.q7u	zwoods@mailinator.com	\N	\N	\N	\N	US	[]	\N	\N	2023-01-19 10:54:24	\N	2023-01-19 10:54:24	\N	\N	\N	0	\N	1
4	dbuskins	$2y$10$eym5OorD1woy1taoGjqE3OYHNy3E5Y60Kso17RzUKJI0NzdWalTJa	dbuskins@mailinator.com				\N	US	[]	\N	\N	2023-01-19 10:41:05	\N	\N	0	\N	\N	0	\N	1
5	sberardo	$2y$10$Oyacbp3K9fn4Y8qOsvlq9uMWJz.GVO5f..N4U9kyzQ2/KwvluBvkm	sberardo@mailinator.com				\N	CA	[]	\N	\N	2023-01-19 10:41:12	\N	\N	0	\N	\N	0	\N	1
6	minoue	$2y$10$JnoxcrAiSoCSAUxShwliwO/E/5zhhHxkgBjLdBbuU/5pnvy4Caa0m	minoue@mailinator.com				\N	JP	[]	\N	\N	2023-01-19 10:41:19	\N	\N	0	\N	\N	0	\N	1
17	kalkhafaji	$2y$10$jTC4U0b4cv5R0ZgMz/ug2uiQHndi.WOW0s/hr21C1kwakakv8q02a	kalkhafaji@mailinator.com	\N	\N	\N	\N	US	[]	\N	\N	2023-01-19 10:49:29	\N	2023-01-19 10:49:29	\N	\N	\N	0	\N	1
3	dbarnes	$2y$10$1zRcbqRdVLE9MtIDEWCkvOjcPdIUAVPXUYpQUnHfpyGDNSVmdhG.C	dbarnes@mailinator.com				\N	AU	[]	\N	\N	2023-01-19 10:40:58	\N	2023-01-19 10:54:42	0	\N	\N	0	\N	1
2	rvaca	$2y$10$K0rfRwhl04GNU4ZzytV2vuRZ7YdAc5r1ieyBRGThDkAHxYJjNDaeO	rvaca@mailinator.com				\N	MX	[]	\N	\N	2023-01-19 10:40:52	\N	2023-01-19 10:41:27	0	\N	\N	0	\N	1
1	admin	$2y$10$OjyRg0Cy84BX/N1mKsXCwefah0YZACzGVRcWObLlm6J4EJefayTI6	pkpadmin@mailinator.com	\N	\N	\N	\N	\N	[]	\N	\N	2023-01-19 10:39:16	\N	2023-01-19 10:41:42	\N	\N	\N	0	\N	1
7	ccorino	$2y$10$zDMsJdrfxnBLn3z9D4PJl.ft47jqSPjuzec2Jsc6FMrSQm1hchbC6	ccorino@mailinator.com	\N	\N	\N	\N	IT	[]	\N	\N	2023-01-19 10:42:12	\N	2023-01-19 10:42:12	\N	\N	\N	0	\N	1
8	ckwantes	$2y$10$p3iiYHq701RhVpGJd4M.1Oxa.CUDXiDClVKlixN7gz/q64dl9tzvm	ckwantes@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-01-19 10:42:35	\N	2023-01-19 10:42:35	\N	\N	\N	0	\N	1
18	lchristopher	$2y$10$xiK51fZCI7FXCy/CDLhrh.8KWBEgUW6TH7i6U4b1Bu4MrGs8pPADC	lchristopher@mailinator.com	\N	\N	\N	\N	AU	[]	\N	\N	2023-01-19 10:50:06	\N	2023-01-19 10:50:06	\N	\N	\N	0	\N	1
9	cmontgomerie	$2y$10$LR.f320B4Bycv55bEiiRa.DvtMatMZJlXnJ8SmDUCsBxPlAK6V.KK	cmontgomerie@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-01-19 10:43:59	\N	2023-01-19 10:43:59	\N	\N	\N	0	\N	1
10	ddiouf	$2y$10$fRHnFc5vm4GbZ9Hip3HHSOJKFNfWbBMduLSuDSV3ay/.Pdl7oSSPu	ddiouf@mailinator.com	\N	\N	\N	\N	EG	[]	\N	\N	2023-01-19 10:44:56	\N	2023-01-19 10:44:56	\N	\N	\N	0	\N	1
19	lkumiega	$2y$10$s6Sz.TeBmBOJYboeSFXe6OzGeE4WQoO6T4HCjrVofYDYDdMjj4dfm	lkumiega@mailinator.com	\N	\N	\N	\N	ZA	[]	\N	\N	2023-01-19 10:50:42	\N	2023-01-19 10:50:42	\N	\N	\N	0	\N	1
11	dphillips	$2y$10$U9OgtqoVejUVeq.3fYAffukpJFBtgcQ5sBTT4n6tOzt3iKdHxfb7K	dphillips@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-01-19 10:45:49	\N	2023-01-19 10:45:49	\N	\N	\N	0	\N	1
20	pdaniel	$2y$10$qqlfeUMS/YlCIye58CYSJudm431iN.vU6cFzEtOHy.vhGiFHzXAKO	pdaniel@mailinator.com	\N	\N	\N	\N	GB	[]	\N	\N	2023-01-19 10:51:18	\N	2023-01-19 10:51:18	\N	\N	\N	0	\N	1
12	dsokoloff	$2y$10$2t7XgV/ecGc8i1jQc48DpOJ53o9NE8EuG60VpDJfchBrjkutJEKAS	dsokoloff@mailinator.com	\N	\N	\N	\N	IE	[]	\N	\N	2023-01-19 10:46:38	\N	2023-01-19 10:46:38	\N	\N	\N	0	\N	1
13	eostrom	$2y$10$EA3kjCMcGAScEiW1UsZXweQ.ghxr0vXTgWjEfZzE5qPpt9Otp.3XS	eostrom@mailinator.com	\N	\N	\N	\N	US	[]	\N	\N	2023-01-19 10:47:12	\N	2023-01-19 10:47:12	\N	\N	\N	0	\N	1
14	fpaglieri	$2y$10$6MAF0NqpVPtKnWygryY/RO/QAn3Jl99peogrO.LVZFq9wQ5EmXRry	fpaglieri@mailinator.com	\N	\N	\N	\N	IT	[]	\N	\N	2023-01-19 10:47:47	\N	2023-01-19 10:47:47	\N	\N	\N	0	\N	1
15	jmwandenga	$2y$10$5DnegIXStlYiN3fY9yqZ2e6vHgtuQO/sykIIMiTom3tRjWOaVepVe	jmwandenga@mailinator.com	\N	\N	\N	\N	ZA	[]	\N	\N	2023-01-19 10:48:21	\N	2023-01-19 10:48:21	\N	\N	\N	0	\N	1
21	rbaiyewu	$2y$10$A4gSWtUEInN8Yp2HYnCaKeJQJuXzzan/cGX10L.g8FuB2bnSkHnT6	rbaiyewu@mailinator.com	\N	\N	\N	\N	KE	[]	\N	\N	2023-01-19 10:51:56	\N	2023-01-19 10:51:56	\N	\N	\N	0	\N	1
22	rrossi	$2y$10$HOf5dRrBUwYx7f/TGcSYxu1vWsdf4B1Oo7Bb1OGZDatrezQ7Wdv/.	rrossi@mailinator.com	\N	\N	\N	\N	ES	[]	\N	\N	2023-01-19 10:52:32	\N	2023-01-19 10:52:33	\N	\N	\N	0	\N	1
23	vkarbasizaed	$2y$10$SKemNisgZH4FJQYop3q4sOJzIxpzCietQrPlLq0SSfDjU/igIiAN6	vkarbasizaed@mailinator.com	\N	\N	\N	\N	IR	[]	\N	\N	2023-01-19 10:53:09	\N	2023-01-19 10:53:10	\N	\N	\N	0	\N	1
24	vwilliamson	$2y$10$g5jQ8zNpZG5n5WwKGsUdgO31RKiyPLOT/8KDqJ7crDBYcOd8CTNJG	vwilliamson@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-01-19 10:53:47	\N	2023-01-19 10:53:47	\N	\N	\N	0	\N	1
\.


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ops-ci
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: ops-ci
--

COPY public.versions (major, minor, revision, build, date_installed, current, product_type, product, product_class_name, lazy_load, sitewide) FROM stdin;
1	0	0	0	2023-01-19 10:39:17	1	plugins.metadata	dc11		0	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.blocks	developedBy	DevelopedByBlockPlugin	1	0
1	0	1	0	2023-01-19 10:39:17	1	plugins.blocks	browse	BrowseBlockPlugin	1	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.blocks	languageToggle	LanguageToggleBlockPlugin	1	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.generic	tinymce	TinyMCEPlugin	1	0
1	0	1	0	2023-01-19 10:39:17	1	plugins.generic	pdfJsViewer	PdfJsViewerPlugin	1	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.generic	usageEvent		0	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.generic	webFeed	WebFeedPlugin	1	0
0	1	0	0	2023-01-19 10:39:17	1	plugins.generic	citationStyleLanguage	CitationStyleLanguagePlugin	1	0
1	2	0	0	2023-01-19 10:39:17	1	plugins.generic	customBlockManager	CustomBlockManagerPlugin	1	0
2	2	0	0	2023-01-19 10:39:17	1	plugins.generic	crossref		0	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.generic	googleAnalytics	GoogleAnalyticsPlugin	1	0
1	3	0	0	2023-01-19 10:39:17	1	plugins.generic	acron	AcronPlugin	1	1
1	2	0	0	2023-01-19 10:39:17	1	plugins.generic	orcidProfile	OrcidProfilePlugin	1	0
1	1	0	0	2023-01-19 10:39:17	1	plugins.generic	googleScholar	GoogleScholarPlugin	1	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.importexport	native		0	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.oaiMetadataFormats	dc		0	0
1	0	0	0	2023-01-19 10:39:17	1	plugins.themes	default	DefaultThemePlugin	1	0
3	4	0	0	2023-01-19 10:39:16	1	core	ops		0	1
\.


--
-- Name: access_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_pkey PRIMARY KEY (access_key_id);


--
-- Name: announcement_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcement_settings
    ADD CONSTRAINT announcement_settings_pkey UNIQUE (announcement_id, locale, setting_name);


--
-- Name: announcement_type_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcement_type_settings
    ADD CONSTRAINT announcement_type_settings_pkey UNIQUE (type_id, locale, setting_name);


--
-- Name: announcement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcement_types
    ADD CONSTRAINT announcement_types_pkey PRIMARY KEY (type_id);


--
-- Name: announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (announcement_id);


--
-- Name: author_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.author_settings
    ADD CONSTRAINT author_settings_pkey UNIQUE (author_id, locale, setting_name);


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- Name: c_v_e_s_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocab_entry_settings
    ADD CONSTRAINT c_v_e_s_pkey UNIQUE (controlled_vocab_entry_id, locale, setting_name);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- Name: category_path; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT category_path UNIQUE (context_id, path);


--
-- Name: category_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.category_settings
    ADD CONSTRAINT category_settings_pkey UNIQUE (category_id, locale, setting_name);


--
-- Name: citation_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.citation_settings
    ADD CONSTRAINT citation_settings_pkey UNIQUE (citation_id, locale, setting_name);


--
-- Name: citations_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_pkey PRIMARY KEY (citation_id);


--
-- Name: citations_publication_seq; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_publication_seq UNIQUE (publication_id, seq);


--
-- Name: controlled_vocab_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries
    ADD CONSTRAINT controlled_vocab_entries_pkey PRIMARY KEY (controlled_vocab_entry_id);


--
-- Name: controlled_vocab_symbolic; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocabs
    ADD CONSTRAINT controlled_vocab_symbolic UNIQUE (symbolic, assoc_type, assoc_id);


--
-- Name: controlled_vocabs_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocabs
    ADD CONSTRAINT controlled_vocabs_pkey PRIMARY KEY (controlled_vocab_id);


--
-- Name: data_object_tombstone_oai_set_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects
    ADD CONSTRAINT data_object_tombstone_oai_set_objects_pkey PRIMARY KEY (object_id);


--
-- Name: data_object_tombstone_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.data_object_tombstone_settings
    ADD CONSTRAINT data_object_tombstone_settings_pkey UNIQUE (tombstone_id, locale, setting_name);


--
-- Name: data_object_tombstones_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.data_object_tombstones
    ADD CONSTRAINT data_object_tombstones_pkey PRIMARY KEY (tombstone_id);


--
-- Name: doi_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.doi_settings
    ADD CONSTRAINT doi_settings_pkey UNIQUE (doi_id, locale, setting_name);


--
-- Name: dois_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.dois
    ADD CONSTRAINT dois_pkey PRIMARY KEY (doi_id);


--
-- Name: edit_decisions_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_pkey PRIMARY KEY (edit_decision_id);


--
-- Name: email_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_log
    ADD CONSTRAINT email_log_pkey PRIMARY KEY (log_id);


--
-- Name: email_log_user_id; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_user_id UNIQUE (email_log_id, user_id);


--
-- Name: email_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_templates_settings
    ADD CONSTRAINT email_settings_pkey UNIQUE (email_id, locale, setting_name);


--
-- Name: email_templates_default_data_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_templates_default_data
    ADD CONSTRAINT email_templates_default_data_pkey UNIQUE (email_key, locale);


--
-- Name: email_templates_email_key; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_email_key UNIQUE (email_key, context_id);


--
-- Name: email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (email_id);


--
-- Name: event_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.event_log
    ADD CONSTRAINT event_log_pkey PRIMARY KEY (log_id);


--
-- Name: event_log_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.event_log_settings
    ADD CONSTRAINT event_log_settings_pkey UNIQUE (log_id, setting_name);


--
-- Name: failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: files_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (file_id);


--
-- Name: filter_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filter_groups
    ADD CONSTRAINT filter_groups_pkey PRIMARY KEY (filter_group_id);


--
-- Name: filter_groups_symbolic; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filter_groups
    ADD CONSTRAINT filter_groups_symbolic UNIQUE (symbolic);


--
-- Name: filter_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filter_settings
    ADD CONSTRAINT filter_settings_pkey UNIQUE (filter_id, locale, setting_name);


--
-- Name: filters_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (filter_id);


--
-- Name: genre_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.genre_settings
    ADD CONSTRAINT genre_settings_pkey UNIQUE (genre_id, locale, setting_name);


--
-- Name: genres_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- Name: institution_ip_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institution_ip
    ADD CONSTRAINT institution_ip_pkey PRIMARY KEY (institution_ip_id);


--
-- Name: institution_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institution_settings
    ADD CONSTRAINT institution_settings_pkey UNIQUE (institution_id, locale, setting_name);


--
-- Name: institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (institution_id);


--
-- Name: item_views_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.item_views
    ADD CONSTRAINT item_views_pkey UNIQUE (assoc_type, assoc_id, user_id);


--
-- Name: job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: library_file_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.library_file_settings
    ADD CONSTRAINT library_file_settings_pkey UNIQUE (file_id, locale, setting_name);


--
-- Name: library_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_pkey PRIMARY KEY (file_id);


--
-- Name: msd_uc_load_id_context_id_submission_id_date; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_uc_load_id_context_id_submission_id_date UNIQUE (load_id, context_id, submission_id, date);


--
-- Name: msgd_uc_load_context_submission_c_r_c_date; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_uc_load_context_submission_c_r_c_date UNIQUE (load_id, context_id, submission_id, country, region, city, date);


--
-- Name: msgm_uc_context_submission_c_r_c_month; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_uc_context_submission_c_r_c_month UNIQUE (context_id, submission_id, country, region, city, month);


--
-- Name: msid_uc_load_id_context_id_submission_id_institution_id_date; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_uc_load_id_context_id_submission_id_institution_id_date UNIQUE (load_id, context_id, submission_id, institution_id, date);


--
-- Name: msim_uc_context_id_submission_id_institution_id_month; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_uc_context_id_submission_id_institution_id_month UNIQUE (context_id, submission_id, institution_id, month);


--
-- Name: msm_uc_context_id_submission_id_month; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_uc_context_id_submission_id_month UNIQUE (context_id, submission_id, month);


--
-- Name: navigation_menu_item_assignment_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignment_settings
    ADD CONSTRAINT navigation_menu_item_assignment_settings_pkey UNIQUE (navigation_menu_item_assignment_id, locale, setting_name);


--
-- Name: navigation_menu_item_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_pkey PRIMARY KEY (navigation_menu_item_assignment_id);


--
-- Name: navigation_menu_item_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_settings
    ADD CONSTRAINT navigation_menu_item_settings_pkey UNIQUE (navigation_menu_item_id, locale, setting_name);


--
-- Name: navigation_menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_items
    ADD CONSTRAINT navigation_menu_items_pkey PRIMARY KEY (navigation_menu_item_id);


--
-- Name: navigation_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menus
    ADD CONSTRAINT navigation_menus_pkey PRIMARY KEY (navigation_menu_id);


--
-- Name: notes_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (note_id);


--
-- Name: notification_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_pkey UNIQUE (notification_id, locale, setting_name);


--
-- Name: notification_subscription_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_pkey PRIMARY KEY (setting_id);


--
-- Name: notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id);


--
-- Name: oai_resumption_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.oai_resumption_tokens
    ADD CONSTRAINT oai_resumption_tokens_pkey UNIQUE (token);


--
-- Name: plugin_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.plugin_settings
    ADD CONSTRAINT plugin_settings_pkey UNIQUE (plugin_name, context_id, setting_name);


--
-- Name: publication_categories_id; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_id UNIQUE (publication_id, category_id);


--
-- Name: publication_galley_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_galley_settings
    ADD CONSTRAINT publication_galley_settings_pkey UNIQUE (galley_id, locale, setting_name);


--
-- Name: publication_galleys_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_pkey PRIMARY KEY (galley_id);


--
-- Name: publication_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_settings
    ADD CONSTRAINT publication_settings_pkey UNIQUE (publication_id, locale, setting_name);


--
-- Name: publications_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (publication_id);


--
-- Name: queries_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.queries
    ADD CONSTRAINT queries_pkey PRIMARY KEY (query_id);


--
-- Name: query_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_pkey UNIQUE (query_id, user_id);


--
-- Name: review_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_pkey PRIMARY KEY (review_id);


--
-- Name: review_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_pkey UNIQUE (review_id, submission_file_id);


--
-- Name: review_form_element_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_element_settings
    ADD CONSTRAINT review_form_element_settings_pkey UNIQUE (review_form_element_id, locale, setting_name);


--
-- Name: review_form_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_elements
    ADD CONSTRAINT review_form_elements_pkey PRIMARY KEY (review_form_element_id);


--
-- Name: review_form_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_settings
    ADD CONSTRAINT review_form_settings_pkey UNIQUE (review_form_id, locale, setting_name);


--
-- Name: review_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_forms
    ADD CONSTRAINT review_forms_pkey PRIMARY KEY (review_form_id);


--
-- Name: review_round_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_pkey UNIQUE (submission_id, review_round_id, submission_file_id);


--
-- Name: review_rounds_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_rounds
    ADD CONSTRAINT review_rounds_pkey PRIMARY KEY (review_round_id);


--
-- Name: review_rounds_submission_id_stage_id_round_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_rounds
    ADD CONSTRAINT review_rounds_submission_id_stage_id_round_pkey UNIQUE (submission_id, stage_id, round);


--
-- Name: scheduled_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.scheduled_tasks
    ADD CONSTRAINT scheduled_tasks_pkey UNIQUE (class_name);


--
-- Name: section_editors_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT section_editors_pkey UNIQUE (context_id, assoc_id, assoc_type, user_id);


--
-- Name: section_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.section_settings
    ADD CONSTRAINT section_settings_pkey UNIQUE (section_id, locale, setting_name);


--
-- Name: sections_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (section_id);


--
-- Name: server_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.server_settings
    ADD CONSTRAINT server_settings_pkey UNIQUE (server_id, locale, setting_name);


--
-- Name: servers_path; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.servers
    ADD CONSTRAINT servers_path UNIQUE (path);


--
-- Name: servers_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.servers
    ADD CONSTRAINT servers_pkey PRIMARY KEY (server_id);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey UNIQUE (session_id);


--
-- Name: site_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_pkey UNIQUE (setting_name, locale);


--
-- Name: stage_assignment; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignment UNIQUE (submission_id, user_group_id, user_id);


--
-- Name: stage_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_pkey PRIMARY KEY (stage_assignment_id);


--
-- Name: submission_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_pkey PRIMARY KEY (comment_id);


--
-- Name: submission_file_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_pkey PRIMARY KEY (revision_id);


--
-- Name: submission_file_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_file_settings
    ADD CONSTRAINT submission_file_settings_pkey UNIQUE (submission_file_id, locale, setting_name);


--
-- Name: submission_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_pkey PRIMARY KEY (submission_file_id);


--
-- Name: submission_search_keyword_list_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list
    ADD CONSTRAINT submission_search_keyword_list_pkey PRIMARY KEY (keyword_id);


--
-- Name: submission_search_keyword_text; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list
    ADD CONSTRAINT submission_search_keyword_text UNIQUE (keyword_text);


--
-- Name: submission_search_object_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_pkey UNIQUE (object_id, pos);


--
-- Name: submission_search_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_objects
    ADD CONSTRAINT submission_search_objects_pkey PRIMARY KEY (object_id);


--
-- Name: submission_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_settings
    ADD CONSTRAINT submission_settings_pkey UNIQUE (submission_id, locale, setting_name);


--
-- Name: submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (submission_id);


--
-- Name: temporary_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.temporary_files
    ADD CONSTRAINT temporary_files_pkey PRIMARY KEY (file_id);


--
-- Name: u_e_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT u_e_pkey UNIQUE (user_id, controlled_vocab_entry_id);


--
-- Name: user_group_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_group_settings
    ADD CONSTRAINT user_group_settings_pkey UNIQUE (user_group_id, locale, setting_name);


--
-- Name: user_group_stage_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_pkey UNIQUE (context_id, user_group_id, stage_id);


--
-- Name: user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (user_group_id);


--
-- Name: user_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_pkey UNIQUE (user_id, locale, setting_name);


--
-- Name: user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey UNIQUE (user_group_id, user_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: usitr_load_id_line_number_institution_id; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_institution_temporary_records
    ADD CONSTRAINT usitr_load_id_line_number_institution_id UNIQUE (load_id, line_number, institution_id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey UNIQUE (product_type, product, major, minor, revision, build);


--
-- Name: access_keys_hash; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX access_keys_hash ON public.access_keys USING btree (key_hash, user_id, context);


--
-- Name: access_keys_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX access_keys_user_id ON public.access_keys USING btree (user_id);


--
-- Name: announcement_settings_announcement_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX announcement_settings_announcement_id ON public.announcement_settings USING btree (announcement_id);


--
-- Name: announcement_type_settings_type_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX announcement_type_settings_type_id ON public.announcement_type_settings USING btree (type_id);


--
-- Name: announcement_types_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX announcement_types_context_id ON public.announcement_types USING btree (context_id);


--
-- Name: announcements_assoc; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX announcements_assoc ON public.announcements USING btree (assoc_type, assoc_id);


--
-- Name: announcements_type_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX announcements_type_id ON public.announcements USING btree (type_id);


--
-- Name: author_settings_author_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX author_settings_author_id ON public.author_settings USING btree (author_id);


--
-- Name: authors_user_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX authors_user_group_id ON public.authors USING btree (user_group_id);


--
-- Name: c_v_e_s_entry_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX c_v_e_s_entry_id ON public.controlled_vocab_entry_settings USING btree (controlled_vocab_entry_id);


--
-- Name: category_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX category_context_id ON public.categories USING btree (context_id);


--
-- Name: category_context_parent_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX category_context_parent_id ON public.categories USING btree (context_id, parent_id);


--
-- Name: category_parent_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX category_parent_id ON public.categories USING btree (parent_id);


--
-- Name: category_settings_category_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX category_settings_category_id ON public.category_settings USING btree (category_id);


--
-- Name: citation_settings_citation_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX citation_settings_citation_id ON public.citation_settings USING btree (citation_id);


--
-- Name: citations_publication; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX citations_publication ON public.citations USING btree (publication_id);


--
-- Name: controlled_vocab_entries_controlled_vocab_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX controlled_vocab_entries_controlled_vocab_id ON public.controlled_vocab_entries USING btree (controlled_vocab_id);


--
-- Name: controlled_vocab_entries_cv_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX controlled_vocab_entries_cv_id ON public.controlled_vocab_entries USING btree (controlled_vocab_id, seq);


--
-- Name: data_object_tombstone_oai_set_objects_tombstone_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX data_object_tombstone_oai_set_objects_tombstone_id ON public.data_object_tombstone_oai_set_objects USING btree (tombstone_id);


--
-- Name: data_object_tombstone_settings_tombstone_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX data_object_tombstone_settings_tombstone_id ON public.data_object_tombstone_settings USING btree (tombstone_id);


--
-- Name: data_object_tombstones_data_object_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX data_object_tombstones_data_object_id ON public.data_object_tombstones USING btree (data_object_id);


--
-- Name: doi_settings_doi_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX doi_settings_doi_id ON public.doi_settings USING btree (doi_id);


--
-- Name: dois_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX dois_context_id ON public.dois USING btree (context_id);


--
-- Name: edit_decisions_editor_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX edit_decisions_editor_id ON public.edit_decisions USING btree (editor_id);


--
-- Name: edit_decisions_review_round_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX edit_decisions_review_round_id ON public.edit_decisions USING btree (review_round_id);


--
-- Name: edit_decisions_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX edit_decisions_submission_id ON public.edit_decisions USING btree (submission_id);


--
-- Name: email_log_assoc; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX email_log_assoc ON public.email_log USING btree (assoc_type, assoc_id);


--
-- Name: email_log_users_email_log_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX email_log_users_email_log_id ON public.email_log_users USING btree (email_log_id);


--
-- Name: email_log_users_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX email_log_users_user_id ON public.email_log_users USING btree (user_id);


--
-- Name: email_templates_alternate_to; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX email_templates_alternate_to ON public.email_templates USING btree (alternate_to);


--
-- Name: email_templates_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX email_templates_context_id ON public.email_templates USING btree (context_id);


--
-- Name: email_templates_settings_email_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX email_templates_settings_email_id ON public.email_templates_settings USING btree (email_id);


--
-- Name: event_log_assoc; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX event_log_assoc ON public.event_log USING btree (assoc_type, assoc_id);


--
-- Name: event_log_settings_log_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX event_log_settings_log_id ON public.event_log_settings USING btree (log_id);


--
-- Name: event_log_settings_name_value; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX event_log_settings_name_value ON public.event_log_settings USING btree (setting_name, setting_value) WHERE ((setting_name)::text = ANY ((ARRAY['fileId'::character varying, 'submissionId'::character varying])::text[]));


--
-- Name: event_log_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX event_log_user_id ON public.event_log USING btree (user_id);


--
-- Name: filter_settings_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX filter_settings_id ON public.filter_settings USING btree (filter_id);


--
-- Name: filters_filter_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX filters_filter_group_id ON public.filters USING btree (filter_group_id);


--
-- Name: genre_settings_genre_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX genre_settings_genre_id ON public.genre_settings USING btree (genre_id);


--
-- Name: genres_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX genres_context_id ON public.genres USING btree (context_id);


--
-- Name: institution_ip_end; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX institution_ip_end ON public.institution_ip USING btree (ip_end);


--
-- Name: institution_ip_institution_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX institution_ip_institution_id ON public.institution_ip USING btree (institution_id);


--
-- Name: institution_ip_start; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX institution_ip_start ON public.institution_ip USING btree (ip_start);


--
-- Name: institution_settings_institution_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX institution_settings_institution_id ON public.institution_settings USING btree (institution_id);


--
-- Name: institutions_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX institutions_context_id ON public.institutions USING btree (context_id);


--
-- Name: item_views_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX item_views_user_id ON public.item_views USING btree (user_id);


--
-- Name: jobs_queue_reserved_at_index; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX jobs_queue_reserved_at_index ON public.jobs USING btree (queue, reserved_at);


--
-- Name: library_file_settings_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX library_file_settings_file_id ON public.library_file_settings USING btree (file_id);


--
-- Name: library_files_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX library_files_context_id ON public.library_files USING btree (context_id);


--
-- Name: library_files_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX library_files_submission_id ON public.library_files USING btree (submission_id);


--
-- Name: metrics_context_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_context_context_id ON public.metrics_context USING btree (context_id);


--
-- Name: metrics_context_load_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_context_load_id ON public.metrics_context USING btree (load_id);


--
-- Name: metrics_counter_submission_daily_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_counter_submission_daily_context_id ON public.metrics_counter_submission_daily USING btree (context_id);


--
-- Name: metrics_counter_submission_daily_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_counter_submission_daily_submission_id ON public.metrics_counter_submission_daily USING btree (submission_id);


--
-- Name: metrics_counter_submission_monthly_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_counter_submission_monthly_context_id ON public.metrics_counter_submission_monthly USING btree (context_id);


--
-- Name: metrics_counter_submission_monthly_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_counter_submission_monthly_submission_id ON public.metrics_counter_submission_monthly USING btree (submission_id);


--
-- Name: metrics_submission_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_submission_context_id ON public.metrics_submission USING btree (context_id);


--
-- Name: metrics_submission_representation_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_submission_representation_id ON public.metrics_submission USING btree (representation_id);


--
-- Name: metrics_submission_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_submission_submission_file_id ON public.metrics_submission USING btree (submission_file_id);


--
-- Name: metrics_submission_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX metrics_submission_submission_id ON public.metrics_submission USING btree (submission_id);


--
-- Name: ms_context_id_submission_id_assoc_type_file_type; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX ms_context_id_submission_id_assoc_type_file_type ON public.metrics_submission USING btree (context_id, submission_id, assoc_type, file_type);


--
-- Name: ms_load_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX ms_load_id ON public.metrics_submission USING btree (load_id);


--
-- Name: msd_context_id_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msd_context_id_submission_id ON public.metrics_counter_submission_daily USING btree (context_id, submission_id);


--
-- Name: msd_load_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msd_load_id ON public.metrics_counter_submission_daily USING btree (load_id);


--
-- Name: msgd_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msgd_context_id ON public.metrics_submission_geo_daily USING btree (context_id);


--
-- Name: msgd_context_id_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msgd_context_id_submission_id ON public.metrics_submission_geo_daily USING btree (context_id, submission_id);


--
-- Name: msgd_load_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msgd_load_id ON public.metrics_submission_geo_daily USING btree (load_id);


--
-- Name: msgd_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msgd_submission_id ON public.metrics_submission_geo_daily USING btree (submission_id);


--
-- Name: msgm_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msgm_context_id ON public.metrics_submission_geo_monthly USING btree (context_id);


--
-- Name: msgm_context_id_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msgm_context_id_submission_id ON public.metrics_submission_geo_monthly USING btree (context_id, submission_id);


--
-- Name: msgm_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msgm_submission_id ON public.metrics_submission_geo_monthly USING btree (submission_id);


--
-- Name: msid_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msid_context_id ON public.metrics_counter_submission_institution_daily USING btree (context_id);


--
-- Name: msid_context_id_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msid_context_id_submission_id ON public.metrics_counter_submission_institution_daily USING btree (context_id, submission_id);


--
-- Name: msid_institution_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msid_institution_id ON public.metrics_counter_submission_institution_daily USING btree (institution_id);


--
-- Name: msid_load_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msid_load_id ON public.metrics_counter_submission_institution_daily USING btree (load_id);


--
-- Name: msid_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msid_submission_id ON public.metrics_counter_submission_institution_daily USING btree (submission_id);


--
-- Name: msim_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msim_context_id ON public.metrics_counter_submission_institution_monthly USING btree (context_id);


--
-- Name: msim_context_id_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msim_context_id_submission_id ON public.metrics_counter_submission_institution_monthly USING btree (context_id, submission_id);


--
-- Name: msim_institution_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msim_institution_id ON public.metrics_counter_submission_institution_monthly USING btree (institution_id);


--
-- Name: msim_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msim_submission_id ON public.metrics_counter_submission_institution_monthly USING btree (submission_id);


--
-- Name: msm_context_id_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX msm_context_id_submission_id ON public.metrics_counter_submission_monthly USING btree (context_id, submission_id);


--
-- Name: navigation_menu_item_assignment_settings_n_m_i_a_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX navigation_menu_item_assignment_settings_n_m_i_a_id ON public.navigation_menu_item_assignment_settings USING btree (navigation_menu_item_assignment_id);


--
-- Name: navigation_menu_item_assignments_navigation_menu_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX navigation_menu_item_assignments_navigation_menu_id ON public.navigation_menu_item_assignments USING btree (navigation_menu_id);


--
-- Name: navigation_menu_item_assignments_navigation_menu_item_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX navigation_menu_item_assignments_navigation_menu_item_id ON public.navigation_menu_item_assignments USING btree (navigation_menu_item_id);


--
-- Name: navigation_menu_item_settings_navigation_menu_item_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX navigation_menu_item_settings_navigation_menu_item_id ON public.navigation_menu_item_settings USING btree (navigation_menu_item_id);


--
-- Name: notes_assoc; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notes_assoc ON public.notes USING btree (assoc_type, assoc_id);


--
-- Name: notes_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notes_user_id ON public.notes USING btree (user_id);


--
-- Name: notification_settings_notification_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notification_settings_notification_id ON public.notification_settings USING btree (notification_id);


--
-- Name: notification_subscription_settings_context; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notification_subscription_settings_context ON public.notification_subscription_settings USING btree (context);


--
-- Name: notification_subscription_settings_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notification_subscription_settings_user_id ON public.notification_subscription_settings USING btree (user_id);


--
-- Name: notifications_assoc; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notifications_assoc ON public.notifications USING btree (assoc_type, assoc_id);


--
-- Name: notifications_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notifications_context_id ON public.notifications USING btree (context_id, level);


--
-- Name: notifications_context_id_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notifications_context_id_user_id ON public.notifications USING btree (context_id, user_id, level);


--
-- Name: notifications_user_id_level; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX notifications_user_id_level ON public.notifications USING btree (user_id, level);


--
-- Name: plugin_settings_plugin_name; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX plugin_settings_plugin_name ON public.plugin_settings USING btree (plugin_name);


--
-- Name: publication_categories_category_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_categories_category_id ON public.publication_categories USING btree (category_id);


--
-- Name: publication_categories_publication_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_categories_publication_id ON public.publication_categories USING btree (publication_id);


--
-- Name: publication_galley_settings_galley_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_galley_settings_galley_id ON public.publication_galley_settings USING btree (galley_id);


--
-- Name: publication_galley_settings_name_value; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_galley_settings_name_value ON public.publication_galley_settings USING btree (setting_name, setting_value);


--
-- Name: publication_galleys_doi_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_galleys_doi_id ON public.publication_galleys USING btree (doi_id);


--
-- Name: publication_galleys_publication_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_galleys_publication_id ON public.publication_galleys USING btree (publication_id);


--
-- Name: publication_galleys_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_galleys_submission_file_id ON public.publication_galleys USING btree (submission_file_id);


--
-- Name: publication_galleys_url_path; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_galleys_url_path ON public.publication_galleys USING btree (url_path);


--
-- Name: publication_settings_name_value; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publication_settings_name_value ON public.publication_settings USING btree (setting_name, setting_value) WHERE ((setting_name)::text = ANY ((ARRAY['indexingState'::character varying, 'medra::registeredDoi'::character varying, 'datacite::registeredDoi'::character varying, 'pub-id::publisher-id'::character varying])::text[]));


--
-- Name: publications_author_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publications_author_id ON public.publications USING btree (primary_contact_id);


--
-- Name: publications_doi_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publications_doi_id ON public.publications USING btree (doi_id);


--
-- Name: publications_section_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publications_section_id ON public.publications USING btree (section_id);


--
-- Name: publications_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publications_submission_id ON public.publications USING btree (submission_id);


--
-- Name: publications_url_path; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX publications_url_path ON public.publications USING btree (url_path);


--
-- Name: queries_assoc_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX queries_assoc_id ON public.queries USING btree (assoc_type, assoc_id);


--
-- Name: query_participants_query_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX query_participants_query_id ON public.query_participants USING btree (query_id);


--
-- Name: query_participants_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX query_participants_user_id ON public.query_participants USING btree (user_id);


--
-- Name: review_assignment_reviewer_round; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_assignment_reviewer_round ON public.review_assignments USING btree (review_round_id, reviewer_id);


--
-- Name: review_assignments_form_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_assignments_form_id ON public.review_assignments USING btree (review_form_id);


--
-- Name: review_assignments_reviewer_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_assignments_reviewer_id ON public.review_assignments USING btree (reviewer_id);


--
-- Name: review_assignments_reviewer_review; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_assignments_reviewer_review ON public.review_assignments USING btree (reviewer_id, review_id);


--
-- Name: review_assignments_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_assignments_submission_id ON public.review_assignments USING btree (submission_id);


--
-- Name: review_files_review_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_files_review_id ON public.review_files USING btree (review_id);


--
-- Name: review_files_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_files_submission_file_id ON public.review_files USING btree (submission_file_id);


--
-- Name: review_form_element_settings_review_form_element_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_form_element_settings_review_form_element_id ON public.review_form_element_settings USING btree (review_form_element_id);


--
-- Name: review_form_elements_review_form_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_form_elements_review_form_id ON public.review_form_elements USING btree (review_form_id);


--
-- Name: review_form_responses_pkey; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_form_responses_pkey ON public.review_form_responses USING btree (review_form_element_id, review_id);


--
-- Name: review_form_responses_review_form_element_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_form_responses_review_form_element_id ON public.review_form_responses USING btree (review_form_element_id);


--
-- Name: review_form_responses_review_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_form_responses_review_id ON public.review_form_responses USING btree (review_id);


--
-- Name: review_form_settings_review_form_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_form_settings_review_form_id ON public.review_form_settings USING btree (review_form_id);


--
-- Name: review_round_files_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_round_files_submission_file_id ON public.review_round_files USING btree (submission_file_id);


--
-- Name: review_round_files_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_round_files_submission_id ON public.review_round_files USING btree (submission_id);


--
-- Name: review_rounds_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX review_rounds_submission_id ON public.review_rounds USING btree (submission_id);


--
-- Name: section_settings_section_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX section_settings_section_id ON public.section_settings USING btree (section_id);


--
-- Name: sections_review_form_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX sections_review_form_id ON public.sections USING btree (review_form_id);


--
-- Name: sections_server_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX sections_server_id ON public.sections USING btree (server_id);


--
-- Name: server_settings_server_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX server_settings_server_id ON public.server_settings USING btree (server_id);


--
-- Name: sessions_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX sessions_user_id ON public.sessions USING btree (user_id);


--
-- Name: stage_assignments_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX stage_assignments_submission_id ON public.stage_assignments USING btree (submission_id);


--
-- Name: stage_assignments_user_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX stage_assignments_user_group_id ON public.stage_assignments USING btree (user_group_id);


--
-- Name: stage_assignments_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX stage_assignments_user_id ON public.stage_assignments USING btree (user_id);


--
-- Name: subeditor_submission_group_assoc_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX subeditor_submission_group_assoc_id ON public.subeditor_submission_group USING btree (assoc_id, assoc_type);


--
-- Name: subeditor_submission_group_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX subeditor_submission_group_context_id ON public.subeditor_submission_group USING btree (context_id);


--
-- Name: subeditor_submission_group_user_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX subeditor_submission_group_user_group_id ON public.subeditor_submission_group USING btree (user_group_id);


--
-- Name: subeditor_submission_group_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX subeditor_submission_group_user_id ON public.subeditor_submission_group USING btree (user_id);


--
-- Name: submission_comments_author_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_comments_author_id ON public.submission_comments USING btree (author_id);


--
-- Name: submission_comments_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_comments_submission_id ON public.submission_comments USING btree (submission_id);


--
-- Name: submission_file_revisions_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_file_revisions_file_id ON public.submission_file_revisions USING btree (file_id);


--
-- Name: submission_file_revisions_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_file_revisions_submission_file_id ON public.submission_file_revisions USING btree (submission_file_id);


--
-- Name: submission_file_settings_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_file_settings_submission_file_id ON public.submission_file_settings USING btree (submission_file_id);


--
-- Name: submission_files_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_files_file_id ON public.submission_files USING btree (file_id);


--
-- Name: submission_files_genre_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_files_genre_id ON public.submission_files USING btree (genre_id);


--
-- Name: submission_files_source_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_files_source_submission_file_id ON public.submission_files USING btree (source_submission_file_id);


--
-- Name: submission_files_stage_assoc; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_files_stage_assoc ON public.submission_files USING btree (file_stage, assoc_type, assoc_id);


--
-- Name: submission_files_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_files_submission_id ON public.submission_files USING btree (submission_id);


--
-- Name: submission_files_uploader_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_files_uploader_user_id ON public.submission_files USING btree (uploader_user_id);


--
-- Name: submission_search_object_keywords_keyword_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_search_object_keywords_keyword_id ON public.submission_search_object_keywords USING btree (keyword_id);


--
-- Name: submission_search_object_keywords_object_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_search_object_keywords_object_id ON public.submission_search_object_keywords USING btree (object_id);


--
-- Name: submission_search_objects_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_search_objects_submission_id ON public.submission_search_objects USING btree (submission_id);


--
-- Name: submission_settings_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submission_settings_submission_id ON public.submission_settings USING btree (submission_id);


--
-- Name: submissions_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX submissions_context_id ON public.submissions USING btree (context_id);


--
-- Name: temporary_files_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX temporary_files_user_id ON public.temporary_files USING btree (user_id);


--
-- Name: user_group_settings_user_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_group_settings_user_group_id ON public.user_group_settings USING btree (user_group_id);


--
-- Name: user_group_stage_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_group_stage_context_id ON public.user_group_stage USING btree (context_id);


--
-- Name: user_group_stage_stage_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_group_stage_stage_id ON public.user_group_stage USING btree (stage_id);


--
-- Name: user_group_stage_user_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_group_stage_user_group_id ON public.user_group_stage USING btree (user_group_id);


--
-- Name: user_groups_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_groups_context_id ON public.user_groups USING btree (context_id);


--
-- Name: user_groups_role_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_groups_role_id ON public.user_groups USING btree (role_id);


--
-- Name: user_groups_user_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_groups_user_group_id ON public.user_groups USING btree (user_group_id);


--
-- Name: user_interests_controlled_vocab_entry_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_interests_controlled_vocab_entry_id ON public.user_interests USING btree (controlled_vocab_entry_id);


--
-- Name: user_interests_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_interests_user_id ON public.user_interests USING btree (user_id);


--
-- Name: user_settings_locale_setting_name_index; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_settings_locale_setting_name_index ON public.user_settings USING btree (setting_name, locale);


--
-- Name: user_settings_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_settings_user_id ON public.user_settings USING btree (user_id);


--
-- Name: user_user_groups_user_group_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_user_groups_user_group_id ON public.user_user_groups USING btree (user_group_id);


--
-- Name: user_user_groups_user_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX user_user_groups_user_id ON public.user_user_groups USING btree (user_id);


--
-- Name: users_email; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE UNIQUE INDEX users_email ON public.users USING btree (lower((email)::text));


--
-- Name: users_username; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE UNIQUE INDEX users_username ON public.users USING btree (lower((username)::text));


--
-- Name: usi_institution_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usi_institution_id ON public.usage_stats_institution_temporary_records USING btree (institution_id);


--
-- Name: usii_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usii_context_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (context_id);


--
-- Name: usii_representation_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usii_representation_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (representation_id);


--
-- Name: usii_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usii_submission_file_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (submission_file_id);


--
-- Name: usii_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usii_submission_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (submission_id);


--
-- Name: usir_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usir_context_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (context_id);


--
-- Name: usir_representation_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usir_representation_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (representation_id);


--
-- Name: usir_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usir_submission_file_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (submission_file_id);


--
-- Name: usir_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX usir_submission_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (submission_id);


--
-- Name: ust_context_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX ust_context_id ON public.usage_stats_total_temporary_records USING btree (context_id);


--
-- Name: ust_representation_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX ust_representation_id ON public.usage_stats_total_temporary_records USING btree (representation_id);


--
-- Name: ust_submission_file_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX ust_submission_file_id ON public.usage_stats_total_temporary_records USING btree (submission_file_id);


--
-- Name: ust_submission_id; Type: INDEX; Schema: public; Owner: ops-ci
--

CREATE INDEX ust_submission_id ON public.usage_stats_total_temporary_records USING btree (submission_id);


--
-- Name: access_keys_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: announcement_settings_announcement_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcement_settings
    ADD CONSTRAINT announcement_settings_announcement_id_foreign FOREIGN KEY (announcement_id) REFERENCES public.announcements(announcement_id) ON DELETE CASCADE;


--
-- Name: announcement_type_settings_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcement_type_settings
    ADD CONSTRAINT announcement_type_settings_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.announcement_types(type_id) ON DELETE CASCADE;


--
-- Name: announcement_types_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcement_types
    ADD CONSTRAINT announcement_types_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: announcements_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.announcement_types(type_id) ON DELETE SET NULL;


--
-- Name: assignment_settings_navigation_menu_item_assignment_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignment_settings
    ADD CONSTRAINT assignment_settings_navigation_menu_item_assignment_id FOREIGN KEY (navigation_menu_item_assignment_id) REFERENCES public.navigation_menu_item_assignments(navigation_menu_item_assignment_id) ON DELETE CASCADE;


--
-- Name: author_settings_author_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.author_settings
    ADD CONSTRAINT author_settings_author_id FOREIGN KEY (author_id) REFERENCES public.authors(author_id) ON DELETE CASCADE;


--
-- Name: authors_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_publication_id FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: authors_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: c_v_e_s_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocab_entry_settings
    ADD CONSTRAINT c_v_e_s_entry_id FOREIGN KEY (controlled_vocab_entry_id) REFERENCES public.controlled_vocab_entries(controlled_vocab_entry_id) ON DELETE CASCADE;


--
-- Name: categories_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: categories_parent_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_foreign FOREIGN KEY (parent_id) REFERENCES public.categories(category_id) ON DELETE SET NULL;


--
-- Name: category_settings_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.category_settings
    ADD CONSTRAINT category_settings_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON DELETE CASCADE;


--
-- Name: citation_settings_citation_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.citation_settings
    ADD CONSTRAINT citation_settings_citation_id FOREIGN KEY (citation_id) REFERENCES public.citations(citation_id) ON DELETE CASCADE;


--
-- Name: citations_publication; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_publication FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: controlled_vocab_entries_controlled_vocab_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries
    ADD CONSTRAINT controlled_vocab_entries_controlled_vocab_id_foreign FOREIGN KEY (controlled_vocab_id) REFERENCES public.controlled_vocabs(controlled_vocab_id) ON DELETE CASCADE;


--
-- Name: data_object_tombstone_oai_set_objects_tombstone_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects
    ADD CONSTRAINT data_object_tombstone_oai_set_objects_tombstone_id FOREIGN KEY (tombstone_id) REFERENCES public.data_object_tombstones(tombstone_id) ON DELETE CASCADE;


--
-- Name: data_object_tombstone_settings_tombstone_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.data_object_tombstone_settings
    ADD CONSTRAINT data_object_tombstone_settings_tombstone_id FOREIGN KEY (tombstone_id) REFERENCES public.data_object_tombstones(tombstone_id) ON DELETE CASCADE;


--
-- Name: doi_settings_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.doi_settings
    ADD CONSTRAINT doi_settings_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE CASCADE;


--
-- Name: dois_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.dois
    ADD CONSTRAINT dois_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_editor_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_editor_id FOREIGN KEY (editor_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_review_round_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_review_round_id_foreign FOREIGN KEY (review_round_id) REFERENCES public.review_rounds(review_round_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: email_log_users_email_log_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_users_email_log_id_foreign FOREIGN KEY (email_log_id) REFERENCES public.email_log(log_id) ON DELETE CASCADE;


--
-- Name: email_log_users_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_users_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: email_templates_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: email_templates_settings_email_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.email_templates_settings
    ADD CONSTRAINT email_templates_settings_email_id FOREIGN KEY (email_id) REFERENCES public.email_templates(email_id) ON DELETE CASCADE;


--
-- Name: event_log_settings_log_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.event_log_settings
    ADD CONSTRAINT event_log_settings_log_id FOREIGN KEY (log_id) REFERENCES public.event_log(log_id) ON DELETE CASCADE;


--
-- Name: event_log_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.event_log
    ADD CONSTRAINT event_log_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: filter_settings_filter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filter_settings
    ADD CONSTRAINT filter_settings_filter_id_foreign FOREIGN KEY (filter_id) REFERENCES public.filters(filter_id) ON DELETE CASCADE;


--
-- Name: filters_filter_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_filter_group_id_foreign FOREIGN KEY (filter_group_id) REFERENCES public.filter_groups(filter_group_id) ON DELETE CASCADE;


--
-- Name: genre_settings_genre_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.genre_settings
    ADD CONSTRAINT genre_settings_genre_id_foreign FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) ON DELETE CASCADE;


--
-- Name: genres_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: institution_ip_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institution_ip
    ADD CONSTRAINT institution_ip_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: institution_settings_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institution_settings
    ADD CONSTRAINT institution_settings_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: institutions_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: item_views_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.item_views
    ADD CONSTRAINT item_views_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: library_file_settings_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.library_file_settings
    ADD CONSTRAINT library_file_settings_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.library_files(file_id) ON DELETE CASCADE;


--
-- Name: library_files_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_context_id FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: library_files_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: metrics_context_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_context
    ADD CONSTRAINT metrics_context_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msd_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: msd_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msgd_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: msgd_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msgm_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: msgm_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msid_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: msid_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: msid_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msim_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: msim_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: msim_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msm_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: msm_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_assignments_navigation_menu_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_navigation_menu_id_foreign FOREIGN KEY (navigation_menu_id) REFERENCES public.navigation_menus(navigation_menu_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_assignments_navigation_menu_item_id_foreig; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_navigation_menu_item_id_foreig FOREIGN KEY (navigation_menu_item_id) REFERENCES public.navigation_menu_items(navigation_menu_item_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_settings_navigation_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.navigation_menu_item_settings
    ADD CONSTRAINT navigation_menu_item_settings_navigation_menu_id FOREIGN KEY (navigation_menu_item_id) REFERENCES public.navigation_menu_items(navigation_menu_item_id) ON DELETE CASCADE;


--
-- Name: notes_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: notification_settings_notification_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_notification_id_foreign FOREIGN KEY (notification_id) REFERENCES public.notifications(notification_id) ON DELETE CASCADE;


--
-- Name: notification_subscription_settings_context_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_context_foreign FOREIGN KEY (context) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: notification_subscription_settings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: publication_categories_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON DELETE CASCADE;


--
-- Name: publication_categories_publication_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_publication_id_foreign FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publication_galley_settings_galley_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_galley_settings
    ADD CONSTRAINT publication_galley_settings_galley_id_foreign FOREIGN KEY (galley_id) REFERENCES public.publication_galleys(galley_id);


--
-- Name: publication_galleys_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: publication_galleys_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_publication_id FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publication_galleys_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE SET NULL;


--
-- Name: publication_settings_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publication_settings
    ADD CONSTRAINT publication_settings_publication_id FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publications_author_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_author_id FOREIGN KEY (primary_contact_id) REFERENCES public.authors(author_id) ON DELETE SET NULL;


--
-- Name: publications_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: publications_section_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_section_id_foreign FOREIGN KEY (section_id) REFERENCES public.sections(section_id) ON DELETE SET NULL;


--
-- Name: publications_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: query_participants_query_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_query_id_foreign FOREIGN KEY (query_id) REFERENCES public.queries(query_id) ON DELETE CASCADE;


--
-- Name: query_participants_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: review_assignments_review_form_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_review_form_id_foreign FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id);


--
-- Name: review_assignments_review_round_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_review_round_id_foreign FOREIGN KEY (review_round_id) REFERENCES public.review_rounds(review_round_id);


--
-- Name: review_assignments_reviewer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_reviewer_id_foreign FOREIGN KEY (reviewer_id) REFERENCES public.users(user_id);


--
-- Name: review_assignments_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id);


--
-- Name: review_files_review_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_review_id_foreign FOREIGN KEY (review_id) REFERENCES public.review_assignments(review_id) ON DELETE CASCADE;


--
-- Name: review_files_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: review_form_element_settings_review_form_element_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_element_settings
    ADD CONSTRAINT review_form_element_settings_review_form_element_id FOREIGN KEY (review_form_element_id) REFERENCES public.review_form_elements(review_form_element_id) ON DELETE CASCADE;


--
-- Name: review_form_elements_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_elements
    ADD CONSTRAINT review_form_elements_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE CASCADE;


--
-- Name: review_form_responses_review_form_element_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_responses
    ADD CONSTRAINT review_form_responses_review_form_element_id_foreign FOREIGN KEY (review_form_element_id) REFERENCES public.review_form_elements(review_form_element_id) ON DELETE CASCADE;


--
-- Name: review_form_responses_review_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_responses
    ADD CONSTRAINT review_form_responses_review_id_foreign FOREIGN KEY (review_id) REFERENCES public.review_assignments(review_id) ON DELETE CASCADE;


--
-- Name: review_form_settings_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_form_settings
    ADD CONSTRAINT review_form_settings_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE CASCADE;


--
-- Name: review_round_files_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: review_round_files_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: section_editors_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT section_editors_context_id FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: section_settings_section_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.section_settings
    ADD CONSTRAINT section_settings_section_id_foreign FOREIGN KEY (section_id) REFERENCES public.sections(section_id) ON DELETE CASCADE;


--
-- Name: sections_review_form_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_review_form_id_foreign FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE SET NULL;


--
-- Name: sections_server_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_server_id_foreign FOREIGN KEY (server_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: server_settings_server_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.server_settings
    ADD CONSTRAINT server_settings_server_id FOREIGN KEY (server_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: sessions_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_user_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_user_group_id FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: subeditor_submission_group_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT subeditor_submission_group_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: subeditor_submission_group_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT subeditor_submission_group_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: submission_comments_author_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_author_id_foreign FOREIGN KEY (author_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: submission_comments_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_file_revisions_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.files(file_id) ON DELETE CASCADE;


--
-- Name: submission_file_revisions_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_file_settings_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_file_settings
    ADD CONSTRAINT submission_file_settings_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_files_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.files(file_id) ON DELETE CASCADE;


--
-- Name: submission_files_genre_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_genre_id_foreign FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) ON DELETE SET NULL;


--
-- Name: submission_files_source_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_source_submission_file_id_foreign FOREIGN KEY (source_submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_files_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_files_uploader_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_uploader_user_id_foreign FOREIGN KEY (uploader_user_id) REFERENCES public.users(user_id) ON DELETE SET NULL;


--
-- Name: submission_search_object_keywords_keyword_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_keyword_id FOREIGN KEY (keyword_id) REFERENCES public.submission_search_keyword_list(keyword_id) ON DELETE CASCADE;


--
-- Name: submission_search_object_keywords_object_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_object_id_foreign FOREIGN KEY (object_id) REFERENCES public.submission_search_objects(object_id) ON DELETE CASCADE;


--
-- Name: submission_search_object_submission; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_search_objects
    ADD CONSTRAINT submission_search_object_submission FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_settings_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submission_settings
    ADD CONSTRAINT submission_settings_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submissions_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_context_id FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: submissions_current_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_current_publication_id FOREIGN KEY (current_publication_id) REFERENCES public.publications(publication_id) ON DELETE SET NULL;


--
-- Name: temporary_files_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.temporary_files
    ADD CONSTRAINT temporary_files_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_group_settings_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_group_settings
    ADD CONSTRAINT user_group_settings_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_group_stage_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_context_id FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: user_group_stage_user_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_user_group_id FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_interests_controlled_vocab_entry_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_controlled_vocab_entry_id_foreign FOREIGN KEY (controlled_vocab_entry_id) REFERENCES public.controlled_vocab_entries(controlled_vocab_entry_id) ON DELETE CASCADE;


--
-- Name: user_interests_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_settings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_user_groups_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_user_groups_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: usi_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_institution_temporary_records
    ADD CONSTRAINT usi_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: usii_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: usii_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: usii_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: usii_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: usir_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: usir_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: usir_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: usir_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: ust_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.servers(server_id) ON DELETE CASCADE;


--
-- Name: ust_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: ust_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: ust_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ops-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

