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
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_issue_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_issue_galley_id_foreign;
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
ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_user_id;
ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_type_id;
ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_journal_id;
ALTER TABLE ONLY public.subscription_types DROP CONSTRAINT subscription_types_journal_id;
ALTER TABLE ONLY public.subscription_type_settings DROP CONSTRAINT subscription_type_settings_type_id;
ALTER TABLE ONLY public.submissions DROP CONSTRAINT submissions_publication_id;
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
ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_review_form_id;
ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_journal_id;
ALTER TABLE ONLY public.section_settings DROP CONSTRAINT section_settings_section_id;
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
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_submission_id;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_section_id;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_doi_id_foreign;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_author_id;
ALTER TABLE ONLY public.publication_settings DROP CONSTRAINT publication_settings_publication_id;
ALTER TABLE ONLY public.publication_galleys DROP CONSTRAINT publication_galleys_submission_file_id_foreign;
ALTER TABLE ONLY public.publication_galleys DROP CONSTRAINT publication_galleys_publication_id;
ALTER TABLE ONLY public.publication_galleys DROP CONSTRAINT publication_galleys_doi_id_foreign;
ALTER TABLE ONLY public.publication_galley_settings DROP CONSTRAINT publication_galley_settings_galley_id;
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
ALTER TABLE ONLY public.metrics_issue DROP CONSTRAINT metrics_issue_issue_id_foreign;
ALTER TABLE ONLY public.metrics_issue DROP CONSTRAINT metrics_issue_issue_galley_id_foreign;
ALTER TABLE ONLY public.metrics_issue DROP CONSTRAINT metrics_issue_context_id_foreign;
ALTER TABLE ONLY public.metrics_context DROP CONSTRAINT metrics_context_context_id_foreign;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_submission_id_foreign;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_context_id;
ALTER TABLE ONLY public.library_file_settings DROP CONSTRAINT library_file_settings_file_id_foreign;
ALTER TABLE ONLY public.journals DROP CONSTRAINT journals_current_issue_id_foreign;
ALTER TABLE ONLY public.journal_settings DROP CONSTRAINT journal_settings_journal_id;
ALTER TABLE ONLY public.issues DROP CONSTRAINT issues_journal_id;
ALTER TABLE ONLY public.issues DROP CONSTRAINT issues_doi_id_foreign;
ALTER TABLE ONLY public.issue_settings DROP CONSTRAINT issue_settings_issue_id;
ALTER TABLE ONLY public.issue_galley_settings DROP CONSTRAINT issue_galleys_settings_galley_id;
ALTER TABLE ONLY public.issue_galleys DROP CONSTRAINT issue_galleys_issue_id;
ALTER TABLE ONLY public.issue_galleys DROP CONSTRAINT issue_galleys_file_id;
ALTER TABLE ONLY public.issue_files DROP CONSTRAINT issue_files_issue_id;
ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_context_id_foreign;
ALTER TABLE ONLY public.institutional_subscriptions DROP CONSTRAINT institutional_subscriptions_subscription_id;
ALTER TABLE ONLY public.institutional_subscriptions DROP CONSTRAINT institutional_subscriptions_institution_id_foreign;
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
ALTER TABLE ONLY public.custom_section_orders DROP CONSTRAINT custom_section_orders_section_id;
ALTER TABLE ONLY public.custom_section_orders DROP CONSTRAINT custom_section_orders_issue_id;
ALTER TABLE ONLY public.custom_issue_orders DROP CONSTRAINT custom_issue_orders_journal_id;
ALTER TABLE ONLY public.custom_issue_orders DROP CONSTRAINT custom_issue_orders_issue_id;
ALTER TABLE ONLY public.controlled_vocab_entries DROP CONSTRAINT controlled_vocab_entries_controlled_vocab_id_foreign;
ALTER TABLE ONLY public.completed_payments DROP CONSTRAINT completed_payments_user_id;
ALTER TABLE ONLY public.completed_payments DROP CONSTRAINT completed_payments_context_id;
ALTER TABLE ONLY public.citations DROP CONSTRAINT citations_publication;
ALTER TABLE ONLY public.citation_settings DROP CONSTRAINT citation_settings_citation_id;
ALTER TABLE ONLY public.category_settings DROP CONSTRAINT category_settings_category_id_foreign;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_parent_id_foreign;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_context_id_foreign;
ALTER TABLE ONLY public.controlled_vocab_entry_settings DROP CONSTRAINT c_v_e_s_entry_id;
ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_user_group_id_foreign;
ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_publication_id_foreign;
ALTER TABLE ONLY public.author_settings DROP CONSTRAINT author_settings_author_id;
ALTER TABLE ONLY public.navigation_menu_item_assignment_settings DROP CONSTRAINT assignment_settings_navigation_menu_item_assignment_id;
ALTER TABLE ONLY public.announcements DROP CONSTRAINT announcements_type_id_foreign;
ALTER TABLE ONLY public.announcement_types DROP CONSTRAINT announcement_types_context_id_foreign;
ALTER TABLE ONLY public.announcement_type_settings DROP CONSTRAINT announcement_type_settings_type_id_foreign;
ALTER TABLE ONLY public.announcement_settings DROP CONSTRAINT announcement_settings_announcement_id_foreign;
ALTER TABLE ONLY public.access_keys DROP CONSTRAINT access_keys_user_id_foreign;
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
DROP INDEX public.usage_stats_total_temporary_records_submission_id;
DROP INDEX public.usage_stats_total_temporary_records_submission_file_id;
DROP INDEX public.usage_stats_total_temporary_records_representation_id;
DROP INDEX public.usage_stats_total_temporary_records_issue_id;
DROP INDEX public.usage_stats_total_temporary_records_issue_galley_id;
DROP INDEX public.usage_stats_total_temporary_records_context_id;
DROP INDEX public.temporary_files_user_id;
DROP INDEX public.subscriptions_user_id;
DROP INDEX public.subscriptions_type_id;
DROP INDEX public.subscriptions_journal_id;
DROP INDEX public.subscription_types_journal_id;
DROP INDEX public.subscription_type_settings_type_id;
DROP INDEX public.submissions_publication_id;
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
DROP INDEX public.static_page_settings_static_page_id;
DROP INDEX public.stage_assignments_user_id;
DROP INDEX public.stage_assignments_user_group_id;
DROP INDEX public.stage_assignments_submission_id;
DROP INDEX public.sessions_user_id;
DROP INDEX public.sections_review_form_id;
DROP INDEX public.sections_journal_id;
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
DROP INDEX public.publications_user_id;
DROP INDEX public.publications_url_path;
DROP INDEX public.publications_submission_id;
DROP INDEX public.publications_section_id;
DROP INDEX public.publications_doi_id;
DROP INDEX public.publication_settings_publication_id;
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
DROP INDEX public.msim_context_id_submission_id;
DROP INDEX public.msid_load_id;
DROP INDEX public.msid_context_id_submission_id;
DROP INDEX public.msgm_context_id_submission_id;
DROP INDEX public.msgd_load_id;
DROP INDEX public.msgd_context_id_submission_id;
DROP INDEX public.msd_load_id;
DROP INDEX public.msd_context_id_submission_id;
DROP INDEX public.ms_load_id;
DROP INDEX public.ms_context_id_submission_id_assoc_type_file_type;
DROP INDEX public.metrics_submission_submission_id;
DROP INDEX public.metrics_submission_submission_file_id;
DROP INDEX public.metrics_submission_representation_id;
DROP INDEX public.metrics_submission_geo_monthly_submission_id;
DROP INDEX public.metrics_submission_geo_monthly_context_id;
DROP INDEX public.metrics_submission_geo_daily_submission_id;
DROP INDEX public.metrics_submission_geo_daily_context_id;
DROP INDEX public.metrics_submission_context_id;
DROP INDEX public.metrics_issue_load_id;
DROP INDEX public.metrics_issue_issue_id;
DROP INDEX public.metrics_issue_issue_galley_id;
DROP INDEX public.metrics_issue_context_id_issue_id;
DROP INDEX public.metrics_issue_context_id;
DROP INDEX public.metrics_counter_submission_monthly_submission_id;
DROP INDEX public.metrics_counter_submission_monthly_context_id;
DROP INDEX public.metrics_counter_submission_institution_monthly_submission_id;
DROP INDEX public.metrics_counter_submission_institution_monthly_institution_id;
DROP INDEX public.metrics_counter_submission_institution_monthly_context_id;
DROP INDEX public.metrics_counter_submission_institution_daily_submission_id;
DROP INDEX public.metrics_counter_submission_institution_daily_institution_id;
DROP INDEX public.metrics_counter_submission_institution_daily_context_id;
DROP INDEX public.metrics_counter_submission_daily_submission_id;
DROP INDEX public.metrics_counter_submission_daily_context_id;
DROP INDEX public.metrics_context_load_id;
DROP INDEX public.metrics_context_context_id;
DROP INDEX public.library_files_submission_id;
DROP INDEX public.library_files_context_id;
DROP INDEX public.library_file_settings_file_id;
DROP INDEX public.journals_issue_id;
DROP INDEX public.journal_settings_journal_id;
DROP INDEX public.jobs_queue_reserved_at_index;
DROP INDEX public.issues_url_path;
DROP INDEX public.issues_journal_id;
DROP INDEX public.issues_doi_id;
DROP INDEX public.issue_settings_name_value;
DROP INDEX public.issue_settings_issue_id;
DROP INDEX public.issue_galleys_url_path;
DROP INDEX public.issue_galleys_issue_id;
DROP INDEX public.issue_galleys_file_id;
DROP INDEX public.issue_galley_settings_galley_id;
DROP INDEX public.issue_files_issue_id;
DROP INDEX public.institutions_context_id;
DROP INDEX public.institutional_subscriptions_subscription_id;
DROP INDEX public.institutional_subscriptions_institution_id;
DROP INDEX public.institutional_subscriptions_domain;
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
DROP INDEX public.custom_section_orders_section_id;
DROP INDEX public.custom_section_orders_issue_id;
DROP INDEX public.custom_issue_orders_journal_id;
DROP INDEX public.custom_issue_orders_issue_id;
DROP INDEX public.controlled_vocab_entries_cv_id;
DROP INDEX public.controlled_vocab_entries_controlled_vocab_id;
DROP INDEX public.completed_payments_user_id;
DROP INDEX public.completed_payments_context_id;
DROP INDEX public.citations_publication;
DROP INDEX public.citation_settings_citation_id;
DROP INDEX public.category_settings_category_id;
DROP INDEX public.category_parent_id;
DROP INDEX public.category_context_parent_id;
DROP INDEX public.category_context_id;
DROP INDEX public.c_v_e_s_entry_id;
DROP INDEX public.authors_user_group_id;
DROP INDEX public.authors_publication_id;
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
ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
ALTER TABLE ONLY public.subscription_types DROP CONSTRAINT subscription_types_pkey;
ALTER TABLE ONLY public.subscription_type_settings DROP CONSTRAINT subscription_type_settings_pkey;
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
ALTER TABLE ONLY public.static_pages DROP CONSTRAINT static_pages_pkey;
ALTER TABLE ONLY public.static_page_settings DROP CONSTRAINT static_page_settings_pkey;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_pkey;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignment;
ALTER TABLE ONLY public.site_settings DROP CONSTRAINT site_settings_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
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
ALTER TABLE ONLY public.queued_payments DROP CONSTRAINT queued_payments_pkey;
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
ALTER TABLE ONLY public.journals DROP CONSTRAINT journals_pkey;
ALTER TABLE ONLY public.journals DROP CONSTRAINT journals_path;
ALTER TABLE ONLY public.journal_settings DROP CONSTRAINT journal_settings_pkey;
ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
ALTER TABLE ONLY public.issues DROP CONSTRAINT issues_pkey;
ALTER TABLE ONLY public.issue_settings DROP CONSTRAINT issue_settings_pkey;
ALTER TABLE ONLY public.issue_galleys DROP CONSTRAINT issue_galleys_pkey;
ALTER TABLE ONLY public.issue_galley_settings DROP CONSTRAINT issue_galley_settings_pkey;
ALTER TABLE ONLY public.issue_files DROP CONSTRAINT issue_files_pkey;
ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_pkey;
ALTER TABLE ONLY public.institutional_subscriptions DROP CONSTRAINT institutional_subscriptions_pkey;
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
ALTER TABLE ONLY public.custom_section_orders DROP CONSTRAINT custom_section_orders_pkey;
ALTER TABLE ONLY public.custom_issue_orders DROP CONSTRAINT custom_issue_orders_pkey;
ALTER TABLE ONLY public.controlled_vocabs DROP CONSTRAINT controlled_vocabs_pkey;
ALTER TABLE ONLY public.controlled_vocabs DROP CONSTRAINT controlled_vocab_symbolic;
ALTER TABLE ONLY public.controlled_vocab_entries DROP CONSTRAINT controlled_vocab_entries_pkey;
ALTER TABLE ONLY public.completed_payments DROP CONSTRAINT completed_payments_pkey;
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
ALTER TABLE public.subscriptions ALTER COLUMN subscription_id DROP DEFAULT;
ALTER TABLE public.subscription_types ALTER COLUMN type_id DROP DEFAULT;
ALTER TABLE public.submissions ALTER COLUMN submission_id DROP DEFAULT;
ALTER TABLE public.submission_search_objects ALTER COLUMN object_id DROP DEFAULT;
ALTER TABLE public.submission_search_keyword_list ALTER COLUMN keyword_id DROP DEFAULT;
ALTER TABLE public.submission_files ALTER COLUMN submission_file_id DROP DEFAULT;
ALTER TABLE public.submission_file_revisions ALTER COLUMN revision_id DROP DEFAULT;
ALTER TABLE public.submission_comments ALTER COLUMN comment_id DROP DEFAULT;
ALTER TABLE public.static_pages ALTER COLUMN static_page_id DROP DEFAULT;
ALTER TABLE public.stage_assignments ALTER COLUMN stage_assignment_id DROP DEFAULT;
ALTER TABLE public.sections ALTER COLUMN section_id DROP DEFAULT;
ALTER TABLE public.review_rounds ALTER COLUMN review_round_id DROP DEFAULT;
ALTER TABLE public.review_forms ALTER COLUMN review_form_id DROP DEFAULT;
ALTER TABLE public.review_form_elements ALTER COLUMN review_form_element_id DROP DEFAULT;
ALTER TABLE public.review_assignments ALTER COLUMN review_id DROP DEFAULT;
ALTER TABLE public.queued_payments ALTER COLUMN queued_payment_id DROP DEFAULT;
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
ALTER TABLE public.journals ALTER COLUMN journal_id DROP DEFAULT;
ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.issues ALTER COLUMN issue_id DROP DEFAULT;
ALTER TABLE public.issue_galleys ALTER COLUMN galley_id DROP DEFAULT;
ALTER TABLE public.issue_files ALTER COLUMN file_id DROP DEFAULT;
ALTER TABLE public.institutions ALTER COLUMN institution_id DROP DEFAULT;
ALTER TABLE public.institutional_subscriptions ALTER COLUMN institutional_subscription_id DROP DEFAULT;
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
ALTER TABLE public.completed_payments ALTER COLUMN completed_payment_id DROP DEFAULT;
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
DROP SEQUENCE public.subscriptions_subscription_id_seq;
DROP TABLE public.subscriptions;
DROP SEQUENCE public.subscription_types_type_id_seq;
DROP TABLE public.subscription_types;
DROP TABLE public.subscription_type_settings;
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
DROP SEQUENCE public.static_pages_static_page_id_seq;
DROP TABLE public.static_pages;
DROP TABLE public.static_page_settings;
DROP SEQUENCE public.stage_assignments_stage_assignment_id_seq;
DROP TABLE public.stage_assignments;
DROP TABLE public.site_settings;
DROP TABLE public.site;
DROP TABLE public.sessions;
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
DROP SEQUENCE public.queued_payments_queued_payment_id_seq;
DROP TABLE public.queued_payments;
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
DROP TABLE public.metrics_issue;
DROP TABLE public.metrics_counter_submission_monthly;
DROP TABLE public.metrics_counter_submission_institution_monthly;
DROP TABLE public.metrics_counter_submission_institution_daily;
DROP TABLE public.metrics_counter_submission_daily;
DROP TABLE public.metrics_context;
DROP SEQUENCE public.library_files_file_id_seq;
DROP TABLE public.library_files;
DROP TABLE public.library_file_settings;
DROP SEQUENCE public.journals_journal_id_seq;
DROP TABLE public.journals;
DROP TABLE public.journal_settings;
DROP SEQUENCE public.jobs_id_seq;
DROP TABLE public.jobs;
DROP TABLE public.job_batches;
DROP SEQUENCE public.issues_issue_id_seq;
DROP TABLE public.issues;
DROP TABLE public.issue_settings;
DROP SEQUENCE public.issue_galleys_galley_id_seq;
DROP TABLE public.issue_galleys;
DROP TABLE public.issue_galley_settings;
DROP SEQUENCE public.issue_files_file_id_seq;
DROP TABLE public.issue_files;
DROP SEQUENCE public.institutions_institution_id_seq;
DROP TABLE public.institutions;
DROP SEQUENCE public.institutional_subscriptions_institutional_subscription_id_seq;
DROP TABLE public.institutional_subscriptions;
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
DROP TABLE public.custom_section_orders;
DROP TABLE public.custom_issue_orders;
DROP SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq;
DROP TABLE public.controlled_vocabs;
DROP TABLE public.controlled_vocab_entry_settings;
DROP SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq;
DROP TABLE public.controlled_vocab_entries;
DROP SEQUENCE public.completed_payments_completed_payment_id_seq;
DROP TABLE public.completed_payments;
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
-- Name: access_keys; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.access_keys (
    access_key_id bigint NOT NULL,
    context character varying(40) NOT NULL,
    key_hash character varying(40) NOT NULL,
    user_id bigint NOT NULL,
    assoc_id bigint,
    expiry_date timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.access_keys OWNER TO "ojs-ci";

--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.access_keys_access_key_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.access_keys_access_key_id_seq OWNER TO "ojs-ci";

--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.access_keys_access_key_id_seq OWNED BY public.access_keys.access_key_id;


--
-- Name: announcement_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.announcement_settings (
    announcement_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6)
);


ALTER TABLE public.announcement_settings OWNER TO "ojs-ci";

--
-- Name: announcement_type_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.announcement_type_settings (
    type_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.announcement_type_settings OWNER TO "ojs-ci";

--
-- Name: announcement_types; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.announcement_types (
    type_id bigint NOT NULL,
    context_id bigint NOT NULL
);


ALTER TABLE public.announcement_types OWNER TO "ojs-ci";

--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.announcement_types_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcement_types_type_id_seq OWNER TO "ojs-ci";

--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.announcement_types_type_id_seq OWNED BY public.announcement_types.type_id;


--
-- Name: announcements; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.announcements (
    announcement_id bigint NOT NULL,
    assoc_type smallint,
    assoc_id bigint NOT NULL,
    type_id bigint,
    date_expire date,
    date_posted timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.announcements OWNER TO "ojs-ci";

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.announcements_announcement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_announcement_id_seq OWNER TO "ojs-ci";

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.announcements_announcement_id_seq OWNED BY public.announcements.announcement_id;


--
-- Name: author_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.author_settings (
    author_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.author_settings OWNER TO "ojs-ci";

--
-- Name: authors; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.authors (
    author_id bigint NOT NULL,
    email character varying(90) NOT NULL,
    include_in_browse smallint DEFAULT '1'::smallint NOT NULL,
    publication_id bigint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    user_group_id bigint
);


ALTER TABLE public.authors OWNER TO "ojs-ci";

--
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.authors_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_author_id_seq OWNER TO "ojs-ci";

--
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.author_id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.categories (
    category_id bigint NOT NULL,
    context_id bigint NOT NULL,
    parent_id bigint,
    seq bigint,
    path character varying(255) NOT NULL,
    image text
);


ALTER TABLE public.categories OWNER TO "ojs-ci";

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_id_seq OWNER TO "ojs-ci";

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- Name: category_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.category_settings (
    category_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.category_settings OWNER TO "ojs-ci";

--
-- Name: citation_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.citation_settings (
    citation_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.citation_settings OWNER TO "ojs-ci";

--
-- Name: citations; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.citations (
    citation_id bigint NOT NULL,
    publication_id bigint NOT NULL,
    raw_citation text NOT NULL,
    seq bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE public.citations OWNER TO "ojs-ci";

--
-- Name: citations_citation_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.citations_citation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.citations_citation_id_seq OWNER TO "ojs-ci";

--
-- Name: citations_citation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.citations_citation_id_seq OWNED BY public.citations.citation_id;


--
-- Name: completed_payments; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.completed_payments (
    completed_payment_id bigint NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    payment_type bigint NOT NULL,
    context_id bigint NOT NULL,
    user_id bigint,
    assoc_id bigint,
    amount double precision NOT NULL,
    currency_code_alpha character varying(3),
    payment_method_plugin_name character varying(80)
);


ALTER TABLE public.completed_payments OWNER TO "ojs-ci";

--
-- Name: completed_payments_completed_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.completed_payments_completed_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.completed_payments_completed_payment_id_seq OWNER TO "ojs-ci";

--
-- Name: completed_payments_completed_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.completed_payments_completed_payment_id_seq OWNED BY public.completed_payments.completed_payment_id;


--
-- Name: controlled_vocab_entries; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.controlled_vocab_entries (
    controlled_vocab_entry_id bigint NOT NULL,
    controlled_vocab_id bigint NOT NULL,
    seq double precision
);


ALTER TABLE public.controlled_vocab_entries OWNER TO "ojs-ci";

--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controlled_vocab_entries_controlled_vocab_entry_id_seq OWNER TO "ojs-ci";

--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq OWNED BY public.controlled_vocab_entries.controlled_vocab_entry_id;


--
-- Name: controlled_vocab_entry_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.controlled_vocab_entry_settings (
    controlled_vocab_entry_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.controlled_vocab_entry_settings OWNER TO "ojs-ci";

--
-- Name: controlled_vocabs; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.controlled_vocabs (
    controlled_vocab_id bigint NOT NULL,
    symbolic character varying(64) NOT NULL,
    assoc_type bigint DEFAULT '0'::bigint NOT NULL,
    assoc_id bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE public.controlled_vocabs OWNER TO "ojs-ci";

--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controlled_vocabs_controlled_vocab_id_seq OWNER TO "ojs-ci";

--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq OWNED BY public.controlled_vocabs.controlled_vocab_id;


--
-- Name: custom_issue_orders; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.custom_issue_orders (
    issue_id bigint NOT NULL,
    journal_id bigint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL
);


ALTER TABLE public.custom_issue_orders OWNER TO "ojs-ci";

--
-- Name: custom_section_orders; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.custom_section_orders (
    issue_id bigint NOT NULL,
    section_id bigint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL
);


ALTER TABLE public.custom_section_orders OWNER TO "ojs-ci";

--
-- Name: data_object_tombstone_oai_set_objects; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.data_object_tombstone_oai_set_objects (
    object_id bigint NOT NULL,
    tombstone_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL
);


ALTER TABLE public.data_object_tombstone_oai_set_objects OWNER TO "ojs-ci";

--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.data_object_tombstone_oai_set_objects_object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_object_tombstone_oai_set_objects_object_id_seq OWNER TO "ojs-ci";

--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.data_object_tombstone_oai_set_objects_object_id_seq OWNED BY public.data_object_tombstone_oai_set_objects.object_id;


--
-- Name: data_object_tombstone_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.data_object_tombstone_settings (
    tombstone_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.data_object_tombstone_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN data_object_tombstone_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.data_object_tombstone_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: data_object_tombstones; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.data_object_tombstones (
    tombstone_id bigint NOT NULL,
    data_object_id bigint NOT NULL,
    date_deleted timestamp(0) without time zone NOT NULL,
    set_spec character varying(255) NOT NULL,
    set_name character varying(255) NOT NULL,
    oai_identifier character varying(255) NOT NULL
);


ALTER TABLE public.data_object_tombstones OWNER TO "ojs-ci";

--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.data_object_tombstones_tombstone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_object_tombstones_tombstone_id_seq OWNER TO "ojs-ci";

--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.data_object_tombstones_tombstone_id_seq OWNED BY public.data_object_tombstones.tombstone_id;


--
-- Name: doi_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.doi_settings (
    doi_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.doi_settings OWNER TO "ojs-ci";

--
-- Name: dois; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.dois (
    doi_id bigint NOT NULL,
    context_id bigint NOT NULL,
    doi character varying(255) NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL
);


ALTER TABLE public.dois OWNER TO "ojs-ci";

--
-- Name: dois_doi_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.dois_doi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dois_doi_id_seq OWNER TO "ojs-ci";

--
-- Name: dois_doi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.dois_doi_id_seq OWNED BY public.dois.doi_id;


--
-- Name: edit_decisions; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.edit_decisions OWNER TO "ojs-ci";

--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.edit_decisions_edit_decision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.edit_decisions_edit_decision_id_seq OWNER TO "ojs-ci";

--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.edit_decisions_edit_decision_id_seq OWNED BY public.edit_decisions.edit_decision_id;


--
-- Name: email_log; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.email_log OWNER TO "ojs-ci";

--
-- Name: email_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.email_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_log_log_id_seq OWNER TO "ojs-ci";

--
-- Name: email_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.email_log_log_id_seq OWNED BY public.email_log.log_id;


--
-- Name: email_log_users; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.email_log_users (
    email_log_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.email_log_users OWNER TO "ojs-ci";

--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.email_templates (
    email_id bigint NOT NULL,
    email_key character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    alternate_to character varying(255)
);


ALTER TABLE public.email_templates OWNER TO "ojs-ci";

--
-- Name: COLUMN email_templates.email_key; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.email_templates.email_key IS 'Unique identifier for this email.';


--
-- Name: email_templates_default_data; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.email_templates_default_data (
    email_key character varying(255) NOT NULL,
    locale character varying(14) DEFAULT 'en'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    body text
);


ALTER TABLE public.email_templates_default_data OWNER TO "ojs-ci";

--
-- Name: COLUMN email_templates_default_data.email_key; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.email_templates_default_data.email_key IS 'Unique identifier for this email.';


--
-- Name: email_templates_email_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.email_templates_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_templates_email_id_seq OWNER TO "ojs-ci";

--
-- Name: email_templates_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.email_templates_email_id_seq OWNED BY public.email_templates.email_id;


--
-- Name: email_templates_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.email_templates_settings (
    email_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.email_templates_settings OWNER TO "ojs-ci";

--
-- Name: event_log; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.event_log OWNER TO "ojs-ci";

--
-- Name: event_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.event_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_log_log_id_seq OWNER TO "ojs-ci";

--
-- Name: event_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.event_log_log_id_seq OWNED BY public.event_log.log_id;


--
-- Name: event_log_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.event_log_settings (
    log_id bigint NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.event_log_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN event_log_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.event_log_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO "ojs-ci";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO "ojs-ci";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.files (
    file_id bigint NOT NULL,
    path character varying(255) NOT NULL,
    mimetype character varying(255) NOT NULL
);


ALTER TABLE public.files OWNER TO "ojs-ci";

--
-- Name: files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_file_id_seq OWNER TO "ojs-ci";

--
-- Name: files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.files_file_id_seq OWNED BY public.files.file_id;


--
-- Name: filter_groups; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.filter_groups (
    filter_group_id bigint NOT NULL,
    symbolic character varying(255),
    display_name character varying(255),
    description character varying(255),
    input_type character varying(255),
    output_type character varying(255)
);


ALTER TABLE public.filter_groups OWNER TO "ojs-ci";

--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.filter_groups_filter_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filter_groups_filter_group_id_seq OWNER TO "ojs-ci";

--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.filter_groups_filter_group_id_seq OWNED BY public.filter_groups.filter_group_id;


--
-- Name: filter_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.filter_settings (
    filter_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.filter_settings OWNER TO "ojs-ci";

--
-- Name: filters; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.filters OWNER TO "ojs-ci";

--
-- Name: filters_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.filters_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filters_filter_id_seq OWNER TO "ojs-ci";

--
-- Name: filters_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.filters_filter_id_seq OWNED BY public.filters.filter_id;


--
-- Name: genre_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.genre_settings (
    genre_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.genre_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN genre_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.genre_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: genres; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.genres (
    genre_id bigint NOT NULL,
    context_id bigint NOT NULL,
    seq bigint NOT NULL,
    enabled smallint DEFAULT '1'::smallint NOT NULL,
    category bigint DEFAULT '1'::bigint NOT NULL,
    dependent smallint DEFAULT '0'::smallint NOT NULL,
    supplementary smallint DEFAULT '0'::smallint NOT NULL,
    required smallint DEFAULT '0'::smallint NOT NULL,
    entry_key character varying(30)
);


ALTER TABLE public.genres OWNER TO "ojs-ci";

--
-- Name: COLUMN genres.required; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.genres.required IS 'Whether or not at least one file of this genre is required for a new submission.';


--
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.genres_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_genre_id_seq OWNER TO "ojs-ci";

--
-- Name: genres_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.genres_genre_id_seq OWNED BY public.genres.genre_id;


--
-- Name: institution_ip; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.institution_ip (
    institution_ip_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    ip_string character varying(40) NOT NULL,
    ip_start bigint NOT NULL,
    ip_end bigint
);


ALTER TABLE public.institution_ip OWNER TO "ojs-ci";

--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.institution_ip_institution_ip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institution_ip_institution_ip_id_seq OWNER TO "ojs-ci";

--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.institution_ip_institution_ip_id_seq OWNED BY public.institution_ip.institution_ip_id;


--
-- Name: institution_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.institution_settings (
    institution_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.institution_settings OWNER TO "ojs-ci";

--
-- Name: institutional_subscriptions; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.institutional_subscriptions (
    institutional_subscription_id bigint NOT NULL,
    subscription_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    mailing_address character varying(255),
    domain character varying(255)
);


ALTER TABLE public.institutional_subscriptions OWNER TO "ojs-ci";

--
-- Name: institutional_subscriptions_institutional_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.institutional_subscriptions_institutional_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutional_subscriptions_institutional_subscription_id_seq OWNER TO "ojs-ci";

--
-- Name: institutional_subscriptions_institutional_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.institutional_subscriptions_institutional_subscription_id_seq OWNED BY public.institutional_subscriptions.institutional_subscription_id;


--
-- Name: institutions; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.institutions (
    institution_id bigint NOT NULL,
    context_id bigint NOT NULL,
    ror character varying(255),
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.institutions OWNER TO "ojs-ci";

--
-- Name: institutions_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.institutions_institution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_institution_id_seq OWNER TO "ojs-ci";

--
-- Name: institutions_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.institutions_institution_id_seq OWNED BY public.institutions.institution_id;


--
-- Name: issue_files; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.issue_files (
    file_id bigint NOT NULL,
    issue_id bigint NOT NULL,
    file_name character varying(90) NOT NULL,
    file_type character varying(255) NOT NULL,
    file_size bigint NOT NULL,
    content_type bigint NOT NULL,
    original_file_name character varying(127),
    date_uploaded timestamp(0) without time zone NOT NULL,
    date_modified timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.issue_files OWNER TO "ojs-ci";

--
-- Name: issue_files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.issue_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issue_files_file_id_seq OWNER TO "ojs-ci";

--
-- Name: issue_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.issue_files_file_id_seq OWNED BY public.issue_files.file_id;


--
-- Name: issue_galley_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.issue_galley_settings (
    galley_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.issue_galley_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN issue_galley_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.issue_galley_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: issue_galleys; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.issue_galleys (
    galley_id bigint NOT NULL,
    locale character varying(14),
    issue_id bigint NOT NULL,
    file_id bigint NOT NULL,
    label character varying(255),
    seq double precision DEFAULT '0'::double precision NOT NULL,
    url_path character varying(64)
);


ALTER TABLE public.issue_galleys OWNER TO "ojs-ci";

--
-- Name: issue_galleys_galley_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.issue_galleys_galley_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issue_galleys_galley_id_seq OWNER TO "ojs-ci";

--
-- Name: issue_galleys_galley_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.issue_galleys_galley_id_seq OWNED BY public.issue_galleys.galley_id;


--
-- Name: issue_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.issue_settings (
    issue_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6)
);


ALTER TABLE public.issue_settings OWNER TO "ojs-ci";

--
-- Name: issues; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.issues (
    issue_id bigint NOT NULL,
    journal_id bigint NOT NULL,
    volume smallint,
    number character varying(40),
    year smallint,
    published smallint DEFAULT '0'::smallint NOT NULL,
    date_published timestamp(0) without time zone,
    date_notified timestamp(0) without time zone,
    last_modified timestamp(0) without time zone,
    access_status smallint DEFAULT '1'::smallint NOT NULL,
    open_access_date timestamp(0) without time zone,
    show_volume smallint DEFAULT '0'::smallint NOT NULL,
    show_number smallint DEFAULT '0'::smallint NOT NULL,
    show_year smallint DEFAULT '0'::smallint NOT NULL,
    show_title smallint DEFAULT '0'::smallint NOT NULL,
    style_file_name character varying(90),
    original_style_file_name character varying(255),
    url_path character varying(64),
    doi_id bigint
);


ALTER TABLE public.issues OWNER TO "ojs-ci";

--
-- Name: issues_issue_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.issues_issue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issues_issue_id_seq OWNER TO "ojs-ci";

--
-- Name: issues_issue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.issues_issue_id_seq OWNED BY public.issues.issue_id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.job_batches OWNER TO "ojs-ci";

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.jobs OWNER TO "ojs-ci";

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO "ojs-ci";

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: journal_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.journal_settings (
    journal_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6)
);


ALTER TABLE public.journal_settings OWNER TO "ojs-ci";

--
-- Name: journals; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.journals (
    journal_id bigint NOT NULL,
    path character varying(32) NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    primary_locale character varying(14) NOT NULL,
    enabled smallint DEFAULT '1'::smallint NOT NULL,
    current_issue_id bigint
);


ALTER TABLE public.journals OWNER TO "ojs-ci";

--
-- Name: COLUMN journals.seq; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.journals.seq IS 'Used to order lists of journals';


--
-- Name: COLUMN journals.enabled; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.journals.enabled IS 'Controls whether or not the journal is considered "live" and will appear on the website. (Note that disabled journals may still be accessible, but only if the user knows the URL.)';


--
-- Name: journals_journal_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.journals_journal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.journals_journal_id_seq OWNER TO "ojs-ci";

--
-- Name: journals_journal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.journals_journal_id_seq OWNED BY public.journals.journal_id;


--
-- Name: library_file_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.library_file_settings (
    file_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.library_file_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN library_file_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.library_file_settings.setting_type IS '(bool|int|float|string|object|date)';


--
-- Name: library_files; Type: TABLE; Schema: public; Owner: ojs-ci
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
    submission_id bigint,
    public_access smallint DEFAULT '0'::smallint
);


ALTER TABLE public.library_files OWNER TO "ojs-ci";

--
-- Name: library_files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.library_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_files_file_id_seq OWNER TO "ojs-ci";

--
-- Name: library_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.library_files_file_id_seq OWNED BY public.library_files.file_id;


--
-- Name: metrics_context; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.metrics_context (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    date date NOT NULL,
    metric integer NOT NULL
);


ALTER TABLE public.metrics_context OWNER TO "ojs-ci";

--
-- Name: metrics_counter_submission_daily; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.metrics_counter_submission_daily OWNER TO "ojs-ci";

--
-- Name: metrics_counter_submission_institution_daily; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.metrics_counter_submission_institution_daily OWNER TO "ojs-ci";

--
-- Name: metrics_counter_submission_institution_monthly; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.metrics_counter_submission_institution_monthly OWNER TO "ojs-ci";

--
-- Name: metrics_counter_submission_monthly; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.metrics_counter_submission_monthly OWNER TO "ojs-ci";

--
-- Name: metrics_issue; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.metrics_issue (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    issue_id bigint NOT NULL,
    issue_galley_id bigint,
    date date NOT NULL,
    metric integer NOT NULL
);


ALTER TABLE public.metrics_issue OWNER TO "ojs-ci";

--
-- Name: metrics_submission; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.metrics_submission OWNER TO "ojs-ci";

--
-- Name: metrics_submission_geo_daily; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.metrics_submission_geo_daily OWNER TO "ojs-ci";

--
-- Name: metrics_submission_geo_monthly; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.metrics_submission_geo_monthly OWNER TO "ojs-ci";

--
-- Name: navigation_menu_item_assignments; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.navigation_menu_item_assignments (
    navigation_menu_item_assignment_id bigint NOT NULL,
    navigation_menu_id bigint NOT NULL,
    navigation_menu_item_id bigint NOT NULL,
    parent_id bigint,
    seq bigint DEFAULT '0'::bigint
);


ALTER TABLE public.navigation_menu_item_assignments OWNER TO "ojs-ci";

--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq OWNER TO "ojs-ci";

--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq OWNED BY public.navigation_menu_item_assignments.navigation_menu_item_assignment_id;


--
-- Name: navigation_menu_item_assignment_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.navigation_menu_item_assignment_settings (
    navigation_menu_item_assignment_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.navigation_menu_item_assignment_settings OWNER TO "ojs-ci";

--
-- Name: navigation_menu_item_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.navigation_menu_item_settings (
    navigation_menu_item_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.navigation_menu_item_settings OWNER TO "ojs-ci";

--
-- Name: navigation_menu_items; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.navigation_menu_items (
    navigation_menu_item_id bigint NOT NULL,
    context_id bigint NOT NULL,
    path character varying(255) DEFAULT ''::character varying,
    type character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.navigation_menu_items OWNER TO "ojs-ci";

--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.navigation_menu_items_navigation_menu_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menu_items_navigation_menu_item_id_seq OWNER TO "ojs-ci";

--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.navigation_menu_items_navigation_menu_item_id_seq OWNED BY public.navigation_menu_items.navigation_menu_item_id;


--
-- Name: navigation_menus; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.navigation_menus (
    navigation_menu_id bigint NOT NULL,
    context_id bigint NOT NULL,
    area_name character varying(255) DEFAULT ''::character varying,
    title character varying(255) NOT NULL
);


ALTER TABLE public.navigation_menus OWNER TO "ojs-ci";

--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.navigation_menus_navigation_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menus_navigation_menu_id_seq OWNER TO "ojs-ci";

--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.navigation_menus_navigation_menu_id_seq OWNED BY public.navigation_menus.navigation_menu_id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.notes OWNER TO "ojs-ci";

--
-- Name: notes_note_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.notes_note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_note_id_seq OWNER TO "ojs-ci";

--
-- Name: notes_note_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.notes_note_id_seq OWNED BY public.notes.note_id;


--
-- Name: notification_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.notification_settings (
    notification_id bigint NOT NULL,
    locale character varying(14),
    setting_name character varying(64) NOT NULL,
    setting_value text NOT NULL,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.notification_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN notification_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.notification_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: notification_subscription_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.notification_subscription_settings (
    setting_id bigint NOT NULL,
    setting_name character varying(64) NOT NULL,
    setting_value text NOT NULL,
    user_id bigint NOT NULL,
    context bigint NOT NULL,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.notification_subscription_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN notification_subscription_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.notification_subscription_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.notification_subscription_settings_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_subscription_settings_setting_id_seq OWNER TO "ojs-ci";

--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.notification_subscription_settings_setting_id_seq OWNED BY public.notification_subscription_settings.setting_id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.notifications OWNER TO "ojs-ci";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.notifications_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_notification_id_seq OWNER TO "ojs-ci";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.notifications_notification_id_seq OWNED BY public.notifications.notification_id;


--
-- Name: oai_resumption_tokens; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.oai_resumption_tokens (
    token character varying(32) NOT NULL,
    expire bigint NOT NULL,
    record_offset integer NOT NULL,
    params text
);


ALTER TABLE public.oai_resumption_tokens OWNER TO "ojs-ci";

--
-- Name: plugin_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.plugin_settings (
    plugin_name character varying(80) NOT NULL,
    context_id bigint NOT NULL,
    setting_name character varying(80) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.plugin_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN plugin_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.plugin_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: publication_categories; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.publication_categories (
    publication_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.publication_categories OWNER TO "ojs-ci";

--
-- Name: publication_galley_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.publication_galley_settings (
    galley_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.publication_galley_settings OWNER TO "ojs-ci";

--
-- Name: publication_galleys; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.publication_galleys OWNER TO "ojs-ci";

--
-- Name: publication_galleys_galley_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.publication_galleys_galley_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publication_galleys_galley_id_seq OWNER TO "ojs-ci";

--
-- Name: publication_galleys_galley_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.publication_galleys_galley_id_seq OWNED BY public.publication_galleys.galley_id;


--
-- Name: publication_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.publication_settings (
    publication_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.publication_settings OWNER TO "ojs-ci";

--
-- Name: publications; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.publications (
    publication_id bigint NOT NULL,
    access_status bigint DEFAULT '0'::bigint,
    date_published date,
    last_modified timestamp(0) without time zone,
    primary_contact_id bigint,
    section_id bigint,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    submission_id bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    url_path character varying(64),
    version bigint,
    doi_id bigint
);


ALTER TABLE public.publications OWNER TO "ojs-ci";

--
-- Name: publications_publication_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.publications_publication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publications_publication_id_seq OWNER TO "ojs-ci";

--
-- Name: publications_publication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.publications_publication_id_seq OWNED BY public.publications.publication_id;


--
-- Name: queries; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.queries OWNER TO "ojs-ci";

--
-- Name: queries_query_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.queries_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queries_query_id_seq OWNER TO "ojs-ci";

--
-- Name: queries_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.queries_query_id_seq OWNED BY public.queries.query_id;


--
-- Name: query_participants; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.query_participants (
    query_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.query_participants OWNER TO "ojs-ci";

--
-- Name: queued_payments; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.queued_payments (
    queued_payment_id bigint NOT NULL,
    date_created timestamp(0) without time zone NOT NULL,
    date_modified timestamp(0) without time zone NOT NULL,
    expiry_date date,
    payment_data text
);


ALTER TABLE public.queued_payments OWNER TO "ojs-ci";

--
-- Name: queued_payments_queued_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.queued_payments_queued_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queued_payments_queued_payment_id_seq OWNER TO "ojs-ci";

--
-- Name: queued_payments_queued_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.queued_payments_queued_payment_id_seq OWNED BY public.queued_payments.queued_payment_id;


--
-- Name: review_assignments; Type: TABLE; Schema: public; Owner: ojs-ci
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
    considered smallint,
    request_resent smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.review_assignments OWNER TO "ojs-ci";

--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.review_assignments_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_assignments_review_id_seq OWNER TO "ojs-ci";

--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.review_assignments_review_id_seq OWNED BY public.review_assignments.review_id;


--
-- Name: review_files; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_files (
    review_id bigint NOT NULL,
    submission_file_id bigint NOT NULL
);


ALTER TABLE public.review_files OWNER TO "ojs-ci";

--
-- Name: review_form_element_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_form_element_settings (
    review_form_element_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.review_form_element_settings OWNER TO "ojs-ci";

--
-- Name: review_form_elements; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_form_elements (
    review_form_element_id bigint NOT NULL,
    review_form_id bigint NOT NULL,
    seq double precision,
    element_type bigint,
    required smallint,
    included smallint
);


ALTER TABLE public.review_form_elements OWNER TO "ojs-ci";

--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.review_form_elements_review_form_element_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_form_elements_review_form_element_id_seq OWNER TO "ojs-ci";

--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.review_form_elements_review_form_element_id_seq OWNED BY public.review_form_elements.review_form_element_id;


--
-- Name: review_form_responses; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_form_responses (
    review_form_element_id bigint NOT NULL,
    review_id bigint NOT NULL,
    response_type character varying(6),
    response_value text
);


ALTER TABLE public.review_form_responses OWNER TO "ojs-ci";

--
-- Name: review_form_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_form_settings (
    review_form_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.review_form_settings OWNER TO "ojs-ci";

--
-- Name: review_forms; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_forms (
    review_form_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    seq double precision,
    is_active smallint
);


ALTER TABLE public.review_forms OWNER TO "ojs-ci";

--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.review_forms_review_form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_forms_review_form_id_seq OWNER TO "ojs-ci";

--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.review_forms_review_form_id_seq OWNED BY public.review_forms.review_form_id;


--
-- Name: review_round_files; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_round_files (
    submission_id bigint NOT NULL,
    review_round_id bigint NOT NULL,
    stage_id smallint NOT NULL,
    submission_file_id bigint NOT NULL
);


ALTER TABLE public.review_round_files OWNER TO "ojs-ci";

--
-- Name: review_rounds; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.review_rounds (
    review_round_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    stage_id bigint,
    round smallint NOT NULL,
    review_revision bigint,
    status bigint
);


ALTER TABLE public.review_rounds OWNER TO "ojs-ci";

--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.review_rounds_review_round_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_rounds_review_round_id_seq OWNER TO "ojs-ci";

--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.review_rounds_review_round_id_seq OWNED BY public.review_rounds.review_round_id;


--
-- Name: scheduled_tasks; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.scheduled_tasks (
    class_name character varying(255) NOT NULL,
    last_run timestamp(0) without time zone
);


ALTER TABLE public.scheduled_tasks OWNER TO "ojs-ci";

--
-- Name: section_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.section_settings (
    section_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.section_settings OWNER TO "ojs-ci";

--
-- Name: sections; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.sections (
    section_id bigint NOT NULL,
    journal_id bigint NOT NULL,
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


ALTER TABLE public.sections OWNER TO "ojs-ci";

--
-- Name: sections_section_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.sections_section_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_section_id_seq OWNER TO "ojs-ci";

--
-- Name: sections_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.sections_section_id_seq OWNED BY public.sections.section_id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.sessions OWNER TO "ojs-ci";

--
-- Name: site; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.site (
    redirect bigint DEFAULT '0'::bigint NOT NULL,
    primary_locale character varying(14) NOT NULL,
    min_password_length smallint DEFAULT '6'::smallint NOT NULL,
    installed_locales character varying(1024) DEFAULT 'en'::character varying NOT NULL,
    supported_locales character varying(1024),
    original_style_file_name character varying(255)
);


ALTER TABLE public.site OWNER TO "ojs-ci";

--
-- Name: COLUMN site.redirect; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.site.redirect IS 'If not 0, redirect to the specified journal/conference/... site.';


--
-- Name: COLUMN site.primary_locale; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.site.primary_locale IS 'Primary locale for the site.';


--
-- Name: COLUMN site.installed_locales; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.site.installed_locales IS 'Locales for which support has been installed.';


--
-- Name: COLUMN site.supported_locales; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.site.supported_locales IS 'Locales supported by the site (for hosted journals/conferences/...).';


--
-- Name: site_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.site_settings (
    setting_name character varying(255) NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_value text
);


ALTER TABLE public.site_settings OWNER TO "ojs-ci";

--
-- Name: stage_assignments; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.stage_assignments OWNER TO "ojs-ci";

--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.stage_assignments_stage_assignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stage_assignments_stage_assignment_id_seq OWNER TO "ojs-ci";

--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.stage_assignments_stage_assignment_id_seq OWNED BY public.stage_assignments.stage_assignment_id;


--
-- Name: static_page_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.static_page_settings (
    static_page_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.static_page_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN static_page_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.static_page_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: static_pages; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.static_pages (
    static_page_id bigint NOT NULL,
    path character varying(255) NOT NULL,
    context_id bigint NOT NULL
);


ALTER TABLE public.static_pages OWNER TO "ojs-ci";

--
-- Name: static_pages_static_page_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.static_pages_static_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.static_pages_static_page_id_seq OWNER TO "ojs-ci";

--
-- Name: static_pages_static_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.static_pages_static_page_id_seq OWNED BY public.static_pages.static_page_id;


--
-- Name: subeditor_submission_group; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.subeditor_submission_group (
    context_id bigint NOT NULL,
    assoc_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    user_id bigint NOT NULL,
    user_group_id bigint NOT NULL
);


ALTER TABLE public.subeditor_submission_group OWNER TO "ojs-ci";

--
-- Name: submission_comments; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.submission_comments OWNER TO "ojs-ci";

--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.submission_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_comments_comment_id_seq OWNER TO "ojs-ci";

--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.submission_comments_comment_id_seq OWNED BY public.submission_comments.comment_id;


--
-- Name: submission_file_revisions; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.submission_file_revisions (
    revision_id bigint NOT NULL,
    submission_file_id bigint NOT NULL,
    file_id bigint NOT NULL
);


ALTER TABLE public.submission_file_revisions OWNER TO "ojs-ci";

--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.submission_file_revisions_revision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_file_revisions_revision_id_seq OWNER TO "ojs-ci";

--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.submission_file_revisions_revision_id_seq OWNED BY public.submission_file_revisions.revision_id;


--
-- Name: submission_file_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.submission_file_settings (
    submission_file_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) DEFAULT 'string'::character varying NOT NULL
);


ALTER TABLE public.submission_file_settings OWNER TO "ojs-ci";

--
-- Name: COLUMN submission_file_settings.setting_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.submission_file_settings.setting_type IS '(bool|int|float|string|object|date)';


--
-- Name: submission_files; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.submission_files OWNER TO "ojs-ci";

--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.submission_files_submission_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_files_submission_file_id_seq OWNER TO "ojs-ci";

--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.submission_files_submission_file_id_seq OWNED BY public.submission_files.submission_file_id;


--
-- Name: submission_search_keyword_list; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.submission_search_keyword_list (
    keyword_id bigint NOT NULL,
    keyword_text character varying(60) NOT NULL
);


ALTER TABLE public.submission_search_keyword_list OWNER TO "ojs-ci";

--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.submission_search_keyword_list_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_search_keyword_list_keyword_id_seq OWNER TO "ojs-ci";

--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.submission_search_keyword_list_keyword_id_seq OWNED BY public.submission_search_keyword_list.keyword_id;


--
-- Name: submission_search_object_keywords; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.submission_search_object_keywords (
    object_id bigint NOT NULL,
    keyword_id bigint NOT NULL,
    pos integer NOT NULL
);


ALTER TABLE public.submission_search_object_keywords OWNER TO "ojs-ci";

--
-- Name: COLUMN submission_search_object_keywords.pos; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.submission_search_object_keywords.pos IS 'Word position of the keyword in the object.';


--
-- Name: submission_search_objects; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.submission_search_objects (
    object_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    type integer NOT NULL,
    assoc_id bigint
);


ALTER TABLE public.submission_search_objects OWNER TO "ojs-ci";

--
-- Name: COLUMN submission_search_objects.type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.submission_search_objects.type IS 'Type of item. E.g., abstract, fulltext, etc.';


--
-- Name: COLUMN submission_search_objects.assoc_id; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.submission_search_objects.assoc_id IS 'Optional ID of an associated record (e.g., a file_id)';


--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.submission_search_objects_object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_search_objects_object_id_seq OWNER TO "ojs-ci";

--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.submission_search_objects_object_id_seq OWNED BY public.submission_search_objects.object_id;


--
-- Name: submission_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.submission_settings (
    submission_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.submission_settings OWNER TO "ojs-ci";

--
-- Name: submissions; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.submissions (
    submission_id bigint NOT NULL,
    context_id bigint NOT NULL,
    current_publication_id bigint,
    date_last_activity timestamp(0) without time zone,
    date_submitted timestamp(0) without time zone,
    last_modified timestamp(0) without time zone,
    stage_id bigint DEFAULT '1'::bigint NOT NULL,
    locale character varying(14),
    status smallint DEFAULT '1'::smallint NOT NULL,
    submission_progress character varying(50) DEFAULT 'start'::character varying NOT NULL,
    work_type smallint DEFAULT '0'::smallint
);


ALTER TABLE public.submissions OWNER TO "ojs-ci";

--
-- Name: submissions_submission_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.submissions_submission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submissions_submission_id_seq OWNER TO "ojs-ci";

--
-- Name: submissions_submission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.submissions_submission_id_seq OWNED BY public.submissions.submission_id;


--
-- Name: subscription_type_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.subscription_type_settings (
    type_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.subscription_type_settings OWNER TO "ojs-ci";

--
-- Name: subscription_types; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.subscription_types (
    type_id bigint NOT NULL,
    journal_id bigint NOT NULL,
    cost double precision NOT NULL,
    currency_code_alpha character varying(3) NOT NULL,
    duration smallint,
    format smallint NOT NULL,
    institutional smallint DEFAULT '0'::smallint NOT NULL,
    membership smallint DEFAULT '0'::smallint NOT NULL,
    disable_public_display smallint NOT NULL,
    seq double precision NOT NULL
);


ALTER TABLE public.subscription_types OWNER TO "ojs-ci";

--
-- Name: subscription_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.subscription_types_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscription_types_type_id_seq OWNER TO "ojs-ci";

--
-- Name: subscription_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.subscription_types_type_id_seq OWNED BY public.subscription_types.type_id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.subscriptions (
    subscription_id bigint NOT NULL,
    journal_id bigint NOT NULL,
    user_id bigint NOT NULL,
    type_id bigint NOT NULL,
    date_start date,
    date_end timestamp(0) without time zone,
    status smallint DEFAULT '1'::smallint NOT NULL,
    membership character varying(40),
    reference_number character varying(40),
    notes text
);


ALTER TABLE public.subscriptions OWNER TO "ojs-ci";

--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.subscriptions_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_subscription_id_seq OWNER TO "ojs-ci";

--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.subscriptions_subscription_id_seq OWNED BY public.subscriptions.subscription_id;


--
-- Name: temporary_files; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.temporary_files OWNER TO "ojs-ci";

--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.temporary_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temporary_files_file_id_seq OWNER TO "ojs-ci";

--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.temporary_files_file_id_seq OWNED BY public.temporary_files.file_id;


--
-- Name: usage_stats_institution_temporary_records; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.usage_stats_institution_temporary_records (
    load_id character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    institution_id bigint NOT NULL
);


ALTER TABLE public.usage_stats_institution_temporary_records OWNER TO "ojs-ci";

--
-- Name: usage_stats_total_temporary_records; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.usage_stats_total_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    canonical_url character varying(255) NOT NULL,
    issue_id bigint,
    issue_galley_id bigint,
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


ALTER TABLE public.usage_stats_total_temporary_records OWNER TO "ojs-ci";

--
-- Name: usage_stats_unique_item_investigations_temporary_records; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.usage_stats_unique_item_investigations_temporary_records OWNER TO "ojs-ci";

--
-- Name: usage_stats_unique_item_requests_temporary_records; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.usage_stats_unique_item_requests_temporary_records OWNER TO "ojs-ci";

--
-- Name: user_group_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.user_group_settings (
    user_group_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.user_group_settings OWNER TO "ojs-ci";

--
-- Name: user_group_stage; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.user_group_stage (
    context_id bigint NOT NULL,
    user_group_id bigint NOT NULL,
    stage_id bigint NOT NULL
);


ALTER TABLE public.user_group_stage OWNER TO "ojs-ci";

--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.user_groups OWNER TO "ojs-ci";

--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.user_groups_user_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_user_group_id_seq OWNER TO "ojs-ci";

--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.user_groups_user_group_id_seq OWNED BY public.user_groups.user_group_id;


--
-- Name: user_interests; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.user_interests (
    user_id bigint NOT NULL,
    controlled_vocab_entry_id bigint NOT NULL
);


ALTER TABLE public.user_interests OWNER TO "ojs-ci";

--
-- Name: user_settings; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.user_settings (
    user_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.user_settings OWNER TO "ojs-ci";

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: ojs-ci
--

CREATE TABLE public.user_user_groups (
    user_group_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO "ojs-ci";

--
-- Name: users; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.users OWNER TO "ojs-ci";

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ojs-ci
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO "ojs-ci";

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ojs-ci
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: ojs-ci
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


ALTER TABLE public.versions OWNER TO "ojs-ci";

--
-- Name: COLUMN versions.major; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.major IS 'Major component of version number, e.g. the 2 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.minor; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.minor IS 'Minor component of version number, e.g. the 3 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.revision; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.revision IS 'Revision component of version number, e.g. the 8 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.build; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.build IS 'Build component of version number, e.g. the 0 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.current; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.current IS '1 iff the version entry being described is currently active. This permits the table to store past installation history for forensic purposes.';


--
-- Name: COLUMN versions.product_type; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.product_type IS 'Describes the type of product this row describes, e.g. "plugins.generic" (for a generic plugin) or "core" for the application itelf';


--
-- Name: COLUMN versions.product; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.product IS 'Uniquely identifies the product this version row describes, e.g. "ojs2" for OJS 2.x, "languageToggle" for the language toggle block plugin, etc.';


--
-- Name: COLUMN versions.product_class_name; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.product_class_name IS 'Specifies the class name associated with this product, for plugins, or the empty string where not applicable.';


--
-- Name: COLUMN versions.lazy_load; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.lazy_load IS '1 iff the row describes a lazy-load plugin; 0 otherwise';


--
-- Name: COLUMN versions.sitewide; Type: COMMENT; Schema: public; Owner: ojs-ci
--

COMMENT ON COLUMN public.versions.sitewide IS '1 iff the row describes a site-wide plugin; 0 otherwise';


--
-- Name: access_key_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.access_keys ALTER COLUMN access_key_id SET DEFAULT nextval('public.access_keys_access_key_id_seq'::regclass);


--
-- Name: type_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcement_types ALTER COLUMN type_id SET DEFAULT nextval('public.announcement_types_type_id_seq'::regclass);


--
-- Name: announcement_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcements ALTER COLUMN announcement_id SET DEFAULT nextval('public.announcements_announcement_id_seq'::regclass);


--
-- Name: author_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);


--
-- Name: category_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: citation_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.citations ALTER COLUMN citation_id SET DEFAULT nextval('public.citations_citation_id_seq'::regclass);


--
-- Name: completed_payment_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.completed_payments ALTER COLUMN completed_payment_id SET DEFAULT nextval('public.completed_payments_completed_payment_id_seq'::regclass);


--
-- Name: controlled_vocab_entry_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries ALTER COLUMN controlled_vocab_entry_id SET DEFAULT nextval('public.controlled_vocab_entries_controlled_vocab_entry_id_seq'::regclass);


--
-- Name: controlled_vocab_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocabs ALTER COLUMN controlled_vocab_id SET DEFAULT nextval('public.controlled_vocabs_controlled_vocab_id_seq'::regclass);


--
-- Name: object_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects ALTER COLUMN object_id SET DEFAULT nextval('public.data_object_tombstone_oai_set_objects_object_id_seq'::regclass);


--
-- Name: tombstone_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.data_object_tombstones ALTER COLUMN tombstone_id SET DEFAULT nextval('public.data_object_tombstones_tombstone_id_seq'::regclass);


--
-- Name: doi_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.dois ALTER COLUMN doi_id SET DEFAULT nextval('public.dois_doi_id_seq'::regclass);


--
-- Name: edit_decision_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.edit_decisions ALTER COLUMN edit_decision_id SET DEFAULT nextval('public.edit_decisions_edit_decision_id_seq'::regclass);


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_log ALTER COLUMN log_id SET DEFAULT nextval('public.email_log_log_id_seq'::regclass);


--
-- Name: email_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_templates ALTER COLUMN email_id SET DEFAULT nextval('public.email_templates_email_id_seq'::regclass);


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.event_log ALTER COLUMN log_id SET DEFAULT nextval('public.event_log_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.files ALTER COLUMN file_id SET DEFAULT nextval('public.files_file_id_seq'::regclass);


--
-- Name: filter_group_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filter_groups ALTER COLUMN filter_group_id SET DEFAULT nextval('public.filter_groups_filter_group_id_seq'::regclass);


--
-- Name: filter_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filters ALTER COLUMN filter_id SET DEFAULT nextval('public.filters_filter_id_seq'::regclass);


--
-- Name: genre_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_genre_id_seq'::regclass);


--
-- Name: institution_ip_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institution_ip ALTER COLUMN institution_ip_id SET DEFAULT nextval('public.institution_ip_institution_ip_id_seq'::regclass);


--
-- Name: institutional_subscription_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institutional_subscriptions ALTER COLUMN institutional_subscription_id SET DEFAULT nextval('public.institutional_subscriptions_institutional_subscription_id_seq'::regclass);


--
-- Name: institution_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institutions ALTER COLUMN institution_id SET DEFAULT nextval('public.institutions_institution_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_files ALTER COLUMN file_id SET DEFAULT nextval('public.issue_files_file_id_seq'::regclass);


--
-- Name: galley_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_galleys ALTER COLUMN galley_id SET DEFAULT nextval('public.issue_galleys_galley_id_seq'::regclass);


--
-- Name: issue_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issues ALTER COLUMN issue_id SET DEFAULT nextval('public.issues_issue_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: journal_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.journals ALTER COLUMN journal_id SET DEFAULT nextval('public.journals_journal_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.library_files ALTER COLUMN file_id SET DEFAULT nextval('public.library_files_file_id_seq'::regclass);


--
-- Name: navigation_menu_item_assignment_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments ALTER COLUMN navigation_menu_item_assignment_id SET DEFAULT nextval('public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq'::regclass);


--
-- Name: navigation_menu_item_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_items ALTER COLUMN navigation_menu_item_id SET DEFAULT nextval('public.navigation_menu_items_navigation_menu_item_id_seq'::regclass);


--
-- Name: navigation_menu_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menus ALTER COLUMN navigation_menu_id SET DEFAULT nextval('public.navigation_menus_navigation_menu_id_seq'::regclass);


--
-- Name: note_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notes ALTER COLUMN note_id SET DEFAULT nextval('public.notes_note_id_seq'::regclass);


--
-- Name: setting_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notification_subscription_settings ALTER COLUMN setting_id SET DEFAULT nextval('public.notification_subscription_settings_setting_id_seq'::regclass);


--
-- Name: notification_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notifications ALTER COLUMN notification_id SET DEFAULT nextval('public.notifications_notification_id_seq'::regclass);


--
-- Name: galley_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_galleys ALTER COLUMN galley_id SET DEFAULT nextval('public.publication_galleys_galley_id_seq'::regclass);


--
-- Name: publication_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publications ALTER COLUMN publication_id SET DEFAULT nextval('public.publications_publication_id_seq'::regclass);


--
-- Name: query_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.queries ALTER COLUMN query_id SET DEFAULT nextval('public.queries_query_id_seq'::regclass);


--
-- Name: queued_payment_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.queued_payments ALTER COLUMN queued_payment_id SET DEFAULT nextval('public.queued_payments_queued_payment_id_seq'::regclass);


--
-- Name: review_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_assignments ALTER COLUMN review_id SET DEFAULT nextval('public.review_assignments_review_id_seq'::regclass);


--
-- Name: review_form_element_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_elements ALTER COLUMN review_form_element_id SET DEFAULT nextval('public.review_form_elements_review_form_element_id_seq'::regclass);


--
-- Name: review_form_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_forms ALTER COLUMN review_form_id SET DEFAULT nextval('public.review_forms_review_form_id_seq'::regclass);


--
-- Name: review_round_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_rounds ALTER COLUMN review_round_id SET DEFAULT nextval('public.review_rounds_review_round_id_seq'::regclass);


--
-- Name: section_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.sections ALTER COLUMN section_id SET DEFAULT nextval('public.sections_section_id_seq'::regclass);


--
-- Name: stage_assignment_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.stage_assignments ALTER COLUMN stage_assignment_id SET DEFAULT nextval('public.stage_assignments_stage_assignment_id_seq'::regclass);


--
-- Name: static_page_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.static_pages ALTER COLUMN static_page_id SET DEFAULT nextval('public.static_pages_static_page_id_seq'::regclass);


--
-- Name: comment_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.submission_comments_comment_id_seq'::regclass);


--
-- Name: revision_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_file_revisions ALTER COLUMN revision_id SET DEFAULT nextval('public.submission_file_revisions_revision_id_seq'::regclass);


--
-- Name: submission_file_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_files ALTER COLUMN submission_file_id SET DEFAULT nextval('public.submission_files_submission_file_id_seq'::regclass);


--
-- Name: keyword_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list ALTER COLUMN keyword_id SET DEFAULT nextval('public.submission_search_keyword_list_keyword_id_seq'::regclass);


--
-- Name: object_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_objects ALTER COLUMN object_id SET DEFAULT nextval('public.submission_search_objects_object_id_seq'::regclass);


--
-- Name: submission_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submissions ALTER COLUMN submission_id SET DEFAULT nextval('public.submissions_submission_id_seq'::regclass);


--
-- Name: type_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscription_types ALTER COLUMN type_id SET DEFAULT nextval('public.subscription_types_type_id_seq'::regclass);


--
-- Name: subscription_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN subscription_id SET DEFAULT nextval('public.subscriptions_subscription_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.temporary_files ALTER COLUMN file_id SET DEFAULT nextval('public.temporary_files_file_id_seq'::regclass);


--
-- Name: user_group_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_groups ALTER COLUMN user_group_id SET DEFAULT nextval('public.user_groups_user_group_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: access_keys; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.access_keys (access_key_id, context, key_hash, user_id, assoc_id, expiry_date) FROM stdin;
\.


--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.access_keys_access_key_id_seq', 1, false);


--
-- Data for Name: announcement_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.announcement_settings (announcement_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: announcement_type_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.announcement_type_settings (type_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: announcement_types; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.announcement_types (type_id, context_id) FROM stdin;
\.


--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.announcement_types_type_id_seq', 1, false);


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.announcements (announcement_id, assoc_type, assoc_id, type_id, date_expire, date_posted) FROM stdin;
\.


--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.announcements_announcement_id_seq', 1, false);


--
-- Data for Name: author_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.author_settings (author_id, locale, setting_name, setting_value) FROM stdin;
2	fr_CA	familyName	\N
2	fr_CA	givenName	\N
23	en	affiliation	University of Wolverhampton
23		country	GB
23	en	familyName	Daniel
23	en	givenName	Patricia
24	en	affiliation	University of Nairobi
24		country	KE
24	en	familyName	Baiyewu
1	en	affiliation	University of Cape Town
1		country	ZA
1	en	familyName	Mwandenga
1	en	givenName	Alan
2		country	BB
2	en	familyName	Mansour
2	en	givenName	Amina
4	fr_CA	affiliation	\N
4	en	affiliation	\N
4	fr_CA	biography	\N
4	en	biography	\N
4		country	ZA
4	fr_CA	familyName	\N
4	en	familyName	Riouf
4	fr_CA	givenName	\N
4	en	givenName	Nicolas
4	fr_CA	preferredPublicName	\N
4	en	preferredPublicName	\N
6		country	BB
6	en	familyName	Mansour
6	en	givenName	Amina
7		country	ZA
7	en	familyName	Riouf
7	en	givenName	Nicolas
5	en	affiliation	University of Cape Town
5		country	ZA
5	en	familyName	Mwandenga Version 2
5	en	givenName	Alan
8	en	affiliation	University of Bologna
8		country	IT
8	en	familyName	Corino
8	en	givenName	Carlo
9	en	affiliation	University of Windsor
9		country	CA
9	en	familyName	Kwantes
9	en	givenName	Catherine
10	en	affiliation	University of Alberta
10		country	CA
10	en	familyName	Montgomerie
10	en	givenName	Craig
11	en	affiliation	University of Victoria
11		country	CA
11	en	familyName	Irvine
11	en	givenName	Mark
12	en	affiliation	Alexandria University
12		country	EG
12	en	familyName	Diouf
12	en	givenName	Diaga
13	en	affiliation	University of Toronto
13		country	CA
13	en	familyName	Phillips
13	en	givenName	Dana
14	en	affiliation	University College Cork
14		country	IE
14	en	familyName	Sokoloff
14	en	givenName	Domatilia
15	en	affiliation	Indiana University
15		country	US
15	en	familyName	Ostrom
15	en	givenName	Elinor
16	en	affiliation	Indiana University
16		country	US
16	en	familyName	van Laerhoven
16	en	givenName	Frank
17	en	affiliation	University of Rome
17		country	IT
17	en	familyName	Paglieri
17	en	givenName	Fabio
18	en	affiliation	Aalborg University
18		country	DK
18	en	familyName	Novak
18	en	givenName	John
19	en	affiliation	Stanford University
19		country	US
19	en	familyName	Al-Khafaji
19	en	givenName	Karim
20	en	affiliation	Stanford University
20		country	US
20	en	familyName	Morse
20	en	givenName	Margaret
21	en	affiliation	Australian National University
21		country	AU
21	en	familyName	Christopher
21	en	givenName	Leo
22	en	affiliation	University of Cape Town
22		country	ZA
22	en	familyName	Kumiega
22	en	givenName	Lise
24	en	givenName	Rana
25	en	affiliation	Barcelona University
25		country	ES
25	en	familyName	Rossi
25	en	givenName	Rosanna
26	en	affiliation	University of Tehran
26		country	IR
26	en	familyName	Karbasizaed
26	en	givenName	Vajiheh
27	en	affiliation	University of Windsor
27		country	CA
27	en	familyName	Williamson
27	en	givenName	Valerie
28	en	affiliation	CUNY
28		country	US
28	en	familyName	Woods
28	en	givenName	Zita
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.authors (author_id, email, include_in_browse, publication_id, seq, user_group_id) FROM stdin;
1	amwandenga@mailinator.com	1	1	0	14
2	notanemailamansour@mailinator.com	1	1	1	14
4	nriouf@mailinator.com	1	1	2	14
6	notanemailamansour@mailinator.com	1	2	1	14
7	nriouf@mailinator.com	1	2	2	14
5	amwandenga@mailinator.com	1	2	0	14
8	ccorino@mailinator.com	1	3	0	14
9	ckwantes@mailinator.com	1	4	0	14
10	cmontgomerie@mailinator.com	1	5	0	14
11	mirvine@mailinator.com	1	5	0	14
12	ddiouf@mailinator.com	1	6	0	14
13	dphillips@mailinator.com	1	7	0	14
14	dsokoloff@mailinator.com	1	8	0	14
15	eostrom@mailinator.com	1	9	0	14
16	fvanlaerhoven@mailinator.com	1	9	0	14
17	fpaglieri@mailinator.com	1	10	0	14
18	jnovak@mailinator.com	1	11	0	14
19	kalkhafaji@mailinator.com	1	12	0	14
20	mmorse@mailinator.com	1	12	0	14
21	lchristopher@mailinator.com	1	13	0	14
22	lkumiega@mailinator.com	1	14	0	14
23	pdaniel@mailinator.com	1	15	0	14
24	rbaiyewu@mailinator.com	1	16	0	14
25	rrossi@mailinator.com	1	17	0	14
26	vkarbasizaed@mailinator.com	1	18	0	14
27	vwilliamson@mailinator.com	1	19	0	14
28	zwoods@mailinator.com	1	20	0	14
\.


--
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 28, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.categories (category_id, context_id, parent_id, seq, path, image) FROM stdin;
1	1	\N	2	applied-science	\N
2	1	1	3	comp-sci	\N
3	1	1	4	eng	\N
4	1	\N	5	social-sciences	\N
5	1	4	6	sociology	\N
6	1	4	10000	anthropology	\N
\.


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 6, true);


--
-- Data for Name: category_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.category_settings (category_id, locale, setting_name, setting_value) FROM stdin;
1		sortOption	title-ASC
1	en	title	Applied Science
1	fr_CA	title	
1	en	description	
1	fr_CA	description	
2		sortOption	title-ASC
2	en	title	Computer Science
2	fr_CA	title	
2	en	description	
2	fr_CA	description	
3		sortOption	title-ASC
3	en	title	Engineering
3	fr_CA	title	
3	en	description	
3	fr_CA	description	
4		sortOption	title-ASC
4	en	title	Social Sciences
4	fr_CA	title	
4	en	description	
4	fr_CA	description	
5		sortOption	title-ASC
5	en	title	Sociology
5	fr_CA	title	
5	en	description	
5	fr_CA	description	
6		sortOption	title-ASC
6	en	title	Anthropology
6	fr_CA	title	
6	en	description	
6	fr_CA	description	
\.


--
-- Data for Name: citation_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.citation_settings (citation_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: citations; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.citations (citation_id, publication_id, raw_citation, seq) FROM stdin;
\.


--
-- Name: citations_citation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.citations_citation_id_seq', 1, false);


--
-- Data for Name: completed_payments; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.completed_payments (completed_payment_id, "timestamp", payment_type, context_id, user_id, assoc_id, amount, currency_code_alpha, payment_method_plugin_name) FROM stdin;
\.


--
-- Name: completed_payments_completed_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.completed_payments_completed_payment_id_seq', 1, false);


--
-- Data for Name: controlled_vocab_entries; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.controlled_vocab_entries (controlled_vocab_entry_id, controlled_vocab_id, seq) FROM stdin;
15	2	1
16	2	2
27	7	1
28	7	2
31	12	1
32	12	2
33	12	3
34	12	4
35	17	1
36	17	2
37	22	1
38	22	2
39	22	3
40	22	4
41	22	5
42	22	6
43	22	7
44	37	1
45	37	2
46	42	1
47	42	2
48	42	3
49	52	1
50	57	1
51	57	2
52	57	3
53	57	4
54	62	1
55	62	2
56	67	1
57	72	1
58	72	2
59	72	3
60	72	4
61	72	5
62	72	6
63	72	7
64	72	8
65	72	9
66	72	10
67	82	1
68	82	2
69	92	1
70	92	2
71	92	3
\.


--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.controlled_vocab_entries_controlled_vocab_entry_id_seq', 71, true);


--
-- Data for Name: controlled_vocab_entry_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.controlled_vocab_entry_settings (controlled_vocab_entry_id, locale, setting_name, setting_value, setting_type) FROM stdin;
15	en	submissionKeyword	Professional Development	string
16	en	submissionKeyword	Social Transformation	string
27	en	submissionKeyword	Professional Development	string
28	en	submissionKeyword	Social Transformation	string
31	en	submissionKeyword	pigs	string
32	en	submissionKeyword	food security	string
33	en	submissionKeyword	Professional Development	string
34	en	submissionKeyword	Social Transformation	string
35	en	submissionKeyword	employees	string
36	en	submissionKeyword	survey	string
37	en	submissionKeyword	Integrating Technology	string
38	en	submissionKeyword	Computer Skills	string
39	en	submissionKeyword	Survey	string
40	en	submissionKeyword	Alberta	string
41	en	submissionKeyword	National	string
42	en	submissionKeyword	Provincial	string
43	en	submissionKeyword	Professional Development	string
44	en	submissionKeyword	education	string
45	en	submissionKeyword	citizenship	string
46	en	submissionKeyword	Common pool resource	string
47	en	submissionKeyword	common property	string
48	en	submissionKeyword	intellectual developments	string
49	en	submissionKeyword	water	string
50	en	submissionKeyword	Development	string
51	en	submissionKeyword	engineering education	string
52	en	submissionKeyword	service learning	string
53	en	submissionKeyword	sustainability	string
54	en	submissionKeyword	pigs	string
55	en	submissionKeyword	food security	string
56	en	submissionKeyword	water	string
57	en	submissionKeyword	21st Century	string
58	en	submissionKeyword	Diversity	string
59	en	submissionKeyword	Multilingual	string
60	en	submissionKeyword	Multiethnic	string
61	en	submissionKeyword	Participatory Pedagogy	string
62	en	submissionKeyword	Language	string
63	en	submissionKeyword	Culture	string
64	en	submissionKeyword	Gender	string
65	en	submissionKeyword	Egalitarianism	string
66	en	submissionKeyword	Social Transformation	string
67	en	submissionKeyword	cattle	string
68	en	submissionKeyword	food security	string
69	en	submissionKeyword	Self-Organization	string
70	en	submissionKeyword	Multi-Level Institutions	string
71	en	submissionKeyword	Goverance	string
\.


--
-- Data for Name: controlled_vocabs; Type: TABLE DATA; Schema: public; Owner: ojs-ci
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
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.controlled_vocabs_controlled_vocab_id_seq', 101, true);


--
-- Data for Name: custom_issue_orders; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.custom_issue_orders (issue_id, journal_id, seq) FROM stdin;
\.


--
-- Data for Name: custom_section_orders; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.custom_section_orders (issue_id, section_id, seq) FROM stdin;
\.


--
-- Data for Name: data_object_tombstone_oai_set_objects; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.data_object_tombstone_oai_set_objects (object_id, tombstone_id, assoc_type, assoc_id) FROM stdin;
\.


--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.data_object_tombstone_oai_set_objects_object_id_seq', 6, true);


--
-- Data for Name: data_object_tombstone_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.data_object_tombstone_settings (tombstone_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: data_object_tombstones; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.data_object_tombstones (tombstone_id, data_object_id, date_deleted, set_spec, set_name, oai_identifier) FROM stdin;
\.


--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.data_object_tombstones_tombstone_id_seq', 3, true);


--
-- Data for Name: doi_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.doi_settings (doi_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: dois; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.dois (doi_id, context_id, doi, status) FROM stdin;
\.


--
-- Name: dois_doi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.dois_doi_id_seq', 1, false);


--
-- Data for Name: edit_decisions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.edit_decisions (edit_decision_id, submission_id, review_round_id, stage_id, round, editor_id, decision, date_decided) FROM stdin;
1	1	\N	1	\N	3	3	2023-02-27 13:14:34
2	1	1	3	1	3	2	2023-02-27 13:15:04
3	1	\N	4	\N	3	7	2023-02-27 13:15:19
4	2	\N	1	\N	3	3	2023-02-27 13:20:29
5	2	2	3	1	6	9	2023-02-27 13:20:53
6	3	\N	1	\N	3	3	2023-02-27 13:21:31
7	3	3	3	1	3	2	2023-02-27 13:21:52
8	5	\N	1	\N	3	3	2023-02-27 13:22:44
9	5	4	3	1	3	2	2023-02-27 13:23:05
10	5	\N	4	\N	3	7	2023-02-27 13:23:19
11	6	\N	1	\N	3	3	2023-02-27 13:24:01
12	6	5	3	1	3	2	2023-02-27 13:24:22
13	6	\N	4	\N	3	7	2023-02-27 13:24:35
14	7	\N	1	\N	3	3	2023-02-27 13:25:13
15	9	\N	1	\N	3	3	2023-02-27 13:26:33
16	9	7	3	1	3	2	2023-02-27 13:26:55
17	9	\N	4	\N	3	7	2023-02-27 13:27:08
18	10	\N	1	\N	3	3	2023-02-27 13:27:51
19	12	\N	1	\N	3	3	2023-02-27 13:29:16
20	13	\N	1	\N	3	3	2023-02-27 13:30:03
21	13	10	3	1	3	4	2023-02-27 13:31:24
22	15	\N	1	\N	3	3	2023-02-27 13:32:14
23	15	11	3	1	3	2	2023-02-27 13:32:36
24	15	\N	4	\N	3	7	2023-02-27 13:32:49
25	17	\N	1	\N	3	3	2023-02-27 13:33:45
26	17	12	3	1	3	2	2023-02-27 13:34:06
27	17	\N	4	\N	3	7	2023-02-27 13:34:20
28	18	\N	1	\N	3	8	2023-02-27 13:37:08
29	19	\N	1	\N	3	3	2023-02-27 13:37:43
30	19	13	3	1	3	2	2023-02-27 13:38:04
\.


--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.edit_decisions_edit_decision_id_seq', 30, true);


--
-- Data for Name: email_log; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.email_log (log_id, assoc_type, assoc_id, sender_id, date_sent, event_type, from_address, recipients, cc_recipients, bcc_recipients, subject, body) FROM stdin;
1	1048585	1	0	2023-02-27 13:14:14	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence</a><br />Alan Mwandenga, Amina Mansour</p><p><b>Abstract</b></p><p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p><p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
2	1048585	1	0	2023-02-27 13:14:14	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence</a><br />Alan Mwandenga, Amina Mansour</p><p><b>Abstract</b></p><p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p><p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
3	1048585	1	0	2023-02-27 13:14:15	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence</a><br />Alan Mwandenga, Amina Mansour</p><p><b>Abstract</b></p><p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p><p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
4	1048585	1	0	2023-02-27 13:14:15	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Alan Mwandenga" <amwandenga@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Alan Mwandenga,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/1</p><p>If you have been logged out, you can login again with the username amwandenga.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/1">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
5	1048585	1	0	2023-02-27 13:14:15	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Amina Mansour" <notanemailamansour@mailinator.com>			Submission confirmation	<p>Dear Amina Mansour,</p><p>You have been named as a co-author on a submission to Journal of Public Knowledge. The submitter, Alan Mwandenga, provided the following details:</p><p>Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
38	1048585	6	3	2023-02-27 13:24:36	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Dana Phillips" <dphillips@mailinator.com>			Next steps for publishing your submission	<p>Dear Dana Phillips,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/6">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
6	1048585	1	3	2023-02-27 13:14:34	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Alan Mwandenga" <amwandenga@mailinator.com>			Your submission has been sent for review	<p>Dear Alan Mwandenga,</p><p>I am pleased to inform you that an editor has reviewed your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
7	1048585	1	3	2023-02-27 13:15:05	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Alan Mwandenga" <amwandenga@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Alan Mwandenga,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/1">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
8	1048585	1	3	2023-02-27 13:15:19	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Alan Mwandenga" <amwandenga@mailinator.com>			Next steps for publishing your submission	<p>Dear Alan Mwandenga,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/1">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
9	1048585	2	0	2023-02-27 13:20:17	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The influence of lactation on the quantity and quality of cashmere production</a><br />Carlo Corino</p><p><b>Abstract</b></p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P&gt;0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P&lt;0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P&lt;0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P&lt;0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
10	1048585	2	0	2023-02-27 13:20:17	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The influence of lactation on the quantity and quality of cashmere production</a><br />Carlo Corino</p><p><b>Abstract</b></p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P&gt;0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P&lt;0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P&lt;0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P&lt;0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
55	1048585	9	3	2023-02-27 13:27:08	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Fabio Paglieri" <fpaglieri@mailinator.com>			Next steps for publishing your submission	<p>Dear Fabio Paglieri,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Hansen & Pinto: Reason Reclaimed, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/9">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
11	1048585	2	0	2023-02-27 13:20:17	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The influence of lactation on the quantity and quality of cashmere production</a><br />Carlo Corino</p><p><b>Abstract</b></p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P&gt;0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P&lt;0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P&lt;0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P&lt;0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
12	1048585	2	0	2023-02-27 13:20:17	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Carlo Corino" <ccorino@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Carlo Corino,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, The influence of lactation on the quantity and quality of cashmere production, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/2</p><p>If you have been logged out, you can login again with the username ccorino.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/2">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
13	1048585	2	3	2023-02-27 13:20:29	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Carlo Corino" <ccorino@mailinator.com>			Your submission has been sent for review	<p>Dear Carlo Corino,</p><p>I am pleased to inform you that an editor has reviewed your submission, The influence of lactation on the quantity and quality of cashmere production, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
14	1048585	3	0	2023-02-27 13:21:19	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence</a><br />Catherine Kwantes</p><p><b>Abstract</b></p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
20	1048585	4	0	2023-02-27 13:22:16	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice</a><br />Craig Montgomerie, Mark Irvine</p><p><b>Abstract</b></p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
15	1048585	3	0	2023-02-27 13:21:19	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence</a><br />Catherine Kwantes</p><p><b>Abstract</b></p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
16	1048585	3	0	2023-02-27 13:21:19	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence</a><br />Catherine Kwantes</p><p><b>Abstract</b></p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
17	1048585	3	0	2023-02-27 13:21:19	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Catherine Kwantes" <ckwantes@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Catherine Kwantes,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/3</p><p>If you have been logged out, you can login again with the username ckwantes.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/3">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
18	1048585	3	3	2023-02-27 13:21:31	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Catherine Kwantes" <ckwantes@mailinator.com>			Your submission has been sent for review	<p>Dear Catherine Kwantes,</p><p>I am pleased to inform you that an editor has reviewed your submission, The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
19	1048585	3	3	2023-02-27 13:21:52	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Catherine Kwantes" <ckwantes@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Catherine Kwantes,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/3">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
21	1048585	4	0	2023-02-27 13:22:16	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice</a><br />Craig Montgomerie, Mark Irvine</p><p><b>Abstract</b></p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
22	1048585	4	0	2023-02-27 13:22:17	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice</a><br />Craig Montgomerie, Mark Irvine</p><p><b>Abstract</b></p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
23	1048585	4	0	2023-02-27 13:22:17	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Craig Montgomerie" <cmontgomerie@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Craig Montgomerie,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/4</p><p>If you have been logged out, you can login again with the username cmontgomerie.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/4">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
24	1048585	4	0	2023-02-27 13:22:17	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Mark Irvine" <mirvine@mailinator.com>			Submission confirmation	<p>Dear Mark Irvine,</p><p>You have been named as a co-author on a submission to Journal of Public Knowledge. The submitter, Craig Montgomerie, provided the following details:</p><p>Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
25	1048585	5	0	2023-02-27 13:22:31	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Genetic transformation of forest trees</a><br />Diaga Diouf</p><p><b>Abstract</b></p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
26	1048585	5	0	2023-02-27 13:22:31	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Genetic transformation of forest trees</a><br />Diaga Diouf</p><p><b>Abstract</b></p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
27	1048585	5	0	2023-02-27 13:22:31	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Genetic transformation of forest trees</a><br />Diaga Diouf</p><p><b>Abstract</b></p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
28	1048585	5	0	2023-02-27 13:22:31	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Diaga Diouf,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Genetic transformation of forest trees, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/5</p><p>If you have been logged out, you can login again with the username ddiouf.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/5">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
29	1048585	5	3	2023-02-27 13:22:44	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			Your submission has been sent for review	<p>Dear Diaga Diouf,</p><p>I am pleased to inform you that an editor has reviewed your submission, Genetic transformation of forest trees, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
30	1048585	5	3	2023-02-27 13:23:06	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Diaga Diouf,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Genetic transformation of forest trees, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/5">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
31	1048585	5	3	2023-02-27 13:23:19	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Diaga Diouf" <ddiouf@mailinator.com>			Next steps for publishing your submission	<p>Dear Diaga Diouf,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Genetic transformation of forest trees, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/5">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
32	1048585	6	0	2023-02-27 13:23:48	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement</a><br />Dana Phillips</p><p><b>Abstract</b></p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
33	1048585	6	0	2023-02-27 13:23:48	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement</a><br />Dana Phillips</p><p><b>Abstract</b></p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
34	1048585	6	0	2023-02-27 13:23:48	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement</a><br />Dana Phillips</p><p><b>Abstract</b></p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
35	1048585	6	0	2023-02-27 13:23:48	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Dana Phillips" <dphillips@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Dana Phillips,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/6</p><p>If you have been logged out, you can login again with the username dphillips.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/6">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
36	1048585	6	3	2023-02-27 13:24:01	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Dana Phillips" <dphillips@mailinator.com>			Your submission has been sent for review	<p>Dear Dana Phillips,</p><p>I am pleased to inform you that an editor has reviewed your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
37	1048585	6	3	2023-02-27 13:24:22	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Dana Phillips" <dphillips@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Dana Phillips,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/6">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
39	1048585	7	0	2023-02-27 13:25:00	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Developing efficacy beliefs in the classroom</a><br />Domatilia Sokoloff</p><p><b>Abstract</b></p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
40	1048585	7	0	2023-02-27 13:25:00	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Developing efficacy beliefs in the classroom</a><br />Domatilia Sokoloff</p><p><b>Abstract</b></p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
41	1048585	7	0	2023-02-27 13:25:00	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Developing efficacy beliefs in the classroom</a><br />Domatilia Sokoloff</p><p><b>Abstract</b></p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
42	1048585	7	0	2023-02-27 13:25:00	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Domatilia Sokoloff" <dsokoloff@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Domatilia Sokoloff,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Developing efficacy beliefs in the classroom, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/7</p><p>If you have been logged out, you can login again with the username dsokoloff.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/7">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
61	1048585	10	9	2023-02-27 13:28:15	1073741829	"Aisla McCrae" <amccrae@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>, "David Buskins" <dbuskins@mailinator.com>, "Stephanie Berardo" <sberardo@mailinator.com>			Review accepted: Aisla McCrae accepted review assignment for #10 Novak — Condensing Water Availability Models to Focus on Specific Water Management Systems	<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>Aisla McCrae has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">#10 Novak — Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-03-27</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/10">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.
43	1048585	7	3	2023-02-27 13:25:14	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Domatilia Sokoloff" <dsokoloff@mailinator.com>			Your submission has been sent for review	<p>Dear Domatilia Sokoloff,</p><p>I am pleased to inform you that an editor has reviewed your submission, Developing efficacy beliefs in the classroom, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
44	1048585	7	8	2023-02-27 13:25:44	1073741829	"Paul Hudson" <phudson@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>, "David Buskins" <dbuskins@mailinator.com>, "Stephanie Berardo" <sberardo@mailinator.com>			Review accepted: Paul Hudson accepted review assignment for #7 Sokoloff — Developing efficacy beliefs in the classroom	<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>Paul Hudson has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">#7 Sokoloff — Developing efficacy beliefs in the classroom</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-03-27</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/7">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.
45	1048585	8	0	2023-02-27 13:26:05	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Traditions and Trends in the Study of the Commons</a><br />Elinor Ostrom, Frank van Laerhoven</p><p><b>Abstract</b></p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world. <p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
46	1048585	8	0	2023-02-27 13:26:05	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Traditions and Trends in the Study of the Commons</a><br />Elinor Ostrom, Frank van Laerhoven</p><p><b>Abstract</b></p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world. <p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
47	1048585	8	0	2023-02-27 13:26:05	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Traditions and Trends in the Study of the Commons</a><br />Elinor Ostrom, Frank van Laerhoven</p><p><b>Abstract</b></p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world. <p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
67	1048585	11	0	2023-02-27 13:28:47	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Margaret Morse" <mmorse@mailinator.com>			Submission confirmation	<p>Dear Margaret Morse,</p><p>You have been named as a co-author on a submission to Journal of Public Knowledge. The submitter, Karim Al-Khafaji, provided the following details:</p><p>Learning Sustainable Design through Service<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
48	1048585	8	0	2023-02-27 13:26:05	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Elinor Ostrom" <eostrom@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Elinor Ostrom,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Traditions and Trends in the Study of the Commons, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/8</p><p>If you have been logged out, you can login again with the username eostrom.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/8">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
49	1048585	8	0	2023-02-27 13:26:05	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Frank van Laerhoven" <fvanlaerhoven@mailinator.com>			Submission confirmation	<p>Dear Frank van Laerhoven,</p><p>You have been named as a co-author on a submission to Journal of Public Knowledge. The submitter, Elinor Ostrom, provided the following details:</p><p>Traditions and Trends in the Study of the Commons<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
50	1048585	9	0	2023-02-27 13:26:19	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Hansen & Pinto: Reason Reclaimed</a><br />Fabio Paglieri</p><p><b>Abstract</b></p>None.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
51	1048585	9	0	2023-02-27 13:26:19	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Minoti Inoue" <minoue@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Minoti Inoue,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Hansen & Pinto: Reason Reclaimed</a><br />Fabio Paglieri</p><p><b>Abstract</b></p>None.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
52	1048585	9	0	2023-02-27 13:26:19	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Fabio Paglieri" <fpaglieri@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Fabio Paglieri,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Hansen & Pinto: Reason Reclaimed, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/9</p><p>If you have been logged out, you can login again with the username fpaglieri.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/9">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
53	1048585	9	3	2023-02-27 13:26:33	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Fabio Paglieri" <fpaglieri@mailinator.com>			Your submission has been sent for review	<p>Dear Fabio Paglieri,</p><p>I am pleased to inform you that an editor has reviewed your submission, Hansen & Pinto: Reason Reclaimed, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
54	1048585	9	3	2023-02-27 13:26:55	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Fabio Paglieri" <fpaglieri@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Fabio Paglieri,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Hansen & Pinto: Reason Reclaimed, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/9">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
56	1048585	10	0	2023-02-27 13:27:37	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br />John Novak</p><p><b>Abstract</b></p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
57	1048585	10	0	2023-02-27 13:27:37	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br />John Novak</p><p><b>Abstract</b></p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
58	1048585	10	0	2023-02-27 13:27:37	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br />John Novak</p><p><b>Abstract</b></p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
59	1048585	10	0	2023-02-27 13:27:37	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"John Novak" <jnovak@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear John Novak,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Condensing Water Availability Models to Focus on Specific Water Management Systems, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/10</p><p>If you have been logged out, you can login again with the username jnovak.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/10">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
60	1048585	10	3	2023-02-27 13:27:51	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"John Novak" <jnovak@mailinator.com>			Your submission has been sent for review	<p>Dear John Novak,</p><p>I am pleased to inform you that an editor has reviewed your submission, Condensing Water Availability Models to Focus on Specific Water Management Systems, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
62	1048585	10	10	2023-02-27 13:28:26	1073741829	"Adela Gallego" <agallego@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>, "David Buskins" <dbuskins@mailinator.com>, "Stephanie Berardo" <sberardo@mailinator.com>			Review accepted: Adela Gallego accepted review assignment for #10 Novak — Condensing Water Availability Models to Focus on Specific Water Management Systems	<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>Adela Gallego has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">#10 Novak — Condensing Water Availability Models to Focus on Specific Water Management Systems</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-03-27</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/10">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.
63	1048585	11	0	2023-02-27 13:28:46	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Learning Sustainable Design through Service</a><br />Karim Al-Khafaji, Margaret Morse</p><p><b>Abstract</b></p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
64	1048585	11	0	2023-02-27 13:28:46	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Learning Sustainable Design through Service</a><br />Karim Al-Khafaji, Margaret Morse</p><p><b>Abstract</b></p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
65	1048585	11	0	2023-02-27 13:28:46	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Learning Sustainable Design through Service</a><br />Karim Al-Khafaji, Margaret Morse</p><p><b>Abstract</b></p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
66	1048585	11	0	2023-02-27 13:28:47	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Karim Al-Khafaji" <kalkhafaji@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Karim Al-Khafaji,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Learning Sustainable Design through Service, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/11</p><p>If you have been logged out, you can login again with the username kalkhafaji.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/11">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
68	1048585	12	0	2023-02-27 13:29:01	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Sodium butyrate improves growth performance of weaned piglets during the first period after weaning</a><br />Leo Christopher</p><p><b>Abstract</b></p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P&lt;0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
69	1048585	12	0	2023-02-27 13:29:01	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Sodium butyrate improves growth performance of weaned piglets during the first period after weaning</a><br />Leo Christopher</p><p><b>Abstract</b></p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P&lt;0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
70	1048585	12	0	2023-02-27 13:29:01	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Sodium butyrate improves growth performance of weaned piglets during the first period after weaning</a><br />Leo Christopher</p><p><b>Abstract</b></p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P&lt;0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
71	1048585	12	0	2023-02-27 13:29:01	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Leo Christopher" <lchristopher@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Leo Christopher,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Sodium butyrate improves growth performance of weaned piglets during the first period after weaning, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/12</p><p>If you have been logged out, you can login again with the username lchristopher.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/12">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
72	1048585	12	3	2023-02-27 13:29:16	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Leo Christopher" <lchristopher@mailinator.com>			Your submission has been sent for review	<p>Dear Leo Christopher,</p><p>I am pleased to inform you that an editor has reviewed your submission, Sodium butyrate improves growth performance of weaned piglets during the first period after weaning, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
73	1048585	13	0	2023-02-27 13:29:48	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br />Lise Kumiega</p><p><b>Abstract</b></p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
74	1048585	13	0	2023-02-27 13:29:48	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br />Lise Kumiega</p><p><b>Abstract</b></p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
75	1048585	13	0	2023-02-27 13:29:48	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br />Lise Kumiega</p><p><b>Abstract</b></p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
76	1048585	13	0	2023-02-27 13:29:48	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Lise Kumiega" <lkumiega@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Lise Kumiega,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/13</p><p>If you have been logged out, you can login again with the username lkumiega.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/13">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
77	1048585	13	3	2023-02-27 13:30:03	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Lise Kumiega" <lkumiega@mailinator.com>			Your submission has been sent for review	<p>Dear Lise Kumiega,</p><p>I am pleased to inform you that an editor has reviewed your submission, Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
78	1048585	13	7	2023-02-27 13:30:35	1073741829	"Julie Janssen" <jjanssen@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>, "David Buskins" <dbuskins@mailinator.com>, "Stephanie Berardo" <sberardo@mailinator.com>			Review accepted: Julie Janssen accepted review assignment for #13 Kumiega — Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions	<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>Julie Janssen has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">#13 Kumiega — Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-03-27</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/13">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.
79	1048585	13	9	2023-02-27 13:30:46	1073741829	"Aisla McCrae" <amccrae@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>, "David Buskins" <dbuskins@mailinator.com>, "Stephanie Berardo" <sberardo@mailinator.com>			Review accepted: Aisla McCrae accepted review assignment for #13 Kumiega — Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions	<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>Aisla McCrae has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">#13 Kumiega — Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-03-27</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/13">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.
80	1048585	13	10	2023-02-27 13:30:59	1073741829	"Adela Gallego" <agallego@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>, "David Buskins" <dbuskins@mailinator.com>, "Stephanie Berardo" <sberardo@mailinator.com>			Review accepted: Adela Gallego accepted review assignment for #13 Kumiega — Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions	<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>Adela Gallego has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">#13 Kumiega — Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-03-27</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/13">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.
81	1048585	13	3	2023-02-27 13:31:24	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Lise Kumiega" <lkumiega@mailinator.com>			Your submission has been reviewed and we encourage you to submit revisions	<p>Dear Lise Kumiega,</p><p>Your submission Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions has been reviewed and we would like to encourage you to submit revisions that address the reviewers' comments. An editor will review these revisions and if they address the concerns adequately, your submission may be accepted for publication.</p><p>The reviewers' comments are included at the bottom of this email. Please respond to each point in the reviewers' comments and identify what changes you have made. If you find any of the reviewer's comments to be unjustified or inappropriate, please explain your perspective.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers' comments at your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/13">submission dashboard</a>. If you have been logged out, you can login again with the username lkumiega.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/13">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p><p>Daniel Barnes</p><hr><p>The following comments were received from reviewers.</p><p><strong>Reviewer 1:</strong><br>Recommendation: Revisions Required</p><p>Here are my review comments</p><p><strong>Reviewer 2:</strong><br>Recommendation: Revisions Required</p><p>Here are my review comments</p><p><strong>Reviewer 3:</strong><br>Recommendation: Resubmit for Review</p><p>Here are my review comments</p>
82	1048585	14	0	2023-02-27 13:31:44	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua</a><br />Patricia Daniel</p><p><b>Abstract</b></p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
83	1048585	14	0	2023-02-27 13:31:44	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua</a><br />Patricia Daniel</p><p><b>Abstract</b></p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
89	1048585	15	0	2023-02-27 13:31:58	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Rana Baiyewu" <rbaiyewu@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Rana Baiyewu,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Yam diseases and its management in Nigeria, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/15</p><p>If you have been logged out, you can login again with the username rbaiyewu.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/15">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
84	1048585	14	0	2023-02-27 13:31:44	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua</a><br />Patricia Daniel</p><p><b>Abstract</b></p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
85	1048585	14	0	2023-02-27 13:31:44	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Patricia Daniel" <pdaniel@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Patricia Daniel,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/14</p><p>If you have been logged out, you can login again with the username pdaniel.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/14">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
86	1048585	15	0	2023-02-27 13:31:58	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Yam diseases and its management in Nigeria</a><br />Rana Baiyewu</p><p><b>Abstract</b></p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
87	1048585	15	0	2023-02-27 13:31:58	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Yam diseases and its management in Nigeria</a><br />Rana Baiyewu</p><p><b>Abstract</b></p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
88	1048585	15	0	2023-02-27 13:31:58	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Yam diseases and its management in Nigeria</a><br />Rana Baiyewu</p><p><b>Abstract</b></p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
90	1048585	15	3	2023-02-27 13:32:14	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Rana Baiyewu" <rbaiyewu@mailinator.com>			Your submission has been sent for review	<p>Dear Rana Baiyewu,</p><p>I am pleased to inform you that an editor has reviewed your submission, Yam diseases and its management in Nigeria, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
91	1048585	15	3	2023-02-27 13:32:36	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Rana Baiyewu" <rbaiyewu@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Rana Baiyewu,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Yam diseases and its management in Nigeria, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/15">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
92	1048585	15	3	2023-02-27 13:32:49	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Rana Baiyewu" <rbaiyewu@mailinator.com>			Next steps for publishing your submission	<p>Dear Rana Baiyewu,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Yam diseases and its management in Nigeria, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/15">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
93	1048585	16	0	2023-02-27 13:33:13	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat</a><br />Rosanna Rossi</p><p><b>Abstract</b></p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
94	1048585	16	0	2023-02-27 13:33:13	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat</a><br />Rosanna Rossi</p><p><b>Abstract</b></p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
95	1048585	16	0	2023-02-27 13:33:13	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat</a><br />Rosanna Rossi</p><p><b>Abstract</b></p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
96	1048585	16	0	2023-02-27 13:33:13	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Rosanna Rossi" <rrossi@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Rosanna Rossi,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/16</p><p>If you have been logged out, you can login again with the username rrossi.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/16">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
97	1048585	17	0	2023-02-27 13:33:28	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran</a><br />Vajiheh Karbasizaed</p><p><b>Abstract</b></p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (&gt;56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
110	1048585	19	0	2023-02-27 13:37:26	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Minoti Inoue" <minoue@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Minoti Inoue,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/19">Finocchiaro: Arguments About Arguments</a><br />Zita Woods</p><p><b>Abstract</b></p>None.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
98	1048585	17	0	2023-02-27 13:33:28	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran</a><br />Vajiheh Karbasizaed</p><p><b>Abstract</b></p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (&gt;56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
99	1048585	17	0	2023-02-27 13:33:28	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran</a><br />Vajiheh Karbasizaed</p><p><b>Abstract</b></p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (&gt;56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
100	1048585	17	0	2023-02-27 13:33:28	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Vajiheh Karbasizaed" <vkarbasizaed@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Vajiheh Karbasizaed,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/17</p><p>If you have been logged out, you can login again with the username vkarbasizaed.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/17">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
101	1048585	17	3	2023-02-27 13:33:45	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Vajiheh Karbasizaed" <vkarbasizaed@mailinator.com>			Your submission has been sent for review	<p>Dear Vajiheh Karbasizaed,</p><p>I am pleased to inform you that an editor has reviewed your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
102	1048585	17	3	2023-02-27 13:34:06	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Vajiheh Karbasizaed" <vkarbasizaed@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Vajiheh Karbasizaed,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/17">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
103	1048585	17	3	2023-02-27 13:34:20	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Vajiheh Karbasizaed" <vkarbasizaed@mailinator.com>			Next steps for publishing your submission	<p>Dear Vajiheh Karbasizaed,</p><p>I am writing from Journal of Public Knowledge to let you know that the editing of your submission, Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/17">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
104	1048585	18	0	2023-02-27 13:36:51	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/18">Self-Organization in Multi-Level Institutions in Networked Environments</a><br />Valerie Williamson</p><p><b>Abstract</b></p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
105	1048585	18	0	2023-02-27 13:36:51	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"David Buskins" <dbuskins@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear David Buskins,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/18">Self-Organization in Multi-Level Institutions in Networked Environments</a><br />Valerie Williamson</p><p><b>Abstract</b></p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
106	1048585	18	0	2023-02-27 13:36:51	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Stephanie Berardo" <sberardo@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Stephanie Berardo,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/18">Self-Organization in Multi-Level Institutions in Networked Environments</a><br />Valerie Williamson</p><p><b>Abstract</b></p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
107	1048585	18	0	2023-02-27 13:36:51	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Valerie Williamson" <vwilliamson@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Valerie Williamson,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Self-Organization in Multi-Level Institutions in Networked Environments, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/18</p><p>If you have been logged out, you can login again with the username vwilliamson.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/18">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
108	1048585	18	3	2023-02-27 13:37:08	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Valerie Williamson" <vwilliamson@mailinator.com>			Your submission has been declined	<p>Dear Valerie Williamson,</p><p>I’m sorry to inform you that, after reviewing your submission, Self-Organization in Multi-Level Institutions in Networked Environments, the editor has found that it does not meet our requirements for publication in Journal of Public Knowledge.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p><p>Daniel Barnes</p>
109	1048585	19	0	2023-02-27 13:37:26	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Journal of Public Knowledge	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/19">Finocchiaro: Arguments About Arguments</a><br />Zita Woods</p><p><b>Abstract</b></p>None.<p>If you find the submission to be relevant for Journal of Public Knowledge, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
111	1048585	19	0	2023-02-27 13:37:26	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Zita Woods" <zwoods@mailinator.com>			Thank you for your submission to Journal of Public Knowledge	<p>Dear Zita Woods,</p><p>Thank you for your submission to Journal of Public Knowledge. We have received your submission, Finocchiaro: Arguments About Arguments, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/19</p><p>If you have been logged out, you can login again with the username zwoods.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/19">submission dashboard</a>.</p><p>Thank you for considering Journal of Public Knowledge as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>
112	1048585	19	3	2023-02-27 13:37:43	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Zita Woods" <zwoods@mailinator.com>			Your submission has been sent for review	<p>Dear Zita Woods,</p><p>I am pleased to inform you that an editor has reviewed your submission, Finocchiaro: Arguments About Arguments, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
113	1048585	19	3	2023-02-27 13:38:04	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Zita Woods" <zwoods@mailinator.com>			Your submission has been accepted to Journal of Public Knowledge	<p>Dear Zita Woods,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Finocchiaro: Arguments About Arguments, to meet or exceed our expectations. We are excited to publish your piece in Journal of Public Knowledge and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of Journal of Public Knowledge and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/19">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
\.


--
-- Name: email_log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.email_log_log_id_seq', 113, true);


--
-- Data for Name: email_log_users; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.email_log_users (email_log_id, user_id) FROM stdin;
1	3
2	4
3	5
4	17
6	17
7	17
8	17
9	3
10	4
11	5
12	18
13	18
14	3
15	4
16	5
17	19
18	19
19	19
20	3
21	4
22	5
23	20
25	3
26	4
27	5
28	21
29	21
30	21
31	21
32	3
33	4
34	5
35	22
36	22
37	22
38	22
39	3
40	4
41	5
42	23
43	23
44	3
44	4
44	5
45	3
46	4
47	5
48	24
50	3
51	6
52	25
53	25
54	25
55	25
56	3
57	4
58	5
59	26
60	26
61	3
61	4
61	5
62	3
62	4
62	5
63	3
64	4
65	5
66	27
68	3
69	4
70	5
71	28
72	28
73	3
74	4
75	5
76	29
77	29
78	3
78	4
78	5
79	3
79	4
79	5
80	3
80	4
80	5
81	29
82	3
83	4
84	5
85	30
86	3
87	4
88	5
89	31
90	31
91	31
92	31
93	3
94	4
95	5
96	32
97	3
98	4
99	5
100	33
101	33
102	33
103	33
104	3
105	4
106	5
107	34
108	34
109	3
110	6
111	35
112	35
113	35
\.


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.email_templates (email_id, email_key, context_id, alternate_to) FROM stdin;
1	COPYEDIT_REQUEST	1	DISCUSSION_NOTIFICATION_COPYEDITING
2	CITATION_EDITOR_AUTHOR_QUERY	1	DISCUSSION_NOTIFICATION_COPYEDITING
3	EDITOR_ASSIGN_SUBMISSION	1	DISCUSSION_NOTIFICATION_SUBMISSION
4	EDITOR_ASSIGN_REVIEW	1	DISCUSSION_NOTIFICATION_REVIEW
5	EDITOR_ASSIGN_PRODUCTION	1	DISCUSSION_NOTIFICATION_PRODUCTION
6	LAYOUT_REQUEST	1	DISCUSSION_NOTIFICATION_PRODUCTION
7	LAYOUT_COMPLETE	1	DISCUSSION_NOTIFICATION_PRODUCTION
\.


--
-- Data for Name: email_templates_default_data; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.email_templates_default_data (email_key, locale, name, subject, body) FROM stdin;
PASSWORD_RESET_CONFIRM	en	Password Reset Confirm	Password Reset Confirmation	We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$lostPasswordUrl}<br />\n<br />\n{$siteContactName}
USER_REGISTER	en	User Created	Journal Registration	{$recipientName}<br />\n<br />\nYou have now been registered as a user with {$journalName}. We have included your username and password in this email, which are needed for all work with this journal through its website. At any point, you can ask to be removed from the journal's list of users by contacting me.<br />\n<br />\nUsername: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$signature}
USER_VALIDATE_CONTEXT	en	Validate Email (Journal Registration)	Validate Your Account	{$recipientName}<br />\n<br />\nYou have created an account with {$journalName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$journalSignature}
USER_VALIDATE_SITE	en	Validate Email (Site)	Validate Your Account	{$recipientName}<br />\n<br />\nYou have created an account with {$siteTitle}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$siteSignature}
REVIEWER_REGISTER	en	Reviewer Register	Registration as Reviewer with {$journalName}	<p>Dear {$recipientName},</p><p>In light of your expertise, we have registered your name in the reviewer database for {$journalName}. This does not entail any form of commitment on your part, but simply enables us to approach you with a submission to possibly review. On being invited to review, you will have an opportunity to see the title and abstract of the paper in question, and you'll always be in a position to accept or decline the invitation. You can also ask at any point to have your name removed from this reviewer list.</p><p>We are providing you with a username and password, which is used in all interactions with the journal through its website. You may wish, for example, to update your profile, including your reviewing interests.</p><p>Username: {$recipientUsername}<br />Password: {$password}</p><p>Thank you,</p>{$signature}
ISSUE_PUBLISH_NOTIFY	en	Issue Published Notify	Just published: {$issueIdentification} of {$journalName}	<p>Dear {$recipientName},</p><p>We are pleased to announce the publication of <a href="{$issueUrl}">{$issueIdentification}</a> of {$journalName}.  We invite you to read and share this work with your scholarly community.</p><p>Many thanks to our authors, reviewers, and editors for their valuable contributions, and to our readers for your continued interest.</p><p>Thank you,</p>{$signature}
SUBMISSION_ACK	en	Submission Confirmation	Thank you for your submission to {$journalName}	<p>Dear {$recipientName},</p><p>Thank you for your submission to {$journalName}. We have received your submission, {$submissionTitle}, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: {$authorSubmissionUrl}</p><p>If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Thank you for considering {$journalName} as a venue for your work.</p>{$journalSignature}
SUBMISSION_ACK_NOT_USER	en	Submission Confirmation (Other Authors)	Submission confirmation	<p>Dear {$recipientName},</p><p>You have been named as a co-author on a submission to {$journalName}. The submitter, {$submitterName}, provided the following details:</p><p>{$submissionTitle}<br>{$authorsWithAffiliation}</p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering {$journalName} as a venue for your work.</p><p>Kind regards,</p>{$journalSignature}
EDITOR_ASSIGN	en	Editor Assigned	You have been assigned as an editor on a submission to {$journalName}	<p>Dear {$recipientName},</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>If you find the submission to be relevant for {$journalName}, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p>{$journalSignature}
REVIEW_CANCEL	en	Reviewer Unassign	Request for Review Cancelled	<p>Dear {$recipientName},</p><p>Recently, we asked you to review a submission to {$journalName}. We have decided to cancel the request for you to reivew the submission, {$submissionTitle}.</p><p>We apologize any inconvenience this may cause you and hope that we will be able to call on you to assist with this journal's review process in the future.</p><p>If you have any questions, please contact me.</p>{$signature}
REVIEW_REINSTATE	en	Reviewer Reinstate	Can you still review something for {$journalName}?	<p>Dear {$recipientName},</p><p>We recently cancelled our request for you to review a submission, {$submissionTitle}, for {$journalName}. We've reversed that decision and we hope that you are still able to conduct the review.</p><p>If you are able to assist with this submission's review, you can <a href="{$reviewAssignmentUrl}">login to the journal</a> to view the submission, upload review files, and submit your review request.</p><p>If you have any questions, please contact me.</p><p>Kind regards,</p>{$signature}
REVIEW_RESEND_REQUEST	en	Resend Review Request to Reviewer	Requesting your review again for {$journalName}	<p>Dear {$recipientName},</p><p>Recently, you declined our request to review a submission, {$submissionTitle}, for {$journalName}. I'm writing to see if you are able to conduct the review after all.</p><p>We would be grateful if you're able to perform this review, but we understand if that is not possible at this time. Either way, please <a href="{$reviewAssignmentUrl}">accept or decline the request</a> by {$responseDueDate}, so that we can find an alternate reviewer.<p>If you have any questions, please contact me.</p><p>Kind regards,</p>{$signature}
REVIEW_REQUEST	en	Review Request	Invitation to review	<p>Dear {$recipientName},</p><p>I believe that you would serve as an excellent reviewer for a submission  to {$journalName}. The submission's title and abstract are below, and I hope that you will consider undertaking this important task for us.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can view the submission, upload review files, and submit your review by logging into the journal site and following the steps at the link below.</p><p><a href="{$reviewAssignmentUrl}">{$submissionTitle}</a></p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please <a href="{$reviewAssignmentUrl}">accept or decline</a> the review by <b>{$responseDueDate}</b>.</p><p>You may contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$signature}
REVIEW_ACK	en	Review Acknowledgement	Thank you for your review	<p>Dear {$recipientName},</p>\n<p>Thank you for completing your review of the submission, {$submissionTitle}, for {$journalName}. We appreciate your time and expertise in contributing to the quality of the work that we publish.</p>\n<p>It has been a pleasure to work with you as a reviewer for {$journalName}, and we hope to have the opportunity to work with you again in the future.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>
REVIEW_REQUEST_SUBSEQUENT	en	Review Request Subsequent	Request to review a revised submission	<p>Dear {$recipientName},</p><p>Thank you for your review of <a href="{$reviewAssignmentUrl}">{$submissionTitle}</a>. The authors have considered the reviewers' feedback and have now submitted a revised version of their work. I'm writing to ask if you would conduct a second round of peer review for this submission.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can <a href="{$reviewAssignmentUrl}">follow the review steps</a> to view the submission, upload review files, and submit your review comments.<p><p><a href="{$reviewAssignmentUrl}">{$submissionTitle}</a></p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please <a href="{$reviewAssignmentUrl}">accept or decline</a> the review by <b>{$responseDueDate}</b>.</p><p>Please feel free to contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$signature}
REVIEW_RESPONSE_OVERDUE_AUTO	en	Review Response Overdue (Automated)	Will you be able to review this for us?	<p>Dear {$recipientName},</p><p>This email is an automated reminder from {$journalName} in regards to our request for your review of the submission, "{$submissionTitle}."</p><p>You are receiving this email because we have not yet received a confirmation from you indicating whether or not you are able to undertake the review of this submission.</p><p>Please let us know whether or not you are able to undertake this review by using our submission management software to accept or decline this request.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>{$submissionTitle}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please feel free to contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$journalSignature}
REVIEW_CONFIRM	en	Review Confirm	Review accepted: {$reviewerName} accepted review assignment for #{$submissionId} {$authorsShort} — {$submissionTitle}	<p>Dear {$recipientName},</p><p>{$reviewerName} has accepted the following review:</p><p><a href="{$submissionUrl}">#{$submissionId} {$authorsShort} — {$submissionTitle}</a><br /><b>Type:</b> {$reviewMethod}</p><b>Review Due:</b> {$reviewDueDate}</p><p>Login to <a href="{$submissionUrl}">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="{$journalUrl}">{$journalName}</a>.
REVIEW_DECLINE	en	Review Decline	Unable to Review	Editors:<br />\n<br />\nI am afraid that at this time I am unable to review the submission, &quot;{$submissionTitle},&quot; for {$journalName}. Thank you for thinking of me, and another time feel free to call on me.<br />\n<br />\n{$senderName}
REVIEW_REMIND	en	Review Reminder	A reminder to please complete your review	<p>Dear {$recipientName},</p><p>Just a gentle reminder of our request for your review of the submission, "{$submissionTitle}," for {$journalName}. We were expecting to have this review by {$reviewDueDate} and we would be pleased to receive it as soon as you are able to prepare it.</p><p>You can <a href="{$reviewAssignmentUrl}">login to the journal</a> and follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>If you need an extension of the deadline, please contact me. I look forward to hearing from you.</p><p>Thank you in advance and kind regards,</p>{$signature}
REVIEW_REMIND_AUTO	en	Review Reminder (Automated)	A reminder to please complete your review	<p>Dear {$recipientName}:</p><p>This email is an automated reminder from {$journalName} in regards to our request for your review of the submission, "{$submissionTitle}."</p><p>We were expecting to have this review by {$reviewDueDate} and we would be pleased to receive it as soon as you are able to prepare it.</p><p>Please <a href="{$reviewAssignmentUrl}">login to the journal</a> and follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>If you need an extension of the deadline, please contact me. I look forward to hearing from you.</p><p>Thank you in advance and kind regards,</p>{$journalSignature}
REVIEW_COMPLETE	en	Review Completed	Review complete: {$reviewerName} recommends {$reviewRecommendation} for #{$submissionId} {$authorsShort} — {$submissionTitle}	<p>Dear {$recipientName},</p><p>{$reviewerName} completed the following review:</p><p><a href="{$submissionUrl}">#{$submissionId} {$authorsShort} — {$submissionTitle}</a><br /><b>Recommendation:</b> {$reviewRecommendation}<br /><b>Type:</b> {$reviewMethod}</p><p>Login to <a href="{$submissionUrl}">view all files and comments</a> provided by this reviewer.</p>
REVIEW_EDIT	en	Review Edited	Your review assignment has been changed for {$journalName}	<p>Dear {$recipientName},</p><p>An editor has made changes to your review assignment for {$journalName}. Please review the details below and let us know if you have any questions.</p><p><a href="{$reviewAssignmentUrl}">{$submissionTitle}</a><br /><b>Type:</b> {$reviewMethod}<br /><b>Accept or Decline By:</b> {$responseDueDate}<br /><b>Submit Review By:</b> {$reviewDueDate}</p><p>You can login to <a href="{$reviewAssignmentUrl}">complete this review</a> at any time.</p>
EDITOR_DECISION_ACCEPT	en	Submission Accepted	Your submission has been accepted to {$journalName}	<p>Dear {$recipientName},</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, {$submissionTitle}, to meet or exceed our expectations. We are excited to publish your piece in {$journalName} and we thank you for choosing our journal as a venue for your work.</p><p>Your submission is now forthcoming in a future issue of {$journalName} and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p>{$signature}
EDITOR_DECISION_SEND_TO_EXTERNAL	en	Sent to Review	Your submission has been sent for review	<p>Dear {$recipientName},</p><p>I am pleased to inform you that an editor has reviewed your submission, {$submissionTitle}, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>{$reviewTypeDescription} You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p>{$signature}</p>
DISCUSSION_NOTIFICATION_COPYEDITING	en	Discussion (Copyediting)	A message regarding {$journalName}	Please enter your message.
EDITOR_DECISION_SEND_TO_PRODUCTION	en	Sent to Production	Next steps for publishing your submission	<p>Dear {$recipientName},</p><p>I am writing from {$journalName} to let you know that the editing of your submission, {$submissionTitle}, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p>{$signature}
EDITOR_DECISION_REVISIONS	en	Revisions Requested	Your submission has been reviewed and we encourage you to submit revisions	<p>Dear {$recipientName},</p><p>Your submission {$submissionTitle} has been reviewed and we would like to encourage you to submit revisions that address the reviewers' comments. An editor will review these revisions and if they address the concerns adequately, your submission may be accepted for publication.</p><p>The reviewers' comments are included at the bottom of this email. Please respond to each point in the reviewers' comments and identify what changes you have made. If you find any of the reviewer's comments to be unjustified or inappropriate, please explain your perspective.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers' comments at your <a href="{$authorSubmissionUrl}">submission dashboard</a>. If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}
EDITOR_DECISION_RESUBMIT	en	Resubmit for Review	Your submission has been reviewed - please revise and resubmit	<p>Dear {$recipientName},</p><p>After reviewing your submission, {$submissionTitle}, the reviewers have recommended that your submission cannot be accepted for publication in its current form. However, we would like to encourage you to submit a revised version that addresses the reviewers' comments. Your revisions will be reviewed by an editor and may be sent out for another round of peer review.</p><p>Please note that resubmitting your work does not guarantee that it will be accepted.</p><p>The reviewers' comments are included at the bottom of this email. Please respond to each point and identify what changes you have made. If you find any of the reviewer's comments inappropriate, please explain your perspective. If you have questions about the recommendations in your review, please include these in your response.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers' comments <a href="{$authorSubmissionUrl}">at your submission dashboard</a>. If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}
EDITOR_DECISION_DECLINE	en	Submission Declined	Your submission has been declined	<p>Dear {$recipientName},</p><p>While we appreciate receiving your submission, we are unable to accept {$submissionTitle} for publication on the basis of the comments from reviewers.</p><p>The reviewers' comments are included at the bottom of this email.</p><p>Thank you for submitting to {$journalName}. Although it is disappointing to have a submission declined, I hope you find the reviewers' comments to be constructive and helpful.</p><p>You are now free to submit the work elsewhere if you choose to do so.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}
EDITOR_DECISION_INITIAL_DECLINE	en	Submission Declined (Pre-Review)	Your submission has been declined	<p>Dear {$recipientName},</p><p>I’m sorry to inform you that, after reviewing your submission, {$submissionTitle}, the editor has found that it does not meet our requirements for publication in {$journalName}.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p>{$signature}
EDITOR_RECOMMENDATION	en	Recommendation Made	Editor Recommendation	<p>Dear {$recipientName},</p><p>After considering the reviewers' feedback, I would like to make the following recommendation regarding the submission {$submissionTitle}.</p><p>My recommendation is: {$recommendation}.</p><p>Please visit the submission's <a href="{$submissionUrl}">editorial workflow</a> to act on this recommendation.</p><p>Please feel free to contact me with any questions.</p><p>Kind regards,</p><p>{$senderName}</p>
EDITOR_DECISION_NOTIFY_OTHER_AUTHORS	en	Notify Other Authors	An update regarding your submission	<p>The following email was sent to {$submittingAuthorName} from {$journalName} regarding {$submissionTitle}.</p>\n<p>You are receiving a copy of this notification because you are identified as an author of the submission. Any instructions in the message below are intended for the submitting author, {$submittingAuthorName}, and no action is required of you at this time.</p>\n\n{$messageToSubmittingAuthor}
DISCUSSION_NOTIFICATION_PRODUCTION	en	Discussion (Production)	A message regarding {$journalName}	Please enter your message.
EDITOR_DECISION_NOTIFY_REVIEWERS	en	Notify Reviewers of Decision	Thank you for your review	<p>Dear {$recipientName},</p>\n<p>Thank you for completing your review of the submission, {$submissionTitle}, for {$journalName}. We appreciate your time and expertise in contributing to the quality of the work that we publish. We have shared your comments with the authors, along with our other reviewers' comments and the editor's decision.</p>\n<p>Based on the feedback we received, we have notified the authors of the following:</p>\n<p>{$decisionDescription}</p>\n<p>Your recommendation was considered alongside the recommendations of other reviewers before coming to a decision. Occasionally the editor's decision may differ from the recommendation made by one or more reviewers. The editor considers many factors, and does not take these decisions lightly. We are grateful for our reviewers' expertise and suggestions.</p>\n<p>It has been a pleasure to work with you as a reviewer for {$journalName}, and we hope to have the opportunity to work with you again in the future.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>
EDITOR_DECISION_NEW_ROUND	en	New Review Round Initiated	Your submission has been sent for another round of review	<p>Dear {$recipientName},</p>\n<p>Your revised submission, {$submissionTitle}, has been sent for a new round of peer review. \nYou will hear from us with feedback from the reviewers and information about the next steps.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_REVERT_DECLINE	en	Reinstate Declined Submission	We have reversed the decision to decline your submission	<p>Dear {$recipientName},</p>\n<p>The decision to decline your submission, {$submissionTitle}, has been reversed. \nAn editor will complete the round of review and you will be notified when a \ndecision is made.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_REVERT_INITIAL_DECLINE	en	Reinstate Submission Declined Without Review	We have reversed the decision to decline your submission	<p>Dear {$recipientName},</p>\n<p>The decision to decline your submission, {$submissionTitle}, has been reversed. \nAn editor will look further at your submission before deciding whether to decline \nthe submission or send it for review.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_SKIP_REVIEW	en	Submission Accepted (Without Review)	Your submission has been sent for copyediting	<p>Dear {$recipientName},</p>\n<p>I am pleased to inform you that we have decided to accept your submission without peer review. We found your submission, {$submissionTitle}, to meet our expectations, and we do not require that work of this type undergo peer review. We are excited to publish your piece in {$journalName} and we thank you for choosing our journal as a venue for your work.</p>\nYour submission is now forthcoming in a future issue of {$journalName} and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on your efforts.</p>\n<p>Your submission will now undergo copy editing and formatting to prepare it for publication. </p>\n<p>You will shortly receive further instructions.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_BACK_FROM_PRODUCTION	en	Submission Sent Back to Copyediting	Your submission has been sent back to copyediting	<p>Dear {$recipientName},</p><p>Your submission, {$submissionTitle}, has been sent back to the copyediting stage, where it will undergo further copyediting and formatting to prepare it for publication.</p><p>Occasionally, a submission is sent to the production stage before it is ready for the final galleys to be prepared for publication. Your submission is still forthcoming. I apologize for any confusion.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>We will contact you if we need any further assistance.</p><p>Kind regards,</p><p>{$signature}</p>
EDITOR_DECISION_BACK_FROM_COPYEDITING	en	Submission Sent Back from Copyediting	Your submission has been sent back to review	<p>Dear {$recipientName},</p><p>Your submission, {$submissionTitle}, has been sent back to the review stage. It will undergo further review before it can be accepted for publication.</p><p>Occasionally, a decision to accept a submission will be recorded accidentally in our system and we must send it back to review. I apologize for any confusion this has caused. We will work to complete any further review quickly so that you have a final decision as soon as possible.</p><p>We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p><p>{$signature}</p>
EDITOR_DECISION_CANCEL_REVIEW_ROUND	en	Review Round Cancelled	A review round for your submission has been cancelled	<p>Dear {$recipientName},</p><p>We recently opened a new review round for your submission, {$submissionTitle}. We are closing this review round now.</p><p>Occasionally, a decision to open a round of review will be recorded accidentally in our system and we must cancel this review round. I apologize for any confusion this may have caused.</p><p>We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p><p>{$signature}</p>
EDITOR_DECISION_RESUBMIT	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est de vous demander d'apporter des révisions à votre soumission et de la soumettre à nouveau.
SUBSCRIPTION_NOTIFY	en	Subscription Notify	Subscription Notification	{$recipientName}:<br />\n<br />\nYou have now been registered as a subscriber in our online journal management system for {$journalName}, with the following subscription:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nTo access content that is available only to subscribers, simply log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nOnce you have logged in to the system you can change your profile details and password at any point.<br />\n<br />\nPlease note that if you have an institutional subscription, there is no need for users at your institution to log in, since requests for subscription content will be automatically authenticated by the system.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}
OPEN_ACCESS_NOTIFY	en	Open Access Notify	Free to read: {$issueIdentification} of {$journalName} is now open access	<p>Dear {$recipientName},</p><p>We are pleased to inform you that <a href="{$issueUrl}">{$issueIdentification}</a> of {$journalName} is now available under open access.  A subscription is no longer required to read this issue.</p><p>Thank you for your continuing interest in our work.</p>{$journalSignature}
SUBSCRIPTION_BEFORE_EXPIRY	en	Subscription Expires Soon	Notice of Subscription Expiry	{$recipientName}:<br />\n<br />\nYour {$journalName} subscription is about to expire.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo ensure the continuity of your access to this journal, please go to the journal website and renew your subscription. You are able to log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}
SUBSCRIPTION_AFTER_EXPIRY	en	Subscription Expired	Subscription Expired	{$recipientName}:<br />\n<br />\nYour {$journalName} subscription has expired.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}
SUBSCRIPTION_AFTER_EXPIRY_LAST	en	Subscription Expired Last	Subscription Expired - Final Reminder	{$recipientName}:<br />\n<br />\nYour {$journalName} subscription has expired.<br />\nPlease note that this is the final reminder that will be emailed to you.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$recipientUsername}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionSignature}
SUBSCRIPTION_PURCHASE_INDL	en	Purchase Individual Subscription	Subscription Purchase: Individual	An individual subscription has been purchased online for {$journalName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n
VERSION_CREATED	en	Version Created	A new version was created for {$submissionTitle}	<p>Dear {$recipientName}, </p><p>This is an automated message to inform you that a new version of your submission, {$submissionTitle}, was created. You can view this version from your submission dashboard at the following link:</p><p><a href="{$submissionUrl}">{$submissionTitle}</a></p><hr><p>This is an automatic email sent from <a href="{$journalUrl}">{$journalName}</a>.</p>
SUBSCRIPTION_PURCHASE_INSTL	en	Purchase Institutional Subscription	Subscription Purchase: Institutional	An institutional subscription has been purchased online for {$journalName} with the following details. To activate this subscription, please use the provided Subscription URL and set the subscription status to 'Active'.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n
SUBSCRIPTION_RENEW_INDL	en	Renew Individual Subscription	Subscription Renewal: Individual	An individual subscription has been renewed online for {$journalName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n
SUBSCRIPTION_RENEW_INSTL	en	Renew Institutional Subscription	Subscription Renewal: Institutional	An institutional subscription has been renewed online for {$journalName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$subscriberDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n
REVISED_VERSION_NOTIFY	en	Revised Version Notification	Revised Version Uploaded	<p>Dear {$recipientName},</p><p>The author has uploaded revisions for the submission, <b>{$authorsShort} — {$submissionTitle}</b>. <p>As an assigned editor, we ask that you login and <a href="{$submissionUrl}">view the revisions</a> and make a decision to accept, decline or send the submission for further review.</p><br><br>—<br>This is an automated message from <a href="{$journalUrl}">{$journalName}</a>.
STATISTICS_REPORT_NOTIFICATION	en	Statistics Report Notification	Editorial activity for {$month}, {$year}	\n{$recipientName}, <br />\n<br />\nYour journal health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n\t<li>New submissions this month: {$newSubmissions}</li>\n\t<li>Declined submissions this month: {$declinedSubmissions}</li>\n\t<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n\t<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the journal to view more detailed <a href="{$editorialStatsLink}">editorial trends</a> and <a href="{$publicationStatsLink}">published article stats</a>. A full copy of this month's editorial trends is attached.<br />\n<br />\nSincerely,<br />\n{$journalSignature}
ANNOUNCEMENT	en	New Announcement	{$announcementTitle}	<b>{$announcementTitle}</b><br />\n<br />\n{$announcementSummary}<br />\n<br />\nVisit our website to read the <a href="{$announcementUrl}">full announcement</a>.
DISCUSSION_NOTIFICATION_SUBMISSION	en	Discussion (Submission)	A message regarding {$journalName}	Please enter your message.
DISCUSSION_NOTIFICATION_REVIEW	en	Discussion (Review)	A message regarding {$journalName}	Please enter your message.
COPYEDIT_REQUEST	en	Request Copyedit	Submission {$submissionId} is ready to be copyedited for {$contextAcronym}	<p>Dear {$recipientName},</p><p>A new submission is ready to be copyedited:</p><p><a href"{$submissionUrl}">{$submissionId} — {$submissionTitle}</a><br />{$journalName}</p><p>Please follow these steps to complete this task:</p><ol><li>Click on the Submission URL below.</li><li>Open any files available under Draft Files and edit the files. Use the Copyediting Discussions area if you need to contact the editor(s) or author(s).</li><li>Save the copyedited file(s) and upload them to the Copyedited panel.</li><li>Use the Copyediting Discussions to notify the editor(s) that all files have been prepared, and that the Production process may begin.</li></ol><p>If you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to {$journalName}.</p><p>Kind regards,</p>{$signature}
CITATION_EDITOR_AUTHOR_QUERY	en	Question About Citation	Citation Editing	{$recipientName},<br />\n<br />\nCould you please verify or provide us with the proper citation for the following reference from your article, {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nThanks!<br />\n<br />\n{$senderName}<br />\nCopy-Editor, {$journalName}<br />\n
EDITOR_ASSIGN_SUBMISSION	en	Assign Editor	You have been assigned as an editor on a submission to {$journalName}	<p>Dear {$recipientName},</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>If you find the submission to be relevant for {$journalName}, please forward the submission to the review stage by selecting "Send to Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this journal, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p>{$journalSignature}
EDITOR_ASSIGN_REVIEW	en	Assign Editor	You have been assigned as an editor on a submission to {$journalName}	<p>Dear {$recipientName},</p><p>The following submission has been assigned to you to see through the peer review process.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please login to <a href="{$submissionUrl}">view the submission</a> and assign qualified reviewers. You can assign a reviewer by clicking "Add Reviewer".</p><p>Thank you in advance.</p><p>Kind regards,</p>{$signature}
EDITOR_ASSIGN_PRODUCTION	en	Assign Editor	You have been assigned as an editor on a submission to {$journalName}	<p>Dear {$recipientName},</p><p>The following submission has been assigned to you to see through the production stage.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please login to <a href="{$submissionUrl}">view the submission</a>. Once production-ready files are available, upload them under the <strong>Publication > Galleys</strong> section. Then schedule the work for publication by clicking the <strong>Schedule for Publication</strong> button.</p><p>Thank you in advance.</p><p>Kind regards,</p>{$signature}
LAYOUT_REQUEST	en	Ready for Production	Submission {$submissionId} is ready for production at {$contextAcronym}	<p>Dear {$recipientName},</p><p>A new submission is ready for layout editing:</p><p><a href="{$submissionUrl}">{$submissionId} — {$submissionTitle}</a><br />{$journalName}</p><ol><li>Click on the Submission URL above.</li><li>Download the Production Ready files and use them to create the galleys according to the journal's standards.</li><li>Upload the galleys to the Publication section of the submission.</li><li>Use the  Production Discussions to notify the editor that the galleys are ready.</li></ol><p>If you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this journal.</p><p>Kind regards,</p>{$signature}
LAYOUT_COMPLETE	en	Galleys Complete	Galleys Complete	<p>Dear {$recipientName},<p><p>Galleys have now been prepared for the following submission and are ready for final review.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$journalName}</p><p>If you have any questions, please contact me.</p><p>Kind regards,</p><p>{$signature}</p>
EDITORIAL_REMINDER	en	Editorial Reminder	Outstanding editorial tasks for {$journalName}	<p>Dear {$recipientName},</p><p>You are currently assigned to {$numberOfSubmissions} submissions in <a href="{$journalUrl}">{$journalName}</a>. The following submissions are <b>waiting for your response</b>.</p>{$outstandingTasks}<p>View all of your assignments in your <a href="{$submissionsUrl}">submission dashboard</a>.</p><p>If you have any questions about your assignments, please contact {$contactName} at {$contactEmail}.</p>
SUBMISSION_SAVED_FOR_LATER	en	Submission Saved for Later	Resume your submission to {$journalName}	<p>Dear {$recipientName},</p><p>Your submission details have been saved in our system, but it has not yet been submitted for consideration. You can return to complete your submission at any time by following the link below.</p><p><a href="{$submissionWizardUrl}">{$authorsShort} — {$submissionTitle}</a></p><hr><p>This is an automated email from <a href="{$journalUrl}">{$journalName}</a>.</p>
SUBMISSION_NEEDS_EDITOR	en	Submission Needs Editor	A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear {$recipientName},</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="{$journalUrl}">{$journalName}</a>.</p>
PAYMENT_REQUEST_NOTIFICATION	en	Payment Request	Payment Request Notification	<p>Dear {$recipientName},</p><p>Congratulations on the acceptance of your submission, {$submissionTitle}, to {$journalName}. Now that your submission has been accepted, we would like to request payment of the publication fee.</p><p>This fee covers the production costs of bringing your submission to publication. To make the payment, please visit <a href="{$queuedPaymentUrl}">{$queuedPaymentUrl}</a>.</p><p>If you have any questions, please see our <a href="{$submissionGuidelinesUrl}">Submission Guidelines</a></p>
ORCID_COLLECT_AUTHOR_ID	en	orcidCollectAuthorId	Submission ORCID	Dear {$recipientName},<br/>\n<br/>\nYou have been listed as an author on a manuscript submission to {$journalName}.<br/>\nTo confirm your authorship, please add your ORCID id to this submission by visiting the link provided below.<br/>\n<br/>\n<a href="{$authorOrcidUrl}"><img id="orcid-id-logo" src="https://info.orcid.org/wp-content/uploads/2020/12/ORCIDiD_icon16x16.png" width='16' height='16' alt="ORCID iD icon" style="display: block; margin: 0 .5em 0 0; padding: 0; float: left;"/>Register or connect your ORCID iD</a><br/>\n<br/>\n<br>\n<a href="{$orcidAboutUrl}">More information about ORCID at {$journalName}</a><br/>\n<br/>\nIf you have any questions, please contact me.<br/>\n<br/>\n{$principalContactSignature}<br/>\n
ORCID_REQUEST_AUTHOR_AUTHORIZATION	en	orcidRequestAuthorAuthorization	Requesting ORCID record access	Dear {$recipientName},<br>\n<br>\nYou have been listed as an author on the manuscript submission "{$submissionTitle}" to {$journalName}.\n<br>\n<br>\nPlease allow us to add your ORCID id to this submission and also to add the submission to your ORCID profile on publication.<br>\nVisit the link to the official ORCID website, login with your profile and authorize the access by following the instructions.<br>\n<a href="{$authorOrcidUrl}"><img id="orcid-id-logo" src="https://info.orcid.org/wp-content/uploads/2020/12/ORCIDiD_icon16x16.png" width='16' height='16' alt="ORCID iD icon" style="display: block; margin: 0 .5em 0 0; padding: 0; float: left;"/>Register or Connect your ORCID iD</a><br/>\n<br>\n<br>\n<a href="{$orcidAboutUrl}">More about ORCID at {$journalName}</a><br/>\n<br>\nIf you have any questions, please contact me.<br>\n<br>\n{$principalContactSignature}<br>\n
MANUAL_PAYMENT_NOTIFICATION	en	Manual Payment Notify	Manual Payment Notification	A manual payment needs to be processed for the journal {$journalName} and the user {senderName} (username &quot;{$senderUsername}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$paymentName}&quot;.<br />\nThe cost is {$paymentAmount} ({$paymentCurrencyCode}).<br />\n<br />\nThis email was generated by Open Journal Systems' Manual Payment plugin.
PASSWORD_RESET_CONFIRM	fr_CA		Confirmation de la réinitialisation du mot de passe	Nous avons reçu une demande concernant la réinitialisation de votre mot de passe pour le site Web {$siteTitle}.<br />\n<br />\nSi vous n'avez pas fait cette demande, veuillez ne pas tenir compte du présent message, votre mot de passe restera le même. Si vous souhaitez réinitialiser votre mot de passe, cliquer sur l'URL ci-dessous.<br />\n<br />\nRéinitialisation de mon mot de passe : {$lostPasswordUrl}<br />\n<br />\n{$siteContactName}
USER_REGISTER	fr_CA		Inscription à la revue	{$recipientName},<br />\n<br />\nVous êtes désormais inscrit-e en tant qu'utilisateur-trice pour la revue {$journalName}. Votre nom d'utilisateur-trice et votre mot de passe figurent dans ce courriel, lesquels sont requis pour toute interaction avec la revue via son site Web. À n'importe quel moment, vous pouvez demander à être retiré-e de la liste des utilisateurs-trices de la revue en nous contactant.<br />\n<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\nMot de passe : {$password}<br />\n<br />\nMerci,<br />\n{$signature}
USER_VALIDATE_CONTEXT	fr_CA	Validez l'adresse courriel (enregistrement de la revue)	Valider votre compte	{$recipientName},<br />\n<br />\nVous avez créé un compte pour la revue {$journalName}. Pour pouvoir commencer à l'utiliser il nous faut d'abord valider votre adresse de courriel. Pour ce faire, vous n'avez qu'à suivre le lien ci-dessous :<br />\n<br />\n{$activateUrl}<br />\n<br />\nMerci,<br />\n{$journalSignature}
USER_VALIDATE_SITE	fr_CA		Valider votre compte	{$recipientName},<br />\n<br />\nVous avez créé un compte dans {$siteTitle}. Avant de pouvoir commencer à l'utiliser, il nous faut d'abord valider votre adresse de courriel. Pour ce faire, vous n'avez qu'à suivre le lien ci-dessous :<br />\n<br />\n{$activateUrl}<br />\n<br />\nMerci,<br />\n{$siteSignature}
REVIEWER_REGISTER	fr_CA		Inscription en tant qu'évaluateur-trice pour la revue {$journalName}	Compte tenu de votre expertise, nous avons pris l'initiative d'inscrire votre nom dans la base de données des évaluateurs-trices de la revue {$journalName}. Cela ne vous engage d'aucune façon, mais nous permet simplement de solliciter vos services pour l'évaluation d'une soumission. Si vous êtes invité-e à effectuer une évaluation, vous recevrez le titre et le résumé de l'article en question, et serez toujours libre d'accepter ou de refuser une telle invitation. À tout moment, il vous est également possible de demander à ce que votre nom soit retiré de la liste des évaluateurs-trices.<br />\n<br />\nNous vous acheminons un nom d'utilisateur-trice et un mot de passe, car tous deux sont requis pour tout échange avec la revue via son site Web. Vous pouvez, par exemple, si vous le souhaitez, effectuer la mise à jour de votre profil, y compris vos domaines d'intérêt en matière d'évaluation.<br />\n<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\nMot de passe : {$password}<br />\n<br />\nMerci,<br />\n{$signature}
ISSUE_PUBLISH_NOTIFY	fr_CA		Parution du dernier numéro	<p>Lecteurs.trices,</p><p>La revue {$journalName} a le plaisir de vous annoncer la publication de son dernier numéro : {$issueIdentification}. Nous vous invitons à consulter le sommaire, puis à visiter notre site Web pour y lire les articles qui vous intéressent. Nous remercions vivement nos auteur.e.s, réviseur.e.s et rédacteur.trice.s pour leurs précieuses contributions à cet ouvrage, ainsi que nos lecteur.trice.s pour leur intérêt constant.</p><p>Cordialement,</p>{$signature}
SUBMISSION_ACK	fr_CA		Accusé de réception de la soumission	{$recipientName},<br />\n<br />\nNous vous remercions d'avoir soumis le manuscrit intitulé « {$submissionTitle} » à la revue {$journalName}. Grâce à notre système de gestion en ligne, vous pourrez suivre votre soumission tout au long du processus d'édition en accédant au site Web de la revue :<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec nous. Nous vous remercions d'avoir pensé à notre revue pour la publication de vos travaux.<br />\n<br />\n{$journalSignature}
SUBMISSION_ACK_NOT_USER	fr_CA		Accusé de réception de la soumission	<p>Bonjour,</p><p>Le manuscrit intitulé , « {$submissionTitle} » , a été soumis par {$submitterName} à la revue {$journalName}.</p><p>Si vous avez des questions, n'hésitez pas à communiquer avec nous. Nous vous remercions d'avoir pensé à la revue {$journalName} pour la publication de vos travaux.</p><p>Cordialement,</p>{$journalSignature}
EDITOR_ASSIGN	fr_CA		Vous avez été assigné-e en tant que rédacteur-trice pour la soumission {$journalName}	{$recipientName},<br />\n<br />\nLa soumission intitulée « {$submissionTitle} » pour la revue {$journalName} vous a été attribuée. Vous êtes responsable, en tant que rédacteur-trice de rubrique, de la faire cheminer à travers le processus éditorial.<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\n<br />\nMerci.
REVIEW_CANCEL	fr_CA		Annulation de la demande d'évaluation	{$recipientName},<br />\n<br />\nNous avons décidé d'annuler notre demande concernant l'évaluation du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName}. Nous sommes désolés des inconvénients que cela pourrait vous causer et espérons que nous pourrons de nouveau faire appel à vous pour contribuer au processus de révision par les pairs de cette revue dans le futur.<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec nous.
REVIEW_REINSTATE	fr_CA		Êtes-vous encore en mesure d'évaluer des travaux pour la revue {$journalName} ?	<p>{$recipientName},</p><p>Nous avons récemment annulé notre demande vous demandant d'évaluer la soumission, {$submissionTitle}, pour la revue {$journalName}. Nous sommes revenus sur cette décision et nous espérons que vous êtes toujours en mesure d'effectuer l'évaluation.</p><p>Si vous êtes en mesure d'aider au processus d'évaluation de cette revue, vous pouvez vous connecter au site de la revue pour voir la soumission, téléverser les fichiers d'évaluation ainsi que soumettre votre évaluation.</p><p>Si vous avez des questions, n'hésitez pas à communiquer avec moi,</p><p>Cordialement,</p>{$signature}
REVIEW_RESEND_REQUEST	fr_CA			
EDITOR_DECISION_SEND_TO_EXTERNAL	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est d'envoyer votre soumission en évaluation.<br />\n<br />\nURL de la soumission : {$submissionUrl}
EDITOR_DECISION_SEND_TO_PRODUCTION	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nL'édition de votre soumission « {$submissionTitle} » est complétée. Nous l'envoyons maintenant en production.<br />\n<br />\nURL de la soumission : {$submissionUrl}
EDITOR_DECISION_REVISIONS	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est de vous demander d'apporter des révisions à votre soumission.
EDITOR_DECISION_DECLINE	fr_CA		Décision du rédacteur	{$authors}:<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est de refuser votre soumission.
REVIEW_REQUEST	fr_CA		Demande d'évaluation d'un article	{$recipientName},<br />\n<br />\nNous croyons que vous feriez un-e excellent-e évaluateur-trice pour le manuscrit intitulé « {$submissionTitle} » qui a été soumis à la revue {$journalName}. Vous trouverez un résumé de la soumission ci-dessous. Nous espérons que vous accepterez ce travail essentiel à la publication de la revue.<br />\n<br />\nVeuillez accéder au site Web de la revue avant le {$responseDueDate} pour nous laisser savoir si vous acceptez de faire l'évaluation ou non. Vous pouvez également y consulter la soumission et y enregistrer votre évaluation et votre recommandation. Le site Web se trouve à l'adresse suivante : {$journalUrl}<br />\n<br />\nLa date d'échéance de l'évaluation a été fixée au {$reviewDueDate}.<br />\n<br />\nSi vous n'avez pas de nom d'utilisateur-trice et de mot de passe pour le site Web de la revue, cliquez sur le lien ci-dessous pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d'utilisateur-trice). {$passwordLostUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nNous vous remercions de l'attention que vous porterez à notre demande.<br />\n<br />\n{$signature}<br />\n<br />\n« {$submissionTitle} »<br />\n<br />\n{$submissionAbstract}
REVIEW_REQUEST_SUBSEQUENT	fr_CA		Demande d'évaluation d'un article	<p>{$recipientName},</p><p>Nous vous remercions d'avoir effectué l'évaluation du manuscrit intitulé <a href="{$reviewAssignmentUrl}">{$submissionTitle}</a>. Suivant les commentaire de l'évaluation de la dernière version du manuscrit, l'auteur-e a soumis une version révisée de son document. Nous apprécierions que vous évaluiez cette nouvelle version dans le cadre d'un second cycle d'évaluation.</p>\n<p>Si vous êtes en mesure d'effectuer cette évaluation, veuillez vous authentifier sur la page de la revue avant le {$responseDueDate} pour y indiquer si vous participerez à cette évaluation ou non, ou encore pour accéder à la soumission et y enregistrer votre évaluation et vos recommandations. Le site Web est {$journalUrl}<br />\n<br />\nL'évaluation est due pour le {$reviewDueDate}.<br />\n<br />\nSi vous n'avez pas vos nom d'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d'utilisateur-trice). {$passwordLostUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nNous vous remercions de l'attention que vous porterez à notre demande.<br />\n<br />\n{$signature}<br />\n<br />\n« {$submissionTitle} » <br />\n<br />\n{$submissionAbstract}
REVIEW_RESPONSE_OVERDUE_AUTO	fr_CA		Seriez-vous en mesure d'évaluer ce manuscrit pour nous ?	{$recipientName},<br />\nCeci est un petit rappel concernant notre demande d'évaluation de « {$submissionTitle} » pour la revue {$journalName}. Puisque nous n'avons pas reçu, comme nous l'espérions, une réponse avant le {$responseDueDate}, ce courriel a été généré et envoyé automatiquement après l'échéance du délai.\n<br />\nNous pensons que vous seriez un-e excellent-e évaluateur-trice pour le manuscrit. Vous trouverez un résumé de la soumission ci-dessous. Nous espérons que vous envisagerez d'entreprendre cette tâche essentielle à la publication de la revue.<br />\n<br />\nVeuillez vous authentifier sur la page de la revue pour y indiquer si vous participerez à cette évaluation ou non, ou encore pour accéder à la soumission et y enregistrer votre évaluation et vos recommandations. Le site Web est {$journalUrl}<br />\n<br />\nL'évaluation est dû pour le {$reviewDueDate}.<br />\n<br />\nSi vous n'avez pas vos nom d'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d'utilisateur-trice). {$lostPasswordUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nNous vous remercions de l'attention que vous porterez à notre demande.<br />\n<br />\n{$journalSignature}<br />\n<br />\n« {$submissionTitle} »<br />\n<br />\n{$submissionAbstract}
REVIEW_CONFIRM	fr_CA		Acceptation d'évaluation	Rédacteurs-trices,<br />\n<br />\nJe suis en mesure d'évaluer la soumission intitulée « {$submissionTitle} » pour la revue {$journalName}. Je vous remercie d'avoir pensé à moi. Je devrais être en mesure de compléter l'évaluation pour la date du {$reviewDueDate}, voire avant.<br />\n<br />\n{$senderName}
REVIEW_DECLINE	fr_CA		Refus d'évaluation	Rédacteurs-trices,<br />\n<br />\nPour le moment, il m'est impossible d'évaluer la soumission intitulée « {$submissionTitle} » pour la revue {$journalName}. Je vous remercie d'avoir pensé à moi. N'hésitez pas à communiquer avec moi pour un autre projet.<br />\n<br />\n{$senderName}
REVIEW_ACK	fr_CA		Accusé de réception de l'évaluation d'une soumission	{$recipientName},<br />\n<br />\nNous vous remercions d'avoir évalué la soumission intitulée « {$submissionTitle} » pour la revue {$journalName}. Nous vous sommes reconnaissants de votre contribution à la qualité des travaux que nous publions.
REVIEW_REMIND	fr_CA		Rappel d'évaluation d'une soumission	{$recipientName},<br />\n<br />\nCeci est un petit rappel concernant notre demande d'évaluation de la soumission « {$submissionTitle} » pour la revue {$journalName}. Nous espérions recevoir votre évaluation avant le {$reviewDueDate}. Nous serions heureux de la recevoir dès que possible.<br />\n<br />\nSi vous n'avez pas vos nom d'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d'utilisateur-trice). {$lostPasswordUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nVeuillez confirmer que vous êtes en mesure d'effectuer ce travail essentiel pour la publication de notre revue. Nous espérons avoir de vos nouvelles très bientôt.<br />\n<br />\n{$signature}
REVIEW_REMIND_AUTO	fr_CA		Rappel automatique d'évaluation d'une soumission	{$recipientName},<br />\n<br />\nCeci est un petit rappel concernant notre demande d'évaluation de la soumission « {$submissionTitle} » pour la revue {$journalName}. Puisque nous n'avons pas reçu, comme nous l'espérions, votre évaluation avant le {$reviewDueDate}, ce courriel a été généré et envoyé automatiquement après l'échéance du délai. Nous serions toutefois heureux de recevoir votre évaluation dès que possible.<br />\n<br />\nSi vous n'avez pas vos nom d'utilisateur-trice et mot de passe pour le site de la revue, vous pouvez utiliser le lien suivant pour réinitialiser votre mot de passe (lequel vous sera envoyé par courriel avec votre nom d'utilisateur-trice). {$lostPasswordUrl}<br />\n<br />\nURL de la soumission : {$reviewAssignmentUrl}<br />\n<br />\nVeuillez confirmer que vous êtes en mesure d'effectuer ce travail essentiel pour la publication de notre revue. Nous espérons avoir de vos nouvelles très bientôt.<br />\n<br />\n{$journalSignature}
REVIEW_COMPLETE	fr_CA			
REVIEW_EDIT	fr_CA			
EDITOR_DECISION_ACCEPT	fr_CA		Votre soumission a été acceptée dans la revue {$journalName}	{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$journalName}.<br />\n<br />\nNotre décision est d'accepter votre soumission.
EDITOR_DECISION_INITIAL_DECLINE	fr_CA		Décision du rédacteur	\n\t\t\t{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à  la revue {$journalName}.<br />\n<br />\nNotre décision est de refuser votre soumission.
EDITOR_RECOMMENDATION	fr_CA		Recommandation du rédacteur	{$editors},<br />\n<br />\nLa recommandation concernant la soumission « {$submissionTitle} » à la revue {$journalName} est de : {$recommendation}
EDITOR_DECISION_NOTIFY_OTHER_AUTHORS	fr_CA			
EDITOR_DECISION_NOTIFY_REVIEWERS	fr_CA			
EDITOR_DECISION_NEW_ROUND	fr_CA			
EDITOR_DECISION_REVERT_DECLINE	fr_CA			
EDITOR_DECISION_REVERT_INITIAL_DECLINE	fr_CA			
EDITOR_DECISION_SKIP_REVIEW	fr_CA		Votre soumission a été envoyée à la révision linguistique	
EDITOR_DECISION_BACK_FROM_PRODUCTION	fr_CA			
EDITOR_DECISION_BACK_FROM_COPYEDITING	fr_CA			
EDITOR_DECISION_CANCEL_REVIEW_ROUND	fr_CA			
SUBSCRIPTION_NOTIFY	fr_CA		Avis d'abonnement	{$recipientName},<br />\n<br />\nVous êtes maintenant abonné-e à notre système de gestion de revue en ligne pour la revue {$journalName}, avec le type d'abonnement suivant  :<br />\n<br />\n{$subscriptionType}<br />\n<br />\nPour accéder au contenu destiné seulement aux abonnés, connectez-vous au système à l'aide de votre nom d'utilisateur-trice : {$recipientUsername}.<br />\n<br />\nUne fois connecté-e dans le système, vous pouvez, en tout temps, modifier les renseignements de votre profil et votre mot de passe.<br />\n<br />\nVeuillez prendre note que si vous disposez d'un abonnement institutionnel, les utilisateurs-trices n'ont pas à entrer de nom d'utilisateur-trice puisque le système authentifiera automatiquement les demandes.<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}
OPEN_ACCESS_NOTIFY	fr_CA		Le numéro est maintenant en libre accès	Chers lecteurs et lectrices,<br />\n<br />\nLa revue {$journalName} vient de rendre disponible en libre accès le numéro suivant. Nous vous invitons à lire ici le sommaire puis visiter notre site Web ({$journalUrl}) pour lire les articles et autres textes qui pourraient vous intéresser.<br />\n<br />\nMerci de votre intérêt continu pour notre travail.<br />\n{$journalSignature}
SUBSCRIPTION_BEFORE_EXPIRY	fr_CA		Avis d'expiration de l'abonnement	{$recipientName},<br />\n<br />\nVotre abonnement à la revue {$journalName} expirera bientôt.<br />\n<br />\n{$subscriptionType}<br />\nDate d'expiration : {$expiryDate}<br />\n<br />\nAfin d'assurer la continuité de votre accès à cette revue, nous vous invitons à aller sur le site Web de la revue et à renouveler votre abonnement. Vous pouvez vous y ouvrir une session avec votre nom d'utilisateur-trice, soit « {$recipientUsername} ».<br />\n<br />\nSi vous avez des questions, ne pas hésiter à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}
SUBSCRIPTION_AFTER_EXPIRY	fr_CA		Abonnement expiré	{$recipientName},<br />\n<br />\nVotre abonnement à la revue {$journalName} est expiré.<br />\n<br />\n{$subscriptionType}<br />\nDate d'expiration : {$expiryDate}<br />\n<br />\nPour renouveler votre abonnement, veuillez vous rendre sur le site Web de la revue. Vous pouvez y ouvrir une session en utilisant votre nom d'utilisateur-trice, soit « {$recipientUsername} ».<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}
SUBSCRIPTION_AFTER_EXPIRY_LAST	fr_CA		Abonnement expiré - Dernier rappel	{$recipientName},<br />\n<br />\nVotre abonnement à la revue {$journalName} est expiré. Veuillez prendre note que ceci est le dernier rappel qui vous sera envoyé.<br />\n<br />\n{$subscriptionType}<br />\nDate d'expiration : {$expiryDate}<br />\n<br />\nPour renouveller votre abonnement, aveuillez vous rendre sur le site Web de la revue. Vous pouvez y ouvrir une session avec votre nom d'utilisateur-trice, soit « {$recipientUsername} ».<br />\n<br />\nSi vous avez des questions, ne hésitez pas à communiquer avec nous.<br />\n<br />\n{$subscriptionSignature}
SUBSCRIPTION_PURCHASE_INDL	fr_CA		Souscription à un abonnement individuel	Une souscription en ligne à un abonnement individuel pour la revue {$journalName} avec les renseignements suivants :<br />\n<br />\nType d'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nUtilisateur-trice :<br />\n{$subscriberDetails}<br />\n<br />\nInformation d'adhésion (si fournie) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l'URL suivante.<br />\n<br />\nURL d'abonnement : {$subscriptionUrl}<br/>\n
SUBSCRIPTION_PURCHASE_INSTL	fr_CA		Souscription à un abonnement institutionnel	Souscription en ligne à un abonnement institutionnel pour la revue {$journalName} avec les renseignements suivants. Pour activer cet abonnement, veuillez utiliser l'URL d'abonnement fourni et fixer le statut de l'abonnement à « actif ».<br />\n<br />\nType d'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nÉtablissement :<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomaine (si fourni) :<br />\n{$domain}<br />\n<br />\nPlage d'adresses IP (si fournie) :<br />\n{$ipRanges}<br />\n<br />\nPersonne-ressource :<br />\n{$subscriberDetails}<br />\n<br />\nRenseignements d'adhésion (si fournis) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l'URL suivant :<br />\n<br />\nURL de l'abonnement : {$subscriptionUrl}<br />\n
SUBSCRIPTION_RENEW_INDL	fr_CA		Renouvellement d'abonnement individuel	Un abonnement individuel a été renouvelé en ligne pour la revue {$journalName} avec les renseignements suivants.<br />\n<br />\nType d'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nUtilisateur-trice :<br />\n{$subscriberDetails}<br />\n<br />\nRenseignements d'adhésion (si fournis) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l'URL suivant.<br />\n<br />\nURL de l'abonnement : {$subscriptionUrl}<br />\n
SUBSCRIPTION_RENEW_INSTL	fr_CA		Renouvellement d'abonnement institutionnel	Un abonnement institutionnel a été renouvelé en ligne pour la revue {$journalName} avec les renseignements suivants.<br />\n<br />\nType d'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nÉtablissement :<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomaine (si fourni) :<br />\n{$domain}<br />\n<br />\nPlage d'adresses IP (si fournie) :<br />\n{$ipRanges}<br />\n<br />\nPersonne-ressource :<br />\n{$subscriberDetails}<br />\n<br />\nRenseignements d'adhésion (si fournis) :<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l'URL suivant.<br />\n<br />\nURL de l'abonnement : {$subscriptionUrl}<br />\n
REVISED_VERSION_NOTIFY	fr_CA		Version révisée téléversée	Rédacteurs-trices,<br />\n<br />\nUne version révisée de « {$submissionTitle} » a été téléversée par l'auteur-e {$submitterName}.<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\n<br />\n{$signature}
STATISTICS_REPORT_NOTIFICATION	fr_CA		Activité éditoriale pour {$month} {$year}	\n{$recipientName}, <br />\n<br />\nLe rapport d'activité éditoriale de votre revue pour {$month} {$year} est maintenant disponible. Les principales statistiques pour ce mois sont affichées ci-dessous.<br />\n<ul>\n\t<li> Nouvelles soumissions pour ce mois : {$newSubmissions} </li>\n\t<li> Soumissions refusées pour ce mois : {$declinedSubmissions} </li>\n\t<li> Soumissions acceptées pour ce mois : {$acceptedSubmissions} </li>\n\t<li> Nombre total de soumissions dans la plateforme : {$totalSubmissions} </li>\n</ul>\nConnectez-vous au site de la revue pour voir davantage de <a href="{$editorialStatsLink}">tendances dans l'activité éditoriale</a> ainsi que des <a href="{$publicationStatsLink}">statistiques relatives aux articles publiés</a>. Le rapport complet des tendances de l'activité éditoriale de ce mois-ci est joint au présent envoi.<br />\n<br />\nCordialement,<br />\n{$journalSignature}
ANNOUNCEMENT	fr_CA		{$announcementTitle}	<b>{$announcementTitle}</b><br />\n<br />\n{$announcementSummary}<br />\n<br />\nVisiter notre site Web pour consulter <a href="{$announcementUrl}">l'annonce complète</a>.
DISCUSSION_NOTIFICATION_SUBMISSION	fr_CA		Un message à propos de la revue {$journalName}	Prière de saisir votre message.
DISCUSSION_NOTIFICATION_REVIEW	fr_CA		Un message à propos de la revue {$journalName}	Prière de saisir votre message.
DISCUSSION_NOTIFICATION_COPYEDITING	fr_CA		Un message à propos de la revue {$journalName}	Prière de saisir votre message.
DISCUSSION_NOTIFICATION_PRODUCTION	fr_CA		Un message à propos de la revue {$journalName}	Prière de saisir votre message.
COPYEDIT_REQUEST	fr_CA		Demande de révision d'une soumission	{$recipientName},<br />\n<br />\nJ'aimerais que vous effectuiez la révision du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName} à l'aide des étapes suivantes.<br />\n1. Cliquer sur l'URL de la soumission ci-dessous.<br />\n2. Ouvrir le(s) fichier(s) disponible(s) sous Fichiers des ébauches finales et effectuer votre révision, tout en ajoutant des discussions sur la révision, le cas échéant.<br />\n3. Enregistrer le(s) fichier(s) révisé(s) et le(s) téléverser dans la section Version(s) révisée(s).<br />\n4. Informer le,la rédacteur-trice que tous les fichiers ont été révisés et que l'étape de production peut débuter.<br />\n<br />\nURL de la revue {$journalName} : {$journalUrl}<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}
CITATION_EDITOR_AUTHOR_QUERY	fr_CA		Modification des références bibliographiques	{$recipientName},<br />\n<br />\nPourriez-vous vérifier ou nous fournir la référence bibliographique complète pour la référence suivante, provenant de votre article « {$submissionTitle} »  :<br />\n<br />\n{$rawCitation}<br />\n<br />\nMerci!<br />\n<br />\n{$senderName}<br />\nRéviseur-e, revue {$journalName}<br />\n
EDITOR_ASSIGN_SUBMISSION	fr_CA		Vous avez été assigné-e en tant que rédacteur-trice pour la soumission {$journalName}	{$recipientName},<br />\n<br />\nLa soumission intitulée « {$submissionTitle} » pour la revue {$journalName} vous a été attribuée. Vous êtes responsable, en tant que rédacteur-trice de rubrique, de la faire cheminer à travers le processus éditorial.<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\n<br />\nMerci.
EDITOR_ASSIGN_REVIEW	fr_CA		Vous avez été assigné-e en tant que rédacteur-trice pour la soumission {$journalName}	
EDITOR_ASSIGN_PRODUCTION	fr_CA		Vous avez été assigné-e en tant que rédacteur-trice pour la soumission {$journalName}	
LAYOUT_REQUEST	fr_CA		Demande de mise en page des épreuves	{$recipientName},<br />\n<br />\nJ'aimerais que vous prépariez les épreuves du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName} à l'aide des étapes suivantes.<br />\n1. Cliquer sur l'URL de la soumission ci-dessous.<br />\n2. Se connecter au site Web de la revue et utiliser les fichiers disponibles sous Fichiers prêts pour la production pour créer les épreuves en fonction des normes de la revue.<br />\n3. Téléverser les épreuves dans la section Épreuves.<br />\n4. Informer le,la rédacteur-trice, via une discussion sur la production, que les épreuves ont été téléversées et qu'elles sont prêtes.<br />\n<br />\nURL de la revue {$journalName} : {$journalUrl}<br />\nURL du manuscrit : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\n<br />\nSi vous ne pouvez pas effectuer ce travail pour le moment ou si vous avez des questions, veuillez communiquer avec moi. Je vous remercie de votre collaboration.
LAYOUT_COMPLETE	fr_CA		Mise en page des épreuves terminée	{$recipientName},<br />\n<br />\nLes épreuves du manuscrit intitulé « {$submissionTitle} » pour la revue {$journalName} sont maintenant prêtes pour la relecture.<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec moi.<br />\n<br />\n{$senderName}
VERSION_CREATED	fr_CA			
EDITORIAL_REMINDER	fr_CA			
SUBMISSION_SAVED_FOR_LATER	fr_CA			
SUBMISSION_NEEDS_EDITOR	fr_CA			
PAYMENT_REQUEST_NOTIFICATION	fr_CA			
ORCID_COLLECT_AUTHOR_ID	fr_CA		Soumission ORCID	{$recipientName},<br/>\n<br/>\nVous avez été inscrit ou inscrite en tant qu'auteur ou auteure pour un manuscrit soumis à {$journalName}.<br/>\nPour confirmer votre statut d'auteur ou d'auteure, veuillez ajouter votre identifiant ORCID à cette soumission en cliquant sur le lien ci-dessous.<br/>\n<br/>\n<a href="{$authorOrcidUrl}"><img id="orcid-id-logo" src="https://info.orcid.org/wp-content/uploads/2020/12/ORCIDiD_icon16x16.png" width='16' height='16' alt="icône identifiant ORCID" style="display: block; margin: 0 .5em 0 0; padding: 0; float: left;"/>Se connecter avec votre identifiant ORCID ou s'inscrire</a><br/>\n<br/>\n<br/>\n<a href="{$orcidAboutUrl}">Plus de renseignements sur votre identifiant ORCID dans {$journalName}</a><br/>\n<br/>\nSi vous avez des questions, veuillez communiquer avec nous.<br/>\n<br/>\n{$principalContactSignature}<br/>\n
ORCID_REQUEST_AUTHOR_AUTHORIZATION	fr_CA		Demande d'accès au dossier ORCID	{$recipientName},<br/>\n<br/>\nVous avez été inscrit ou inscrite en tant qu'auteur ou auteure pour le manuscrit « {$submissionTitle} » soumis à {$journalName}.\n<br/>\n<br/>\nVeuillez nous autoriser à ajouter votre identifiant ORCID à cette soumission et à ajouter également la soumission à votre dossier ORCID suite à sa publication.\n<br/>\nSuivre le lien vers le site officiel ORCID, vous connecter avec votre profil et autoriser l'accès en suivant les instructions.<br/>\n<a href="{$authorOrcidUrl}"><img id="orcid-id-logo" src="https://info.orcid.org/wp-content/uploads/2020/12/ORCIDiD_icon16x16.png" width='16' height='16' alt="icône identifiant ORCID" style="display: block; margin: 0 .5em 0 0; padding: 0; float: left;"/>Se connecter avec votre identifiant ORCID ou s'inscrire</a><br/>\n<br/>\n<br/>\n<a href="{$orcidAboutUrl}">Plus de renseignements sur votre identifiant ORCID dans {$journalName}</a><br/>\n<br/>\nSi vous avez des questions, veuillez communiquer avec nous.<br/>\n<br/>\n{$principalContactSignature}<br/>\n
MANUAL_PAYMENT_NOTIFICATION	fr_CA		Avis de paiement manuel	Un paiement manuel doit être traité pour la revue {$journalName} et l'utilisateur {$senderName} (nom d'utilisateur &quot;{$senderUsername}&quot;).<br />\n<br />\nL'élément facturé est &quot;{$paymentName}&quot;.<br />\nLe coût est de {$paymentAmount} ({$paymentCurrencyCode}).<br />\n<br />\nCe courriel a été généré par le plugiciel de paiement manuel du Open Journal Systems.
\.


--
-- Name: email_templates_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.email_templates_email_id_seq', 7, true);


--
-- Data for Name: email_templates_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.email_templates_settings (email_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: event_log; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.event_log (log_id, assoc_type, assoc_id, user_id, date_logged, event_type, message, is_translated) FROM stdin;
1	1048585	1	17	2023-02-27 13:13:16	268435458	submission.event.general.metadataUpdated	0
2	1048585	1	17	2023-02-27 13:13:17	268435458	submission.event.general.metadataUpdated	0
3	1048585	1	17	2023-02-27 13:13:31	268435458	submission.event.general.metadataUpdated	0
4	515	1	17	2023-02-27 13:13:31	1342177281	submission.event.fileUploaded	0
5	1048585	1	17	2023-02-27 13:13:31	1342177288	submission.event.fileRevised	0
6	515	1	17	2023-02-27 13:13:32	1342177296	submission.event.fileEdited	0
7	1048585	1	17	2023-02-27 13:13:32	1342177296	submission.event.fileEdited	0
8	515	2	17	2023-02-27 13:13:33	1342177281	submission.event.fileUploaded	0
9	1048585	1	17	2023-02-27 13:13:33	1342177288	submission.event.fileRevised	0
10	515	2	17	2023-02-27 13:13:33	1342177296	submission.event.fileEdited	0
11	1048585	1	17	2023-02-27 13:13:33	1342177296	submission.event.fileEdited	0
12	515	3	17	2023-02-27 13:13:34	1342177281	submission.event.fileUploaded	0
13	1048585	1	17	2023-02-27 13:13:34	1342177288	submission.event.fileRevised	0
14	515	3	17	2023-02-27 13:13:35	1342177296	submission.event.fileEdited	0
15	1048585	1	17	2023-02-27 13:13:35	1342177296	submission.event.fileEdited	0
16	515	4	17	2023-02-27 13:13:35	1342177281	submission.event.fileUploaded	0
17	1048585	1	17	2023-02-27 13:13:35	1342177288	submission.event.fileRevised	0
18	515	4	17	2023-02-27 13:13:36	1342177296	submission.event.fileEdited	0
19	1048585	1	17	2023-02-27 13:13:36	1342177296	submission.event.fileEdited	0
20	515	5	17	2023-02-27 13:13:36	1342177281	submission.event.fileUploaded	0
21	1048585	1	17	2023-02-27 13:13:36	1342177288	submission.event.fileRevised	0
22	515	5	17	2023-02-27 13:13:38	1342177296	submission.event.fileEdited	0
23	1048585	1	17	2023-02-27 13:13:38	1342177296	submission.event.fileEdited	0
24	515	6	17	2023-02-27 13:13:38	1342177281	submission.event.fileUploaded	0
25	1048585	1	17	2023-02-27 13:13:38	1342177288	submission.event.fileRevised	0
26	515	6	17	2023-02-27 13:13:39	1342177296	submission.event.fileEdited	0
27	1048585	1	17	2023-02-27 13:13:39	1342177296	submission.event.fileEdited	0
28	515	6	17	2023-02-27 13:13:40	1342177282	submission.event.fileDeleted	0
29	1048585	1	17	2023-02-27 13:14:14	268435457	submission.event.submissionSubmitted	0
30	1048585	1	3	2023-02-27 13:14:34	805306371	editor.submission.decision.sendExternalReview.log	0
31	515	7	3	2023-02-27 13:14:34	1342177281	submission.event.fileUploaded	0
32	1048585	1	3	2023-02-27 13:14:34	1342177288	submission.event.fileRevised	0
33	515	8	3	2023-02-27 13:14:34	1342177281	submission.event.fileUploaded	0
34	1048585	1	3	2023-02-27 13:14:34	1342177288	submission.event.fileRevised	0
35	515	9	3	2023-02-27 13:14:35	1342177281	submission.event.fileUploaded	0
36	1048585	1	3	2023-02-27 13:14:35	1342177288	submission.event.fileRevised	0
37	515	10	3	2023-02-27 13:14:35	1342177281	submission.event.fileUploaded	0
38	1048585	1	3	2023-02-27 13:14:35	1342177288	submission.event.fileRevised	0
39	515	11	3	2023-02-27 13:14:35	1342177281	submission.event.fileUploaded	0
40	1048585	1	3	2023-02-27 13:14:35	1342177288	submission.event.fileRevised	0
41	1048585	1	3	2023-02-27 13:14:44	1073741825	log.review.reviewerAssigned	0
42	1048585	1	3	2023-02-27 13:14:52	1073741825	log.review.reviewerAssigned	0
43	1048585	1	3	2023-02-27 13:14:59	1073741825	log.review.reviewerAssigned	0
44	1048585	1	3	2023-02-27 13:15:04	805306371	editor.submission.decision.accept.log	0
45	1048585	1	3	2023-02-27 13:15:13	268435459	submission.event.participantAdded	0
46	1048585	1	3	2023-02-27 13:15:19	805306371	editor.submission.decision.sendToProduction.log	0
47	1048585	1	3	2023-02-27 13:15:27	268435459	submission.event.participantAdded	0
48	1048585	1	3	2023-02-27 13:15:33	268435459	submission.event.participantAdded	0
49	1048585	1	3	2023-02-27 13:17:34	268435458	submission.event.general.metadataUpdated	0
50	1048585	1	3	2023-02-27 13:17:37	268435458	submission.event.general.metadataUpdated	0
51	1048585	1	3	2023-02-27 13:17:38	268435458	submission.event.general.metadataUpdated	0
52	1048585	1	3	2023-02-27 13:17:42	268435458	submission.event.general.metadataUpdated	0
53	515	12	3	2023-02-27 13:17:51	1342177281	submission.event.fileUploaded	0
54	1048585	1	3	2023-02-27 13:17:51	1342177288	submission.event.fileRevised	0
55	515	12	3	2023-02-27 13:17:51	1342177296	submission.event.fileEdited	0
56	1048585	1	3	2023-02-27 13:17:51	1342177296	submission.event.fileEdited	0
57	1048585	1	3	2023-02-27 13:18:08	268435459	submission.event.participantAdded	0
58	1048585	1	17	2023-02-27 13:18:15	268435458	submission.event.general.metadataUpdated	0
59	1048585	1	3	2023-02-27 13:18:23	268435458	submission.event.general.metadataUpdated	0
60	1048585	1	3	2023-02-27 13:18:24	268435462	publication.event.published	0
61	1048585	1	3	2023-02-27 13:18:37	268435463	publication.event.unpublished	0
62	1048585	1	3	2023-02-27 13:18:45	268435462	publication.event.published	0
63	1048585	1	3	2023-02-27 13:18:52	268435458	submission.event.general.metadataUpdated	0
64	1048585	1	3	2023-02-27 13:18:52	268435464	publication.event.versionCreated	0
65	1048585	1	3	2023-02-27 13:19:04	268435458	submission.event.general.metadataUpdated	0
66	1048585	1	3	2023-02-27 13:19:15	268435458	submission.event.general.metadataUpdated	0
67	1048585	1	3	2023-02-27 13:19:16	268435462	publication.event.versionPublished	0
68	1048585	1	3	2023-02-27 13:19:33	268435463	publication.event.versionUnpublished	0
69	1048585	1	3	2023-02-27 13:19:42	268435459	submission.event.participantAdded	0
70	1048585	1	3	2023-02-27 13:19:57	268435459	submission.event.participantAdded	0
71	1048585	2	18	2023-02-27 13:20:12	268435458	submission.event.general.metadataUpdated	0
72	1048585	2	18	2023-02-27 13:20:13	268435458	submission.event.general.metadataUpdated	0
73	515	13	18	2023-02-27 13:20:16	1342177281	submission.event.fileUploaded	0
74	1048585	2	18	2023-02-27 13:20:16	1342177288	submission.event.fileRevised	0
75	515	13	18	2023-02-27 13:20:16	1342177296	submission.event.fileEdited	0
76	1048585	2	18	2023-02-27 13:20:16	1342177296	submission.event.fileEdited	0
77	1048585	2	18	2023-02-27 13:20:17	268435457	submission.event.submissionSubmitted	0
78	1048585	2	3	2023-02-27 13:20:29	805306371	editor.submission.decision.sendExternalReview.log	0
79	515	14	3	2023-02-27 13:20:29	1342177281	submission.event.fileUploaded	0
80	1048585	2	3	2023-02-27 13:20:30	1342177288	submission.event.fileRevised	0
81	1048585	2	3	2023-02-27 13:20:37	268435459	submission.event.participantAdded	0
82	1048585	2	3	2023-02-27 13:20:40	268435458	submission.event.general.metadataUpdated	0
83	1048585	2	6	2023-02-27 13:20:53	805306372	editor.submission.recommend.accept.log	0
84	1048585	3	19	2023-02-27 13:21:13	268435458	submission.event.general.metadataUpdated	0
85	1048585	3	19	2023-02-27 13:21:14	268435458	submission.event.general.metadataUpdated	0
86	515	15	19	2023-02-27 13:21:17	1342177281	submission.event.fileUploaded	0
87	1048585	3	19	2023-02-27 13:21:17	1342177288	submission.event.fileRevised	0
88	515	15	19	2023-02-27 13:21:18	1342177296	submission.event.fileEdited	0
89	1048585	3	19	2023-02-27 13:21:18	1342177296	submission.event.fileEdited	0
90	1048585	3	19	2023-02-27 13:21:18	268435457	submission.event.submissionSubmitted	0
91	1048585	3	3	2023-02-27 13:21:31	805306371	editor.submission.decision.sendExternalReview.log	0
92	515	16	3	2023-02-27 13:21:31	1342177281	submission.event.fileUploaded	0
93	1048585	3	3	2023-02-27 13:21:31	1342177288	submission.event.fileRevised	0
94	1048585	3	3	2023-02-27 13:21:40	1073741825	log.review.reviewerAssigned	0
95	1048585	3	3	2023-02-27 13:21:47	1073741825	log.review.reviewerAssigned	0
96	1048585	3	3	2023-02-27 13:21:52	805306371	editor.submission.decision.accept.log	0
97	1048585	3	3	2023-02-27 13:22:00	268435459	submission.event.participantAdded	0
98	1048585	4	20	2023-02-27 13:22:11	268435458	submission.event.general.metadataUpdated	0
99	1048585	4	20	2023-02-27 13:22:11	268435458	submission.event.general.metadataUpdated	0
100	515	17	20	2023-02-27 13:22:15	1342177281	submission.event.fileUploaded	0
101	1048585	4	20	2023-02-27 13:22:15	1342177288	submission.event.fileRevised	0
102	515	17	20	2023-02-27 13:22:15	1342177296	submission.event.fileEdited	0
103	1048585	4	20	2023-02-27 13:22:15	1342177296	submission.event.fileEdited	0
104	1048585	4	20	2023-02-27 13:22:16	268435457	submission.event.submissionSubmitted	0
105	1048585	5	21	2023-02-27 13:22:26	268435458	submission.event.general.metadataUpdated	0
106	1048585	5	21	2023-02-27 13:22:26	268435458	submission.event.general.metadataUpdated	0
107	515	18	21	2023-02-27 13:22:30	1342177281	submission.event.fileUploaded	0
108	1048585	5	21	2023-02-27 13:22:30	1342177288	submission.event.fileRevised	0
109	515	18	21	2023-02-27 13:22:30	1342177296	submission.event.fileEdited	0
110	1048585	5	21	2023-02-27 13:22:30	1342177296	submission.event.fileEdited	0
111	1048585	5	21	2023-02-27 13:22:31	268435457	submission.event.submissionSubmitted	0
112	1048585	5	3	2023-02-27 13:22:44	805306371	editor.submission.decision.sendExternalReview.log	0
113	515	19	3	2023-02-27 13:22:44	1342177281	submission.event.fileUploaded	0
114	1048585	5	3	2023-02-27 13:22:44	1342177288	submission.event.fileRevised	0
115	1048585	5	3	2023-02-27 13:22:53	1073741825	log.review.reviewerAssigned	0
116	1048585	5	3	2023-02-27 13:23:00	1073741825	log.review.reviewerAssigned	0
117	1048585	5	3	2023-02-27 13:23:05	805306371	editor.submission.decision.accept.log	0
118	1048585	5	3	2023-02-27 13:23:13	268435459	submission.event.participantAdded	0
119	1048585	5	3	2023-02-27 13:23:19	805306371	editor.submission.decision.sendToProduction.log	0
120	1048585	5	3	2023-02-27 13:23:27	268435459	submission.event.participantAdded	0
121	1048585	5	3	2023-02-27 13:23:32	268435459	submission.event.participantAdded	0
122	1048585	6	22	2023-02-27 13:23:42	268435458	submission.event.general.metadataUpdated	0
123	1048585	6	22	2023-02-27 13:23:43	268435458	submission.event.general.metadataUpdated	0
124	515	20	22	2023-02-27 13:23:46	1342177281	submission.event.fileUploaded	0
125	1048585	6	22	2023-02-27 13:23:46	1342177288	submission.event.fileRevised	0
126	515	20	22	2023-02-27 13:23:47	1342177296	submission.event.fileEdited	0
127	1048585	6	22	2023-02-27 13:23:47	1342177296	submission.event.fileEdited	0
128	1048585	6	22	2023-02-27 13:23:47	268435457	submission.event.submissionSubmitted	0
129	1048585	6	3	2023-02-27 13:24:01	805306371	editor.submission.decision.sendExternalReview.log	0
130	515	21	3	2023-02-27 13:24:01	1342177281	submission.event.fileUploaded	0
131	1048585	6	3	2023-02-27 13:24:01	1342177288	submission.event.fileRevised	0
132	1048585	6	3	2023-02-27 13:24:10	1073741825	log.review.reviewerAssigned	0
133	1048585	6	3	2023-02-27 13:24:17	1073741825	log.review.reviewerAssigned	0
134	1048585	6	3	2023-02-27 13:24:22	805306371	editor.submission.decision.accept.log	0
135	1048585	6	3	2023-02-27 13:24:30	268435459	submission.event.participantAdded	0
136	1048585	6	3	2023-02-27 13:24:35	805306371	editor.submission.decision.sendToProduction.log	0
137	1048585	6	3	2023-02-27 13:24:44	268435459	submission.event.participantAdded	0
138	1048585	7	23	2023-02-27 13:24:54	268435458	submission.event.general.metadataUpdated	0
139	1048585	7	23	2023-02-27 13:24:55	268435458	submission.event.general.metadataUpdated	0
140	515	22	23	2023-02-27 13:24:58	1342177281	submission.event.fileUploaded	0
141	1048585	7	23	2023-02-27 13:24:58	1342177288	submission.event.fileRevised	0
142	515	22	23	2023-02-27 13:24:59	1342177296	submission.event.fileEdited	0
143	1048585	7	23	2023-02-27 13:24:59	1342177296	submission.event.fileEdited	0
144	1048585	7	23	2023-02-27 13:24:59	268435457	submission.event.submissionSubmitted	0
145	1048585	7	3	2023-02-27 13:25:13	805306371	editor.submission.decision.sendExternalReview.log	0
146	515	23	3	2023-02-27 13:25:14	1342177281	submission.event.fileUploaded	0
147	1048585	7	3	2023-02-27 13:25:14	1342177288	submission.event.fileRevised	0
148	1048585	7	3	2023-02-27 13:25:23	1073741825	log.review.reviewerAssigned	0
149	1048585	7	3	2023-02-27 13:25:30	1073741825	log.review.reviewerAssigned	0
150	1048585	7	3	2023-02-27 13:25:37	1073741825	log.review.reviewerAssigned	0
151	1048585	7	8	2023-02-27 13:25:44	1073741830	log.review.reviewAccepted	0
152	1048585	7	8	2023-02-27 13:25:49	1073741848	log.review.reviewReady	0
153	1048585	8	24	2023-02-27 13:25:59	268435458	submission.event.general.metadataUpdated	0
154	1048585	8	24	2023-02-27 13:26:00	268435458	submission.event.general.metadataUpdated	0
155	515	24	24	2023-02-27 13:26:03	1342177281	submission.event.fileUploaded	0
156	1048585	8	24	2023-02-27 13:26:03	1342177288	submission.event.fileRevised	0
157	515	24	24	2023-02-27 13:26:03	1342177296	submission.event.fileEdited	0
158	1048585	8	24	2023-02-27 13:26:03	1342177296	submission.event.fileEdited	0
159	1048585	8	24	2023-02-27 13:26:05	268435457	submission.event.submissionSubmitted	0
160	1048585	9	25	2023-02-27 13:26:14	268435458	submission.event.general.metadataUpdated	0
161	1048585	9	25	2023-02-27 13:26:15	268435458	submission.event.general.metadataUpdated	0
162	515	25	25	2023-02-27 13:26:18	1342177281	submission.event.fileUploaded	0
163	1048585	9	25	2023-02-27 13:26:18	1342177288	submission.event.fileRevised	0
164	515	25	25	2023-02-27 13:26:18	1342177296	submission.event.fileEdited	0
165	1048585	9	25	2023-02-27 13:26:18	1342177296	submission.event.fileEdited	0
166	1048585	9	25	2023-02-27 13:26:19	268435457	submission.event.submissionSubmitted	0
167	1048585	9	3	2023-02-27 13:26:33	805306371	editor.submission.decision.sendExternalReview.log	0
168	515	26	3	2023-02-27 13:26:33	1342177281	submission.event.fileUploaded	0
169	1048585	9	3	2023-02-27 13:26:33	1342177288	submission.event.fileRevised	0
170	1048585	9	3	2023-02-27 13:26:42	1073741825	log.review.reviewerAssigned	0
171	1048585	9	3	2023-02-27 13:26:50	1073741825	log.review.reviewerAssigned	0
172	1048585	9	3	2023-02-27 13:26:55	805306371	editor.submission.decision.accept.log	0
173	1048585	9	3	2023-02-27 13:27:02	268435459	submission.event.participantAdded	0
174	1048585	9	3	2023-02-27 13:27:08	805306371	editor.submission.decision.sendToProduction.log	0
175	1048585	9	3	2023-02-27 13:27:17	268435459	submission.event.participantAdded	0
176	1048585	9	3	2023-02-27 13:27:21	268435459	submission.event.participantAdded	0
177	1048585	10	26	2023-02-27 13:27:31	268435458	submission.event.general.metadataUpdated	0
178	1048585	10	26	2023-02-27 13:27:32	268435458	submission.event.general.metadataUpdated	0
179	515	27	26	2023-02-27 13:27:35	1342177281	submission.event.fileUploaded	0
180	1048585	10	26	2023-02-27 13:27:35	1342177288	submission.event.fileRevised	0
181	515	27	26	2023-02-27 13:27:36	1342177296	submission.event.fileEdited	0
182	1048585	10	26	2023-02-27 13:27:36	1342177296	submission.event.fileEdited	0
183	1048585	10	26	2023-02-27 13:27:37	268435457	submission.event.submissionSubmitted	0
184	1048585	10	3	2023-02-27 13:27:51	805306371	editor.submission.decision.sendExternalReview.log	0
185	515	28	3	2023-02-27 13:27:52	1342177281	submission.event.fileUploaded	0
186	1048585	10	3	2023-02-27 13:27:52	1342177288	submission.event.fileRevised	0
187	1048585	10	3	2023-02-27 13:28:01	1073741825	log.review.reviewerAssigned	0
188	1048585	10	3	2023-02-27 13:28:08	1073741825	log.review.reviewerAssigned	0
189	1048585	10	9	2023-02-27 13:28:15	1073741830	log.review.reviewAccepted	0
190	1048585	10	9	2023-02-27 13:28:19	1073741848	log.review.reviewReady	0
191	1048585	10	10	2023-02-27 13:28:26	1073741830	log.review.reviewAccepted	0
192	1048585	10	10	2023-02-27 13:28:31	1073741848	log.review.reviewReady	0
193	1048585	11	27	2023-02-27 13:28:40	268435458	submission.event.general.metadataUpdated	0
194	1048585	11	27	2023-02-27 13:28:41	268435458	submission.event.general.metadataUpdated	0
195	515	29	27	2023-02-27 13:28:45	1342177281	submission.event.fileUploaded	0
196	1048585	11	27	2023-02-27 13:28:45	1342177288	submission.event.fileRevised	0
197	515	29	27	2023-02-27 13:28:45	1342177296	submission.event.fileEdited	0
198	1048585	11	27	2023-02-27 13:28:45	1342177296	submission.event.fileEdited	0
199	1048585	11	27	2023-02-27 13:28:46	268435457	submission.event.submissionSubmitted	0
200	1048585	12	28	2023-02-27 13:28:55	268435458	submission.event.general.metadataUpdated	0
201	1048585	12	28	2023-02-27 13:28:56	268435458	submission.event.general.metadataUpdated	0
202	515	30	28	2023-02-27 13:28:59	1342177281	submission.event.fileUploaded	0
203	1048585	12	28	2023-02-27 13:28:59	1342177288	submission.event.fileRevised	0
204	515	30	28	2023-02-27 13:29:00	1342177296	submission.event.fileEdited	0
205	1048585	12	28	2023-02-27 13:29:00	1342177296	submission.event.fileEdited	0
206	1048585	12	28	2023-02-27 13:29:01	268435457	submission.event.submissionSubmitted	0
207	1048585	12	3	2023-02-27 13:29:16	805306371	editor.submission.decision.sendExternalReview.log	0
208	515	31	3	2023-02-27 13:29:16	1342177281	submission.event.fileUploaded	0
209	1048585	12	3	2023-02-27 13:29:16	1342177288	submission.event.fileRevised	0
210	1048585	12	3	2023-02-27 13:29:25	1073741825	log.review.reviewerAssigned	0
211	1048585	12	3	2023-02-27 13:29:33	1073741825	log.review.reviewerAssigned	0
212	1048585	13	29	2023-02-27 13:29:42	268435458	submission.event.general.metadataUpdated	0
213	1048585	13	29	2023-02-27 13:29:43	268435458	submission.event.general.metadataUpdated	0
214	515	32	29	2023-02-27 13:29:46	1342177281	submission.event.fileUploaded	0
215	1048585	13	29	2023-02-27 13:29:46	1342177288	submission.event.fileRevised	0
216	515	32	29	2023-02-27 13:29:47	1342177296	submission.event.fileEdited	0
217	1048585	13	29	2023-02-27 13:29:47	1342177296	submission.event.fileEdited	0
218	1048585	13	29	2023-02-27 13:29:47	268435457	submission.event.submissionSubmitted	0
219	1048585	13	3	2023-02-27 13:30:03	805306371	editor.submission.decision.sendExternalReview.log	0
220	515	33	3	2023-02-27 13:30:04	1342177281	submission.event.fileUploaded	0
221	1048585	13	3	2023-02-27 13:30:04	1342177288	submission.event.fileRevised	0
222	1048585	13	3	2023-02-27 13:30:13	1073741825	log.review.reviewerAssigned	0
223	1048585	13	3	2023-02-27 13:30:20	1073741825	log.review.reviewerAssigned	0
224	1048585	13	3	2023-02-27 13:30:27	1073741825	log.review.reviewerAssigned	0
225	1048585	13	7	2023-02-27 13:30:35	1073741830	log.review.reviewAccepted	0
226	1048585	13	7	2023-02-27 13:30:40	1073741848	log.review.reviewReady	0
227	1048585	13	9	2023-02-27 13:30:47	1073741830	log.review.reviewAccepted	0
228	1048585	13	9	2023-02-27 13:30:51	1073741848	log.review.reviewReady	0
229	1048585	13	10	2023-02-27 13:30:59	1073741830	log.review.reviewAccepted	0
230	1048585	13	10	2023-02-27 13:31:03	1073741848	log.review.reviewReady	0
231	1048585	13	3	2023-02-27 13:31:24	805306371	editor.submission.decision.requestRevisions.log	0
232	1048585	13	3	2023-02-27 13:31:24	1073741856	submission.event.decisionReviewerEmailSent	0
233	1048585	14	30	2023-02-27 13:31:38	268435458	submission.event.general.metadataUpdated	0
234	1048585	14	30	2023-02-27 13:31:39	268435458	submission.event.general.metadataUpdated	0
235	515	34	30	2023-02-27 13:31:42	1342177281	submission.event.fileUploaded	0
236	1048585	14	30	2023-02-27 13:31:42	1342177288	submission.event.fileRevised	0
237	515	34	30	2023-02-27 13:31:43	1342177296	submission.event.fileEdited	0
238	1048585	14	30	2023-02-27 13:31:43	1342177296	submission.event.fileEdited	0
239	1048585	14	30	2023-02-27 13:31:43	268435457	submission.event.submissionSubmitted	0
240	1048585	15	31	2023-02-27 13:31:53	268435458	submission.event.general.metadataUpdated	0
241	1048585	15	31	2023-02-27 13:31:53	268435458	submission.event.general.metadataUpdated	0
242	515	35	31	2023-02-27 13:31:57	1342177281	submission.event.fileUploaded	0
243	1048585	15	31	2023-02-27 13:31:57	1342177288	submission.event.fileRevised	0
244	515	35	31	2023-02-27 13:31:57	1342177296	submission.event.fileEdited	0
245	1048585	15	31	2023-02-27 13:31:57	1342177296	submission.event.fileEdited	0
246	1048585	15	31	2023-02-27 13:31:58	268435457	submission.event.submissionSubmitted	0
247	1048585	15	3	2023-02-27 13:32:14	805306371	editor.submission.decision.sendExternalReview.log	0
248	515	36	3	2023-02-27 13:32:15	1342177281	submission.event.fileUploaded	0
249	1048585	15	3	2023-02-27 13:32:15	1342177288	submission.event.fileRevised	0
250	1048585	15	3	2023-02-27 13:32:24	1073741825	log.review.reviewerAssigned	0
251	1048585	15	3	2023-02-27 13:32:31	1073741825	log.review.reviewerAssigned	0
252	1048585	15	3	2023-02-27 13:32:36	805306371	editor.submission.decision.accept.log	0
253	1048585	15	3	2023-02-27 13:32:43	268435459	submission.event.participantAdded	0
254	1048585	15	3	2023-02-27 13:32:49	805306371	editor.submission.decision.sendToProduction.log	0
255	1048585	15	3	2023-02-27 13:32:57	268435459	submission.event.participantAdded	0
256	1048585	16	32	2023-02-27 13:33:08	268435458	submission.event.general.metadataUpdated	0
257	1048585	16	32	2023-02-27 13:33:09	268435458	submission.event.general.metadataUpdated	0
258	515	37	32	2023-02-27 13:33:12	1342177281	submission.event.fileUploaded	0
259	1048585	16	32	2023-02-27 13:33:12	1342177288	submission.event.fileRevised	0
260	515	37	32	2023-02-27 13:33:12	1342177296	submission.event.fileEdited	0
261	1048585	16	32	2023-02-27 13:33:12	1342177296	submission.event.fileEdited	0
262	1048585	16	32	2023-02-27 13:33:13	268435457	submission.event.submissionSubmitted	0
263	1048585	17	33	2023-02-27 13:33:22	268435458	submission.event.general.metadataUpdated	0
264	1048585	17	33	2023-02-27 13:33:23	268435458	submission.event.general.metadataUpdated	0
265	515	38	33	2023-02-27 13:33:26	1342177281	submission.event.fileUploaded	0
266	1048585	17	33	2023-02-27 13:33:26	1342177288	submission.event.fileRevised	0
267	515	38	33	2023-02-27 13:33:27	1342177296	submission.event.fileEdited	0
268	1048585	17	33	2023-02-27 13:33:27	1342177296	submission.event.fileEdited	0
269	1048585	17	33	2023-02-27 13:33:28	268435457	submission.event.submissionSubmitted	0
270	1048585	17	3	2023-02-27 13:33:45	805306371	editor.submission.decision.sendExternalReview.log	0
271	515	39	3	2023-02-27 13:33:45	1342177281	submission.event.fileUploaded	0
272	1048585	17	3	2023-02-27 13:33:45	1342177288	submission.event.fileRevised	0
273	1048585	17	3	2023-02-27 13:33:54	1073741825	log.review.reviewerAssigned	0
274	1048585	17	3	2023-02-27 13:34:01	1073741825	log.review.reviewerAssigned	0
275	1048585	17	3	2023-02-27 13:34:06	805306371	editor.submission.decision.accept.log	0
276	1048585	17	3	2023-02-27 13:34:14	268435459	submission.event.participantAdded	0
277	1048585	17	3	2023-02-27 13:34:20	805306371	editor.submission.decision.sendToProduction.log	0
278	1048585	17	3	2023-02-27 13:34:28	268435459	submission.event.participantAdded	0
279	1048585	17	3	2023-02-27 13:34:33	268435459	submission.event.participantAdded	0
280	515	40	3	2023-02-27 13:34:40	1342177281	submission.event.fileUploaded	0
281	1048585	17	3	2023-02-27 13:34:40	1342177288	submission.event.fileRevised	0
282	515	40	3	2023-02-27 13:34:41	1342177296	submission.event.fileEdited	0
283	1048585	17	3	2023-02-27 13:34:41	1342177296	submission.event.fileEdited	0
284	1048585	17	3	2023-02-27 13:34:57	268435458	submission.event.general.metadataUpdated	0
285	1048585	17	3	2023-02-27 13:34:58	268435462	publication.event.scheduled	0
286	1048585	17	3	2023-02-27 13:35:07	268435462	publication.event.published	0
287	1048585	17	3	2023-02-27 13:35:24	268435463	publication.event.unpublished	0
288	1048585	17	3	2023-02-27 13:35:24	268435462	publication.event.scheduled	0
289	1048585	17	3	2023-02-27 13:35:40	268435462	publication.event.published	0
290	1048585	17	3	2023-02-27 13:35:58	268435463	publication.event.unpublished	0
291	1048585	17	3	2023-02-27 13:35:58	268435458	submission.event.general.metadataUpdated	0
292	1048585	17	3	2023-02-27 13:36:24	268435458	submission.event.general.metadataUpdated	0
293	1048585	17	3	2023-02-27 13:36:26	268435462	publication.event.published	0
294	1048585	18	34	2023-02-27 13:36:46	268435458	submission.event.general.metadataUpdated	0
295	1048585	18	34	2023-02-27 13:36:47	268435458	submission.event.general.metadataUpdated	0
296	515	41	34	2023-02-27 13:36:50	1342177281	submission.event.fileUploaded	0
297	1048585	18	34	2023-02-27 13:36:50	1342177288	submission.event.fileRevised	0
298	515	41	34	2023-02-27 13:36:50	1342177296	submission.event.fileEdited	0
299	1048585	18	34	2023-02-27 13:36:50	1342177296	submission.event.fileEdited	0
300	1048585	18	34	2023-02-27 13:36:51	268435457	submission.event.submissionSubmitted	0
301	1048585	18	3	2023-02-27 13:37:08	805306371	editor.submission.decision.decline.log	0
302	1048585	19	35	2023-02-27 13:37:21	268435458	submission.event.general.metadataUpdated	0
303	1048585	19	35	2023-02-27 13:37:21	268435458	submission.event.general.metadataUpdated	0
304	515	42	35	2023-02-27 13:37:25	1342177281	submission.event.fileUploaded	0
305	1048585	19	35	2023-02-27 13:37:25	1342177288	submission.event.fileRevised	0
306	515	42	35	2023-02-27 13:37:25	1342177296	submission.event.fileEdited	0
307	1048585	19	35	2023-02-27 13:37:25	1342177296	submission.event.fileEdited	0
308	1048585	19	35	2023-02-27 13:37:26	268435457	submission.event.submissionSubmitted	0
309	1048585	19	3	2023-02-27 13:37:43	805306371	editor.submission.decision.sendExternalReview.log	0
310	515	43	3	2023-02-27 13:37:43	1342177281	submission.event.fileUploaded	0
311	1048585	19	3	2023-02-27 13:37:43	1342177288	submission.event.fileRevised	0
312	1048585	19	3	2023-02-27 13:37:52	1073741825	log.review.reviewerAssigned	0
313	1048585	19	3	2023-02-27 13:37:59	1073741825	log.review.reviewerAssigned	0
314	1048585	19	3	2023-02-27 13:38:04	805306371	editor.submission.decision.accept.log	0
315	1048585	19	3	2023-02-27 13:38:12	268435459	submission.event.participantAdded	0
\.


--
-- Name: event_log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.event_log_log_id_seq', 315, true);


--
-- Data for Name: event_log_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.event_log_settings (log_id, setting_name, setting_value, setting_type) FROM stdin;
4	fileStage	2	int
4	sourceSubmissionFileId	\N	string
4	submissionFileId	1	int
4	fileId	1	int
4	submissionId	1	int
4	originalFileName	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
4	username	amwandenga	string
5	fileStage	2	int
5	submissionFileId	1	int
5	fileId	1	int
5	submissionId	1	int
5	username	amwandenga	string
5	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
6	fileStage	2	int
6	sourceSubmissionFileId	\N	string
6	submissionFileId	1	int
6	fileId	1	int
6	submissionId	1	int
6	originalFileName	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
6	username	amwandenga	string
7	fileStage	2	int
7	sourceSubmissionFileId	\N	string
7	submissionFileId	1	int
7	fileId	1	int
7	submissionId	1	int
7	username	amwandenga	string
7	originalFileName	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
7	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
8	fileStage	2	int
8	sourceSubmissionFileId	\N	string
8	submissionFileId	2	int
8	fileId	2	int
8	submissionId	1	int
8	originalFileName	structured-interview-guide.odt	string
8	username	amwandenga	string
9	fileStage	2	int
9	submissionFileId	2	int
9	fileId	2	int
9	submissionId	1	int
9	username	amwandenga	string
9	name	structured-interview-guide.odt	string
10	fileStage	2	int
10	sourceSubmissionFileId	\N	string
10	submissionFileId	2	int
10	fileId	2	int
10	submissionId	1	int
10	originalFileName	structured-interview-guide.odt	string
10	username	amwandenga	string
11	fileStage	2	int
11	sourceSubmissionFileId	\N	string
11	submissionFileId	2	int
11	fileId	2	int
11	submissionId	1	int
11	username	amwandenga	string
11	originalFileName	structured-interview-guide.odt	string
11	name	structured-interview-guide.odt	string
12	fileStage	2	int
12	sourceSubmissionFileId	\N	string
12	submissionFileId	3	int
12	fileId	3	int
12	submissionId	1	int
12	originalFileName	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
12	username	amwandenga	string
13	fileStage	2	int
13	submissionFileId	3	int
13	fileId	3	int
13	submissionId	1	int
13	username	amwandenga	string
13	name	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
14	fileStage	2	int
14	sourceSubmissionFileId	\N	string
14	submissionFileId	3	int
14	fileId	3	int
14	submissionId	1	int
14	originalFileName	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
14	username	amwandenga	string
15	fileStage	2	int
15	sourceSubmissionFileId	\N	string
15	submissionFileId	3	int
15	fileId	3	int
15	submissionId	1	int
15	username	amwandenga	string
15	originalFileName	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
15	name	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
16	fileStage	2	int
16	sourceSubmissionFileId	\N	string
16	submissionFileId	4	int
16	fileId	4	int
16	submissionId	1	int
16	originalFileName	signalling-theory-dataset.pdf	string
16	username	amwandenga	string
17	fileStage	2	int
17	submissionFileId	4	int
17	fileId	4	int
17	submissionId	1	int
17	username	amwandenga	string
17	name	signalling-theory-dataset.pdf	string
18	fileStage	2	int
18	sourceSubmissionFileId	\N	string
18	submissionFileId	4	int
18	fileId	4	int
18	submissionId	1	int
18	originalFileName	signalling-theory-dataset.pdf	string
18	username	amwandenga	string
19	fileStage	2	int
19	sourceSubmissionFileId	\N	string
19	submissionFileId	4	int
19	fileId	4	int
19	submissionId	1	int
19	username	amwandenga	string
19	originalFileName	signalling-theory-dataset.pdf	string
19	name	signalling-theory-dataset.pdf	string
20	fileStage	2	int
20	sourceSubmissionFileId	\N	string
20	submissionFileId	5	int
20	fileId	5	int
20	submissionId	1	int
20	originalFileName	author-disclosure-form.docx	string
20	username	amwandenga	string
21	fileStage	2	int
21	submissionFileId	5	int
21	fileId	5	int
21	submissionId	1	int
21	username	amwandenga	string
21	name	author-disclosure-form.docx	string
22	fileStage	2	int
22	sourceSubmissionFileId	\N	string
22	submissionFileId	5	int
22	fileId	5	int
22	submissionId	1	int
22	originalFileName	author-disclosure-form.docx	string
22	username	amwandenga	string
23	fileStage	2	int
23	sourceSubmissionFileId	\N	string
23	submissionFileId	5	int
23	fileId	5	int
23	submissionId	1	int
23	username	amwandenga	string
23	originalFileName	author-disclosure-form.docx	string
23	name	author-disclosure-form.docx	string
24	fileStage	2	int
24	sourceSubmissionFileId	\N	string
24	submissionFileId	6	int
24	fileId	6	int
24	submissionId	1	int
24	originalFileName	delete-this-file.pdf	string
24	username	amwandenga	string
25	fileStage	2	int
25	submissionFileId	6	int
25	fileId	6	int
25	submissionId	1	int
25	username	amwandenga	string
25	name	delete-this-file.pdf	string
26	fileStage	2	int
26	sourceSubmissionFileId	\N	string
26	submissionFileId	6	int
26	fileId	6	int
26	submissionId	1	int
26	originalFileName	delete-this-file.pdf	string
26	username	amwandenga	string
27	fileStage	2	int
27	sourceSubmissionFileId	\N	string
27	submissionFileId	6	int
27	fileId	6	int
27	submissionId	1	int
27	username	amwandenga	string
27	originalFileName	delete-this-file.pdf	string
27	name	delete-this-file.pdf	string
28	fileStage	2	int
28	sourceSubmissionFileId	\N	string
28	submissionFileId	6	int
28	submissionId	1	int
28	username	amwandenga	string
30	editorId	3	int
30	editorName	Daniel Barnes	string
30	submissionId	1	int
30	decision	3	int
31	fileStage	4	int
31	sourceSubmissionFileId	5	int
31	submissionFileId	7	int
31	fileId	5	int
31	submissionId	1	int
31	originalFileName	author-disclosure-form.docx	string
31	username	dbarnes	string
32	fileStage	4	int
32	submissionFileId	7	int
32	fileId	5	int
32	submissionId	1	int
32	username	dbarnes	string
32	name	author-disclosure-form.docx	string
33	fileStage	4	int
33	sourceSubmissionFileId	3	int
33	submissionFileId	8	int
33	fileId	3	int
33	submissionId	1	int
33	originalFileName	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
33	username	dbarnes	string
34	fileStage	4	int
34	submissionFileId	8	int
34	fileId	3	int
34	submissionId	1	int
34	username	dbarnes	string
34	name	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
35	fileStage	4	int
35	sourceSubmissionFileId	2	int
35	submissionFileId	9	int
35	fileId	2	int
35	submissionId	1	int
35	originalFileName	structured-interview-guide.odt	string
35	username	dbarnes	string
36	fileStage	4	int
36	submissionFileId	9	int
36	fileId	2	int
36	submissionId	1	int
36	username	dbarnes	string
36	name	structured-interview-guide.odt	string
37	fileStage	4	int
37	sourceSubmissionFileId	1	int
37	submissionFileId	10	int
37	fileId	1	int
37	submissionId	1	int
37	originalFileName	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
37	username	dbarnes	string
38	fileStage	4	int
38	submissionFileId	10	int
38	fileId	1	int
38	submissionId	1	int
38	username	dbarnes	string
38	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
39	fileStage	4	int
39	sourceSubmissionFileId	4	int
39	submissionFileId	11	int
39	fileId	4	int
39	submissionId	1	int
39	originalFileName	signalling-theory-dataset.pdf	string
39	username	dbarnes	string
40	fileStage	4	int
40	submissionFileId	11	int
40	fileId	4	int
40	submissionId	1	int
40	username	dbarnes	string
40	name	signalling-theory-dataset.pdf	string
41	reviewAssignmentId	1	int
41	reviewerName	Julie Janssen	string
41	submissionId	1	int
41	stageId	3	int
41	round	1	int
42	reviewAssignmentId	2	int
42	reviewerName	Aisla McCrae	string
42	submissionId	1	int
42	stageId	3	int
42	round	1	int
43	reviewAssignmentId	3	int
43	reviewerName	Adela Gallego	string
43	submissionId	1	int
43	stageId	3	int
43	round	1	int
44	editorId	3	int
44	editorName	Daniel Barnes	string
44	submissionId	1	int
44	decision	2	int
45	name	Sarah Vogt	string
45	username	svogt	string
45	userGroupName	Copyeditor	string
46	editorId	3	int
46	editorName	Daniel Barnes	string
46	submissionId	1	int
46	decision	7	int
47	name	Stephen Hellier	string
47	username	shellier	string
47	userGroupName	Layout Editor	string
48	name	Sabine Kumar	string
48	username	skumar	string
48	userGroupName	Proofreader	string
53	fileStage	10	int
53	sourceSubmissionFileId	\N	string
53	submissionFileId	12	int
53	fileId	7	int
53	submissionId	1	int
53	originalFileName	article.pdf	string
53	username	dbarnes	string
54	fileStage	10	int
54	submissionFileId	12	int
54	fileId	7	int
54	submissionId	1	int
54	username	dbarnes	string
54	name	article.pdf	string
55	fileStage	10	int
55	sourceSubmissionFileId	\N	string
55	submissionFileId	12	int
55	fileId	7	int
55	submissionId	1	int
55	originalFileName	article.pdf	string
55	username	dbarnes	string
56	fileStage	10	int
56	sourceSubmissionFileId	\N	string
56	submissionFileId	12	int
56	fileId	7	int
56	submissionId	1	int
56	username	dbarnes	string
56	originalFileName	article.pdf	string
56	name	article.pdf	string
57	name	Alan Mwandenga	string
57	username	amwandenga	string
57	userGroupName	Author	string
69	name	Stephanie Berardo	string
69	username	sberardo	string
69	userGroupName	Section editor	string
70	name	Stephanie Berardo	string
70	username	sberardo	string
70	userGroupName	Section editor	string
73	fileStage	2	int
73	sourceSubmissionFileId	\N	string
73	submissionFileId	13	int
73	fileId	8	int
73	submissionId	2	int
73	originalFileName	The influence of lactation on the quantity and quality of cashmere production.pdf	string
73	username	ccorino	string
74	fileStage	2	int
74	submissionFileId	13	int
74	fileId	8	int
74	submissionId	2	int
74	username	ccorino	string
74	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
75	fileStage	2	int
75	sourceSubmissionFileId	\N	string
75	submissionFileId	13	int
75	fileId	8	int
75	submissionId	2	int
75	originalFileName	The influence of lactation on the quantity and quality of cashmere production.pdf	string
75	username	ccorino	string
76	fileStage	2	int
76	sourceSubmissionFileId	\N	string
76	submissionFileId	13	int
76	fileId	8	int
76	submissionId	2	int
76	username	ccorino	string
76	originalFileName	The influence of lactation on the quantity and quality of cashmere production.pdf	string
76	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
78	editorId	3	int
78	editorName	Daniel Barnes	string
78	submissionId	2	int
78	decision	3	int
79	fileStage	4	int
79	sourceSubmissionFileId	13	int
79	submissionFileId	14	int
79	fileId	8	int
79	submissionId	2	int
79	originalFileName	The influence of lactation on the quantity and quality of cashmere production.pdf	string
79	username	dbarnes	string
80	fileStage	4	int
80	submissionFileId	14	int
80	fileId	8	int
80	submissionId	2	int
80	username	dbarnes	string
80	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
81	name	Minoti Inoue	string
81	username	minoue	string
81	userGroupName	Section editor	string
83	editorId	6	int
83	editorName	Minoti Inoue	string
83	submissionId	2	int
83	decision	9	int
86	fileStage	2	int
86	sourceSubmissionFileId	\N	string
86	submissionFileId	15	int
86	fileId	9	int
86	submissionId	3	int
86	originalFileName	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
86	username	ckwantes	string
87	fileStage	2	int
87	submissionFileId	15	int
87	fileId	9	int
87	submissionId	3	int
87	username	ckwantes	string
87	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
88	fileStage	2	int
88	sourceSubmissionFileId	\N	string
88	submissionFileId	15	int
88	fileId	9	int
88	submissionId	3	int
88	originalFileName	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
88	username	ckwantes	string
89	fileStage	2	int
89	sourceSubmissionFileId	\N	string
89	submissionFileId	15	int
89	fileId	9	int
89	submissionId	3	int
89	username	ckwantes	string
89	originalFileName	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
89	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
91	editorId	3	int
91	editorName	Daniel Barnes	string
91	submissionId	3	int
91	decision	3	int
92	fileStage	4	int
92	sourceSubmissionFileId	15	int
92	submissionFileId	16	int
92	fileId	9	int
92	submissionId	3	int
92	originalFileName	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
92	username	dbarnes	string
93	fileStage	4	int
93	submissionFileId	16	int
93	fileId	9	int
93	submissionId	3	int
93	username	dbarnes	string
93	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
94	reviewAssignmentId	4	int
94	reviewerName	Aisla McCrae	string
94	submissionId	3	int
94	stageId	3	int
94	round	1	int
95	reviewAssignmentId	5	int
95	reviewerName	Adela Gallego	string
95	submissionId	3	int
95	stageId	3	int
95	round	1	int
96	editorId	3	int
96	editorName	Daniel Barnes	string
96	submissionId	3	int
96	decision	2	int
97	name	Maria Fritz	string
97	username	mfritz	string
97	userGroupName	Copyeditor	string
100	fileStage	2	int
100	sourceSubmissionFileId	\N	string
100	submissionFileId	17	int
100	fileId	10	int
100	submissionId	4	int
100	originalFileName	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
100	username	cmontgomerie	string
101	fileStage	2	int
101	submissionFileId	17	int
101	fileId	10	int
101	submissionId	4	int
101	username	cmontgomerie	string
101	name	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
102	fileStage	2	int
102	sourceSubmissionFileId	\N	string
102	submissionFileId	17	int
102	fileId	10	int
102	submissionId	4	int
102	originalFileName	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
102	username	cmontgomerie	string
103	fileStage	2	int
103	sourceSubmissionFileId	\N	string
103	submissionFileId	17	int
103	fileId	10	int
103	submissionId	4	int
103	username	cmontgomerie	string
103	originalFileName	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
103	name	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
107	fileStage	2	int
107	sourceSubmissionFileId	\N	string
107	submissionFileId	18	int
107	fileId	11	int
107	submissionId	5	int
107	originalFileName	Genetic transformation of forest trees.pdf	string
107	username	ddiouf	string
108	fileStage	2	int
108	submissionFileId	18	int
108	fileId	11	int
108	submissionId	5	int
108	username	ddiouf	string
108	name	Genetic transformation of forest trees.pdf	string
109	fileStage	2	int
109	sourceSubmissionFileId	\N	string
109	submissionFileId	18	int
109	fileId	11	int
109	submissionId	5	int
109	originalFileName	Genetic transformation of forest trees.pdf	string
109	username	ddiouf	string
110	fileStage	2	int
110	sourceSubmissionFileId	\N	string
110	submissionFileId	18	int
110	fileId	11	int
110	submissionId	5	int
110	username	ddiouf	string
110	originalFileName	Genetic transformation of forest trees.pdf	string
110	name	Genetic transformation of forest trees.pdf	string
112	editorId	3	int
112	editorName	Daniel Barnes	string
112	submissionId	5	int
112	decision	3	int
113	fileStage	4	int
113	sourceSubmissionFileId	18	int
113	submissionFileId	19	int
113	fileId	11	int
113	submissionId	5	int
113	originalFileName	Genetic transformation of forest trees.pdf	string
113	username	dbarnes	string
114	fileStage	4	int
114	submissionFileId	19	int
114	fileId	11	int
114	submissionId	5	int
114	username	dbarnes	string
114	name	Genetic transformation of forest trees.pdf	string
115	reviewAssignmentId	6	int
115	reviewerName	Paul Hudson	string
115	submissionId	5	int
115	stageId	3	int
115	round	1	int
116	reviewAssignmentId	7	int
116	reviewerName	Adela Gallego	string
116	submissionId	5	int
116	stageId	3	int
116	round	1	int
117	editorId	3	int
117	editorName	Daniel Barnes	string
117	submissionId	5	int
117	decision	2	int
118	name	Maria Fritz	string
118	username	mfritz	string
118	userGroupName	Copyeditor	string
119	editorId	3	int
119	editorName	Daniel Barnes	string
119	submissionId	5	int
119	decision	7	int
120	name	Graham Cox	string
120	username	gcox	string
120	userGroupName	Layout Editor	string
121	name	Catherine Turner	string
121	username	cturner	string
121	userGroupName	Proofreader	string
124	fileStage	2	int
124	sourceSubmissionFileId	\N	string
124	submissionFileId	20	int
124	fileId	12	int
124	submissionId	6	int
124	originalFileName	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
124	username	dphillips	string
125	fileStage	2	int
125	submissionFileId	20	int
125	fileId	12	int
125	submissionId	6	int
125	username	dphillips	string
125	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
126	fileStage	2	int
126	sourceSubmissionFileId	\N	string
126	submissionFileId	20	int
126	fileId	12	int
126	submissionId	6	int
126	originalFileName	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
126	username	dphillips	string
127	fileStage	2	int
127	sourceSubmissionFileId	\N	string
127	submissionFileId	20	int
127	fileId	12	int
127	submissionId	6	int
127	username	dphillips	string
127	originalFileName	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
127	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
129	editorId	3	int
129	editorName	Daniel Barnes	string
129	submissionId	6	int
129	decision	3	int
130	fileStage	4	int
130	sourceSubmissionFileId	20	int
130	submissionFileId	21	int
130	fileId	12	int
130	submissionId	6	int
130	originalFileName	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
130	username	dbarnes	string
131	fileStage	4	int
131	submissionFileId	21	int
131	fileId	12	int
131	submissionId	6	int
131	username	dbarnes	string
131	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
132	reviewAssignmentId	8	int
132	reviewerName	Julie Janssen	string
132	submissionId	6	int
132	stageId	3	int
132	round	1	int
133	reviewAssignmentId	9	int
133	reviewerName	Adela Gallego	string
133	submissionId	6	int
133	stageId	3	int
133	round	1	int
134	editorId	3	int
134	editorName	Daniel Barnes	string
134	submissionId	6	int
134	decision	2	int
135	name	Maria Fritz	string
135	username	mfritz	string
135	userGroupName	Copyeditor	string
136	editorId	3	int
136	editorName	Daniel Barnes	string
136	submissionId	6	int
136	decision	7	int
137	name	Graham Cox	string
137	username	gcox	string
137	userGroupName	Layout Editor	string
140	fileStage	2	int
140	sourceSubmissionFileId	\N	string
140	submissionFileId	22	int
140	fileId	13	int
140	submissionId	7	int
140	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
140	username	dsokoloff	string
141	fileStage	2	int
141	submissionFileId	22	int
141	fileId	13	int
141	submissionId	7	int
141	username	dsokoloff	string
141	name	Developing efficacy beliefs in the classroom.pdf	string
142	fileStage	2	int
142	sourceSubmissionFileId	\N	string
142	submissionFileId	22	int
142	fileId	13	int
142	submissionId	7	int
142	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
142	username	dsokoloff	string
143	fileStage	2	int
143	sourceSubmissionFileId	\N	string
143	submissionFileId	22	int
143	fileId	13	int
143	submissionId	7	int
143	username	dsokoloff	string
143	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
143	name	Developing efficacy beliefs in the classroom.pdf	string
145	editorId	3	int
145	editorName	Daniel Barnes	string
145	submissionId	7	int
145	decision	3	int
146	fileStage	4	int
146	sourceSubmissionFileId	22	int
146	submissionFileId	23	int
146	fileId	13	int
146	submissionId	7	int
146	originalFileName	Developing efficacy beliefs in the classroom.pdf	string
146	username	dbarnes	string
147	fileStage	4	int
147	submissionFileId	23	int
147	fileId	13	int
147	submissionId	7	int
147	username	dbarnes	string
147	name	Developing efficacy beliefs in the classroom.pdf	string
148	reviewAssignmentId	10	int
148	reviewerName	Paul Hudson	string
148	submissionId	7	int
148	stageId	3	int
148	round	1	int
149	reviewAssignmentId	11	int
149	reviewerName	Aisla McCrae	string
149	submissionId	7	int
149	stageId	3	int
149	round	1	int
150	reviewAssignmentId	12	int
150	reviewerName	Adela Gallego	string
150	submissionId	7	int
150	stageId	3	int
150	round	1	int
151	reviewAssignmentId	10	int
151	reviewerName	Paul Hudson	string
151	submissionId	7	int
151	round	1	int
152	reviewAssignmentId	10	int
152	reviewerName	Paul Hudson	string
152	submissionId	7	int
152	round	1	int
155	fileStage	2	int
155	sourceSubmissionFileId	\N	string
155	submissionFileId	24	int
155	fileId	14	int
155	submissionId	8	int
155	originalFileName	Traditions and Trends in the Study of the Commons.pdf	string
155	username	eostrom	string
156	fileStage	2	int
156	submissionFileId	24	int
156	fileId	14	int
156	submissionId	8	int
156	username	eostrom	string
156	name	Traditions and Trends in the Study of the Commons.pdf	string
157	fileStage	2	int
157	sourceSubmissionFileId	\N	string
157	submissionFileId	24	int
157	fileId	14	int
157	submissionId	8	int
157	originalFileName	Traditions and Trends in the Study of the Commons.pdf	string
157	username	eostrom	string
158	fileStage	2	int
158	sourceSubmissionFileId	\N	string
158	submissionFileId	24	int
158	fileId	14	int
158	submissionId	8	int
158	username	eostrom	string
158	originalFileName	Traditions and Trends in the Study of the Commons.pdf	string
158	name	Traditions and Trends in the Study of the Commons.pdf	string
162	fileStage	2	int
162	sourceSubmissionFileId	\N	string
162	submissionFileId	25	int
162	fileId	15	int
162	submissionId	9	int
162	originalFileName	Hansen & Pinto: Reason Reclaimed.pdf	string
162	username	fpaglieri	string
163	fileStage	2	int
163	submissionFileId	25	int
163	fileId	15	int
163	submissionId	9	int
163	username	fpaglieri	string
163	name	Hansen & Pinto: Reason Reclaimed.pdf	string
164	fileStage	2	int
164	sourceSubmissionFileId	\N	string
164	submissionFileId	25	int
164	fileId	15	int
164	submissionId	9	int
164	originalFileName	Hansen & Pinto: Reason Reclaimed.pdf	string
164	username	fpaglieri	string
165	fileStage	2	int
165	sourceSubmissionFileId	\N	string
165	submissionFileId	25	int
165	fileId	15	int
165	submissionId	9	int
165	username	fpaglieri	string
165	originalFileName	Hansen & Pinto: Reason Reclaimed.pdf	string
165	name	Hansen & Pinto: Reason Reclaimed.pdf	string
167	editorId	3	int
167	editorName	Daniel Barnes	string
167	submissionId	9	int
167	decision	3	int
168	fileStage	4	int
168	sourceSubmissionFileId	25	int
168	submissionFileId	26	int
168	fileId	15	int
168	submissionId	9	int
168	originalFileName	Hansen & Pinto: Reason Reclaimed.pdf	string
168	username	dbarnes	string
169	fileStage	4	int
169	submissionFileId	26	int
169	fileId	15	int
169	submissionId	9	int
169	username	dbarnes	string
169	name	Hansen & Pinto: Reason Reclaimed.pdf	string
170	reviewAssignmentId	13	int
170	reviewerName	Julie Janssen	string
170	submissionId	9	int
170	stageId	3	int
170	round	1	int
171	reviewAssignmentId	14	int
171	reviewerName	Adela Gallego	string
171	submissionId	9	int
171	stageId	3	int
171	round	1	int
172	editorId	3	int
172	editorName	Daniel Barnes	string
172	submissionId	9	int
172	decision	2	int
173	name	Sarah Vogt	string
173	username	svogt	string
173	userGroupName	Copyeditor	string
174	editorId	3	int
174	editorName	Daniel Barnes	string
174	submissionId	9	int
174	decision	7	int
175	name	Stephen Hellier	string
175	username	shellier	string
175	userGroupName	Layout Editor	string
176	name	Sabine Kumar	string
176	username	skumar	string
176	userGroupName	Proofreader	string
179	fileStage	2	int
179	sourceSubmissionFileId	\N	string
179	submissionFileId	27	int
179	fileId	16	int
179	submissionId	10	int
179	originalFileName	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
179	username	jnovak	string
180	fileStage	2	int
180	submissionFileId	27	int
180	fileId	16	int
180	submissionId	10	int
180	username	jnovak	string
180	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
181	fileStage	2	int
181	sourceSubmissionFileId	\N	string
181	submissionFileId	27	int
181	fileId	16	int
181	submissionId	10	int
181	originalFileName	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
181	username	jnovak	string
182	fileStage	2	int
182	sourceSubmissionFileId	\N	string
182	submissionFileId	27	int
182	fileId	16	int
182	submissionId	10	int
182	username	jnovak	string
182	originalFileName	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
182	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
184	editorId	3	int
184	editorName	Daniel Barnes	string
184	submissionId	10	int
184	decision	3	int
185	fileStage	4	int
185	sourceSubmissionFileId	27	int
185	submissionFileId	28	int
185	fileId	16	int
185	submissionId	10	int
185	originalFileName	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
185	username	dbarnes	string
186	fileStage	4	int
186	submissionFileId	28	int
186	fileId	16	int
186	submissionId	10	int
186	username	dbarnes	string
186	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
187	reviewAssignmentId	15	int
187	reviewerName	Aisla McCrae	string
187	submissionId	10	int
187	stageId	3	int
187	round	1	int
188	reviewAssignmentId	16	int
188	reviewerName	Adela Gallego	string
188	submissionId	10	int
188	stageId	3	int
188	round	1	int
189	reviewAssignmentId	15	int
189	reviewerName	Aisla McCrae	string
189	submissionId	10	int
189	round	1	int
190	reviewAssignmentId	15	int
190	reviewerName	Aisla McCrae	string
190	submissionId	10	int
190	round	1	int
191	reviewAssignmentId	16	int
191	reviewerName	Adela Gallego	string
191	submissionId	10	int
191	round	1	int
192	reviewAssignmentId	16	int
192	reviewerName	Adela Gallego	string
192	submissionId	10	int
192	round	1	int
195	fileStage	2	int
195	sourceSubmissionFileId	\N	string
195	submissionFileId	29	int
195	fileId	17	int
195	submissionId	11	int
195	originalFileName	Learning Sustainable Design through Service.pdf	string
195	username	kalkhafaji	string
196	fileStage	2	int
196	submissionFileId	29	int
196	fileId	17	int
196	submissionId	11	int
196	username	kalkhafaji	string
196	name	Learning Sustainable Design through Service.pdf	string
197	fileStage	2	int
197	sourceSubmissionFileId	\N	string
197	submissionFileId	29	int
197	fileId	17	int
197	submissionId	11	int
197	originalFileName	Learning Sustainable Design through Service.pdf	string
197	username	kalkhafaji	string
198	fileStage	2	int
198	sourceSubmissionFileId	\N	string
198	submissionFileId	29	int
198	fileId	17	int
198	submissionId	11	int
198	username	kalkhafaji	string
198	originalFileName	Learning Sustainable Design through Service.pdf	string
198	name	Learning Sustainable Design through Service.pdf	string
202	fileStage	2	int
202	sourceSubmissionFileId	\N	string
202	submissionFileId	30	int
202	fileId	18	int
202	submissionId	12	int
202	originalFileName	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
202	username	lchristopher	string
203	fileStage	2	int
203	submissionFileId	30	int
203	fileId	18	int
203	submissionId	12	int
203	username	lchristopher	string
203	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
204	fileStage	2	int
204	sourceSubmissionFileId	\N	string
204	submissionFileId	30	int
204	fileId	18	int
204	submissionId	12	int
204	originalFileName	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
204	username	lchristopher	string
205	fileStage	2	int
205	sourceSubmissionFileId	\N	string
205	submissionFileId	30	int
205	fileId	18	int
205	submissionId	12	int
205	username	lchristopher	string
205	originalFileName	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
205	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
207	editorId	3	int
207	editorName	Daniel Barnes	string
207	submissionId	12	int
207	decision	3	int
208	fileStage	4	int
208	sourceSubmissionFileId	30	int
208	submissionFileId	31	int
208	fileId	18	int
208	submissionId	12	int
208	originalFileName	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
208	username	dbarnes	string
209	fileStage	4	int
209	submissionFileId	31	int
209	fileId	18	int
209	submissionId	12	int
209	username	dbarnes	string
209	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
210	reviewAssignmentId	17	int
210	reviewerName	Julie Janssen	string
210	submissionId	12	int
210	stageId	3	int
210	round	1	int
211	reviewAssignmentId	18	int
211	reviewerName	Paul Hudson	string
211	submissionId	12	int
211	stageId	3	int
211	round	1	int
214	fileStage	2	int
214	sourceSubmissionFileId	\N	string
214	submissionFileId	32	int
214	fileId	19	int
214	submissionId	13	int
214	originalFileName	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
214	username	lkumiega	string
215	fileStage	2	int
215	submissionFileId	32	int
215	fileId	19	int
215	submissionId	13	int
215	username	lkumiega	string
215	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
216	fileStage	2	int
216	sourceSubmissionFileId	\N	string
216	submissionFileId	32	int
216	fileId	19	int
216	submissionId	13	int
216	originalFileName	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
216	username	lkumiega	string
217	fileStage	2	int
217	sourceSubmissionFileId	\N	string
217	submissionFileId	32	int
217	fileId	19	int
217	submissionId	13	int
217	username	lkumiega	string
217	originalFileName	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
217	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
219	editorId	3	int
219	editorName	Daniel Barnes	string
219	submissionId	13	int
219	decision	3	int
220	fileStage	4	int
220	sourceSubmissionFileId	32	int
220	submissionFileId	33	int
220	fileId	19	int
220	submissionId	13	int
220	originalFileName	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
220	username	dbarnes	string
221	fileStage	4	int
221	submissionFileId	33	int
221	fileId	19	int
221	submissionId	13	int
221	username	dbarnes	string
221	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
222	reviewAssignmentId	19	int
222	reviewerName	Julie Janssen	string
222	submissionId	13	int
222	stageId	3	int
222	round	1	int
223	reviewAssignmentId	20	int
223	reviewerName	Aisla McCrae	string
223	submissionId	13	int
223	stageId	3	int
223	round	1	int
224	reviewAssignmentId	21	int
224	reviewerName	Adela Gallego	string
224	submissionId	13	int
224	stageId	3	int
224	round	1	int
225	reviewAssignmentId	19	int
225	reviewerName	Julie Janssen	string
225	submissionId	13	int
225	round	1	int
226	reviewAssignmentId	19	int
226	reviewerName	Julie Janssen	string
226	submissionId	13	int
226	round	1	int
227	reviewAssignmentId	20	int
227	reviewerName	Aisla McCrae	string
227	submissionId	13	int
227	round	1	int
228	reviewAssignmentId	20	int
228	reviewerName	Aisla McCrae	string
228	submissionId	13	int
228	round	1	int
229	reviewAssignmentId	21	int
229	reviewerName	Adela Gallego	string
229	submissionId	13	int
229	round	1	int
230	reviewAssignmentId	21	int
230	reviewerName	Adela Gallego	string
230	submissionId	13	int
230	round	1	int
231	editorId	3	int
231	editorName	Daniel Barnes	string
231	submissionId	13	int
231	decision	4	int
232	recipientCount	3	int
232	subject	Thank you for your review	string
235	fileStage	2	int
235	sourceSubmissionFileId	\N	string
235	submissionFileId	34	int
235	fileId	20	int
235	submissionId	14	int
235	originalFileName	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
235	username	pdaniel	string
236	fileStage	2	int
236	submissionFileId	34	int
236	fileId	20	int
236	submissionId	14	int
236	username	pdaniel	string
236	name	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
237	fileStage	2	int
237	sourceSubmissionFileId	\N	string
237	submissionFileId	34	int
237	fileId	20	int
237	submissionId	14	int
237	originalFileName	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
237	username	pdaniel	string
238	fileStage	2	int
238	sourceSubmissionFileId	\N	string
238	submissionFileId	34	int
238	fileId	20	int
238	submissionId	14	int
238	username	pdaniel	string
238	originalFileName	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
238	name	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
242	fileStage	2	int
242	sourceSubmissionFileId	\N	string
242	submissionFileId	35	int
242	fileId	21	int
242	submissionId	15	int
242	originalFileName	Yam diseases and its management in Nigeria.pdf	string
242	username	rbaiyewu	string
243	fileStage	2	int
243	submissionFileId	35	int
243	fileId	21	int
243	submissionId	15	int
243	username	rbaiyewu	string
243	name	Yam diseases and its management in Nigeria.pdf	string
244	fileStage	2	int
244	sourceSubmissionFileId	\N	string
244	submissionFileId	35	int
244	fileId	21	int
244	submissionId	15	int
244	originalFileName	Yam diseases and its management in Nigeria.pdf	string
244	username	rbaiyewu	string
245	fileStage	2	int
245	sourceSubmissionFileId	\N	string
245	submissionFileId	35	int
245	fileId	21	int
245	submissionId	15	int
245	username	rbaiyewu	string
245	originalFileName	Yam diseases and its management in Nigeria.pdf	string
245	name	Yam diseases and its management in Nigeria.pdf	string
247	editorId	3	int
247	editorName	Daniel Barnes	string
247	submissionId	15	int
247	decision	3	int
248	fileStage	4	int
248	sourceSubmissionFileId	35	int
248	submissionFileId	36	int
248	fileId	21	int
248	submissionId	15	int
248	originalFileName	Yam diseases and its management in Nigeria.pdf	string
248	username	dbarnes	string
249	fileStage	4	int
249	submissionFileId	36	int
249	fileId	21	int
249	submissionId	15	int
249	username	dbarnes	string
249	name	Yam diseases and its management in Nigeria.pdf	string
250	reviewAssignmentId	22	int
250	reviewerName	Paul Hudson	string
250	submissionId	15	int
250	stageId	3	int
250	round	1	int
251	reviewAssignmentId	23	int
251	reviewerName	Aisla McCrae	string
251	submissionId	15	int
251	stageId	3	int
251	round	1	int
252	editorId	3	int
252	editorName	Daniel Barnes	string
252	submissionId	15	int
252	decision	2	int
253	name	Sarah Vogt	string
253	username	svogt	string
253	userGroupName	Copyeditor	string
254	editorId	3	int
254	editorName	Daniel Barnes	string
254	submissionId	15	int
254	decision	7	int
255	name	Stephen Hellier	string
255	username	shellier	string
255	userGroupName	Layout Editor	string
258	fileStage	2	int
258	sourceSubmissionFileId	\N	string
258	submissionFileId	37	int
258	fileId	22	int
258	submissionId	16	int
258	originalFileName	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
258	username	rrossi	string
259	fileStage	2	int
259	submissionFileId	37	int
259	fileId	22	int
259	submissionId	16	int
259	username	rrossi	string
259	name	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
260	fileStage	2	int
260	sourceSubmissionFileId	\N	string
260	submissionFileId	37	int
260	fileId	22	int
260	submissionId	16	int
260	originalFileName	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
260	username	rrossi	string
261	fileStage	2	int
261	sourceSubmissionFileId	\N	string
261	submissionFileId	37	int
261	fileId	22	int
261	submissionId	16	int
261	username	rrossi	string
261	originalFileName	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
261	name	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
265	fileStage	2	int
265	sourceSubmissionFileId	\N	string
265	submissionFileId	38	int
265	fileId	23	int
265	submissionId	17	int
265	originalFileName	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
265	username	vkarbasizaed	string
266	fileStage	2	int
266	submissionFileId	38	int
266	fileId	23	int
266	submissionId	17	int
266	username	vkarbasizaed	string
266	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
267	fileStage	2	int
267	sourceSubmissionFileId	\N	string
267	submissionFileId	38	int
267	fileId	23	int
267	submissionId	17	int
267	originalFileName	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
267	username	vkarbasizaed	string
268	fileStage	2	int
268	sourceSubmissionFileId	\N	string
268	submissionFileId	38	int
268	fileId	23	int
268	submissionId	17	int
268	username	vkarbasizaed	string
268	originalFileName	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
268	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
270	editorId	3	int
270	editorName	Daniel Barnes	string
270	submissionId	17	int
270	decision	3	int
271	fileStage	4	int
271	sourceSubmissionFileId	38	int
271	submissionFileId	39	int
271	fileId	23	int
271	submissionId	17	int
271	originalFileName	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
271	username	dbarnes	string
272	fileStage	4	int
272	submissionFileId	39	int
272	fileId	23	int
272	submissionId	17	int
272	username	dbarnes	string
272	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
273	reviewAssignmentId	24	int
273	reviewerName	Julie Janssen	string
273	submissionId	17	int
273	stageId	3	int
273	round	1	int
274	reviewAssignmentId	25	int
274	reviewerName	Paul Hudson	string
274	submissionId	17	int
274	stageId	3	int
274	round	1	int
275	editorId	3	int
275	editorName	Daniel Barnes	string
275	submissionId	17	int
275	decision	2	int
276	name	Maria Fritz	string
276	username	mfritz	string
276	userGroupName	Copyeditor	string
277	editorId	3	int
277	editorName	Daniel Barnes	string
277	submissionId	17	int
277	decision	7	int
278	name	Graham Cox	string
278	username	gcox	string
278	userGroupName	Layout Editor	string
279	name	Catherine Turner	string
279	username	cturner	string
279	userGroupName	Proofreader	string
280	fileStage	10	int
280	sourceSubmissionFileId	\N	string
280	submissionFileId	40	int
280	fileId	24	int
280	submissionId	17	int
280	originalFileName	article.pdf	string
280	username	dbarnes	string
281	fileStage	10	int
281	submissionFileId	40	int
281	fileId	24	int
281	submissionId	17	int
281	username	dbarnes	string
281	name	article.pdf	string
282	fileStage	10	int
282	sourceSubmissionFileId	\N	string
282	submissionFileId	40	int
282	fileId	24	int
282	submissionId	17	int
282	originalFileName	article.pdf	string
282	username	dbarnes	string
283	fileStage	10	int
283	sourceSubmissionFileId	\N	string
283	submissionFileId	40	int
283	fileId	24	int
283	submissionId	17	int
283	username	dbarnes	string
283	originalFileName	article.pdf	string
283	name	article.pdf	string
296	fileStage	2	int
296	sourceSubmissionFileId	\N	string
296	submissionFileId	41	int
296	fileId	25	int
296	submissionId	18	int
296	originalFileName	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
296	username	vwilliamson	string
297	fileStage	2	int
297	submissionFileId	41	int
297	fileId	25	int
297	submissionId	18	int
297	username	vwilliamson	string
297	name	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
298	fileStage	2	int
298	sourceSubmissionFileId	\N	string
298	submissionFileId	41	int
298	fileId	25	int
298	submissionId	18	int
298	originalFileName	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
298	username	vwilliamson	string
299	fileStage	2	int
299	sourceSubmissionFileId	\N	string
299	submissionFileId	41	int
299	fileId	25	int
299	submissionId	18	int
299	username	vwilliamson	string
299	originalFileName	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
299	name	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
301	editorId	3	int
301	editorName	Daniel Barnes	string
301	submissionId	18	int
301	decision	8	int
304	fileStage	2	int
304	sourceSubmissionFileId	\N	string
304	submissionFileId	42	int
304	fileId	26	int
304	submissionId	19	int
304	originalFileName	Finocchiaro: Arguments About Arguments.pdf	string
304	username	zwoods	string
305	fileStage	2	int
305	submissionFileId	42	int
305	fileId	26	int
305	submissionId	19	int
305	username	zwoods	string
305	name	Finocchiaro: Arguments About Arguments.pdf	string
306	fileStage	2	int
306	sourceSubmissionFileId	\N	string
306	submissionFileId	42	int
306	fileId	26	int
306	submissionId	19	int
306	originalFileName	Finocchiaro: Arguments About Arguments.pdf	string
306	username	zwoods	string
307	fileStage	2	int
307	sourceSubmissionFileId	\N	string
307	submissionFileId	42	int
307	fileId	26	int
307	submissionId	19	int
307	username	zwoods	string
307	originalFileName	Finocchiaro: Arguments About Arguments.pdf	string
307	name	Finocchiaro: Arguments About Arguments.pdf	string
309	editorId	3	int
309	editorName	Daniel Barnes	string
309	submissionId	19	int
309	decision	3	int
310	fileStage	4	int
310	sourceSubmissionFileId	42	int
310	submissionFileId	43	int
310	fileId	26	int
310	submissionId	19	int
310	originalFileName	Finocchiaro: Arguments About Arguments.pdf	string
310	username	dbarnes	string
311	fileStage	4	int
311	submissionFileId	43	int
311	fileId	26	int
311	submissionId	19	int
311	username	dbarnes	string
311	name	Finocchiaro: Arguments About Arguments.pdf	string
312	reviewAssignmentId	26	int
312	reviewerName	Paul Hudson	string
312	submissionId	19	int
312	stageId	3	int
312	round	1	int
313	reviewAssignmentId	27	int
313	reviewerName	Aisla McCrae	string
313	submissionId	19	int
313	stageId	3	int
313	round	1	int
314	editorId	3	int
314	editorName	Daniel Barnes	string
314	submissionId	19	int
314	decision	2	int
315	name	Sarah Vogt	string
315	username	svogt	string
315	userGroupName	Copyeditor	string
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.files (file_id, path, mimetype) FROM stdin;
1	journals/1/articles/1/63fcac7baa18b.pdf	application/pdf
2	journals/1/articles/1/63fcac7cebd0a.odt	application/vnd.oasis.opendocument.text
3	journals/1/articles/1/63fcac7e4cf4a.ods	application/vnd.oasis.opendocument.spreadsheet
4	journals/1/articles/1/63fcac7f95262.pdf	application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
5	journals/1/articles/1/63fcac80e11f8.docx	application/vnd.openxmlformats-officedocument.wordprocessingml.document
7	journals/1/articles/1/63fcad7f0f3aa.pdf	application/pdf
8	journals/1/articles/2/63fcae1056858.pdf	application/pdf
9	journals/1/articles/3/63fcae4d9b5f2.pdf	application/pdf
10	journals/1/articles/4/63fcae87015e6.pdf	application/pdf
11	journals/1/articles/5/63fcae9614354.pdf	application/pdf
12	journals/1/articles/6/63fcaee2aacac.pdf	application/pdf
13	journals/1/articles/7/63fcaf2aa19a6.pdf	application/pdf
14	journals/1/articles/8/63fcaf6b71d51.pdf	application/pdf
15	journals/1/articles/9/63fcaf7a697ad.pdf	application/pdf
16	journals/1/articles/10/63fcafc7bc8a7.pdf	application/pdf
17	journals/1/articles/11/63fcb00cefbbf.pdf	application/pdf
18	journals/1/articles/12/63fcb01bc9a0d.pdf	application/pdf
19	journals/1/articles/13/63fcb04aa845d.pdf	application/pdf
20	journals/1/articles/14/63fcb0beb1cf6.pdf	application/pdf
21	journals/1/articles/15/63fcb0ccee0e7.pdf	application/pdf
22	journals/1/articles/16/63fcb118433b6.pdf	application/pdf
23	journals/1/articles/17/63fcb126afaf3.pdf	application/pdf
24	journals/1/articles/17/63fcb170975c4.pdf	application/pdf
25	journals/1/articles/18/63fcb1f24527f.pdf	application/pdf
26	journals/1/articles/19/63fcb214f37c1.pdf	application/pdf
\.


--
-- Name: files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.files_file_id_seq', 26, true);


--
-- Data for Name: filter_groups; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.filter_groups (filter_group_id, symbolic, display_name, description, input_type, output_type) FROM stdin;
1	issue=>datacite-xml	plugins.importexport.datacite.displayName	plugins.importexport.datacite.description	class::classes.issue.Issue	xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)
2	article=>datacite-xml	plugins.importexport.datacite.displayName	plugins.importexport.datacite.description	class::classes.submission.Submission	xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)
3	galley=>datacite-xml	plugins.importexport.datacite.displayName	plugins.importexport.datacite.description	class::lib.pkp.classes.galley.Galley	xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)
4	issue=>crossref-xml	plugins.importexport.crossref.displayName	plugins.importexport.crossref.description	class::classes.issue.Issue[]	xml::schema(https://www.crossref.org/schemas/crossref5.3.1.xsd)
5	article=>crossref-xml	plugins.importexport.crossref.displayName	plugins.importexport.crossref.description	class::classes.submission.Submission[]	xml::schema(https://www.crossref.org/schemas/crossref5.3.1.xsd)
6	article=>dc11	plugins.metadata.dc11.articleAdapter.displayName	plugins.metadata.dc11.articleAdapter.description	class::classes.submission.Submission	metadata::APP\\plugins\\metadata\\dc11\\schema\\Dc11Schema(ARTICLE)
7	article=>doaj-xml	plugins.importexport.doaj.displayName	plugins.importexport.doaj.description	class::classes.submission.Submission[]	xml::schema(plugins/importexport/doaj/doajArticles.xsd)
8	article=>doaj-json	plugins.importexport.doaj.displayName	plugins.importexport.doaj.description	class::classes.submission.Submission	primitive::string
9	user=>user-xml	plugins.importexport.users.displayName	plugins.importexport.users.description	class::lib.pkp.classes.user.User[]	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)
10	user-xml=>user	plugins.importexport.users.displayName	plugins.importexport.users.description	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)	class::classes.users.User[]
11	usergroup=>user-xml	plugins.importexport.users.displayName	plugins.importexport.users.description	class::lib.pkp.classes.security.UserGroup[]	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)
12	user-xml=>usergroup	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)	class::lib.pkp.classes.security.UserGroup[]
13	article=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.submission.Submission[]	xml::schema(plugins/importexport/native/native.xsd)
14	native-xml=>article	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.submission.Submission[]
15	issue=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.issue.Issue[]	xml::schema(plugins/importexport/native/native.xsd)
16	native-xml=>issue	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.issue.Issue[]
17	issuegalley=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.issue.IssueGalley[]	xml::schema(plugins/importexport/native/native.xsd)
18	native-xml=>issuegalley	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.issue.IssueGalley[]
19	author=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.author.Author[]	xml::schema(plugins/importexport/native/native.xsd)
20	native-xml=>author	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.author.Author[]
21	SubmissionFile=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::lib.pkp.classes.submissionFile.SubmissionFile	xml::schema(plugins/importexport/native/native.xsd)
22	native-xml=>SubmissionFile	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::lib.pkp.classes.submissionFile.SubmissionFile[]
23	article-galley=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::lib.pkp.classes.galley.Galley	xml::schema(plugins/importexport/native/native.xsd)
24	native-xml=>ArticleGalley	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::lib.pkp.classes.galley.Galley[]
25	publication=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.publication.Publication	xml::schema(plugins/importexport/native/native.xsd)
26	native-xml=>Publication	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.publication.Publication[]
27	article=>pubmed-xml	plugins.importexport.pubmed.displayName	plugins.importexport.pubmed.description	class::classes.submission.Submission[]	xml::dtd
\.


--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.filter_groups_filter_group_id_seq', 27, true);


--
-- Data for Name: filter_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.filter_settings (filter_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: filters; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.filters (filter_id, filter_group_id, context_id, display_name, class_name, is_template, parent_filter_id, seq) FROM stdin;
1	1	0	DataCite XML export	APP\\plugins\\generic\\datacite\\filter\\DataciteXmlFilter	0	0	0
2	2	0	DataCite XML export	APP\\plugins\\generic\\datacite\\filter\\DataciteXmlFilter	0	0	0
3	3	0	DataCite XML export	APP\\plugins\\generic\\datacite\\filter\\DataciteXmlFilter	0	0	0
4	4	0	Crossref XML issue export	APP\\plugins\\generic\\crossref\\filter\\IssueCrossrefXmlFilter	0	0	0
5	5	0	Crossref XML article export	APP\\plugins\\generic\\crossref\\filter\\ArticleCrossrefXmlFilter	0	0	0
6	6	0	Extract metadata from a(n) Submission	APP\\plugins\\metadata\\dc11\\filter\\Dc11SchemaArticleAdapter	0	0	0
7	7	0	DOAJ XML export	APP\\plugins\\importexport\\doaj\\filter\\DOAJXmlFilter	0	0	0
8	8	0	DOAJ JSON export	APP\\plugins\\importexport\\doaj\\filter\\DOAJJsonFilter	0	0	0
9	9	0	User XML user export	PKP\\plugins\\importexport\\users\\filter\\PKPUserUserXmlFilter	0	0	0
10	10	0	User XML user import	PKP\\plugins\\importexport\\users\\filter\\UserXmlPKPUserFilter	0	0	0
11	11	0	Native XML user group export	PKP\\plugins\\importexport\\users\\filter\\UserGroupNativeXmlFilter	0	0	0
12	12	0	Native XML user group import	PKP\\plugins\\importexport\\users\\filter\\NativeXmlUserGroupFilter	0	0	0
13	13	0	Native XML submission export	APP\\plugins\\importexport\\native\\filter\\ArticleNativeXmlFilter	0	0	0
14	14	0	Native XML submission import	APP\\plugins\\importexport\\native\\filter\\NativeXmlArticleFilter	0	0	0
15	15	0	Native XML issue export	APP\\plugins\\importexport\\native\\filter\\IssueNativeXmlFilter	0	0	0
16	16	0	Native XML issue import	APP\\plugins\\importexport\\native\\filter\\NativeXmlIssueFilter	0	0	0
17	17	0	Native XML issue galley export	APP\\plugins\\importexport\\native\\filter\\IssueGalleyNativeXmlFilter	0	0	0
18	18	0	Native XML issue galley import	APP\\plugins\\importexport\\native\\filter\\NativeXmlIssueGalleyFilter	0	0	0
19	19	0	Native XML author export	APP\\plugins\\importexport\\native\\filter\\AuthorNativeXmlFilter	0	0	0
20	20	0	Native XML author import	APP\\plugins\\importexport\\native\\filter\\NativeXmlAuthorFilter	0	0	0
21	22	0	Native XML submission file import	APP\\plugins\\importexport\\native\\filter\\NativeXmlArticleFileFilter	0	0	0
22	21	0	Native XML submission file export	PKP\\plugins\\importexport\\native\\filter\\SubmissionFileNativeXmlFilter	0	0	0
23	23	0	Native XML representation export	APP\\plugins\\importexport\\native\\filter\\ArticleGalleyNativeXmlFilter	0	0	0
24	24	0	Native XML representation import	APP\\plugins\\importexport\\native\\filter\\NativeXmlArticleGalleyFilter	0	0	0
25	25	0	Native XML Publication export	APP\\plugins\\importexport\\native\\filter\\PublicationNativeXmlFilter	0	0	0
26	26	0	Native XML publication import	APP\\plugins\\importexport\\native\\filter\\NativeXmlPublicationFilter	0	0	0
27	27	0	APP\\plugins\\importexport\\pubmed\\filter\\ArticlePubMedXmlFilter	APP\\plugins\\importexport\\pubmed\\filter\\ArticlePubMedXmlFilter	0	0	0
\.


--
-- Name: filters_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.filters_filter_id_seq', 27, true);


--
-- Data for Name: genre_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.genre_settings (genre_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	name	Article Text	string
1	fr_CA	name	Texte de l'article	string
2	en	name	Research Instrument	string
2	fr_CA	name	Instruments de recherche	string
3	en	name	Research Materials	string
3	fr_CA	name	Documents de recherche	string
4	en	name	Research Results	string
4	fr_CA	name	Résultats de recherche	string
5	en	name	Transcripts	string
5	fr_CA	name	Transcriptions	string
6	en	name	Data Analysis	string
6	fr_CA	name	Analyse de données	string
7	en	name	Data Set	string
7	fr_CA	name	Ensemble de données	string
8	en	name	Source Texts	string
8	fr_CA	name	Textes source	string
9	en	name	Multimedia	string
9	fr_CA	name	Multimédias	string
10	en	name	Image	string
10	fr_CA	name	Image	string
11	en	name	HTML Stylesheet	string
11	fr_CA	name	Feuille de style HTML	string
12	en	name	Other	string
12	fr_CA	name	Autre	string
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.genres (genre_id, context_id, seq, enabled, category, dependent, supplementary, required, entry_key) FROM stdin;
1	1	0	1	1	0	0	1	SUBMISSION
2	1	1	1	3	0	1	0	RESEARCHINSTRUMENT
3	1	2	1	3	0	1	0	RESEARCHMATERIALS
4	1	3	1	3	0	1	0	RESEARCHRESULTS
5	1	4	1	3	0	1	0	TRANSCRIPTS
6	1	5	1	3	0	1	0	DATAANALYSIS
7	1	6	1	3	0	1	0	DATASET
8	1	7	1	3	0	1	0	SOURCETEXTS
9	1	8	1	1	1	1	0	MULTIMEDIA
10	1	9	1	2	1	0	0	IMAGE
11	1	10	1	1	1	0	0	STYLE
12	1	11	1	3	0	1	0	OTHER
\.


--
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.genres_genre_id_seq', 12, true);


--
-- Data for Name: institution_ip; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.institution_ip (institution_ip_id, institution_id, ip_string, ip_start, ip_end) FROM stdin;
\.


--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.institution_ip_institution_ip_id_seq', 1, false);


--
-- Data for Name: institution_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.institution_settings (institution_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: institutional_subscriptions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.institutional_subscriptions (institutional_subscription_id, subscription_id, institution_id, mailing_address, domain) FROM stdin;
\.


--
-- Name: institutional_subscriptions_institutional_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.institutional_subscriptions_institutional_subscription_id_seq', 1, false);


--
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.institutions (institution_id, context_id, ror, deleted_at) FROM stdin;
\.


--
-- Name: institutions_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.institutions_institution_id_seq', 1, false);


--
-- Data for Name: issue_files; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.issue_files (file_id, issue_id, file_name, file_type, file_size, content_type, original_file_name, date_uploaded, date_modified) FROM stdin;
\.


--
-- Name: issue_files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.issue_files_file_id_seq', 1, false);


--
-- Data for Name: issue_galley_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.issue_galley_settings (galley_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: issue_galleys; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.issue_galleys (galley_id, locale, issue_id, file_id, label, seq, url_path) FROM stdin;
\.


--
-- Name: issue_galleys_galley_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.issue_galleys_galley_id_seq', 1, false);


--
-- Data for Name: issue_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.issue_settings (issue_id, locale, setting_name, setting_value, setting_type) FROM stdin;
2	en	description		\N
2	fr_CA	description		\N
2	en	title		\N
2	fr_CA	title		\N
1	en	description		\N
1	fr_CA	description		\N
1	en	title		\N
1	fr_CA	title		\N
\.


--
-- Data for Name: issues; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.issues (issue_id, journal_id, volume, number, year, published, date_published, date_notified, last_modified, access_status, open_access_date, show_volume, show_number, show_year, show_title, style_file_name, original_style_file_name, url_path, doi_id) FROM stdin;
2	1	2	1	2015	0	\N	\N	2023-02-27 13:36:32	1	\N	1	1	1	0	\N	\N		\N
1	1	1	2	2014	1	2023-02-27 13:12:46	\N	2023-02-27 13:36:36	1	\N	1	1	1	0	\N	\N		\N
\.


--
-- Name: issues_issue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.issues_issue_id_seq', 2, true);


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
98916ac7-7131-4c89-a6fc-d3142ef27506		0	0	0	[]	YTowOnt9	\N	1677503291	\N
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.jobs_id_seq', 14, true);


--
-- Data for Name: journal_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.journal_settings (journal_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	fr_CA	librarianInformation	Nous incitons les bibliothécaires à lister cette revue dans leur fonds de revues numériques. Aussi, il peut être pertinent de mentionner que ce système de publication en libre accès est conçu pour être hébergé par les bibliothèques de recherche pour que les membres de leurs facultés l'utilisent avec les revues dans lesquelles elles ou ils sont impliqués (voir <a href="https://pkp.sfu.ca/ojs">Open Journal Systems</a>).	\N
1	fr_CA	authorInformation	Intéressé-e à soumettre à cette revue ? Nous vous recommandons de consulter les politiques de rubrique de la revue à la page <a href="http://localhost/index.php/publicknowledge/about">À propos de la revue</a> ainsi que les <a href="http://localhost/index.php/publicknowledge/about/submissions#authorGuidelines">Directives aux auteurs</a>. Les auteurs-es doivent <a href="http://localhost/index.php/publicknowledge/user/register">s'inscrire</a> auprès de la revue avant de présenter une soumission, ou s'ils et elles sont déjà inscrits-es, simplement <a href="http://localhost/index.php/publicknowledge/login">ouvrir une session</a> et accéder au tableau de bord pour commencer les 5 étapes du processus.	\N
1	en	beginSubmissionHelp	<p>Thank you for submitting to the Journal of Public Knowledge. You will be asked to upload files, identify co-authors, and provide information such as the title and abstract.<p><p>Please read our <a href="http://localhost/index.php/publicknowledge/about/submissions" target="_blank">Submission Guidelines</a> if you have not done so already. When filling out the forms, provide as many details as possible in order to help our editors evaluate your work.</p><p>Once you begin, you can save your submission and come back to it later. You will be able to review and correct any information before you submit.</p>	\N
1	fr_CA	beginSubmissionHelp	##default.submission.step.beforeYouBegin##	\N
1		contactEmail	rvaca@mailinator.com	\N
1		country	IS	\N
1	en	detailsHelp	<p>Please provide the following details to help us manage your submission in our system.</p>	\N
1	fr_CA	detailsHelp	##default.submission.step.details##	\N
1		copySubmissionAckPrimaryContact	0	\N
1		enableDois	1	\N
1		doiSuffixType	default	\N
1		registrationAgency		\N
1		itemsPerPage	25	\N
1		keywords	request	\N
1	en	librarianInformation	We encourage research librarians to list this journal among their library's electronic journal holdings. As well, it may be worth noting that this journal's open source publishing system is suitable for libraries to host for their faculty members to use with journals they are involved in editing (see <a href="https://pkp.sfu.ca/ojs">Open Journal Systems</a>).	\N
1	en	name	Journal of Public Knowledge	\N
1	fr_CA	name	Journal de la connaissance du public	\N
1		notifyAllAuthors	1	\N
1		numPageLinks	10	\N
1	en	acronym	JPKJPK	\N
1	fr_CA	authorGuidelines	##default.contextSettings.authorGuidelines##	\N
1	en	authorInformation	Interested in submitting to this journal? We recommend that you review the <a href="http://localhost/index.php/publicknowledge/about">About the Journal</a> page for the journal's section policies, as well as the <a href="http://localhost/index.php/publicknowledge/about/submissions#authorGuidelines">Author Guidelines</a>. Authors need to <a href="http://localhost/index.php/publicknowledge/user/register">register</a> with the journal prior to submitting or, if already registered, can simply <a href="http://localhost/index.php/index/login">log in</a> and begin the five-step process.	\N
1		contactName	Ramiro Vaca	\N
1		defaultReviewMode	2	\N
1	en	description	<p>The Journal of Public Knowledge is a peer-reviewed quarterly publication on the subject of public access to science.</p>	\N
1	fr_CA	description	<p>Le Journal de Public Knowledge est une publication trimestrielle évaluée par les pairs sur le thème de l'accès du public à la science.</p>	\N
1		copySubmissionAckAddress		\N
1		emailSignature	<br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Journal of Public Knowledge</a>.</p>	\N
1		disableSubmissions	0	\N
1		editorialStatsEmail	1	\N
1		numWeeksPerResponse	4	\N
1	fr_CA	contributorsHelp	##default.submission.step.contributors##	\N
1	en	contributorsHelp	<p>Add details for all of the contributors to this submission. Contributors added here will be sent an email confirmation of the submission, as well as a copy of all editorial decisions recorded against this submission.</p><p>If a contributor can not be contacted by email, because they must remain anonymous or do not have an email account, please do not enter a fake email address. You can add information about this contributor in a message to the editor at a later step in the submission process.</p>	\N
1		numWeeksPerReview	4	\N
1	fr_CA	forTheEditorsHelp	##default.submission.step.forTheEditors##	\N
1	en	openAccessPolicy	This journal provides immediate open access to its content on the principle that making research freely available to the public supports a greater global exchange of knowledge.	\N
1	en	forTheEditorsHelp	<p>Please provide the following details in order to help our editorial team manage your submission.</p><p>When entering metadata, provide entries that you think would be most helpful to the person managing your submission. This information can be changed before publication.</p>	\N
1		themePluginPath	default	\N
1	fr_CA	lockssLicense	Cette revue utilise le système LOCKSS pour créer un système de distribution des archives parmi les bibliothèques participantes et afin de permettre à ces bibliothèques de créer des archives permanentes pour fins de préservation et de restauration. <a href="https://lockss.org">En apprendre davantage...</a>	\N
1	en	lockssLicense	This journal utilizes the LOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href="https://www.lockss.org">More...</a>	\N
1		membershipFee	0	\N
1	en	privacyStatement	<p>The names and email addresses entered in this journal site will be used exclusively for the stated purposes of this journal and will not be made available for any other purpose or to any other party.</p>	\N
1	fr_CA	privacyStatement	<p>Les noms et courriels saisis dans le site de cette revue seront utilisés exclusivement aux fins indiquées par cette revue et ne serviront à aucune autre fin, ni à toute autre partie.</p>	\N
1	en	reviewHelp	<p>Review the information you have entered before you complete your submission. You can change any of the details displayed here by clicking the edit button at the top of each section.</p><p>Once you complete your submission, a member of our editorial team will be assigned to review it. Please ensure the details you have entered here are as accurate as possible.</p>	\N
1	fr_CA	reviewHelp	##default.submission.step.review##	\N
1		submissionAcknowledgement	allAuthors	\N
1	en	submissionChecklist	<p>All submissions must meet the following requirements.</p><ul><li>This submission meets the requirements outlined in the <a href="http://localhost/index.php/publicknowledge/about/submissions">Author Guidelines</a>.</li><li>This submission has not been previously published, nor is it before another journal for consideration.</li><li>All references have been checked for accuracy and completeness.</li><li>All tables and figures have been numbered and labeled.</li><li>Permission has been obtained to publish all photos, datasets and other material provided with this submission.</li></ul>	\N
1	fr_CA	submissionChecklist	##default.contextSettings.checklist##	\N
1		submitWithCategories	0	\N
1		supportedFormLocales	["en","fr_CA"]	\N
1	en	uploadFilesHelp	<p>Provide any files our editorial team may need to evaluate your submission. In addition to the main work, you may wish to submit data sets, conflict of interest statements, or other supplementary files if these will be helpful for our editors.</p>	\N
1	fr_CA	uploadFilesHelp	##default.submission.step.uploadFiles##	\N
1		enableGeoUsageStats	disabled	\N
1		enableInstitutionUsageStats	0	\N
1		isSushiApiPublic	1	\N
1	en	clockssLicense	This journal utilizes the CLOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href="https://clockss.org">More...</a>	\N
1	fr_CA	clockssLicense	Cette revue utilise le système CLOCKSS pour créer un système d'archivage distribué parmi les bibliothèques participantes et permet à ces bibliothèques de créer des archives permanentes de la revue à des fins de conservation et de reconstitution. <a href="https://clockss.org">En apprendre davantage... </a>	\N
1		copyrightYearBasis	issue	\N
1		publicationFee	0	\N
1		purchaseArticleFee	0	\N
1		doiVersioning	0	\N
1	fr_CA	readerInformation	Nous invitons les lecteurs-trices à s'inscrire pour recevoir les avis de publication de cette revue. Utiliser le lien <a href="http://localhost/index.php/publicknowledge/user/register">S'inscrire</a> en haut de la page d'accueil de la revue. Cette inscription permettra au,à la lecteur-trice de recevoir par courriel le sommaire de chaque nouveau numéro de la revue. Cette liste permet aussi à la revue de revendiquer un certain niveau de soutien ou de lectorat. Voir la <a href="http://localhost/index.php/publicknowledge/about/submissions#privacyStatement">Déclaration de confidentialité</a> de la revue qui certifie aux lecteurs-trices que leur nom et leur courriel ne seront pas utilisés à d'autres fins.	\N
1		supportedLocales	["en","fr_CA"]	\N
1		supportedSubmissionLocales	["en","fr_CA"]	\N
1		enabledDoiTypes	["publication"]	\N
1		doiCreationTime	copyEditCreationTime	\N
1		enableOai	1	\N
1	en	authorGuidelines	<p>Authors are invited to make a submission to this journal. All submissions will be assessed by an editor to determine whether they meet the aims and scope of this journal. Those considered to be a good fit will be sent for peer review before determining whether they will be accepted or rejected.</p><p>Before making a submission, authors are responsible for obtaining permission to publish any material included with the submission, such as photos, documents and datasets. All authors identified on the submission must consent to be identified as an author. Where appropriate, research should be approved by an appropriate ethics committee in accordance with the legal requirements of the study's country.</p><p>An editor may desk reject a submission if it does not meet minimum standards of quality. Before submitting, please ensure that the study design and research argument are structured and articulated properly. The title should be concise and the abstract should be able to stand on its own. This will increase the likelihood of reviewers agreeing to review the paper. When you're satisfied that your submission meets this standard, please follow the checklist below to prepare your submission.</p>	\N
1	en	customHeaders	<meta name="pkp" content="Test metatag.">	\N
1		mailingAddress	123 456th Street\nBurnaby, British Columbia\nCanada	\N
1	fr_CA	openAccessPolicy	Cette revue fournit le libre accès immédiat à son contenu se basant sur le principe que rendre la recherche disponible au public gratuitement facilite un plus grand échange du savoir, à l'échelle de la planète.	\N
1	en	readerInformation	We encourage readers to sign up for the publishing notification service for this journal. Use the <a href="http://localhost/index.php/publicknowledge/user/register">Register</a> link at the top of the home page for the journal. This registration will result in the reader receiving the Table of Contents by email for each new issue of the journal. This list also allows the journal to claim a certain level of support or readership. See the journal's <a href="http://localhost/index.php/publicknowledge/about/submissions#privacyStatement">Privacy Statement</a>, which assures readers that their name and email address will not be used for other purposes.	\N
1	en	searchDescription	The Journal of Public Knowledge is a peer-reviewed quarterly publication on the subject of public access to science.	\N
1		supportEmail	rvaca@mailinator.com	\N
1		supportName	Ramiro Vaca	\N
1	en	abbreviation	publicknowledgeJ Pub Know	\N
1		onlineIssn	0378-5955	\N
1		printIssn	0378-5955	\N
1		publisherInstitution	Public Knowledge Project	\N
\.


--
-- Data for Name: journals; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.journals (journal_id, path, seq, primary_locale, enabled, current_issue_id) FROM stdin;
1	publicknowledge	1	en	1	1
\.


--
-- Name: journals_journal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.journals_journal_id_seq', 1, true);


--
-- Data for Name: library_file_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.library_file_settings (file_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: library_files; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.library_files (file_id, context_id, file_name, original_file_name, file_type, file_size, type, date_uploaded, date_modified, submission_id, public_access) FROM stdin;
\.


--
-- Name: library_files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.library_files_file_id_seq', 1, false);


--
-- Data for Name: metrics_context; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_context (load_id, context_id, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_daily; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_counter_submission_daily (load_id, context_id, submission_id, date, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_institution_daily; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_counter_submission_institution_daily (load_id, context_id, submission_id, institution_id, date, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_institution_monthly; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_counter_submission_institution_monthly (context_id, submission_id, institution_id, month, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_monthly; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_counter_submission_monthly (context_id, submission_id, month, metric_investigations, metric_investigations_unique, metric_requests, metric_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_issue; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_issue (load_id, context_id, issue_id, issue_galley_id, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_submission; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_submission (load_id, context_id, submission_id, representation_id, submission_file_id, file_type, assoc_type, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_submission_geo_daily; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_submission_geo_daily (load_id, context_id, submission_id, country, region, city, date, metric, metric_unique) FROM stdin;
\.


--
-- Data for Name: metrics_submission_geo_monthly; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.metrics_submission_geo_monthly (context_id, submission_id, country, region, city, month, metric, metric_unique) FROM stdin;
\.


--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq', 23, true);


--
-- Data for Name: navigation_menu_item_assignment_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.navigation_menu_item_assignment_settings (navigation_menu_item_assignment_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: navigation_menu_item_assignments; Type: TABLE DATA; Schema: public; Owner: ojs-ci
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
18	3	18	0	3
19	3	19	18	0
20	3	20	18	1
21	3	21	18	2
22	3	22	18	3
23	3	23	18	4
\.


--
-- Data for Name: navigation_menu_item_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
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
15		titleLocaleKey	navigation.current	string
16		titleLocaleKey	navigation.archives	string
17		titleLocaleKey	manager.announcements	string
18		titleLocaleKey	navigation.about	string
19		titleLocaleKey	about.aboutContext	string
20		titleLocaleKey	about.submissions	string
21		titleLocaleKey	about.editorialTeam	string
22		titleLocaleKey	manager.setup.privacyStatement	string
23		titleLocaleKey	about.contact	string
24		titleLocaleKey	common.search	string
\.


--
-- Data for Name: navigation_menu_items; Type: TABLE DATA; Schema: public; Owner: ojs-ci
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
15	1	\N	NMI_TYPE_CURRENT
16	1	\N	NMI_TYPE_ARCHIVES
17	1	\N	NMI_TYPE_ANNOUNCEMENTS
18	1	\N	NMI_TYPE_ABOUT
19	1	\N	NMI_TYPE_ABOUT
20	1	\N	NMI_TYPE_SUBMISSIONS
21	1	\N	NMI_TYPE_EDITORIAL_TEAM
22	1	\N	NMI_TYPE_PRIVACY
23	1	\N	NMI_TYPE_CONTACT
24	1	\N	NMI_TYPE_SEARCH
\.


--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.navigation_menu_items_navigation_menu_item_id_seq', 24, true);


--
-- Data for Name: navigation_menus; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.navigation_menus (navigation_menu_id, context_id, area_name, title) FROM stdin;
1	0	user	User Navigation Menu
2	1	user	User Navigation Menu
3	1	primary	Primary Navigation Menu
\.


--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.navigation_menus_navigation_menu_id_seq', 3, true);


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.notes (note_id, assoc_type, assoc_id, user_id, date_created, date_modified, title, contents) FROM stdin;
1	1048586	1	6	2023-02-27 13:20:53	2023-02-27 13:20:53	Editor Recommendation	<p>Dear Daniel Barnes, David Buskins, Stephanie Berardo,</p><p>After considering the reviewers' feedback, I would like to make the following recommendation regarding the submission The influence of lactation on the quantity and quality of cashmere production.</p><p>My recommendation is: Accept Submission.</p><p>Please visit the submission's <a href="http://localhost/index.php/publicknowledge/workflow/access/2">editorial workflow</a> to act on this recommendation.</p><p>Please feel free to contact me with any questions.</p><p>Kind regards,</p><p>Minoti Inoue</p>
\.


--
-- Name: notes_note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.notes_note_id_seq', 1, true);


--
-- Data for Name: notification_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.notification_settings (notification_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: notification_subscription_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.notification_subscription_settings (setting_id, setting_name, setting_value, user_id, context, setting_type) FROM stdin;
1	blocked_emailed_notification	8	17	1	int
2	blocked_emailed_notification	268435477	17	1	int
3	blocked_emailed_notification	50331659	17	1	int
4	blocked_emailed_notification	8	18	1	int
5	blocked_emailed_notification	268435477	18	1	int
6	blocked_emailed_notification	50331659	18	1	int
7	blocked_emailed_notification	8	19	1	int
8	blocked_emailed_notification	268435477	19	1	int
9	blocked_emailed_notification	50331659	19	1	int
10	blocked_emailed_notification	8	20	1	int
11	blocked_emailed_notification	268435477	20	1	int
12	blocked_emailed_notification	50331659	20	1	int
13	blocked_emailed_notification	8	21	1	int
14	blocked_emailed_notification	268435477	21	1	int
15	blocked_emailed_notification	50331659	21	1	int
16	blocked_emailed_notification	8	22	1	int
17	blocked_emailed_notification	268435477	22	1	int
18	blocked_emailed_notification	50331659	22	1	int
19	blocked_emailed_notification	8	23	1	int
20	blocked_emailed_notification	268435477	23	1	int
21	blocked_emailed_notification	50331659	23	1	int
22	blocked_emailed_notification	8	24	1	int
23	blocked_emailed_notification	268435477	24	1	int
24	blocked_emailed_notification	50331659	24	1	int
25	blocked_emailed_notification	8	25	1	int
26	blocked_emailed_notification	268435477	25	1	int
27	blocked_emailed_notification	50331659	25	1	int
28	blocked_emailed_notification	8	26	1	int
29	blocked_emailed_notification	268435477	26	1	int
30	blocked_emailed_notification	50331659	26	1	int
31	blocked_emailed_notification	8	27	1	int
32	blocked_emailed_notification	268435477	27	1	int
33	blocked_emailed_notification	50331659	27	1	int
34	blocked_emailed_notification	8	28	1	int
35	blocked_emailed_notification	268435477	28	1	int
36	blocked_emailed_notification	50331659	28	1	int
37	blocked_emailed_notification	8	29	1	int
38	blocked_emailed_notification	268435477	29	1	int
39	blocked_emailed_notification	50331659	29	1	int
40	blocked_emailed_notification	8	30	1	int
41	blocked_emailed_notification	268435477	30	1	int
42	blocked_emailed_notification	50331659	30	1	int
43	blocked_emailed_notification	8	31	1	int
44	blocked_emailed_notification	268435477	31	1	int
45	blocked_emailed_notification	50331659	31	1	int
46	blocked_emailed_notification	8	32	1	int
47	blocked_emailed_notification	268435477	32	1	int
48	blocked_emailed_notification	50331659	32	1	int
49	blocked_emailed_notification	8	33	1	int
50	blocked_emailed_notification	268435477	33	1	int
51	blocked_emailed_notification	50331659	33	1	int
52	blocked_emailed_notification	8	34	1	int
53	blocked_emailed_notification	268435477	34	1	int
54	blocked_emailed_notification	50331659	34	1	int
55	blocked_emailed_notification	8	35	1	int
56	blocked_emailed_notification	268435477	35	1	int
57	blocked_emailed_notification	50331659	35	1	int
\.


--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.notification_subscription_settings_setting_id_seq', 57, true);


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.notifications (notification_id, context_id, user_id, level, type, date_created, date_read, assoc_type, assoc_id) FROM stdin;
146	1	3	2	16777219	2023-02-27 13:28:19	\N	517	15
54	1	10	3	16777227	2023-02-27 13:21:47	\N	517	5
56	1	19	2	16777230	2023-02-27 13:21:53	\N	1048585	3
6	1	3	2	16777217	2023-02-27 13:14:14	\N	1048585	1
7	1	4	2	16777217	2023-02-27 13:14:14	\N	1048585	1
8	1	5	2	16777217	2023-02-27 13:14:14	\N	1048585	1
9	1	0	2	16777236	2023-02-27 13:14:34	2023-02-27 13:14:39	523	1
11	1	7	3	16777227	2023-02-27 13:14:44	\N	517	1
58	1	4	2	16777251	2023-02-27 13:21:53	\N	1048585	3
13	1	9	3	16777227	2023-02-27 13:14:52	\N	517	2
59	1	5	2	16777251	2023-02-27 13:21:53	\N	1048585	3
15	1	10	3	16777227	2023-02-27 13:14:59	\N	517	3
57	1	3	2	16777251	2023-02-27 13:21:53	2023-02-27 13:21:56	1048585	3
22	1	17	2	16777235	2023-02-27 13:15:19	\N	1048585	1
61	1	3	2	16777217	2023-02-27 13:22:16	\N	1048585	4
62	1	4	2	16777217	2023-02-27 13:22:16	\N	1048585	4
63	1	5	2	16777217	2023-02-27 13:22:16	\N	1048585	4
64	1	3	2	16777217	2023-02-27 13:22:31	\N	1048585	5
29	1	3	3	16777259	2023-02-27 13:18:52	\N	1048585	1
30	1	4	3	16777259	2023-02-27 13:18:53	\N	1048585	1
31	1	5	3	16777259	2023-02-27 13:18:53	\N	1048585	1
32	1	12	3	16777259	2023-02-27 13:18:53	\N	1048585	1
33	1	14	3	16777259	2023-02-27 13:18:53	\N	1048585	1
34	1	16	3	16777259	2023-02-27 13:18:53	\N	1048585	1
35	1	17	3	16777259	2023-02-27 13:18:53	\N	1048585	1
65	1	4	2	16777217	2023-02-27 13:22:31	\N	1048585	5
66	1	5	2	16777217	2023-02-27 13:22:31	\N	1048585	5
38	1	3	2	16777217	2023-02-27 13:20:17	\N	1048585	2
39	1	4	2	16777217	2023-02-27 13:20:17	\N	1048585	2
40	1	5	2	16777217	2023-02-27 13:20:17	\N	1048585	2
42	1	18	2	16777231	2023-02-27 13:20:29	\N	1048585	2
41	1	0	2	16777236	2023-02-27 13:20:29	2023-02-27 13:20:33	523	2
44	1	3	3	16777249	2023-02-27 13:20:53	\N	1048586	1
45	1	4	3	16777249	2023-02-27 13:20:53	\N	1048586	1
46	1	5	3	16777249	2023-02-27 13:20:53	\N	1048586	1
47	1	3	2	16777217	2023-02-27 13:21:18	\N	1048585	3
48	1	4	2	16777217	2023-02-27 13:21:18	\N	1048585	3
49	1	5	2	16777217	2023-02-27 13:21:18	\N	1048585	3
50	1	0	2	16777236	2023-02-27 13:21:31	2023-02-27 13:21:35	523	3
52	1	9	3	16777227	2023-02-27 13:21:40	\N	517	4
87	1	0	2	16777236	2023-02-27 13:24:01	2023-02-27 13:24:05	523	5
67	1	0	2	16777236	2023-02-27 13:22:44	2023-02-27 13:22:48	523	4
69	1	8	3	16777227	2023-02-27 13:22:53	\N	517	6
89	1	7	3	16777227	2023-02-27 13:24:10	\N	517	8
71	1	10	3	16777227	2023-02-27 13:23:00	\N	517	7
103	1	3	2	16777217	2023-02-27 13:24:59	\N	1048585	7
91	1	10	3	16777227	2023-02-27 13:24:17	\N	517	9
78	1	21	2	16777235	2023-02-27 13:23:19	\N	1048585	5
80	1	4	2	16777254	2023-02-27 13:23:19	\N	1048585	5
81	1	5	2	16777254	2023-02-27 13:23:19	\N	1048585	5
79	1	3	2	16777254	2023-02-27 13:23:19	2023-02-27 13:23:24	1048585	5
104	1	4	2	16777217	2023-02-27 13:24:59	\N	1048585	7
84	1	3	2	16777217	2023-02-27 13:23:47	\N	1048585	6
85	1	4	2	16777217	2023-02-27 13:23:47	\N	1048585	6
86	1	5	2	16777217	2023-02-27 13:23:47	\N	1048585	6
105	1	5	2	16777217	2023-02-27 13:24:59	\N	1048585	7
98	1	22	2	16777235	2023-02-27 13:24:36	\N	1048585	6
100	1	4	2	16777254	2023-02-27 13:24:36	\N	1048585	6
101	1	5	2	16777254	2023-02-27 13:24:36	\N	1048585	6
99	1	3	2	16777254	2023-02-27 13:24:36	2023-02-27 13:24:40	1048585	6
114	1	3	2	16777219	2023-02-27 13:25:49	\N	517	10
107	1	23	2	16777231	2023-02-27 13:25:14	\N	1048585	7
106	1	0	2	16777236	2023-02-27 13:25:13	2023-02-27 13:25:17	523	6
115	1	4	2	16777219	2023-02-27 13:25:49	\N	517	10
110	1	9	3	16777227	2023-02-27 13:25:30	\N	517	11
116	1	5	2	16777219	2023-02-27 13:25:49	\N	517	10
112	1	10	3	16777227	2023-02-27 13:25:37	\N	517	12
117	1	3	2	16777217	2023-02-27 13:26:05	\N	1048585	8
118	1	4	2	16777217	2023-02-27 13:26:05	\N	1048585	8
119	1	5	2	16777217	2023-02-27 13:26:05	\N	1048585	8
120	1	3	2	16777217	2023-02-27 13:26:19	\N	1048585	9
121	1	6	2	16777217	2023-02-27 13:26:19	\N	1048585	9
122	1	0	2	16777236	2023-02-27 13:26:33	2023-02-27 13:26:37	523	7
124	1	7	3	16777227	2023-02-27 13:26:42	\N	517	13
126	1	10	3	16777227	2023-02-27 13:26:50	\N	517	14
132	1	25	2	16777235	2023-02-27 13:27:08	\N	1048585	9
134	1	6	2	16777254	2023-02-27 13:27:08	\N	1048585	9
133	1	3	2	16777254	2023-02-27 13:27:08	2023-02-27 13:27:13	1048585	9
147	1	4	2	16777219	2023-02-27 13:28:19	\N	517	15
148	1	5	2	16777219	2023-02-27 13:28:19	\N	517	15
149	1	3	2	16777219	2023-02-27 13:28:31	\N	517	16
137	1	3	2	16777217	2023-02-27 13:27:37	\N	1048585	10
138	1	4	2	16777217	2023-02-27 13:27:37	\N	1048585	10
139	1	5	2	16777217	2023-02-27 13:27:37	\N	1048585	10
141	1	26	2	16777231	2023-02-27 13:27:51	\N	1048585	10
140	1	0	2	16777236	2023-02-27 13:27:51	2023-02-27 13:27:55	523	8
150	1	4	2	16777219	2023-02-27 13:28:31	\N	517	16
151	1	5	2	16777219	2023-02-27 13:28:31	\N	517	16
152	1	3	2	16777217	2023-02-27 13:28:46	\N	1048585	11
153	1	4	2	16777217	2023-02-27 13:28:46	\N	1048585	11
154	1	5	2	16777217	2023-02-27 13:28:46	\N	1048585	11
155	1	3	2	16777217	2023-02-27 13:29:01	\N	1048585	12
156	1	4	2	16777217	2023-02-27 13:29:01	\N	1048585	12
157	1	5	2	16777217	2023-02-27 13:29:01	\N	1048585	12
159	1	28	2	16777231	2023-02-27 13:29:16	\N	1048585	12
158	1	0	2	16777236	2023-02-27 13:29:16	2023-02-27 13:29:20	523	9
160	1	7	3	16777227	2023-02-27 13:29:25	\N	517	17
202	1	31	2	16777235	2023-02-27 13:32:49	\N	1048585	15
162	1	8	3	16777227	2023-02-27 13:29:33	\N	517	18
164	1	3	2	16777217	2023-02-27 13:29:47	\N	1048585	13
165	1	4	2	16777217	2023-02-27 13:29:47	\N	1048585	13
166	1	5	2	16777217	2023-02-27 13:29:47	\N	1048585	13
167	1	0	2	16777236	2023-02-27 13:30:03	2023-02-27 13:30:08	523	10
204	1	4	2	16777254	2023-02-27 13:32:49	\N	1048585	15
205	1	5	2	16777254	2023-02-27 13:32:49	\N	1048585	15
203	1	3	2	16777254	2023-02-27 13:32:49	2023-02-27 13:32:53	1048585	15
175	1	3	2	16777219	2023-02-27 13:30:39	\N	517	19
176	1	4	2	16777219	2023-02-27 13:30:39	\N	517	19
177	1	5	2	16777219	2023-02-27 13:30:39	\N	517	19
178	1	3	2	16777219	2023-02-27 13:30:51	\N	517	20
179	1	4	2	16777219	2023-02-27 13:30:51	\N	517	20
180	1	5	2	16777219	2023-02-27 13:30:51	\N	517	20
181	1	3	2	16777219	2023-02-27 13:31:03	\N	517	21
182	1	4	2	16777219	2023-02-27 13:31:03	\N	517	21
183	1	5	2	16777219	2023-02-27 13:31:03	\N	517	21
184	1	29	3	16777232	2023-02-27 13:31:24	\N	1048585	13
185	1	3	2	16777217	2023-02-27 13:31:44	\N	1048585	14
186	1	4	2	16777217	2023-02-27 13:31:44	\N	1048585	14
187	1	5	2	16777217	2023-02-27 13:31:44	\N	1048585	14
188	1	3	2	16777217	2023-02-27 13:31:58	\N	1048585	15
189	1	4	2	16777217	2023-02-27 13:31:58	\N	1048585	15
190	1	5	2	16777217	2023-02-27 13:31:58	\N	1048585	15
191	1	0	2	16777236	2023-02-27 13:32:14	2023-02-27 13:32:18	523	11
193	1	8	3	16777227	2023-02-27 13:32:24	\N	517	22
195	1	9	3	16777227	2023-02-27 13:32:31	\N	517	23
233	1	34	2	16777234	2023-02-27 13:37:08	\N	1048585	18
207	1	3	2	16777217	2023-02-27 13:33:13	\N	1048585	16
208	1	4	2	16777217	2023-02-27 13:33:13	\N	1048585	16
209	1	5	2	16777217	2023-02-27 13:33:13	\N	1048585	16
210	1	3	2	16777217	2023-02-27 13:33:28	\N	1048585	17
211	1	4	2	16777217	2023-02-27 13:33:28	\N	1048585	17
212	1	5	2	16777217	2023-02-27 13:33:28	\N	1048585	17
213	1	0	2	16777236	2023-02-27 13:33:45	2023-02-27 13:33:49	523	12
215	1	7	3	16777227	2023-02-27 13:33:54	\N	517	24
234	1	3	2	16777217	2023-02-27 13:37:26	\N	1048585	19
217	1	8	3	16777227	2023-02-27 13:34:01	\N	517	25
224	1	33	2	16777235	2023-02-27 13:34:20	\N	1048585	17
235	1	6	2	16777217	2023-02-27 13:37:26	\N	1048585	19
230	1	3	2	16777217	2023-02-27 13:36:51	\N	1048585	18
231	1	4	2	16777217	2023-02-27 13:36:51	\N	1048585	18
232	1	5	2	16777217	2023-02-27 13:36:51	\N	1048585	18
236	1	0	2	16777236	2023-02-27 13:37:43	2023-02-27 13:37:47	523	13
238	1	8	3	16777227	2023-02-27 13:37:52	\N	517	26
242	1	35	2	16777230	2023-02-27 13:38:04	\N	1048585	19
240	1	9	3	16777227	2023-02-27 13:37:59	\N	517	27
244	1	6	2	16777251	2023-02-27 13:38:05	\N	1048585	19
243	1	3	2	16777251	2023-02-27 13:38:05	2023-02-27 13:38:08	1048585	19
\.


--
-- Name: notifications_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.notifications_notification_id_seq', 245, true);


--
-- Data for Name: oai_resumption_tokens; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.oai_resumption_tokens (token, expire, record_offset, params) FROM stdin;
\.


--
-- Data for Name: plugin_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.plugin_settings (plugin_name, context_id, setting_name, setting_value, setting_type) FROM stdin;
defaultthemeplugin	0	enabled	1	bool
usageeventplugin	0	enabled	1	bool
usageeventplugin	0	uniqueSiteId		string
acronplugin	0	enabled	1	bool
acronplugin	0	crontab	[{"className":"PKP\\\\task\\\\ReviewReminder","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\StatisticsReport","frequency":{"day":"1"},"args":[]},{"className":"APP\\\\tasks\\\\SubscriptionExpiryReminder","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\DepositDois","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\RemoveUnvalidatedExpiredUsers","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\EditorialReminders","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\UpdateIPGeoDB","frequency":{"day":"10"},"args":[]},{"className":"APP\\\\tasks\\\\UsageStatsLoader","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\ProcessQueueJobs","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\RemoveFailedJobs","frequency":{"day":"1"},"args":[]},{"className":"APP\\\\tasks\\\\OpenAccessNotification","frequency":{"hour":24},"args":[]}]	object
tinymceplugin	0	enabled	1	bool
developedbyblockplugin	0	enabled	0	bool
developedbyblockplugin	0	seq	0	int
languagetoggleblockplugin	0	enabled	1	bool
languagetoggleblockplugin	0	seq	4	int
defaultthemeplugin	1	enabled	1	bool
tinymceplugin	1	enabled	1	bool
developedbyblockplugin	1	enabled	0	bool
developedbyblockplugin	1	seq	0	int
subscriptionblockplugin	1	enabled	1	bool
subscriptionblockplugin	1	seq	2	int
languagetoggleblockplugin	1	enabled	1	bool
languagetoggleblockplugin	1	seq	4	int
informationblockplugin	1	enabled	1	bool
informationblockplugin	1	seq	7	int
resolverplugin	1	enabled	1	bool
googlescholarplugin	1	enabled	1	bool
dublincoremetaplugin	1	enabled	1	bool
pdfjsviewerplugin	1	enabled	1	bool
lensgalleyplugin	1	enabled	1	bool
webfeedplugin	1	enabled	1	bool
webfeedplugin	1	displayPage	homepage	string
webfeedplugin	1	displayItems	1	bool
htmlarticlegalleyplugin	1	enabled	1	bool
defaultthemeplugin	1	typography	notoSans	string
defaultthemeplugin	1	baseColour	#1E6292	string
defaultthemeplugin	1	showDescriptionInJournalIndex	false	string
defaultthemeplugin	1	useHomepageImageAsHeader	false	string
defaultthemeplugin	1	displayStats	none	string
\.


--
-- Data for Name: publication_categories; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.publication_categories (publication_id, category_id) FROM stdin;
\.


--
-- Data for Name: publication_galley_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.publication_galley_settings (galley_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: publication_galleys; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.publication_galleys (galley_id, locale, publication_id, label, submission_file_id, seq, remote_url, is_approved, url_path, doi_id) FROM stdin;
1	en	1	PDF	12	0		0		\N
2	en	2	PDF Version 2	12	0		0	pdf	\N
3	en	18	PDF	40	0		0		\N
\.


--
-- Name: publication_galleys_galley_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.publication_galleys_galley_id_seq', 3, true);


--
-- Data for Name: publication_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.publication_settings (publication_id, locale, setting_name, setting_value) FROM stdin;
2	fr_CA	title	
2	en	title	The Signalling Theory Dividends Version 2
2		issueId	1
2		pages	71-98
3	en	abstract	The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P>0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P<0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P<0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P<0.05) "L", "a" and "Chroma" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.
3		categoryIds	[]
3	en	title	The influence of lactation on the quantity and quality of cashmere production
4	en	abstract	Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.
4		categoryIds	[]
4	en	title	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence
5	en	abstract	The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.
5		categoryIds	[]
5	en	title	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice
6	en	abstract	In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.
6		categoryIds	[]
6	en	title	Genetic transformation of forest trees
1	en	abstract	<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p>
1		categoryIds	[]
1	fr_CA	copyrightHolder	Journal de la connaissance du public
1	en	copyrightHolder	Journal of Public Knowledge
1		copyrightYear	2023
1	en	prefix	The
1	fr_CA	subtitle	
1	en	subtitle	A Review Of The Literature And Empirical Evidence
1	en	title	Signalling Theory Dividends
1	fr_CA	title	
1		issueId	1
1		pages	71-98
2	en	abstract	<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p>
2		categoryIds	[]
2	en	copyrightHolder	Journal of Public Knowledge
2	fr_CA	copyrightHolder	Journal de la connaissance du public
2		copyrightYear	2023
2	en	prefix	The
2	en	subtitle	A Review Of The Literature And Empirical Evidence
2	fr_CA	subtitle	
7	en	abstract	Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.
7		categoryIds	[]
7	en	title	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement
8	en	abstract	A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.
8		categoryIds	[]
8	en	title	Developing efficacy beliefs in the classroom
9	en	abstract	The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world. 
9		categoryIds	[]
9	en	title	Traditions and Trends in the Study of the Commons
10	en	abstract	None.
10		categoryIds	[]
10	en	title	Hansen & Pinto: Reason Reclaimed
11	en	abstract	The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.
11		categoryIds	[]
11	en	title	Condensing Water Availability Models to Focus on Specific Water Management Systems
12	en	abstract	Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.
12		categoryIds	[]
12	en	title	Learning Sustainable Design through Service
13	en	abstract	The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P<0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.
13		categoryIds	[]
13	en	title	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning
14	en	abstract	The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.
14		categoryIds	[]
14	en	title	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions
15	en	abstract	One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.
15		categoryIds	[]
15	en	title	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua
16	en	abstract	This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.
16		categoryIds	[]
16	en	title	Yam diseases and its management in Nigeria
17	en	abstract	Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.
17		categoryIds	[]
17	en	title	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat
18		categoryIds	[]
18	en	title	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran
18	en	copyrightHolder	Journal of Public Knowledge
18	fr_CA	copyrightHolder	Journal de la connaissance du public
18		copyrightYear	2023
18		issueId	1
18	en	abstract	The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (>56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.
19	en	abstract	We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.
19		categoryIds	[]
19	en	title	Self-Organization in Multi-Level Institutions in Networked Environments
20	en	abstract	None.
20		categoryIds	[]
20	en	title	Finocchiaro: Arguments About Arguments
\.


--
-- Data for Name: publications; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.publications (publication_id, access_status, date_published, last_modified, primary_contact_id, section_id, seq, submission_id, status, url_path, version, doi_id) FROM stdin;
1	0	2023-02-27	2023-02-27 13:18:45	1	1	0	1	3	mwandenga-signalling-theory	1	\N
18	0	2023-02-27	2023-02-27 13:36:26	26	1	0	17	3	\N	1	\N
2	0	2023-02-27	2023-02-27 13:19:33	5	1	0	1	1	mwandenga	2	\N
3	0	\N	2023-02-27 13:20:40	8	1	0	2	1	\N	1	\N
4	0	\N	2023-02-27 13:21:14	9	1	0	3	1	\N	1	\N
5	0	\N	2023-02-27 13:22:11	10	1	0	4	1	\N	1	\N
6	0	\N	2023-02-27 13:22:26	12	1	0	5	1	\N	1	\N
7	0	\N	2023-02-27 13:23:43	13	1	0	6	1	\N	1	\N
8	0	\N	2023-02-27 13:24:55	14	1	0	7	1	\N	1	\N
9	0	\N	2023-02-27 13:26:00	15	1	0	8	1	\N	1	\N
10	0	\N	2023-02-27 13:26:15	17	2	0	9	1	\N	1	\N
11	0	\N	2023-02-27 13:27:32	18	1	0	10	1	\N	1	\N
12	0	\N	2023-02-27 13:28:41	19	1	0	11	1	\N	1	\N
13	0	\N	2023-02-27 13:28:56	21	1	0	12	1	\N	1	\N
14	0	\N	2023-02-27 13:29:43	22	1	0	13	1	\N	1	\N
15	0	\N	2023-02-27 13:31:39	23	1	0	14	1	\N	1	\N
16	0	\N	2023-02-27 13:31:53	24	1	0	15	1	\N	1	\N
17	0	\N	2023-02-27 13:33:09	25	1	0	16	1	\N	1	\N
19	0	\N	2023-02-27 13:36:47	27	1	0	18	1	\N	1	\N
20	0	\N	2023-02-27 13:37:21	28	2	0	19	1	\N	1	\N
\.


--
-- Name: publications_publication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.publications_publication_id_seq', 20, true);


--
-- Data for Name: queries; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.queries (query_id, assoc_type, assoc_id, stage_id, seq, date_posted, date_modified, closed) FROM stdin;
1	1048585	2	3	1	\N	\N	0
\.


--
-- Name: queries_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.queries_query_id_seq', 1, true);


--
-- Data for Name: query_participants; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.query_participants (query_id, user_id) FROM stdin;
1	3
1	4
1	5
\.


--
-- Data for Name: queued_payments; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.queued_payments (queued_payment_id, date_created, date_modified, expiry_date, payment_data) FROM stdin;
\.


--
-- Name: queued_payments_queued_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.queued_payments_queued_payment_id_seq', 1, false);


--
-- Data for Name: review_assignments; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_assignments (review_id, submission_id, reviewer_id, competing_interests, recommendation, date_assigned, date_notified, date_confirmed, date_completed, date_acknowledged, date_due, date_response_due, last_modified, reminder_was_automatic, declined, cancelled, reviewer_file_id, date_rated, date_reminded, quality, review_round_id, stage_id, review_method, round, step, review_form_id, considered, request_resent) FROM stdin;
1	1	7	\N	\N	2023-02-27 13:14:44	2023-02-27 13:14:44	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:14:44	0	0	0	\N	\N	\N	\N	1	3	2	1	0	\N	0	0
2	1	9	\N	\N	2023-02-27 13:14:51	2023-02-27 13:14:52	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:14:52	0	0	0	\N	\N	\N	\N	1	3	2	1	0	\N	0	0
16	10	10	\N	3	2023-02-27 13:28:08	2023-02-27 13:28:08	2023-02-27 13:28:26	2023-02-27 13:28:31	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:28:31	0	0	0	\N	\N	\N	\N	8	3	2	1	4	\N	0	0
3	1	10	\N	\N	2023-02-27 13:14:59	2023-02-27 13:14:59	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:14:59	0	0	0	\N	\N	\N	\N	1	3	2	1	0	\N	0	0
4	3	9	\N	\N	2023-02-27 13:21:40	2023-02-27 13:21:40	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:21:40	0	0	0	\N	\N	\N	\N	3	3	2	1	0	\N	0	0
23	15	9	\N	\N	2023-02-27 13:32:31	2023-02-27 13:32:31	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:32:31	0	0	0	\N	\N	\N	\N	11	3	2	1	0	\N	0	0
5	3	10	\N	\N	2023-02-27 13:21:47	2023-02-27 13:21:47	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:21:47	0	0	0	\N	\N	\N	\N	3	3	2	1	0	\N	0	0
17	12	7	\N	\N	2023-02-27 13:29:25	2023-02-27 13:29:26	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:29:26	0	0	0	\N	\N	\N	\N	9	3	1	1	0	\N	0	0
6	5	8	\N	\N	2023-02-27 13:22:53	2023-02-27 13:22:53	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:22:53	0	0	0	\N	\N	\N	\N	4	3	2	1	0	\N	0	0
7	5	10	\N	\N	2023-02-27 13:23:00	2023-02-27 13:23:00	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:23:00	0	0	0	\N	\N	\N	\N	4	3	2	1	0	\N	0	0
8	6	7	\N	\N	2023-02-27 13:24:10	2023-02-27 13:24:10	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:24:10	0	0	0	\N	\N	\N	\N	5	3	2	1	0	\N	0	0
18	12	8	\N	\N	2023-02-27 13:29:33	2023-02-27 13:29:33	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:29:33	0	0	0	\N	\N	\N	\N	9	3	2	1	0	\N	0	0
9	6	10	\N	\N	2023-02-27 13:24:17	2023-02-27 13:24:17	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:24:17	0	0	0	\N	\N	\N	\N	5	3	2	1	0	\N	0	0
24	17	7	\N	\N	2023-02-27 13:33:54	2023-02-27 13:33:54	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:33:54	0	0	0	\N	\N	\N	\N	12	3	2	1	0	\N	0	0
11	7	9	\N	\N	2023-02-27 13:25:30	2023-02-27 13:25:30	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:25:30	0	0	0	\N	\N	\N	\N	6	3	2	1	0	\N	0	0
12	7	10	\N	\N	2023-02-27 13:25:37	2023-02-27 13:25:37	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:25:37	0	0	0	\N	\N	\N	\N	6	3	2	1	0	\N	0	0
25	17	8	\N	\N	2023-02-27 13:34:01	2023-02-27 13:34:01	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:34:01	0	0	0	\N	\N	\N	\N	12	3	2	1	0	\N	0	0
10	7	8	\N	5	2023-02-27 13:25:23	2023-02-27 13:25:23	2023-02-27 13:25:44	2023-02-27 13:25:49	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:25:49	0	0	0	\N	\N	\N	\N	6	3	2	1	4	\N	0	0
13	9	7	\N	\N	2023-02-27 13:26:42	2023-02-27 13:26:42	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:26:42	0	0	0	\N	\N	\N	\N	7	3	2	1	0	\N	0	0
14	9	10	\N	\N	2023-02-27 13:26:49	2023-02-27 13:26:50	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:26:50	0	0	0	\N	\N	\N	\N	7	3	2	1	0	\N	0	0
26	19	8	\N	\N	2023-02-27 13:37:52	2023-02-27 13:37:52	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:37:52	0	0	0	\N	\N	\N	\N	13	3	2	1	0	\N	0	0
27	19	9	\N	\N	2023-02-27 13:37:59	2023-02-27 13:37:59	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:37:59	0	0	0	\N	\N	\N	\N	13	3	2	1	0	\N	0	0
15	10	9	\N	2	2023-02-27 13:28:01	2023-02-27 13:28:01	2023-02-27 13:28:15	2023-02-27 13:28:19	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:28:19	0	0	0	\N	\N	\N	\N	8	3	2	1	4	\N	0	0
19	13	7	\N	2	2023-02-27 13:30:13	2023-02-27 13:30:13	2023-02-27 13:30:35	2023-02-27 13:30:39	2023-02-27 13:31:24	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:31:24	0	0	0	\N	\N	\N	\N	10	3	2	1	4	\N	0	0
20	13	9	\N	2	2023-02-27 13:30:20	2023-02-27 13:30:20	2023-02-27 13:30:47	2023-02-27 13:30:51	2023-02-27 13:31:24	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:31:24	0	0	0	\N	\N	\N	\N	10	3	2	1	4	\N	0	0
21	13	10	\N	3	2023-02-27 13:30:27	2023-02-27 13:30:28	2023-02-27 13:30:59	2023-02-27 13:31:03	2023-02-27 13:31:24	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:31:24	0	0	0	\N	\N	\N	\N	10	3	2	1	4	\N	0	0
22	15	8	\N	\N	2023-02-27 13:32:24	2023-02-27 13:32:24	\N	\N	\N	2023-03-27 00:00:00	2023-03-27 00:00:00	2023-02-27 13:32:24	0	0	0	\N	\N	\N	\N	11	3	2	1	0	\N	0	0
\.


--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.review_assignments_review_id_seq', 27, true);


--
-- Data for Name: review_files; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_files (review_id, submission_file_id) FROM stdin;
1	11
1	10
1	9
1	8
1	7
2	11
2	10
2	9
2	8
2	7
3	11
3	10
3	9
3	8
3	7
4	16
5	16
6	19
7	19
8	21
9	21
10	23
11	23
12	23
13	26
14	26
15	28
16	28
17	31
18	31
19	33
20	33
21	33
22	36
23	36
24	39
25	39
26	43
27	43
\.


--
-- Data for Name: review_form_element_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_form_element_settings (review_form_element_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: review_form_elements; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_form_elements (review_form_element_id, review_form_id, seq, element_type, required, included) FROM stdin;
\.


--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.review_form_elements_review_form_element_id_seq', 1, false);


--
-- Data for Name: review_form_responses; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_form_responses (review_form_element_id, review_id, response_type, response_value) FROM stdin;
\.


--
-- Data for Name: review_form_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_form_settings (review_form_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: review_forms; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_forms (review_form_id, assoc_type, assoc_id, seq, is_active) FROM stdin;
\.


--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.review_forms_review_form_id_seq', 1, false);


--
-- Data for Name: review_round_files; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_round_files (submission_id, review_round_id, stage_id, submission_file_id) FROM stdin;
1	1	3	7
1	1	3	8
1	1	3	9
1	1	3	10
1	1	3	11
2	2	3	14
3	3	3	16
5	4	3	19
6	5	3	21
7	6	3	23
9	7	3	26
10	8	3	28
12	9	3	31
13	10	3	33
15	11	3	36
17	12	3	39
19	13	3	43
\.


--
-- Data for Name: review_rounds; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.review_rounds (review_round_id, submission_id, stage_id, round, review_revision, status) FROM stdin;
12	17	3	1	\N	4
1	1	3	1	\N	4
2	2	3	1	\N	14
3	3	3	1	\N	4
13	19	3	1	\N	4
4	5	3	1	\N	4
5	6	3	1	\N	4
6	7	3	1	\N	8
7	9	3	1	\N	4
8	10	3	1	\N	8
9	12	3	1	\N	7
10	13	3	1	\N	1
11	15	3	1	\N	4
\.


--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.review_rounds_review_round_id_seq', 13, true);


--
-- Data for Name: scheduled_tasks; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.scheduled_tasks (class_name, last_run) FROM stdin;
PKP\\task\\ReviewReminder	2023-02-27 13:08:11
PKP\\task\\StatisticsReport	2023-02-27 13:08:11
APP\\tasks\\SubscriptionExpiryReminder	2023-02-27 13:08:11
PKP\\task\\DepositDois	2023-02-27 13:08:11
PKP\\task\\RemoveUnvalidatedExpiredUsers	2023-02-27 13:08:11
PKP\\task\\EditorialReminders	2023-02-27 13:08:11
PKP\\task\\UpdateIPGeoDB	2023-02-27 13:08:11
APP\\tasks\\UsageStatsLoader	2023-02-27 13:08:12
PKP\\task\\ProcessQueueJobs	2023-02-27 13:08:12
PKP\\task\\RemoveFailedJobs	2023-02-27 13:08:12
APP\\tasks\\OpenAccessNotification	2023-02-27 13:08:12
\.


--
-- Data for Name: section_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.section_settings (section_id, locale, setting_name, setting_value) FROM stdin;
1	en	title	Articles
1	fr_CA	title	
1	en	abbrev	ART
1	fr_CA	abbrev	
1	en	identifyType	
1	fr_CA	identifyType	
1	en	policy	<p>Section default policy</p>
1	fr_CA	policy	
2	en	title	Reviews
2	fr_CA	title	
2	en	abbrev	REV
2	fr_CA	abbrev	
2	en	identifyType	Review Article
2	fr_CA	identifyType	
2	en	policy	
2	fr_CA	policy	
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.sections (section_id, journal_id, review_form_id, seq, editor_restricted, meta_indexed, meta_reviewed, abstracts_not_required, hide_title, hide_author, is_inactive, abstract_word_count) FROM stdin;
1	1	\N	0	0	1	1	0	0	0	0	500
2	1	\N	1	0	1	1	1	0	0	0	0
\.


--
-- Name: sections_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.sections_section_id_seq', 2, true);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.sessions (session_id, user_id, ip_address, user_agent, created, last_used, remember, data, domain) FROM stdin;
d8tkldeepbk066ei74f2tk0ajv	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503318	1677503343	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503343;s:5:"token";s:32:"b8d58d6ae84afec854e92b28cd11f6c7";}	localhost
kr74sfiibp2d3gl9k4qcmoj8ac	17	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503874	1677503880	0	userId|i:17;username|s:10:"amwandenga";csrf|a:2:{s:9:"timestamp";i:1677503881;s:5:"token";s:32:"c7920288323568fa5e18970dc24b0582";}	localhost
5ugg5m79pmvm1fii8cqpqjrblv	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503291	1677503318	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503318;s:5:"token";s:32:"51b75defb91b90e1515937bd01533a98";}	localhost
pkos5fcujqbi1kiujhlmgd2e0q	17	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503588	1677503662	0	csrf|a:2:{s:9:"timestamp";i:1677503662;s:5:"token";s:32:"e260494c3feca26c85e8ce5520244d60";}username|s:10:"amwandenga";userId|i:17;	localhost
p618b81hngu68p2tfpc663lloq	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503557	1677503569	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503569;s:5:"token";s:32:"29ca9b49d30a97ee50c75e83f21ce1df";}	localhost
046ha67qba8nhpe490h5v14nb2	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503374	1677503515	0	username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503514;s:5:"token";s:32:"2c65a2826d0c046a09f24fb99a30c8c4";}	localhost
d8ong42vop4cf7tdvg1inlkj98	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503345	1677503361	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503361;s:5:"token";s:32:"9064a32e1b7fa5d61f8671bb8967ca9b";}	localhost
hvsutn52u0g7qctcsliolk36df	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503363	1677503370	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503370;s:5:"token";s:32:"b35e12c04ae11831a56e832067a48273";}	localhost
5pl40jg5b5qvqtut820ercjrkg	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503515	1677503527	0	username|s:5:"rvaca";csrf|a:2:{s:9:"timestamp";i:1677503526;s:5:"token";s:32:"7f382b435ec859e3a4f894a25e45dc45";}	localhost
mbgp66m65dsgt1gcehma1g7ih1	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503531	1677503554	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503554;s:5:"token";s:32:"eee85f27d68feac1ecd01c9d8a532cd7";}	localhost
2rd98e2qspmedi0mjkfmr6efjr	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503572	1677503585	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1677503585;s:5:"token";s:32:"ce60156300b36b45e65859216f5bd6ac";}	localhost
pdupn3e0a173qdqpn2jcbi5773	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503736	1677503872	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503872;s:5:"token";s:32:"83f121da726de3f4606683cbc43b6531";}	localhost
ufv0a5j16akmhvp5nshfltbn4q	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503663	1677503734	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503734;s:5:"token";s:32:"ef7b225c1ce476a105f356225029f47e";}	localhost
gm3ebpm8og3ubdgqij0bitgtar	17	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503891	1677503896	0	userId|i:17;username|s:10:"amwandenga";csrf|a:2:{s:9:"timestamp";i:1677503896;s:5:"token";s:32:"83f64889a3d649410c22e43560c38113";}	localhost
4ndh3ojvuhhv22q710bq09uo10	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503882	1677503890	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503890;s:5:"token";s:32:"59c8db05a06769327c42671fd180dff3";}	localhost
ppv61hibq92s2b0sv742kg24f7	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503897	1677503910	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503910;s:5:"token";s:32:"ab0277990e733df272ffe981cc80fb1b";}	localhost
nf4dtf0pic6afussbm62evrjp7	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503912	1677503919	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503919;s:5:"token";s:32:"685053bed9239e179b2196de1cd36994";}	localhost
7inaeg6ks0kmdn0pqa7jm8qq8t	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503919	1677503926	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503926;s:5:"token";s:32:"bb6ff614674e6f69a1f32af7e6f9d0d0";}	localhost
pgkutbsl6e59s120vifc224adk	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503927	1677503958	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503958;s:5:"token";s:32:"0a52673522bb69da4ec3850937f3668c";}	localhost
70bc14o2ndd0gk0hne0vn0nckn	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503959	1677503965	0		localhost
0ea02mbpt8jk06oaghq8ss4c9m	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503967	1677503975	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677503975;s:5:"token";s:32:"70d0163b51fc49f261f582b315ce0d14";}	localhost
rij5vgf3t1uf1knjj3lcg3c8jt	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504954	1677504970	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504971;s:5:"token";s:32:"785a6392df28ce86ecc002d0d2bcc82d";}	localhost
cgvcfhomteamkdlh2kva9mr6rk	18	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504007	1677504017	0	csrf|a:2:{s:9:"timestamp";i:1677504017;s:5:"token";s:32:"a8d7180b2c7011b1a6721b3765a58a6a";}username|s:7:"ccorino";userId|i:18;	localhost
fltoql5f8inb285s0m49g5tsjp	22	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504217	1677504227	0	csrf|a:2:{s:9:"timestamp";i:1677504227;s:5:"token";s:32:"36336164d9971c9d94a61cd1ee3dfed4";}username|s:9:"dphillips";userId|i:22;	localhost
8m3tu64q4sfol2lidfh8df58rb	23	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504289	1677504299	0	csrf|a:2:{s:9:"timestamp";i:1677504299;s:5:"token";s:32:"60b911d83d0cd4fa2ac1a12128786612";}username|s:9:"dsokoloff";userId|i:23;	localhost
88n5qba329ujuk10qtghnq9mrf	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504080	1677504121	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504121;s:5:"token";s:32:"4422f3e1dfe8ece02f183bcd230fb309";}	localhost
6o5gj63pnpl5l0cjq0h393427o	5	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503976	1677503989	0	userId|i:5;username|s:8:"sberardo";csrf|a:2:{s:9:"timestamp";i:1677503989;s:5:"token";s:32:"9dae0288d765bcc41ea58453fa291940";}signedInAs|i:3;	localhost
pgju96vma2bveap2b6a3b7fb2d	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504042	1677504056	0	username|s:6:"minoue";csrf|a:2:{s:9:"timestamp";i:1677504056;s:5:"token";s:32:"6737e918476633b8b1aca8cfd612f21e";}	localhost
sjjhue1btp99730hcjk5e8vhto	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504019	1677504041	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504041;s:5:"token";s:32:"bce34af3e84cfa5ddeff2d5c616211d4";}	localhost
lbvrhvrqcnohh1o27jk653eg90	5	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677503990	1677504003	0	userId|i:5;username|s:8:"sberardo";csrf|a:2:{s:9:"timestamp";i:1677504004;s:5:"token";s:32:"aabe83280c3611f19b626c4ff0968ded";}signedInAs|i:3;	localhost
g6igu702solj2413ef74q19gs8	19	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504068	1677504078	0	csrf|a:2:{s:9:"timestamp";i:1677504078;s:5:"token";s:32:"c9a200d591b93e2fb01a28d365cb69f9";}username|s:8:"ckwantes";userId|i:19;	localhost
llbedpp2sj70ntbq964etg32ea	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504057	1677504065	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504065;s:5:"token";s:32:"f581c1e3949b1a79f0499a202379dc75";}	localhost
r5hf10mjnsg0i2q3m42a32adqr	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504229	1677504285	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504285;s:5:"token";s:32:"89d72c0c81277184452ddf950019444a";}	localhost
7571uiifmfmr439mmlvghq90bo	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504153	1677504213	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504213;s:5:"token";s:32:"96b3412d96c7d7a668673be4365fd42a";}	localhost
be7nta982fv6c8rmtgqbpkhk2b	20	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504125	1677504136	0	csrf|a:2:{s:9:"timestamp";i:1677504136;s:5:"token";s:32:"2a40cd01ee1dc8dcd927304d4b746868";}username|s:12:"cmontgomerie";userId|i:20;	localhost
eoga24nu5j17hs7s4nkg9la9hc	21	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504140	1677504151	0	csrf|a:2:{s:9:"timestamp";i:1677504151;s:5:"token";s:32:"6e62e54f6002000f79b3bd867888d283";}username|s:6:"ddiouf";userId|i:21;	localhost
26ifgb210ofddkcpis0hth6eir	24	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504353	1677504365	0	csrf|a:2:{s:9:"timestamp";i:1677504365;s:5:"token";s:32:"dcfe649ea0e546a84a4596b929dce101";}username|s:7:"eostrom";userId|i:24;	localhost
dgeom859ams1ipp7v5rmr5qcn1	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504339	1677504350	0	username|s:7:"phudson";csrf|a:2:{s:9:"timestamp";i:1677504350;s:5:"token";s:32:"040cbbd97403845bb1eb1c7c3f8d1177";}	localhost
fk02g6idn4kn5d179fg19oo1tg	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504301	1677504338	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504338;s:5:"token";s:32:"3873031818da887b567e59968c84b97f";}	localhost
rnn9ffdef8gl7raf30v544r70r	25	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504369	1677504379	0	csrf|a:2:{s:9:"timestamp";i:1677504379;s:5:"token";s:32:"4dc35c5316932f0892e6ab5e6d3ae650";}username|s:9:"fpaglieri";userId|i:25;	localhost
hk0e0q55mu6ll7d15676j9g1mn	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504381	1677504442	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504443;s:5:"token";s:32:"b6bd6792c3ef8fbde2f60160248150a0";}	localhost
1gufri0ng62seleqv9hpjd98ag	26	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504446	1677504456	0	csrf|a:2:{s:9:"timestamp";i:1677504456;s:5:"token";s:32:"0cd2ac801e88eee549004367c2b26c2a";}username|s:6:"jnovak";userId|i:26;	localhost
udtvn5jg4lusfkrf76pkldq3ef	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504458	1677504489	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504489;s:5:"token";s:32:"0aadc6cf55e51a1ded79cc517d05072e";}	localhost
culv05hhk8nb17r5r739lnjinr	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504489	1677504500	0	username|s:7:"amccrae";csrf|a:2:{s:9:"timestamp";i:1677504500;s:5:"token";s:32:"b55eafd0aacd7955b5ba0a61b6521aaf";}	localhost
l871fu35bpab9dgt5ev1g2dtdk	27	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504515	1677504526	0	csrf|a:2:{s:9:"timestamp";i:1677504526;s:5:"token";s:32:"70fe29ddae0fab59a835a59a00272731";}username|s:10:"kalkhafaji";userId|i:27;	localhost
l9gvtbl3nsk99icedlcg82ran2	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504543	1677504573	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504573;s:5:"token";s:32:"5a9e6b7e2a5949bcc2f11586b16f6580";}	localhost
l87ap1v8qbpdfuk8dkhd7sls4a	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504500	1677504512	0	username|s:8:"agallego";csrf|a:2:{s:9:"timestamp";i:1677504512;s:5:"token";s:32:"ea17814fb4448859864e94b1734aa0ec";}	localhost
4pct9md2ls2mhq9vnuussegum6	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504630	1677504640	0	username|s:8:"jjanssen";csrf|a:2:{s:9:"timestamp";i:1677504640;s:5:"token";s:32:"bebbea312104c17fafcd32112ba2195d";}	localhost
4ebbnl4ub3gbn3gle7b4htkahl	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504589	1677504629	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504629;s:5:"token";s:32:"a3e381e00be1c0f26148ca0f0a53fe03";}	localhost
51tmfkqhjacvjv2u8218k9dv13	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504641	1677504652	0	username|s:7:"amccrae";csrf|a:2:{s:9:"timestamp";i:1677504652;s:5:"token";s:32:"f78f876a001da6762625244919250449";}	localhost
uq7ig98lipk9e7asllqb8vl5mk	30	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504693	1677504703	0	csrf|a:2:{s:9:"timestamp";i:1677504703;s:5:"token";s:32:"2de0d4b10c6c5b94cd424a0049155658";}username|s:7:"pdaniel";userId|i:30;	localhost
hvgd50t4nccu0dbegma8g82lpi	28	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504530	1677504540	0	csrf|a:2:{s:9:"timestamp";i:1677504540;s:5:"token";s:32:"62e46675abcdd133774ff8fc18c7c3e8";}username|s:12:"lchristopher";userId|i:28;	localhost
6gshljv30us0vijko6ua2bngvs	29	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504577	1677504587	0	csrf|a:2:{s:9:"timestamp";i:1677504587;s:5:"token";s:32:"89b1768fb904c91e8c05134930669b3a";}username|s:8:"lkumiega";userId|i:29;	localhost
2spion8tiqs4j7ac387clmaja1	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504652	1677504664	0	username|s:8:"agallego";csrf|a:2:{s:9:"timestamp";i:1677504664;s:5:"token";s:32:"a929c34dc8f1b8f9c2b2cd4207be686b";}	localhost
540q8hik2iudmkdd3vvb4gfvof	33	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504797	1677504807	0	csrf|a:2:{s:9:"timestamp";i:1677504807;s:5:"token";s:32:"ef09d59cd6f4251129bce1ee93a56d1b";}username|s:12:"vkarbasizaed";userId|i:33;	localhost
g5vhc816g711gjqccvi3r0cmq6	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504665	1677504690	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504691;s:5:"token";s:32:"b37fe84fd2b284f40fd0b58c56b1915e";}	localhost
eu0n3sfgbr3n6hqqs9gt0vc338	31	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504707	1677504718	0	csrf|a:2:{s:9:"timestamp";i:1677504718;s:5:"token";s:32:"eea5c1cfb94fa5bd0c9df61e0f079378";}username|s:8:"rbaiyewu";userId|i:31;	localhost
ucf3bn6dm1hptepjh2rgek9cn9	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504720	1677504778	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504778;s:5:"token";s:32:"f4a4d12aa8fca1d0c67a24fbad7bae9a";}	localhost
f5atamrl84l2d1vjpcc6sa837k	32	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504782	1677504793	0	csrf|a:2:{s:9:"timestamp";i:1677504793;s:5:"token";s:32:"d76103c70b5f15503cc0ee15f3031c0a";}username|s:6:"rrossi";userId|i:32;	localhost
nhf5gkbel0245lp7hbc3pjao99	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504884	1677504902	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504902;s:5:"token";s:32:"277d6c544b291948eef1f7e4aa8ad30e";}	localhost
r045rdpsvn2tceid7rpupr4i64	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504809	1677504882	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504882;s:5:"token";s:32:"9a7ccd8b35b2d94fc38e9c1d59163a4c";}	localhost
ncm9pnpf4t4fpuvammqn1m2rh0	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504903	1677504920	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504920;s:5:"token";s:32:"2210886ef446aacf89a9fe865329d704";}	localhost
vn7u9rrauji0dho9eb6edhu0pp	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504920	1677504936	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504936;s:5:"token";s:32:"e298f950e19fc3fb2a89bcd53c5edcdd";}	localhost
39e0d54k7cbdhdjm0tidseqvo8	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504937	1677504953	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504953;s:5:"token";s:32:"ebb233ec9f011c137db84a6b49b3d463";}	localhost
10jduma3btimil3ou9ltgt276u	35	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677505035	1677505046	0	csrf|a:2:{s:9:"timestamp";i:1677505046;s:5:"token";s:32:"f18a6357807fb621d90c7f7f3eed950c";}username|s:6:"zwoods";userId|i:35;	localhost
6rngvv6ea5cgd8qggak43g59ar	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677504971	1677504997	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677504997;s:5:"token";s:32:"59776e186ef86ac6397b124ecee3a19e";}	localhost
d4jppuk6ekrivlaqn50eeoi9ro	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677505013	1677505033	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677505033;s:5:"token";s:32:"ff6b1e27dbe586bbc34abd707bbe060c";}	localhost
pha5u8kijkv3aq8ulvfcn7tjs5	34	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677505001	1677505011	0	csrf|a:2:{s:9:"timestamp";i:1677505011;s:5:"token";s:32:"6741f8b83aa377b24a2581f8cd93c0a8";}username|s:11:"vwilliamson";userId|i:34;	localhost
3dkis5pj4saca79c3jf63s9pta	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1677505048	1677505093	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1677505093;s:5:"token";s:32:"7e90173cda20f028b401e932675f1fcb";}	localhost
\.


--
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.site (redirect, primary_locale, min_password_length, installed_locales, supported_locales, original_style_file_name) FROM stdin;
0	en	6	["en","fr_CA"]	["en","fr_CA"]	\N
\.


--
-- Data for Name: site_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.site_settings (setting_name, locale, setting_value) FROM stdin;
contactEmail	en	pkpadmin@mailinator.com
contactName	en	Open Journal Systems
contactName	fr_CA	Open Journal Systems
compressStatsLogs		0
enableGeoUsageStats		disabled
enableInstitutionUsageStats		0
keepDailyUsageStats		0
isSiteSushiPlatform		0
isSushiApiPublic		1
themePluginPath		default
\.


--
-- Data for Name: stage_assignments; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.stage_assignments (stage_assignment_id, submission_id, user_group_id, user_id, date_assigned, recommend_only, can_change_metadata) FROM stdin;
2	1	3	3	2023-02-27 13:14:14	0	1
3	1	5	4	2023-02-27 13:14:14	0	1
50	10	3	3	2023-02-27 13:27:37	0	1
51	10	5	4	2023-02-27 13:27:37	0	1
52	10	5	5	2023-02-27 13:27:37	0	1
79	17	14	33	2023-02-27 13:33:28	0	0
83	17	7	11	2023-02-27 13:34:14	0	0
5	1	7	12	2023-02-27 13:15:13	0	0
6	1	11	14	2023-02-27 13:15:27	0	0
7	1	13	16	2023-02-27 13:15:33	0	0
1	1	14	17	2023-02-27 13:18:08	0	1
84	17	11	13	2023-02-27 13:34:28	0	0
4	1	5	5	2023-02-27 13:19:57	1	0
9	2	3	3	2023-02-27 13:20:17	0	1
10	2	5	4	2023-02-27 13:20:17	0	1
11	2	5	5	2023-02-27 13:20:17	0	1
85	17	13	15	2023-02-27 13:34:33	0	0
49	10	14	26	2023-02-27 13:27:37	0	0
54	11	3	3	2023-02-27 13:28:46	0	1
8	2	14	18	2023-02-27 13:20:17	0	0
12	2	5	6	2023-02-27 13:20:37	1	0
14	3	3	3	2023-02-27 13:21:18	0	1
15	3	5	4	2023-02-27 13:21:18	0	1
16	3	5	5	2023-02-27 13:21:18	0	1
55	11	5	4	2023-02-27 13:28:46	0	1
56	11	5	5	2023-02-27 13:28:46	0	1
69	15	14	31	2023-02-27 13:31:58	0	0
73	15	7	12	2023-02-27 13:32:43	0	0
13	3	14	19	2023-02-27 13:21:19	0	0
17	3	7	11	2023-02-27 13:22:00	0	0
19	4	3	3	2023-02-27 13:22:16	0	1
20	4	5	4	2023-02-27 13:22:16	0	1
21	4	5	5	2023-02-27 13:22:16	0	1
74	15	11	14	2023-02-27 13:32:57	0	0
53	11	14	27	2023-02-27 13:28:47	0	0
18	4	14	20	2023-02-27 13:22:17	0	0
23	5	3	3	2023-02-27 13:22:31	0	1
24	5	5	4	2023-02-27 13:22:31	0	1
25	5	5	5	2023-02-27 13:22:31	0	1
58	12	3	3	2023-02-27 13:29:01	0	1
59	12	5	4	2023-02-27 13:29:01	0	1
60	12	5	5	2023-02-27 13:29:01	0	1
76	16	3	3	2023-02-27 13:33:13	0	1
22	5	14	21	2023-02-27 13:22:31	0	0
26	5	7	11	2023-02-27 13:23:13	0	0
27	5	11	13	2023-02-27 13:23:27	0	0
28	5	13	15	2023-02-27 13:23:32	0	0
30	6	3	3	2023-02-27 13:23:47	0	1
31	6	5	4	2023-02-27 13:23:47	0	1
32	6	5	5	2023-02-27 13:23:47	0	1
77	16	5	4	2023-02-27 13:33:13	0	1
78	16	5	5	2023-02-27 13:33:13	0	1
57	12	14	28	2023-02-27 13:29:01	0	0
29	6	14	22	2023-02-27 13:23:48	0	0
33	6	7	11	2023-02-27 13:24:30	0	0
34	6	11	13	2023-02-27 13:24:44	0	0
36	7	3	3	2023-02-27 13:24:59	0	1
37	7	5	4	2023-02-27 13:24:59	0	1
38	7	5	5	2023-02-27 13:24:59	0	1
62	13	3	3	2023-02-27 13:29:47	0	1
63	13	5	4	2023-02-27 13:29:47	0	1
64	13	5	5	2023-02-27 13:29:47	0	1
35	7	14	23	2023-02-27 13:25:00	0	0
40	8	3	3	2023-02-27 13:26:05	0	1
41	8	5	4	2023-02-27 13:26:05	0	1
42	8	5	5	2023-02-27 13:26:05	0	1
87	18	3	3	2023-02-27 13:36:51	0	1
88	18	5	4	2023-02-27 13:36:51	0	1
89	18	5	5	2023-02-27 13:36:51	0	1
75	16	14	32	2023-02-27 13:33:13	0	0
39	8	14	24	2023-02-27 13:26:05	0	0
44	9	3	3	2023-02-27 13:26:19	0	1
45	9	5	6	2023-02-27 13:26:19	0	1
61	13	14	29	2023-02-27 13:29:48	0	0
66	14	3	3	2023-02-27 13:31:44	0	1
67	14	5	4	2023-02-27 13:31:44	0	1
43	9	14	25	2023-02-27 13:26:19	0	0
46	9	7	12	2023-02-27 13:27:02	0	0
47	9	11	14	2023-02-27 13:27:17	0	0
48	9	13	16	2023-02-27 13:27:21	0	0
68	14	5	5	2023-02-27 13:31:44	0	1
80	17	3	3	2023-02-27 13:33:28	0	1
81	17	5	4	2023-02-27 13:33:28	0	1
82	17	5	5	2023-02-27 13:33:28	0	1
65	14	14	30	2023-02-27 13:31:44	0	0
70	15	3	3	2023-02-27 13:31:58	0	1
71	15	5	4	2023-02-27 13:31:58	0	1
72	15	5	5	2023-02-27 13:31:58	0	1
91	19	3	3	2023-02-27 13:37:26	0	1
92	19	5	6	2023-02-27 13:37:26	0	1
90	19	14	35	2023-02-27 13:37:26	0	0
93	19	7	12	2023-02-27 13:38:12	0	0
86	18	14	34	2023-02-27 13:36:51	0	0
\.


--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.stage_assignments_stage_assignment_id_seq', 93, true);


--
-- Data for Name: static_page_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.static_page_settings (static_page_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: static_pages; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.static_pages (static_page_id, path, context_id) FROM stdin;
\.


--
-- Name: static_pages_static_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.static_pages_static_page_id_seq', 1, false);


--
-- Data for Name: subeditor_submission_group; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.subeditor_submission_group (context_id, assoc_id, assoc_type, user_id, user_group_id) FROM stdin;
1	1	530	3	3
1	1	530	4	5
1	1	530	5	5
1	2	530	3	3
1	2	530	6	5
\.


--
-- Data for Name: submission_comments; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_comments (comment_id, comment_type, role_id, submission_id, assoc_id, author_id, comment_title, comments, date_posted, date_modified, viewable) FROM stdin;
1	1	4096	7	10	8		<p>Here are my review comments</p>	2023-02-27 13:25:49	\N	1
2	1	4096	10	15	9		<p>Here are my review comments</p>	2023-02-27 13:28:19	\N	1
3	1	4096	10	16	10		<p>Here are my review comments</p>	2023-02-27 13:28:31	\N	1
4	1	4096	13	19	7		<p>Here are my review comments</p>	2023-02-27 13:30:39	\N	1
5	1	4096	13	20	9		<p>Here are my review comments</p>	2023-02-27 13:30:51	\N	1
6	1	4096	13	21	10		<p>Here are my review comments</p>	2023-02-27 13:31:03	\N	1
\.


--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.submission_comments_comment_id_seq', 6, true);


--
-- Data for Name: submission_file_revisions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_file_revisions (revision_id, submission_file_id, file_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	4
5	5	5
7	7	5
8	8	3
9	9	2
10	10	1
11	11	4
12	12	7
13	13	8
14	14	8
15	15	9
16	16	9
17	17	10
18	18	11
19	19	11
20	20	12
21	21	12
22	22	13
23	23	13
24	24	14
25	25	15
26	26	15
27	27	16
28	28	16
29	29	17
30	30	18
31	31	18
32	32	19
33	33	19
34	34	20
35	35	21
36	36	21
37	37	22
38	38	23
39	39	23
40	40	24
41	41	25
42	42	26
43	43	26
\.


--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.submission_file_revisions_revision_id_seq', 43, true);


--
-- Data for Name: submission_file_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_file_settings (submission_file_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
2	en	name	structured-interview-guide.odt	string
3	en	name	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
4	en	name	signalling-theory-dataset.pdf	string
5	en	name	author-disclosure-form.docx	string
38	en	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
7	en	name	author-disclosure-form.docx	string
8	en	name	response-evaluation-all-team-members-draft-after-edits-final-version-final.ods	string
9	en	name	structured-interview-guide.odt	string
10	en	name	Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence.pdf	string
11	en	name	signalling-theory-dataset.pdf	string
12	en	name	article.pdf	string
12	fr_CA	name		string
13	en	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
14	en	name	The influence of lactation on the quantity and quality of cashmere production.pdf	string
15	en	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
16	en	name	The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence.pdf	string
17	en	name	Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice.pdf	string
18	en	name	Genetic transformation of forest trees.pdf	string
19	en	name	Genetic transformation of forest trees.pdf	string
20	en	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
21	en	name	Investigating the Shared Background Required for Argument: A Critique of Fogelin's Thesis on Deep Disagreement.pdf	string
22	en	name	Developing efficacy beliefs in the classroom.pdf	string
23	en	name	Developing efficacy beliefs in the classroom.pdf	string
24	en	name	Traditions and Trends in the Study of the Commons.pdf	string
25	en	name	Hansen & Pinto: Reason Reclaimed.pdf	string
26	en	name	Hansen & Pinto: Reason Reclaimed.pdf	string
27	en	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
28	en	name	Condensing Water Availability Models to Focus on Specific Water Management Systems.pdf	string
29	en	name	Learning Sustainable Design through Service.pdf	string
30	en	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
31	en	name	Sodium butyrate improves growth performance of weaned piglets during the first period after weaning.pdf	string
32	en	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
33	en	name	Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions.pdf	string
34	en	name	Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua.pdf	string
35	en	name	Yam diseases and its management in Nigeria.pdf	string
36	en	name	Yam diseases and its management in Nigeria.pdf	string
37	en	name	Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat.pdf	string
39	en	name	Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran.pdf	string
40	en	name	article.pdf	string
40	fr_CA	name		string
41	en	name	Self-Organization in Multi-Level Institutions in Networked Environments.pdf	string
42	en	name	Finocchiaro: Arguments About Arguments.pdf	string
43	en	name	Finocchiaro: Arguments About Arguments.pdf	string
\.


--
-- Data for Name: submission_files; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_files (submission_file_id, submission_id, file_id, source_submission_file_id, genre_id, file_stage, direct_sales_price, sales_type, viewable, created_at, updated_at, uploader_user_id, assoc_type, assoc_id) FROM stdin;
1	1	1	\N	1	2	\N	\N	\N	2023-02-27 13:13:31	2023-02-27 13:13:32	17	\N	\N
2	1	2	\N	12	2	\N	\N	\N	2023-02-27 13:13:33	2023-02-27 13:13:33	17	\N	\N
3	1	3	\N	7	2	\N	\N	\N	2023-02-27 13:13:34	2023-02-27 13:13:35	17	\N	\N
4	1	4	\N	7	2	\N	\N	\N	2023-02-27 13:13:35	2023-02-27 13:13:36	17	\N	\N
5	1	5	\N	12	2	\N	\N	\N	2023-02-27 13:13:36	2023-02-27 13:13:38	17	\N	\N
7	1	5	5	12	4	\N	\N	\N	2023-02-27 13:14:34	2023-02-27 13:14:34	17	523	1
8	1	3	3	7	4	\N	\N	\N	2023-02-27 13:14:34	2023-02-27 13:14:34	17	523	1
9	1	2	2	12	4	\N	\N	\N	2023-02-27 13:14:35	2023-02-27 13:14:35	17	523	1
10	1	1	1	1	4	\N	\N	\N	2023-02-27 13:14:35	2023-02-27 13:14:35	17	523	1
11	1	4	4	7	4	\N	\N	\N	2023-02-27 13:14:35	2023-02-27 13:14:35	17	523	1
12	1	7	\N	1	10	\N	\N	\N	2023-02-27 13:17:51	2023-02-27 13:17:51	3	521	1
13	2	8	\N	1	2	\N	\N	\N	2023-02-27 13:20:16	2023-02-27 13:20:16	18	\N	\N
14	2	8	13	1	4	\N	\N	\N	2023-02-27 13:20:29	2023-02-27 13:20:29	18	523	2
15	3	9	\N	1	2	\N	\N	\N	2023-02-27 13:21:17	2023-02-27 13:21:18	19	\N	\N
16	3	9	15	1	4	\N	\N	\N	2023-02-27 13:21:31	2023-02-27 13:21:31	19	523	3
17	4	10	\N	1	2	\N	\N	\N	2023-02-27 13:22:15	2023-02-27 13:22:15	20	\N	\N
18	5	11	\N	1	2	\N	\N	\N	2023-02-27 13:22:30	2023-02-27 13:22:30	21	\N	\N
19	5	11	18	1	4	\N	\N	\N	2023-02-27 13:22:44	2023-02-27 13:22:44	21	523	4
20	6	12	\N	1	2	\N	\N	\N	2023-02-27 13:23:46	2023-02-27 13:23:47	22	\N	\N
21	6	12	20	1	4	\N	\N	\N	2023-02-27 13:24:01	2023-02-27 13:24:01	22	523	5
22	7	13	\N	1	2	\N	\N	\N	2023-02-27 13:24:58	2023-02-27 13:24:59	23	\N	\N
23	7	13	22	1	4	\N	\N	\N	2023-02-27 13:25:14	2023-02-27 13:25:14	23	523	6
24	8	14	\N	1	2	\N	\N	\N	2023-02-27 13:26:03	2023-02-27 13:26:03	24	\N	\N
25	9	15	\N	1	2	\N	\N	\N	2023-02-27 13:26:18	2023-02-27 13:26:18	25	\N	\N
26	9	15	25	1	4	\N	\N	\N	2023-02-27 13:26:33	2023-02-27 13:26:33	25	523	7
27	10	16	\N	1	2	\N	\N	\N	2023-02-27 13:27:35	2023-02-27 13:27:36	26	\N	\N
28	10	16	27	1	4	\N	\N	\N	2023-02-27 13:27:52	2023-02-27 13:27:52	26	523	8
29	11	17	\N	1	2	\N	\N	\N	2023-02-27 13:28:45	2023-02-27 13:28:45	27	\N	\N
30	12	18	\N	1	2	\N	\N	\N	2023-02-27 13:28:59	2023-02-27 13:29:00	28	\N	\N
31	12	18	30	1	4	\N	\N	\N	2023-02-27 13:29:16	2023-02-27 13:29:16	28	523	9
32	13	19	\N	1	2	\N	\N	\N	2023-02-27 13:29:46	2023-02-27 13:29:47	29	\N	\N
33	13	19	32	1	4	\N	\N	\N	2023-02-27 13:30:04	2023-02-27 13:30:04	29	523	10
34	14	20	\N	1	2	\N	\N	\N	2023-02-27 13:31:42	2023-02-27 13:31:43	30	\N	\N
35	15	21	\N	1	2	\N	\N	\N	2023-02-27 13:31:56	2023-02-27 13:31:57	31	\N	\N
36	15	21	35	1	4	\N	\N	\N	2023-02-27 13:32:15	2023-02-27 13:32:15	31	523	11
37	16	22	\N	1	2	\N	\N	\N	2023-02-27 13:33:12	2023-02-27 13:33:12	32	\N	\N
38	17	23	\N	1	2	\N	\N	\N	2023-02-27 13:33:26	2023-02-27 13:33:27	33	\N	\N
39	17	23	38	1	4	\N	\N	\N	2023-02-27 13:33:45	2023-02-27 13:33:45	33	523	12
40	17	24	\N	1	10	\N	\N	\N	2023-02-27 13:34:40	2023-02-27 13:34:41	3	521	3
41	18	25	\N	1	2	\N	\N	\N	2023-02-27 13:36:50	2023-02-27 13:36:50	34	\N	\N
42	19	26	\N	1	2	\N	\N	\N	2023-02-27 13:37:25	2023-02-27 13:37:25	35	\N	\N
43	19	26	42	1	4	\N	\N	\N	2023-02-27 13:37:43	2023-02-27 13:37:43	35	523	13
\.


--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.submission_files_submission_file_id_seq', 43, true);


--
-- Data for Name: submission_search_keyword_list; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_search_keyword_list (keyword_id, keyword_text) FROM stdin;
1	alan
2	mwandenga
3	university
4	cape
5	town
6	amina
7	mansour
8	nicolas
9	riouf
10	signalling
11	theory
12	dividends
13	review
14	literature
15	empirical
16	evidence
17	signaling
18	suggests
19	signal
20	future
21	prospects
22	firm
23	recent
24	offer
25	conclusive
26	issue
27	conflicting
28	policy
29	implications
30	financial
31	economists
32	practical
33	dividend
34	guidance
35	management
36	existing
37	potential
38	investors
39	shareholding
40	corporate
41	investment
42	financing
43	distribution
44	decisions
45	continuous
46	function
47	rely
48	intuitive
49	evaluation
50	professional
51	development
52	social
53	transformation
54	version
55	vajiheh
56	karbasizaed
57	tehran
58	antimicrobial
59	heavy
60	metal
61	resistance
62	plasmid
63	profile
64	coliforms
65	isolated
66	nosocomial
67	infections
68	hospital
69	isfahan
70	iran
71	patterns
72	profiles
73	enterobacteriacea
74	healthy
75	human
76	faeces
77	compared
78	fifteen
79	isolates
80	identified
81	escherichia
82	coli
83	remaining
84	kelebsiella
85	pneumoniae
86	seventy
87	percent
88	strains
89	possess
90	multiple
91	antibiotics
92	difference
93	minimal
94	inhibitory
95	concentration
96	mic
97	values
98	clinical
99	cases
100	metals
101	significant
102	tolerant
103	persons
104	consistent
105	relationship
106	group
107	pattern
108	conjugative
109	encoding
110	recovered
111	results
112	multidrug-resistance
113	infection
114	region
\.


--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.submission_search_keyword_list_keyword_id_seq', 114, true);


--
-- Data for Name: submission_search_object_keywords; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_search_object_keywords (object_id, keyword_id, pos) FROM stdin;
49	55	0
49	56	1
49	3	2
49	57	3
50	58	0
50	59	1
50	60	2
50	61	3
50	62	4
50	63	5
50	64	6
50	65	7
50	66	8
50	67	9
50	68	10
50	69	11
50	70	12
51	58	0
51	59	1
51	60	2
51	61	3
51	71	4
51	62	5
51	72	6
51	64	7
51	73	8
51	65	9
51	66	10
51	67	11
51	74	12
51	75	13
51	76	14
51	77	15
51	78	16
51	79	17
51	66	18
51	67	19
51	80	20
51	81	21
51	82	22
51	83	23
51	84	24
51	85	25
51	86	26
51	87	27
51	88	28
51	65	29
51	66	30
51	67	31
51	89	32
51	90	33
51	61	34
51	91	35
51	77	36
51	88	37
51	74	38
51	75	39
51	76	40
51	92	41
51	93	42
51	94	43
51	95	44
51	96	45
51	97	46
51	88	47
51	98	48
51	99	49
51	76	50
51	59	51
51	100	52
51	101	53
51	88	54
51	65	55
51	68	56
51	102	57
51	59	58
51	60	59
51	74	60
51	103	61
51	104	62
51	105	63
51	62	64
51	63	65
51	106	66
51	58	67
51	61	68
51	107	69
51	108	70
51	62	71
51	109	72
51	61	73
51	59	74
51	100	75
51	91	76
51	110	77
51	88	78
51	65	79
51	66	80
51	67	81
51	111	82
51	112	83
51	64	84
51	37	85
51	66	86
51	113	87
51	114	88
9	1	0
9	2	1
9	3	2
9	4	3
9	5	4
9	6	5
9	7	6
9	8	7
9	9	8
10	10	0
10	11	1
10	12	2
10	13	3
10	14	4
10	15	5
10	16	6
11	17	0
11	11	1
11	18	2
11	12	3
11	19	4
11	20	5
11	21	6
11	22	7
11	23	8
11	15	9
11	16	10
11	24	11
11	25	12
11	16	13
11	26	14
11	27	15
11	28	16
11	29	17
11	30	18
11	31	19
11	32	20
11	33	21
11	28	22
11	34	23
11	35	24
11	36	25
11	37	26
11	38	27
11	39	28
11	40	29
11	41	30
11	42	31
11	43	32
11	44	33
11	45	34
11	46	35
11	35	36
11	33	37
11	44	38
11	47	39
11	48	40
11	49	41
13	50	0
13	51	1
13	52	2
13	53	3
\.


--
-- Data for Name: submission_search_objects; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_search_objects (object_id, submission_id, type, assoc_id) FROM stdin;
9	1	1	0
10	1	2	0
11	1	4	0
12	1	16	0
13	1	17	0
14	1	8	0
15	1	32	0
16	1	64	0
49	17	1	0
50	17	2	0
51	17	4	0
52	17	16	0
53	17	17	0
54	17	8	0
55	17	32	0
56	17	64	0
\.


--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.submission_search_objects_object_id_seq', 56, true);


--
-- Data for Name: submission_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submission_settings (submission_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.submissions (submission_id, context_id, current_publication_id, date_last_activity, date_submitted, last_modified, stage_id, locale, status, submission_progress, work_type) FROM stdin;
9	1	10	2023-02-27 13:27:21	2023-02-27 13:26:19	2023-02-27 13:26:19	5	en	1		0
5	1	6	2023-02-27 13:23:32	2023-02-27 13:22:31	2023-02-27 13:22:31	5	en	1		0
1	1	1	2023-02-27 13:19:57	2023-02-27 13:14:14	2023-02-27 13:14:14	5	en	3		0
13	1	14	2023-02-27 13:31:24	2023-02-27 13:29:47	2023-02-27 13:29:47	3	en	1		0
2	1	3	2023-02-27 13:20:53	2023-02-27 13:20:17	2023-02-27 13:20:17	3	en	1		0
10	1	11	2023-02-27 13:28:31	2023-02-27 13:27:37	2023-02-27 13:27:37	3	en	1		0
6	1	7	2023-02-27 13:24:44	2023-02-27 13:23:47	2023-02-27 13:23:47	5	en	1		0
14	1	15	2023-02-27 13:31:43	2023-02-27 13:31:43	2023-02-27 13:31:43	1	en	1		0
3	1	4	2023-02-27 13:22:00	2023-02-27 13:21:18	2023-02-27 13:21:18	4	en	1		0
11	1	12	2023-02-27 13:28:46	2023-02-27 13:28:46	2023-02-27 13:28:46	1	en	1		0
7	1	8	2023-02-27 13:25:49	2023-02-27 13:24:59	2023-02-27 13:24:59	3	en	1		0
4	1	5	2023-02-27 13:22:16	2023-02-27 13:22:16	2023-02-27 13:22:16	1	en	1		0
17	1	18	2023-02-27 13:36:26	2023-02-27 13:33:28	2023-02-27 13:33:28	5	en	3		0
8	1	9	2023-02-27 13:26:05	2023-02-27 13:26:05	2023-02-27 13:26:05	1	en	1		0
15	1	16	2023-02-27 13:32:57	2023-02-27 13:31:58	2023-02-27 13:31:58	5	en	1		0
12	1	13	2023-02-27 13:29:33	2023-02-27 13:29:01	2023-02-27 13:29:01	3	en	1		0
16	1	17	2023-02-27 13:33:13	2023-02-27 13:33:13	2023-02-27 13:33:13	1	en	1		0
18	1	19	2023-02-27 13:37:08	2023-02-27 13:36:51	2023-02-27 13:36:51	1	en	4		0
19	1	20	2023-02-27 13:38:12	2023-02-27 13:37:26	2023-02-27 13:37:26	4	en	1		0
\.


--
-- Name: submissions_submission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.submissions_submission_id_seq', 19, true);


--
-- Data for Name: subscription_type_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.subscription_type_settings (type_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: subscription_types; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.subscription_types (type_id, journal_id, cost, currency_code_alpha, duration, format, institutional, membership, disable_public_display, seq) FROM stdin;
\.


--
-- Name: subscription_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.subscription_types_type_id_seq', 1, false);


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.subscriptions (subscription_id, journal_id, user_id, type_id, date_start, date_end, status, membership, reference_number, notes) FROM stdin;
\.


--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.subscriptions_subscription_id_seq', 1, false);


--
-- Data for Name: temporary_files; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.temporary_files (file_id, user_id, file_name, file_type, file_size, original_file_name, date_uploaded) FROM stdin;
\.


--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.temporary_files_file_id_seq', 1, false);


--
-- Data for Name: usage_stats_institution_temporary_records; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.usage_stats_institution_temporary_records (load_id, line_number, institution_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_total_temporary_records; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.usage_stats_total_temporary_records (date, ip, user_agent, line_number, canonical_url, issue_id, issue_galley_id, context_id, submission_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_item_investigations_temporary_records; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.usage_stats_unique_item_investigations_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_item_requests_temporary_records; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.usage_stats_unique_item_requests_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: user_group_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.user_group_settings (user_group_id, locale, setting_name, setting_value) FROM stdin;
1	en	name	Site Admin
1	fr_CA	name	Administrateur-trice du site
14	fr_CA	name	Auteur-e
9		abbrevLocaleKey	default.groups.abbrev.funding
17		abbrevLocaleKey	default.groups.abbrev.reader
8	en	abbrev	Design
15	fr_CA	name	Traducteur-trice
11		abbrevLocaleKey	default.groups.abbrev.layoutEditor
8	en	name	Designer
14	fr_CA	abbrev	AU
10	fr_CA	name	Indexeur-e
2	fr_CA	abbrev	DIR
4	en	name	Production editor
3	en	name	Journal editor
3		nameLocaleKey	default.groups.name.editor
4		nameLocaleKey	default.groups.name.productionEditor
12	en	abbrev	MS
12		abbrevLocaleKey	default.groups.abbrev.marketing
5	en	name	Section editor
5		nameLocaleKey	default.groups.name.sectionEditor
10	en	name	Indexer
15		abbrevLocaleKey	default.groups.abbrev.translator
2		abbrevLocaleKey	default.groups.abbrev.manager
16	en	abbrev	R
16		abbrevLocaleKey	default.groups.abbrev.externalReviewer
4	fr_CA	abbrev	DirProd
4	en	abbrev	ProdE
4	fr_CA	name	Directeur-trice de production
5	fr_CA	abbrev	RÉDRUB
5		abbrevLocaleKey	default.groups.abbrev.sectionEditor
6	en	abbrev	GE
13	en	name	Proofreader
7	en	abbrev	CE
7		abbrevLocaleKey	default.groups.abbrev.copyeditor
17	fr_CA	abbrev	Lect
17	en	abbrev	Read
17	en	name	Reader
11	fr_CA	abbrev	RespMP
3	fr_CA	abbrev	RÉD
3	en	abbrev	JE
3	fr_CA	name	Rédacteur-trice
3		abbrevLocaleKey	default.groups.abbrev.editor
6	fr_CA	name	Rédacteur-trice invité-e
6	en	name	Guest editor
6		abbrevLocaleKey	default.groups.abbrev.guestEditor
16	fr_CA	name	Évaluateur-trice
16	en	name	Reviewer
13	fr_CA	abbrev	CorEp
13	en	abbrev	PR
13	fr_CA	name	Correcteur-trice d'épreuves
11	en	abbrev	LE
11	fr_CA	name	Responsable de la mise en page
11	en	name	Layout Editor
11		nameLocaleKey	default.groups.name.layoutEditor
4		abbrevLocaleKey	default.groups.abbrev.productionEditor
14		abbrevLocaleKey	default.groups.abbrev.author
2	en	abbrev	JM
12	fr_CA	abbrev	CVM
9	fr_CA	abbrev	CF
9	en	abbrev	FC
9	fr_CA	name	Coordonnateur-trice du financement
2	fr_CA	name	Directeur-trice de la revue
2	en	name	Journal manager
5	en	abbrev	SecE
8		nameLocaleKey	default.groups.name.designer
12	fr_CA	name	Coordonnateur-trice des ventes et du marketing
13		nameLocaleKey	default.groups.name.proofreader
9	en	name	Funding coordinator
9		nameLocaleKey	default.groups.name.funding
18	en	abbrev	SubM
10		nameLocaleKey	default.groups.name.indexer
10		abbrevLocaleKey	default.groups.abbrev.indexer
15	fr_CA	abbrev	Trad
15	en	abbrev	Trans
2		nameLocaleKey	default.groups.name.manager
16	fr_CA	abbrev	ÉVAL
15	en	name	Translator
5	fr_CA	name	Rédacteur-trice de rubrique
6	fr_CA	abbrev	RÉDINV
13		abbrevLocaleKey	default.groups.abbrev.proofreader
15		nameLocaleKey	default.groups.name.translator
16		nameLocaleKey	default.groups.name.externalReviewer
7	fr_CA	abbrev	RÉV
7	fr_CA	name	Réviseur-e
12	en	name	Marketing and sales coordinator
12		nameLocaleKey	default.groups.name.marketing
6		nameLocaleKey	default.groups.name.guestEditor
7	en	name	Copyeditor
7		nameLocaleKey	default.groups.name.copyeditor
8	fr_CA	abbrev	Design
14	en	abbrev	AU
14	en	name	Author
14		nameLocaleKey	default.groups.name.author
8	fr_CA	name	Designer
8		abbrevLocaleKey	default.groups.abbrev.designer
17	fr_CA	name	Lecteur-trice
17		nameLocaleKey	default.groups.name.reader
18		abbrevLocaleKey	default.groups.abbrev.subscriptionManager
10	fr_CA	abbrev	Indx
10	en	abbrev	IND
18	fr_CA	abbrev	RespAB
18	en	name	Subscription Manager
18	fr_CA	name	Responsable des abonnements
18		nameLocaleKey	default.groups.name.subscriptionManager
\.


--
-- Data for Name: user_group_stage; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.user_group_stage (context_id, user_group_id, stage_id) FROM stdin;
1	3	1
1	3	3
1	3	4
1	3	5
1	4	4
1	4	5
1	5	1
1	5	3
1	5	4
1	5	5
1	6	1
1	6	3
1	6	4
1	6	5
1	7	4
1	8	5
1	9	1
1	9	3
1	10	5
1	11	5
1	12	4
1	13	5
1	14	1
1	14	3
1	14	4
1	14	5
1	15	1
1	15	3
1	15	4
1	15	5
1	16	3
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.user_groups (user_group_id, context_id, role_id, is_default, show_title, permit_self_registration, permit_metadata_edit) FROM stdin;
1	0	1	1	1	0	0
2	1	16	1	1	0	1
3	1	16	1	1	0	1
16	1	4096	1	1	1	0
4	1	16	1	1	0	1
12	1	4097	1	1	0	0
5	1	17	1	1	0	1
6	1	17	1	1	0	0
13	1	4097	1	1	0	0
7	1	4097	1	1	0	0
17	1	1048576	1	1	1	0
8	1	4097	1	1	0	0
14	1	65536	1	1	1	0
9	1	4097	1	1	0	0
18	1	2097152	1	1	0	0
10	1	4097	1	1	0	0
15	1	65536	1	1	0	0
11	1	4097	1	1	0	0
\.


--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.user_groups_user_group_id_seq', 18, true);


--
-- Data for Name: user_interests; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.user_interests (user_id, controlled_vocab_entry_id) FROM stdin;
\.


--
-- Data for Name: user_settings; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.user_settings (user_id, locale, setting_name, setting_value) FROM stdin;
11	en	affiliation	Ghent University
11	fr_CA	affiliation	
11	en	biography	
11	fr_CA	biography	
11	en	familyName	Fritz
11	fr_CA	familyName	
11	en	givenName	Maria
11	fr_CA	givenName	
1	en	familyName	admin
1	en	givenName	admin
4	en	affiliation	University of Chicago
4	fr_CA	affiliation	
4	en	biography	
4	fr_CA	biography	
4	en	familyName	Buskins
4	fr_CA	familyName	
4	en	givenName	David
4	fr_CA	givenName	
4		orcid	
4	en	preferredPublicName	
4	fr_CA	preferredPublicName	
4	en	signature	
4	fr_CA	signature	
5	en	affiliation	University of Toronto
5	fr_CA	affiliation	
5	en	biography	
5	fr_CA	biography	
5	en	familyName	Berardo
5	fr_CA	familyName	
5	en	givenName	Stephanie
5	fr_CA	givenName	
5		orcid	
5	en	preferredPublicName	
5	fr_CA	preferredPublicName	
5	en	signature	
5	fr_CA	signature	
11		orcid	
11	en	preferredPublicName	
11	fr_CA	preferredPublicName	
11	en	signature	
11	fr_CA	signature	
12	en	affiliation	Universidad de Chile
12	fr_CA	affiliation	
12	en	biography	
12	fr_CA	biography	
2	fr_CA	biography	
2	en	familyName	Vaca
2	fr_CA	familyName	
2	en	givenName	Ramiro
2	fr_CA	givenName	
2		orcid	
2	en	preferredPublicName	
2	fr_CA	preferredPublicName	
2	en	signature	
2	fr_CA	signature	
3	en	biography	
2	fr_CA	affiliation	
2	en	biography	
3	fr_CA	familyName	
3	en	givenName	Daniel
3	fr_CA	signature	
3	fr_CA	givenName	
8	en	affiliation	McGill University
3	fr_CA	affiliation	
3	fr_CA	biography	
7	en	affiliation	Utrecht University
6	en	affiliation	Kyoto University
9	fr_CA	affiliation	
3	en	preferredPublicName	
6	fr_CA	affiliation	
6	en	biography	
6	fr_CA	biography	
6	en	familyName	Inoue
6	fr_CA	familyName	
6	en	givenName	Minoti
6	fr_CA	givenName	
6		orcid	
6	en	preferredPublicName	
6	fr_CA	preferredPublicName	
6	en	signature	
6	fr_CA	signature	
8	fr_CA	affiliation	
8	en	biography	
8	fr_CA	biography	
8	en	familyName	Hudson
8	fr_CA	familyName	
8	en	givenName	Paul
8	fr_CA	givenName	
8		orcid	
8	en	preferredPublicName	
8	fr_CA	preferredPublicName	
8	en	signature	
8	fr_CA	signature	
3	en	signature	
9	en	biography	
9	fr_CA	biography	
9	en	familyName	McCrae
9	fr_CA	familyName	
9	en	givenName	Aisla
9	fr_CA	givenName	
9		orcid	
9	fr_CA	preferredPublicName	
9	en	signature	
9	fr_CA	signature	
10	en	affiliation	State University of New York
10	fr_CA	affiliation	
10	en	biography	
10	fr_CA	biography	
10	en	familyName	Gallego
10	fr_CA	familyName	
10	en	givenName	Adela
10	fr_CA	givenName	
10		orcid	
10	en	preferredPublicName	
10	en	signature	
10	fr_CA	signature	
3	en	familyName	Barnes
3		orcid	
7	fr_CA	affiliation	
7	en	biography	
7	fr_CA	biography	
7	en	familyName	Janssen
7	fr_CA	familyName	
7	en	givenName	Julie
7	fr_CA	givenName	
7		orcid	
7	en	preferredPublicName	
7	fr_CA	preferredPublicName	
7	en	signature	
7	fr_CA	signature	
12	en	familyName	Vogt
12	fr_CA	familyName	
12	en	givenName	Sarah
12	fr_CA	givenName	
12		orcid	
12	en	preferredPublicName	
12	fr_CA	preferredPublicName	
12	en	signature	
12	fr_CA	signature	
13	en	affiliation	Duke University
13	fr_CA	affiliation	
13	en	biography	
13	fr_CA	biography	
13	en	familyName	Cox
13	fr_CA	familyName	
13	en	givenName	Graham
13	fr_CA	givenName	
13		orcid	
13	en	preferredPublicName	
13	fr_CA	preferredPublicName	
13	en	signature	
13	fr_CA	signature	
14	en	affiliation	University of Cape Town
14	fr_CA	affiliation	
14	en	biography	
14	fr_CA	biography	
14	en	familyName	Hellier
14	fr_CA	familyName	
14	en	givenName	Stephen
14	fr_CA	givenName	
14		orcid	
14	en	preferredPublicName	
14	fr_CA	preferredPublicName	
14	en	signature	
14	fr_CA	signature	
15	en	affiliation	Imperial College London
15	fr_CA	affiliation	
15	en	biography	
15	fr_CA	biography	
15	en	familyName	Turner
15	fr_CA	familyName	
15	en	givenName	Catherine
15	fr_CA	givenName	
15		orcid	
15	en	preferredPublicName	
15	fr_CA	preferredPublicName	
15	en	signature	
15	fr_CA	signature	
16	en	affiliation	National University of Singapore
16	fr_CA	affiliation	
16	en	biography	
16	fr_CA	biography	
16	en	familyName	Kumar
16	fr_CA	familyName	
16	en	givenName	Sabine
16	fr_CA	givenName	
16		orcid	
16	en	preferredPublicName	
16	fr_CA	preferredPublicName	
16	en	signature	
16	fr_CA	signature	
29	en	affiliation	University of Cape Town
2	en	affiliation	Universidad Nacional Autónoma de México
22	en	affiliation	University of Toronto
22	en	familyName	Phillips
22	en	givenName	Dana
29	en	familyName	Kumiega
17	en	affiliation	University of Cape Town
17	en	familyName	Mwandenga
17	en	givenName	Alan
23	en	affiliation	University College Cork
23	en	familyName	Sokoloff
23	en	givenName	Domatilia
18	en	affiliation	University of Bologna
18	en	familyName	Corino
18	en	givenName	Carlo
19	en	affiliation	University of Windsor
19	en	familyName	Kwantes
19	en	givenName	Catherine
20	en	affiliation	University of Alberta
20	en	familyName	Montgomerie
20	en	givenName	Craig
21	en	affiliation	Alexandria University
21	en	familyName	Diouf
21	en	givenName	Diaga
24	en	affiliation	Indiana University
24	en	familyName	Ostrom
24	en	givenName	Elinor
25	en	affiliation	University of Rome
25	en	familyName	Paglieri
25	en	givenName	Fabio
29	en	givenName	Lise
26	en	affiliation	Aalborg University
26	en	familyName	Novak
26	en	givenName	John
27	en	affiliation	Stanford University
27	en	familyName	Al-Khafaji
27	en	givenName	Karim
28	en	affiliation	Australian National University
28	en	familyName	Christopher
28	en	givenName	Leo
30	en	affiliation	University of Wolverhampton
9	en	affiliation	University of Manitoba
9	en	preferredPublicName	
10	fr_CA	preferredPublicName	
32	en	affiliation	Barcelona University
30	en	familyName	Daniel
30	en	givenName	Patricia
31	en	affiliation	University of Nairobi
31	en	familyName	Baiyewu
31	en	givenName	Rana
32	en	familyName	Rossi
32	en	givenName	Rosanna
33	en	affiliation	University of Tehran
33	en	familyName	Karbasizaed
33	en	givenName	Vajiheh
34	en	affiliation	University of Windsor
34	en	familyName	Williamson
34	en	givenName	Valerie
3	fr_CA	preferredPublicName	
35	en	affiliation	CUNY
35	en	familyName	Woods
35	en	givenName	Zita
3	en	affiliation	University of Melbourne
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.user_user_groups (user_group_id, user_id) FROM stdin;
1	1
2	1
2	2
3	3
5	4
5	5
5	6
16	7
16	8
16	9
16	10
7	11
7	12
11	13
11	14
13	15
13	16
17	17
14	17
17	18
14	18
17	19
14	19
17	20
14	20
17	21
14	21
17	22
14	22
17	23
14	23
17	24
14	24
17	25
14	25
17	26
14	26
17	27
14	27
17	28
14	28
17	29
14	29
17	30
14	30
17	31
14	31
17	32
14	32
17	33
14	33
17	34
14	34
17	35
14	35
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.users (user_id, username, password, email, url, phone, mailing_address, billing_address, country, locales, gossip, date_last_email, date_registered, date_validated, date_last_login, must_change_password, auth_id, auth_str, disabled, disabled_reason, inline_help) FROM stdin;
19	ckwantes	$2y$10$5wCrKcNhJxNf9XlXjUTNj.ekYXzx5s8VgGvLwlozQ3wE5VUU8LG/i	ckwantes@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-02-27 13:21:10	\N	2023-02-27 13:21:10	\N	\N	\N	0	\N	1
27	kalkhafaji	$2y$10$uyBREoe55hER5VJqx8NPneu5FnFeY7QC074Z/V3ISvIC9HQpCxTrq	kalkhafaji@mailinator.com	\N	\N	\N	\N	US	[]	\N	\N	2023-02-27 13:28:38	\N	2023-02-27 13:28:38	\N	\N	\N	0	\N	1
4	dbuskins	$2y$10$1yPHSWNhRp3UMtlp9mCfluoppSXSiLx7Ly0aIhT2lMgxeHP6.Ek5a	dbuskins@mailinator.com				\N	US	[]	\N	\N	2023-02-27 13:09:57	\N	\N	0	\N	\N	0	\N	1
5	sberardo	$2y$10$tbhQX0PSC.qIJD0p3z8mYu1IKCv.adyLQjEYKm3LInu5Xy3PWxu5C	sberardo@mailinator.com				\N	CA	[]	\N	\N	2023-02-27 13:10:05	\N	\N	0	\N	\N	0	\N	1
11	mfritz	$2y$10$u31VOzaVOVCQzIzV.lYnEOHHtQ2.Wq3npKB0rAoBeGicw3eMp69vm	mfritz@mailinator.com				\N	BE	[]	\N	\N	2023-02-27 13:10:55	\N	\N	0	\N	\N	0	\N	1
12	svogt	$2y$10$PU815mN6UPwE.eVF0H24OO7GfAGlT2fk5M0E6I/lH6aw1MHrd1Bli	svogt@mailinator.com				\N	CL	[]	\N	\N	2023-02-27 13:11:05	\N	\N	0	\N	\N	0	\N	1
13	gcox	$2y$10$E.Jv5seLdmHCQE7DMl2ApuOHhSv8G67T1TN./5pD6Ue9zkNJ/sOcW	gcox@mailinator.com				\N	US	[]	\N	\N	2023-02-27 13:11:15	\N	\N	0	\N	\N	0	\N	1
14	shellier	$2y$10$3wAD6JMZo095aLuRAFFUOOc/.pJvkS7Ad1tlvUfx8Z6YyKna//iai	shellier@mailinator.com				\N	ZA	[]	\N	\N	2023-02-27 13:11:27	\N	\N	0	\N	\N	0	\N	1
15	cturner	$2y$10$cF93SuSHcIoq3smLcQGA6OkRNrTKXX97vKXktXzwAV4LG.5DSCjvC	cturner@mailinator.com				\N	GB	[]	\N	\N	2023-02-27 13:11:38	\N	\N	0	\N	\N	0	\N	1
16	skumar	$2y$10$x1PfDib8sE/XMebcYrfCp.G1hUthpiWvN91JqrGEcg7ZQQcNeZF/u	skumar@mailinator.com				\N	SG	[]	\N	\N	2023-02-27 13:11:51	\N	\N	0	\N	\N	0	\N	1
20	cmontgomerie	$2y$10$bdkzRiAkOEL3aG./2qvKJePV/PKqVbJ84txZ5DmRUVn04Q/kkq4K.	cmontgomerie@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-02-27 13:22:08	\N	2023-02-27 13:22:08	\N	\N	\N	0	\N	1
2	rvaca	$2y$10$Q.ayfsoR2y5k1paNRbubLe5O96U5xzow5fYUvTAGZHg/UqUDzHrZG	rvaca@mailinator.com				\N	MX	[]	\N	\N	2023-02-27 13:09:45	\N	2023-02-27 13:12:03	0	\N	\N	0	\N	1
21	ddiouf	$2y$10$/sz0OJlPV4Yj/1e5V5sM6.cOEXg2MjK4ma3ZcbJ704tnLodFvPIpO	ddiouf@mailinator.com	\N	\N	\N	\N	EG	[]	\N	\N	2023-02-27 13:22:23	\N	2023-02-27 13:22:23	\N	\N	\N	0	\N	1
1	admin	$2y$10$MW1Vx.wAyguibihUJQ680OLGwexcZ0hwpMNZTq7ak7Vda8NS.uPJW	pkpadmin@mailinator.com	\N	\N	\N	\N	\N	[]	\N	\N	2023-02-27 13:08:04	\N	2023-02-27 13:12:52	\N	\N	\N	0	\N	1
22	dphillips	$2y$10$5myjYQshy6ygGkXwf7irReuw9TjjiqvPthvdMmQJG82T1GPKMZ6ka	dphillips@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-02-27 13:23:39	\N	2023-02-27 13:23:40	\N	\N	\N	0	\N	1
28	lchristopher	$2y$10$g4dw43U4D1WUFq4gm.zqW.rA5nctn.VRhNePHX.DBVW6XgZ8OvYMa	lchristopher@mailinator.com	\N	\N	\N	\N	AU	[]	\N	\N	2023-02-27 13:28:53	\N	2023-02-27 13:28:53	\N	\N	\N	0	\N	1
23	dsokoloff	$2y$10$oB7yTO9qA6W5JD3bkdwhFe0.7XlYEHI9wdAeKQEJS0IGE9EGR.G4W	dsokoloff@mailinator.com	\N	\N	\N	\N	IE	[]	\N	\N	2023-02-27 13:24:51	\N	2023-02-27 13:24:51	\N	\N	\N	0	\N	1
17	amwandenga	$2y$10$7feEf.PXEsBYUAHB..qPS.TU8t0ZpKTk1bAzU4FmGskFr5lnaMJIi	amwandenga@mailinator.com	\N	\N	\N	\N	ZA	[]	\N	\N	2023-02-27 13:13:11	\N	2023-02-27 13:18:11	\N	\N	\N	0	\N	1
32	rrossi	$2y$10$bhm/EvFtGr0J97daWZGaUudi2W1L3vJrO87p3DZBJndTggQVbET82	rrossi@mailinator.com	\N	\N	\N	\N	ES	[]	\N	\N	2023-02-27 13:33:05	\N	2023-02-27 13:33:05	\N	\N	\N	0	\N	1
8	phudson	$2y$10$lKcGPTJUF0nKYqxGpYm.UOq9shHF5uCUSSc5ixIH/Qp5xDTti6Pae	phudson@mailinator.com				\N	CA	[]	\N	\N	2023-02-27 13:10:27	\N	2023-02-27 13:25:39	0	\N	\N	0	\N	1
24	eostrom	$2y$10$qTAl1QvGe7hJQ8CZty4Qxu5Mt2wCoj7xwJBeLDlHidLuUQYjFg9Ha	eostrom@mailinator.com	\N	\N	\N	\N	US	[]	\N	\N	2023-02-27 13:25:56	\N	2023-02-27 13:25:56	\N	\N	\N	0	\N	1
25	fpaglieri	$2y$10$/i6fzsCPpJqETZQeUgNFhugjiSzyVXa2TOmIdbVr25h94BO1P/mWa	fpaglieri@mailinator.com	\N	\N	\N	\N	IT	[]	\N	\N	2023-02-27 13:26:11	\N	2023-02-27 13:26:11	\N	\N	\N	0	\N	1
18	ccorino	$2y$10$Q.V11mfFBEQGQWiUqmoRcOF8kO8g7KwIBG.46IVdatPTKeoQ2ms.m	ccorino@mailinator.com	\N	\N	\N	\N	IT	[]	\N	\N	2023-02-27 13:20:09	\N	2023-02-27 13:20:09	\N	\N	\N	0	\N	1
29	lkumiega	$2y$10$4XYuhDkwFmlwY/THT9wydOgeWfeS8V3URMJkYHpKTlsX0qeS9Xbje	lkumiega@mailinator.com	\N	\N	\N	\N	ZA	[]	\N	\N	2023-02-27 13:29:39	\N	2023-02-27 13:29:40	\N	\N	\N	0	\N	1
6	minoue	$2y$10$LkvQDss.8H.0fCIqLDXVDOtv0DYttFt1mjHcD.I8uhfnuISORL//G	minoue@mailinator.com				\N	JP	[]	\N	\N	2023-02-27 13:10:12	\N	2023-02-27 13:20:42	0	\N	\N	0	\N	1
26	jnovak	$2y$10$nh3Ajaclc1J5VS.BlCVfau0lLj4iPV4G2Vyfubm4Fygl3HEzv1UVK	jnovak@mailinator.com	\N	\N	\N	\N	DK	[]	\N	\N	2023-02-27 13:27:29	\N	2023-02-27 13:27:29	\N	\N	\N	0	\N	1
33	vkarbasizaed	$2y$10$N5YZjN35P.fgu0B831BVe.egy3Y9bkgwpO50ldfybI.wmKRMzxLmi	vkarbasizaed@mailinator.com	\N	\N	\N	\N	IR	[]	\N	\N	2023-02-27 13:33:19	\N	2023-02-27 13:33:20	\N	\N	\N	0	\N	1
34	vwilliamson	$2y$10$LYj2I5OWwI7aiPlBBG/bW.jRdpnAQRIHA1dfARaGzEuv3W.OmsO0a	vwilliamson@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-02-27 13:36:43	\N	2023-02-27 13:36:43	\N	\N	\N	0	\N	1
7	jjanssen	$2y$10$IJv1GZuNJ.uFkBdaxxegx.CxXeudwCdGv2Rctu9.eP/G05B9g4CMm	jjanssen@mailinator.com				\N	NL	[]	\N	\N	2023-02-27 13:10:19	\N	2023-02-27 13:30:30	0	\N	\N	0	\N	1
9	amccrae	$2y$10$ItIuPyC6FAGzTKhpRb226u391JMLpL4xzJe1Mh3.wprwdLqpgtYpW	amccrae@mailinator.com				\N	CA	[]	\N	\N	2023-02-27 13:10:36	\N	2023-02-27 13:30:41	0	\N	\N	0	\N	1
10	agallego	$2y$10$.Ro5d8zC09SIYADKiy5OVOkH0ABINTitmoBtQB/Cf2a6fX6FMxzmq	agallego@mailinator.com				\N	US	[]	\N	\N	2023-02-27 13:10:45	\N	2023-02-27 13:30:52	0	\N	\N	0	\N	1
30	pdaniel	$2y$10$oytfFt.Tno5gpEEHxCBq9esSlSOl63FE03se61J3AUoMFeziLw0be	pdaniel@mailinator.com	\N	\N	\N	\N	GB	[]	\N	\N	2023-02-27 13:31:35	\N	2023-02-27 13:31:35	\N	\N	\N	0	\N	1
31	rbaiyewu	$2y$10$G8mjMWWx9g7wjtkcaNZT0ugot0yNJfHdKniquEzGzjccdWajHTgPu	rbaiyewu@mailinator.com	\N	\N	\N	\N	KE	[]	\N	\N	2023-02-27 13:31:50	\N	2023-02-27 13:31:50	\N	\N	\N	0	\N	1
35	zwoods	$2y$10$/TVby.TadxaMDBMpqIPxIeDRhU0j2RB5vajnJ9cuGOMhIySu5nsli	zwoods@mailinator.com	\N	\N	\N	\N	US	[]	\N	\N	2023-02-27 13:37:18	\N	2023-02-27 13:37:18	\N	\N	\N	0	\N	1
3	dbarnes	$2y$10$4LpFDSfncHN9O2IUG6hIhudRBIn6aiUNc3dlHLUJW9CIgEo7dxwO.	dbarnes@mailinator.com				\N	AU	[]	\N	\N	2023-02-27 13:09:51	\N	2023-02-27 13:37:28	0	\N	\N	0	\N	1
\.


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ojs-ci
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: ojs-ci
--

COPY public.versions (major, minor, revision, build, date_installed, current, product_type, product, product_class_name, lazy_load, sitewide) FROM stdin;
1	0	0	0	2023-02-27 13:08:04	1	plugins.metadata	dc11		0	0
1	0	1	0	2023-02-27 13:08:04	1	plugins.blocks	browse	BrowseBlockPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.blocks	developedBy	DevelopedByBlockPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.blocks	makeSubmission	MakeSubmissionBlockPlugin	1	0
1	1	0	0	2023-02-27 13:08:04	1	plugins.blocks	subscription	SubscriptionBlockPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.blocks	languageToggle	LanguageToggleBlockPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.blocks	information	InformationBlockPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.gateways	resolver		0	0
1	3	4	3	2023-02-27 13:08:04	1	plugins.generic	orcidProfile	OrcidProfilePlugin	1	0
2	0	0	0	2023-02-27 13:08:04	1	plugins.generic	datacite		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	usageEvent		0	0
1	1	0	0	2023-02-27 13:08:04	1	plugins.generic	googleScholar	GoogleScholarPlugin	1	0
1	3	0	0	2023-02-27 13:08:04	1	plugins.generic	acron	AcronPlugin	1	1
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	dublinCoreMeta	DublinCoreMetaPlugin	1	0
1	0	1	0	2023-02-27 13:08:04	1	plugins.generic	pdfJsViewer	PdfJsViewerPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	tinymce	TinyMCEPlugin	1	0
1	0	1	0	2023-02-27 13:08:04	1	plugins.generic	lensGalley	LensGalleyPlugin	1	0
1	2	0	0	2023-02-27 13:08:04	1	plugins.generic	customBlockManager	CustomBlockManagerPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	webFeed	WebFeedPlugin	1	0
1	0	0	1	2023-02-27 13:08:04	1	plugins.generic	recommendByAuthor	RecommendByAuthorPlugin	1	1
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	recommendBySimilarity	RecommendBySimilarityPlugin	1	1
3	0	0	0	2023-02-27 13:08:04	1	plugins.generic	crossref		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	driver	DRIVERPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	googleAnalytics	GoogleAnalyticsPlugin	1	0
1	2	0	0	2023-02-27 13:08:04	1	plugins.generic	staticPages	StaticPagesPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	announcementFeed	AnnouncementFeedPlugin	1	0
0	1	0	0	2023-02-27 13:08:04	1	plugins.generic	citationStyleLanguage	CitationStyleLanguagePlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.generic	htmlArticleGalley	HtmlArticleGalleyPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.importexport	users		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.importexport	native		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.importexport	pubmed		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.oaiMetadataFormats	rfc1807		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.oaiMetadataFormats	marcxml		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.oaiMetadataFormats	marc		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.oaiMetadataFormats	dc		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.paymethod	manual		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.paymethod	paypal		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.pubIds	urn	URNPubIdPlugin	1	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.reports	articles		0	0
2	0	0	0	2023-02-27 13:08:04	1	plugins.reports	reviewReport		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.reports	subscriptions		0	0
1	0	0	0	2023-02-27 13:08:04	1	plugins.themes	default	DefaultThemePlugin	1	0
3	4	0	0	2023-02-27 13:08:03	1	core	ojs2		0	1
1	1	0	0	2023-02-27 13:08:36	1	plugins.importexport	doaj		0	0
1	1	0	0	2023-02-27 13:08:04	1	plugins.reports	counterReport		0	0
\.


--
-- Name: access_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_pkey PRIMARY KEY (access_key_id);


--
-- Name: announcement_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcement_settings
    ADD CONSTRAINT announcement_settings_pkey UNIQUE (announcement_id, locale, setting_name);


--
-- Name: announcement_type_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcement_type_settings
    ADD CONSTRAINT announcement_type_settings_pkey UNIQUE (type_id, locale, setting_name);


--
-- Name: announcement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcement_types
    ADD CONSTRAINT announcement_types_pkey PRIMARY KEY (type_id);


--
-- Name: announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (announcement_id);


--
-- Name: author_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.author_settings
    ADD CONSTRAINT author_settings_pkey UNIQUE (author_id, locale, setting_name);


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- Name: c_v_e_s_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocab_entry_settings
    ADD CONSTRAINT c_v_e_s_pkey UNIQUE (controlled_vocab_entry_id, locale, setting_name);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- Name: category_path; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT category_path UNIQUE (context_id, path);


--
-- Name: category_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.category_settings
    ADD CONSTRAINT category_settings_pkey UNIQUE (category_id, locale, setting_name);


--
-- Name: citation_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.citation_settings
    ADD CONSTRAINT citation_settings_pkey UNIQUE (citation_id, locale, setting_name);


--
-- Name: citations_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_pkey PRIMARY KEY (citation_id);


--
-- Name: citations_publication_seq; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_publication_seq UNIQUE (publication_id, seq);


--
-- Name: completed_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.completed_payments
    ADD CONSTRAINT completed_payments_pkey PRIMARY KEY (completed_payment_id);


--
-- Name: controlled_vocab_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries
    ADD CONSTRAINT controlled_vocab_entries_pkey PRIMARY KEY (controlled_vocab_entry_id);


--
-- Name: controlled_vocab_symbolic; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocabs
    ADD CONSTRAINT controlled_vocab_symbolic UNIQUE (symbolic, assoc_type, assoc_id);


--
-- Name: controlled_vocabs_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocabs
    ADD CONSTRAINT controlled_vocabs_pkey PRIMARY KEY (controlled_vocab_id);


--
-- Name: custom_issue_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.custom_issue_orders
    ADD CONSTRAINT custom_issue_orders_pkey UNIQUE (issue_id);


--
-- Name: custom_section_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.custom_section_orders
    ADD CONSTRAINT custom_section_orders_pkey UNIQUE (issue_id, section_id);


--
-- Name: data_object_tombstone_oai_set_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects
    ADD CONSTRAINT data_object_tombstone_oai_set_objects_pkey PRIMARY KEY (object_id);


--
-- Name: data_object_tombstone_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.data_object_tombstone_settings
    ADD CONSTRAINT data_object_tombstone_settings_pkey UNIQUE (tombstone_id, locale, setting_name);


--
-- Name: data_object_tombstones_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.data_object_tombstones
    ADD CONSTRAINT data_object_tombstones_pkey PRIMARY KEY (tombstone_id);


--
-- Name: doi_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.doi_settings
    ADD CONSTRAINT doi_settings_pkey UNIQUE (doi_id, locale, setting_name);


--
-- Name: dois_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.dois
    ADD CONSTRAINT dois_pkey PRIMARY KEY (doi_id);


--
-- Name: edit_decisions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_pkey PRIMARY KEY (edit_decision_id);


--
-- Name: email_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_log
    ADD CONSTRAINT email_log_pkey PRIMARY KEY (log_id);


--
-- Name: email_log_user_id; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_user_id UNIQUE (email_log_id, user_id);


--
-- Name: email_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_templates_settings
    ADD CONSTRAINT email_settings_pkey UNIQUE (email_id, locale, setting_name);


--
-- Name: email_templates_default_data_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_templates_default_data
    ADD CONSTRAINT email_templates_default_data_pkey UNIQUE (email_key, locale);


--
-- Name: email_templates_email_key; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_email_key UNIQUE (email_key, context_id);


--
-- Name: email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (email_id);


--
-- Name: event_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.event_log
    ADD CONSTRAINT event_log_pkey PRIMARY KEY (log_id);


--
-- Name: event_log_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.event_log_settings
    ADD CONSTRAINT event_log_settings_pkey UNIQUE (log_id, setting_name);


--
-- Name: failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: files_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (file_id);


--
-- Name: filter_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filter_groups
    ADD CONSTRAINT filter_groups_pkey PRIMARY KEY (filter_group_id);


--
-- Name: filter_groups_symbolic; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filter_groups
    ADD CONSTRAINT filter_groups_symbolic UNIQUE (symbolic);


--
-- Name: filter_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filter_settings
    ADD CONSTRAINT filter_settings_pkey UNIQUE (filter_id, locale, setting_name);


--
-- Name: filters_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (filter_id);


--
-- Name: genre_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.genre_settings
    ADD CONSTRAINT genre_settings_pkey UNIQUE (genre_id, locale, setting_name);


--
-- Name: genres_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- Name: institution_ip_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institution_ip
    ADD CONSTRAINT institution_ip_pkey PRIMARY KEY (institution_ip_id);


--
-- Name: institution_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institution_settings
    ADD CONSTRAINT institution_settings_pkey UNIQUE (institution_id, locale, setting_name);


--
-- Name: institutional_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institutional_subscriptions
    ADD CONSTRAINT institutional_subscriptions_pkey PRIMARY KEY (institutional_subscription_id);


--
-- Name: institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (institution_id);


--
-- Name: issue_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_files
    ADD CONSTRAINT issue_files_pkey PRIMARY KEY (file_id);


--
-- Name: issue_galley_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_galley_settings
    ADD CONSTRAINT issue_galley_settings_pkey UNIQUE (galley_id, locale, setting_name);


--
-- Name: issue_galleys_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_galleys
    ADD CONSTRAINT issue_galleys_pkey PRIMARY KEY (galley_id);


--
-- Name: issue_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_settings
    ADD CONSTRAINT issue_settings_pkey UNIQUE (issue_id, locale, setting_name);


--
-- Name: issues_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_pkey PRIMARY KEY (issue_id);


--
-- Name: job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: journal_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.journal_settings
    ADD CONSTRAINT journal_settings_pkey UNIQUE (journal_id, locale, setting_name);


--
-- Name: journals_path; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.journals
    ADD CONSTRAINT journals_path UNIQUE (path);


--
-- Name: journals_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.journals
    ADD CONSTRAINT journals_pkey PRIMARY KEY (journal_id);


--
-- Name: library_file_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.library_file_settings
    ADD CONSTRAINT library_file_settings_pkey UNIQUE (file_id, locale, setting_name);


--
-- Name: library_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_pkey PRIMARY KEY (file_id);


--
-- Name: msd_uc_load_id_context_id_submission_id_date; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_uc_load_id_context_id_submission_id_date UNIQUE (load_id, context_id, submission_id, date);


--
-- Name: msgd_uc_load_context_submission_c_r_c_date; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_uc_load_context_submission_c_r_c_date UNIQUE (load_id, context_id, submission_id, country, region, city, date);


--
-- Name: msgm_uc_context_submission_c_r_c_month; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_uc_context_submission_c_r_c_month UNIQUE (context_id, submission_id, country, region, city, month);


--
-- Name: msid_uc_load_id_context_id_submission_id_institution_id_date; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_uc_load_id_context_id_submission_id_institution_id_date UNIQUE (load_id, context_id, submission_id, institution_id, date);


--
-- Name: msim_uc_context_id_submission_id_institution_id_month; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_uc_context_id_submission_id_institution_id_month UNIQUE (context_id, submission_id, institution_id, month);


--
-- Name: msm_uc_context_id_submission_id_month; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_uc_context_id_submission_id_month UNIQUE (context_id, submission_id, month);


--
-- Name: navigation_menu_item_assignment_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignment_settings
    ADD CONSTRAINT navigation_menu_item_assignment_settings_pkey UNIQUE (navigation_menu_item_assignment_id, locale, setting_name);


--
-- Name: navigation_menu_item_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_pkey PRIMARY KEY (navigation_menu_item_assignment_id);


--
-- Name: navigation_menu_item_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_settings
    ADD CONSTRAINT navigation_menu_item_settings_pkey UNIQUE (navigation_menu_item_id, locale, setting_name);


--
-- Name: navigation_menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_items
    ADD CONSTRAINT navigation_menu_items_pkey PRIMARY KEY (navigation_menu_item_id);


--
-- Name: navigation_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menus
    ADD CONSTRAINT navigation_menus_pkey PRIMARY KEY (navigation_menu_id);


--
-- Name: notes_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (note_id);


--
-- Name: notification_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_pkey UNIQUE (notification_id, locale, setting_name);


--
-- Name: notification_subscription_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_pkey PRIMARY KEY (setting_id);


--
-- Name: notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id);


--
-- Name: oai_resumption_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.oai_resumption_tokens
    ADD CONSTRAINT oai_resumption_tokens_pkey UNIQUE (token);


--
-- Name: plugin_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.plugin_settings
    ADD CONSTRAINT plugin_settings_pkey UNIQUE (plugin_name, context_id, setting_name);


--
-- Name: publication_categories_id; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_id UNIQUE (publication_id, category_id);


--
-- Name: publication_galley_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_galley_settings
    ADD CONSTRAINT publication_galley_settings_pkey UNIQUE (galley_id, locale, setting_name);


--
-- Name: publication_galleys_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_pkey PRIMARY KEY (galley_id);


--
-- Name: publication_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_settings
    ADD CONSTRAINT publication_settings_pkey UNIQUE (publication_id, locale, setting_name);


--
-- Name: publications_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (publication_id);


--
-- Name: queries_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.queries
    ADD CONSTRAINT queries_pkey PRIMARY KEY (query_id);


--
-- Name: query_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_pkey UNIQUE (query_id, user_id);


--
-- Name: queued_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.queued_payments
    ADD CONSTRAINT queued_payments_pkey PRIMARY KEY (queued_payment_id);


--
-- Name: review_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_pkey PRIMARY KEY (review_id);


--
-- Name: review_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_pkey UNIQUE (review_id, submission_file_id);


--
-- Name: review_form_element_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_element_settings
    ADD CONSTRAINT review_form_element_settings_pkey UNIQUE (review_form_element_id, locale, setting_name);


--
-- Name: review_form_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_elements
    ADD CONSTRAINT review_form_elements_pkey PRIMARY KEY (review_form_element_id);


--
-- Name: review_form_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_settings
    ADD CONSTRAINT review_form_settings_pkey UNIQUE (review_form_id, locale, setting_name);


--
-- Name: review_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_forms
    ADD CONSTRAINT review_forms_pkey PRIMARY KEY (review_form_id);


--
-- Name: review_round_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_pkey UNIQUE (submission_id, review_round_id, submission_file_id);


--
-- Name: review_rounds_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_rounds
    ADD CONSTRAINT review_rounds_pkey PRIMARY KEY (review_round_id);


--
-- Name: review_rounds_submission_id_stage_id_round_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_rounds
    ADD CONSTRAINT review_rounds_submission_id_stage_id_round_pkey UNIQUE (submission_id, stage_id, round);


--
-- Name: scheduled_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.scheduled_tasks
    ADD CONSTRAINT scheduled_tasks_pkey UNIQUE (class_name);


--
-- Name: section_editors_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT section_editors_pkey UNIQUE (context_id, assoc_id, assoc_type, user_id);


--
-- Name: section_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.section_settings
    ADD CONSTRAINT section_settings_pkey UNIQUE (section_id, locale, setting_name);


--
-- Name: sections_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (section_id);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey UNIQUE (session_id);


--
-- Name: site_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_pkey UNIQUE (setting_name, locale);


--
-- Name: stage_assignment; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignment UNIQUE (submission_id, user_group_id, user_id);


--
-- Name: stage_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_pkey PRIMARY KEY (stage_assignment_id);


--
-- Name: static_page_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.static_page_settings
    ADD CONSTRAINT static_page_settings_pkey UNIQUE (static_page_id, locale, setting_name);


--
-- Name: static_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.static_pages
    ADD CONSTRAINT static_pages_pkey PRIMARY KEY (static_page_id);


--
-- Name: submission_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_pkey PRIMARY KEY (comment_id);


--
-- Name: submission_file_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_pkey PRIMARY KEY (revision_id);


--
-- Name: submission_file_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_file_settings
    ADD CONSTRAINT submission_file_settings_pkey UNIQUE (submission_file_id, locale, setting_name);


--
-- Name: submission_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_pkey PRIMARY KEY (submission_file_id);


--
-- Name: submission_search_keyword_list_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list
    ADD CONSTRAINT submission_search_keyword_list_pkey PRIMARY KEY (keyword_id);


--
-- Name: submission_search_keyword_text; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list
    ADD CONSTRAINT submission_search_keyword_text UNIQUE (keyword_text);


--
-- Name: submission_search_object_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_pkey UNIQUE (object_id, pos);


--
-- Name: submission_search_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_objects
    ADD CONSTRAINT submission_search_objects_pkey PRIMARY KEY (object_id);


--
-- Name: submission_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_settings
    ADD CONSTRAINT submission_settings_pkey UNIQUE (submission_id, locale, setting_name);


--
-- Name: submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (submission_id);


--
-- Name: subscription_type_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscription_type_settings
    ADD CONSTRAINT subscription_type_settings_pkey UNIQUE (type_id, locale, setting_name);


--
-- Name: subscription_types_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscription_types
    ADD CONSTRAINT subscription_types_pkey PRIMARY KEY (type_id);


--
-- Name: subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (subscription_id);


--
-- Name: temporary_files_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.temporary_files
    ADD CONSTRAINT temporary_files_pkey PRIMARY KEY (file_id);


--
-- Name: u_e_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT u_e_pkey UNIQUE (user_id, controlled_vocab_entry_id);


--
-- Name: user_group_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_group_settings
    ADD CONSTRAINT user_group_settings_pkey UNIQUE (user_group_id, locale, setting_name);


--
-- Name: user_group_stage_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_pkey UNIQUE (context_id, user_group_id, stage_id);


--
-- Name: user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (user_group_id);


--
-- Name: user_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_pkey UNIQUE (user_id, locale, setting_name);


--
-- Name: user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey UNIQUE (user_group_id, user_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: usitr_load_id_line_number_institution_id; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_institution_temporary_records
    ADD CONSTRAINT usitr_load_id_line_number_institution_id UNIQUE (load_id, line_number, institution_id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey UNIQUE (product_type, product, major, minor, revision, build);


--
-- Name: access_keys_hash; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX access_keys_hash ON public.access_keys USING btree (key_hash, user_id, context);


--
-- Name: access_keys_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX access_keys_user_id ON public.access_keys USING btree (user_id);


--
-- Name: announcement_settings_announcement_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX announcement_settings_announcement_id ON public.announcement_settings USING btree (announcement_id);


--
-- Name: announcement_type_settings_type_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX announcement_type_settings_type_id ON public.announcement_type_settings USING btree (type_id);


--
-- Name: announcement_types_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX announcement_types_context_id ON public.announcement_types USING btree (context_id);


--
-- Name: announcements_assoc; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX announcements_assoc ON public.announcements USING btree (assoc_type, assoc_id);


--
-- Name: announcements_type_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX announcements_type_id ON public.announcements USING btree (type_id);


--
-- Name: author_settings_author_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX author_settings_author_id ON public.author_settings USING btree (author_id);


--
-- Name: authors_publication_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX authors_publication_id ON public.authors USING btree (publication_id);


--
-- Name: authors_user_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX authors_user_group_id ON public.authors USING btree (user_group_id);


--
-- Name: c_v_e_s_entry_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX c_v_e_s_entry_id ON public.controlled_vocab_entry_settings USING btree (controlled_vocab_entry_id);


--
-- Name: category_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX category_context_id ON public.categories USING btree (context_id);


--
-- Name: category_context_parent_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX category_context_parent_id ON public.categories USING btree (context_id, parent_id);


--
-- Name: category_parent_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX category_parent_id ON public.categories USING btree (parent_id);


--
-- Name: category_settings_category_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX category_settings_category_id ON public.category_settings USING btree (category_id);


--
-- Name: citation_settings_citation_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX citation_settings_citation_id ON public.citation_settings USING btree (citation_id);


--
-- Name: citations_publication; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX citations_publication ON public.citations USING btree (publication_id);


--
-- Name: completed_payments_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX completed_payments_context_id ON public.completed_payments USING btree (context_id);


--
-- Name: completed_payments_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX completed_payments_user_id ON public.completed_payments USING btree (user_id);


--
-- Name: controlled_vocab_entries_controlled_vocab_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX controlled_vocab_entries_controlled_vocab_id ON public.controlled_vocab_entries USING btree (controlled_vocab_id);


--
-- Name: controlled_vocab_entries_cv_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX controlled_vocab_entries_cv_id ON public.controlled_vocab_entries USING btree (controlled_vocab_id, seq);


--
-- Name: custom_issue_orders_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX custom_issue_orders_issue_id ON public.custom_issue_orders USING btree (issue_id);


--
-- Name: custom_issue_orders_journal_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX custom_issue_orders_journal_id ON public.custom_issue_orders USING btree (journal_id);


--
-- Name: custom_section_orders_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX custom_section_orders_issue_id ON public.custom_section_orders USING btree (issue_id);


--
-- Name: custom_section_orders_section_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX custom_section_orders_section_id ON public.custom_section_orders USING btree (section_id);


--
-- Name: data_object_tombstone_oai_set_objects_tombstone_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX data_object_tombstone_oai_set_objects_tombstone_id ON public.data_object_tombstone_oai_set_objects USING btree (tombstone_id);


--
-- Name: data_object_tombstone_settings_tombstone_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX data_object_tombstone_settings_tombstone_id ON public.data_object_tombstone_settings USING btree (tombstone_id);


--
-- Name: data_object_tombstones_data_object_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX data_object_tombstones_data_object_id ON public.data_object_tombstones USING btree (data_object_id);


--
-- Name: doi_settings_doi_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX doi_settings_doi_id ON public.doi_settings USING btree (doi_id);


--
-- Name: dois_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX dois_context_id ON public.dois USING btree (context_id);


--
-- Name: edit_decisions_editor_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX edit_decisions_editor_id ON public.edit_decisions USING btree (editor_id);


--
-- Name: edit_decisions_review_round_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX edit_decisions_review_round_id ON public.edit_decisions USING btree (review_round_id);


--
-- Name: edit_decisions_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX edit_decisions_submission_id ON public.edit_decisions USING btree (submission_id);


--
-- Name: email_log_assoc; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX email_log_assoc ON public.email_log USING btree (assoc_type, assoc_id);


--
-- Name: email_log_users_email_log_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX email_log_users_email_log_id ON public.email_log_users USING btree (email_log_id);


--
-- Name: email_log_users_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX email_log_users_user_id ON public.email_log_users USING btree (user_id);


--
-- Name: email_templates_alternate_to; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX email_templates_alternate_to ON public.email_templates USING btree (alternate_to);


--
-- Name: email_templates_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX email_templates_context_id ON public.email_templates USING btree (context_id);


--
-- Name: email_templates_settings_email_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX email_templates_settings_email_id ON public.email_templates_settings USING btree (email_id);


--
-- Name: event_log_assoc; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX event_log_assoc ON public.event_log USING btree (assoc_type, assoc_id);


--
-- Name: event_log_settings_log_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX event_log_settings_log_id ON public.event_log_settings USING btree (log_id);


--
-- Name: event_log_settings_name_value; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX event_log_settings_name_value ON public.event_log_settings USING btree (setting_name, setting_value) WHERE ((setting_name)::text = ANY ((ARRAY['fileId'::character varying, 'submissionId'::character varying])::text[]));


--
-- Name: event_log_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX event_log_user_id ON public.event_log USING btree (user_id);


--
-- Name: filter_settings_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX filter_settings_id ON public.filter_settings USING btree (filter_id);


--
-- Name: filters_filter_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX filters_filter_group_id ON public.filters USING btree (filter_group_id);


--
-- Name: genre_settings_genre_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX genre_settings_genre_id ON public.genre_settings USING btree (genre_id);


--
-- Name: genres_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX genres_context_id ON public.genres USING btree (context_id);


--
-- Name: institution_ip_end; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institution_ip_end ON public.institution_ip USING btree (ip_end);


--
-- Name: institution_ip_institution_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institution_ip_institution_id ON public.institution_ip USING btree (institution_id);


--
-- Name: institution_ip_start; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institution_ip_start ON public.institution_ip USING btree (ip_start);


--
-- Name: institution_settings_institution_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institution_settings_institution_id ON public.institution_settings USING btree (institution_id);


--
-- Name: institutional_subscriptions_domain; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institutional_subscriptions_domain ON public.institutional_subscriptions USING btree (domain);


--
-- Name: institutional_subscriptions_institution_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institutional_subscriptions_institution_id ON public.institutional_subscriptions USING btree (institution_id);


--
-- Name: institutional_subscriptions_subscription_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institutional_subscriptions_subscription_id ON public.institutional_subscriptions USING btree (subscription_id);


--
-- Name: institutions_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX institutions_context_id ON public.institutions USING btree (context_id);


--
-- Name: issue_files_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issue_files_issue_id ON public.issue_files USING btree (issue_id);


--
-- Name: issue_galley_settings_galley_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issue_galley_settings_galley_id ON public.issue_galley_settings USING btree (galley_id);


--
-- Name: issue_galleys_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issue_galleys_file_id ON public.issue_galleys USING btree (file_id);


--
-- Name: issue_galleys_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issue_galleys_issue_id ON public.issue_galleys USING btree (issue_id);


--
-- Name: issue_galleys_url_path; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issue_galleys_url_path ON public.issue_galleys USING btree (url_path);


--
-- Name: issue_settings_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issue_settings_issue_id ON public.issue_settings USING btree (issue_id);


--
-- Name: issue_settings_name_value; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issue_settings_name_value ON public.issue_settings USING btree (setting_name, setting_value) WHERE ((setting_name)::text = ANY ((ARRAY['medra::registeredDoi'::character varying, 'datacite::registeredDoi'::character varying])::text[]));


--
-- Name: issues_doi_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issues_doi_id ON public.issues USING btree (doi_id);


--
-- Name: issues_journal_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issues_journal_id ON public.issues USING btree (journal_id);


--
-- Name: issues_url_path; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX issues_url_path ON public.issues USING btree (url_path);


--
-- Name: jobs_queue_reserved_at_index; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX jobs_queue_reserved_at_index ON public.jobs USING btree (queue, reserved_at);


--
-- Name: journal_settings_journal_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX journal_settings_journal_id ON public.journal_settings USING btree (journal_id);


--
-- Name: journals_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX journals_issue_id ON public.journals USING btree (current_issue_id);


--
-- Name: library_file_settings_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX library_file_settings_file_id ON public.library_file_settings USING btree (file_id);


--
-- Name: library_files_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX library_files_context_id ON public.library_files USING btree (context_id);


--
-- Name: library_files_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX library_files_submission_id ON public.library_files USING btree (submission_id);


--
-- Name: metrics_context_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_context_context_id ON public.metrics_context USING btree (context_id);


--
-- Name: metrics_context_load_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_context_load_id ON public.metrics_context USING btree (load_id);


--
-- Name: metrics_counter_submission_daily_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_daily_context_id ON public.metrics_counter_submission_daily USING btree (context_id);


--
-- Name: metrics_counter_submission_daily_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_daily_submission_id ON public.metrics_counter_submission_daily USING btree (submission_id);


--
-- Name: metrics_counter_submission_institution_daily_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_institution_daily_context_id ON public.metrics_counter_submission_institution_daily USING btree (context_id);


--
-- Name: metrics_counter_submission_institution_daily_institution_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_institution_daily_institution_id ON public.metrics_counter_submission_institution_daily USING btree (institution_id);


--
-- Name: metrics_counter_submission_institution_daily_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_institution_daily_submission_id ON public.metrics_counter_submission_institution_daily USING btree (submission_id);


--
-- Name: metrics_counter_submission_institution_monthly_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_institution_monthly_context_id ON public.metrics_counter_submission_institution_monthly USING btree (context_id);


--
-- Name: metrics_counter_submission_institution_monthly_institution_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_institution_monthly_institution_id ON public.metrics_counter_submission_institution_monthly USING btree (institution_id);


--
-- Name: metrics_counter_submission_institution_monthly_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_institution_monthly_submission_id ON public.metrics_counter_submission_institution_monthly USING btree (submission_id);


--
-- Name: metrics_counter_submission_monthly_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_monthly_context_id ON public.metrics_counter_submission_monthly USING btree (context_id);


--
-- Name: metrics_counter_submission_monthly_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_counter_submission_monthly_submission_id ON public.metrics_counter_submission_monthly USING btree (submission_id);


--
-- Name: metrics_issue_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_issue_context_id ON public.metrics_issue USING btree (context_id);


--
-- Name: metrics_issue_context_id_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_issue_context_id_issue_id ON public.metrics_issue USING btree (context_id, issue_id);


--
-- Name: metrics_issue_issue_galley_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_issue_issue_galley_id ON public.metrics_issue USING btree (issue_galley_id);


--
-- Name: metrics_issue_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_issue_issue_id ON public.metrics_issue USING btree (issue_id);


--
-- Name: metrics_issue_load_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_issue_load_id ON public.metrics_issue USING btree (load_id);


--
-- Name: metrics_submission_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_context_id ON public.metrics_submission USING btree (context_id);


--
-- Name: metrics_submission_geo_daily_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_geo_daily_context_id ON public.metrics_submission_geo_daily USING btree (context_id);


--
-- Name: metrics_submission_geo_daily_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_geo_daily_submission_id ON public.metrics_submission_geo_daily USING btree (submission_id);


--
-- Name: metrics_submission_geo_monthly_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_geo_monthly_context_id ON public.metrics_submission_geo_monthly USING btree (context_id);


--
-- Name: metrics_submission_geo_monthly_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_geo_monthly_submission_id ON public.metrics_submission_geo_monthly USING btree (submission_id);


--
-- Name: metrics_submission_representation_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_representation_id ON public.metrics_submission USING btree (representation_id);


--
-- Name: metrics_submission_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_submission_file_id ON public.metrics_submission USING btree (submission_file_id);


--
-- Name: metrics_submission_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX metrics_submission_submission_id ON public.metrics_submission USING btree (submission_id);


--
-- Name: ms_context_id_submission_id_assoc_type_file_type; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX ms_context_id_submission_id_assoc_type_file_type ON public.metrics_submission USING btree (context_id, submission_id, assoc_type, file_type);


--
-- Name: ms_load_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX ms_load_id ON public.metrics_submission USING btree (load_id);


--
-- Name: msd_context_id_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msd_context_id_submission_id ON public.metrics_counter_submission_daily USING btree (context_id, submission_id);


--
-- Name: msd_load_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msd_load_id ON public.metrics_counter_submission_daily USING btree (load_id);


--
-- Name: msgd_context_id_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msgd_context_id_submission_id ON public.metrics_submission_geo_daily USING btree (context_id, submission_id);


--
-- Name: msgd_load_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msgd_load_id ON public.metrics_submission_geo_daily USING btree (load_id);


--
-- Name: msgm_context_id_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msgm_context_id_submission_id ON public.metrics_submission_geo_monthly USING btree (context_id, submission_id);


--
-- Name: msid_context_id_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msid_context_id_submission_id ON public.metrics_counter_submission_institution_daily USING btree (context_id, submission_id);


--
-- Name: msid_load_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msid_load_id ON public.metrics_counter_submission_institution_daily USING btree (load_id);


--
-- Name: msim_context_id_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msim_context_id_submission_id ON public.metrics_counter_submission_institution_monthly USING btree (context_id, submission_id);


--
-- Name: msm_context_id_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX msm_context_id_submission_id ON public.metrics_counter_submission_monthly USING btree (context_id, submission_id);


--
-- Name: navigation_menu_item_assignment_settings_n_m_i_a_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX navigation_menu_item_assignment_settings_n_m_i_a_id ON public.navigation_menu_item_assignment_settings USING btree (navigation_menu_item_assignment_id);


--
-- Name: navigation_menu_item_assignments_navigation_menu_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX navigation_menu_item_assignments_navigation_menu_id ON public.navigation_menu_item_assignments USING btree (navigation_menu_id);


--
-- Name: navigation_menu_item_assignments_navigation_menu_item_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX navigation_menu_item_assignments_navigation_menu_item_id ON public.navigation_menu_item_assignments USING btree (navigation_menu_item_id);


--
-- Name: navigation_menu_item_settings_navigation_menu_item_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX navigation_menu_item_settings_navigation_menu_item_id ON public.navigation_menu_item_settings USING btree (navigation_menu_item_id);


--
-- Name: notes_assoc; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notes_assoc ON public.notes USING btree (assoc_type, assoc_id);


--
-- Name: notes_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notes_user_id ON public.notes USING btree (user_id);


--
-- Name: notification_settings_notification_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notification_settings_notification_id ON public.notification_settings USING btree (notification_id);


--
-- Name: notification_subscription_settings_context; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notification_subscription_settings_context ON public.notification_subscription_settings USING btree (context);


--
-- Name: notification_subscription_settings_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notification_subscription_settings_user_id ON public.notification_subscription_settings USING btree (user_id);


--
-- Name: notifications_assoc; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notifications_assoc ON public.notifications USING btree (assoc_type, assoc_id);


--
-- Name: notifications_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notifications_context_id ON public.notifications USING btree (context_id, level);


--
-- Name: notifications_context_id_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notifications_context_id_user_id ON public.notifications USING btree (context_id, user_id, level);


--
-- Name: notifications_user_id_level; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX notifications_user_id_level ON public.notifications USING btree (user_id, level);


--
-- Name: plugin_settings_plugin_name; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX plugin_settings_plugin_name ON public.plugin_settings USING btree (plugin_name);


--
-- Name: publication_categories_category_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_categories_category_id ON public.publication_categories USING btree (category_id);


--
-- Name: publication_categories_publication_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_categories_publication_id ON public.publication_categories USING btree (publication_id);


--
-- Name: publication_galley_settings_galley_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_galley_settings_galley_id ON public.publication_galley_settings USING btree (galley_id);


--
-- Name: publication_galley_settings_name_value; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_galley_settings_name_value ON public.publication_galley_settings USING btree (setting_name, setting_value);


--
-- Name: publication_galleys_doi_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_galleys_doi_id ON public.publication_galleys USING btree (doi_id);


--
-- Name: publication_galleys_publication_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_galleys_publication_id ON public.publication_galleys USING btree (publication_id);


--
-- Name: publication_galleys_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_galleys_submission_file_id ON public.publication_galleys USING btree (submission_file_id);


--
-- Name: publication_galleys_url_path; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_galleys_url_path ON public.publication_galleys USING btree (url_path);


--
-- Name: publication_settings_name_value; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_settings_name_value ON public.publication_settings USING btree (setting_name, setting_value) WHERE ((setting_name)::text = ANY ((ARRAY['indexingState'::character varying, 'medra::registeredDoi'::character varying, 'datacite::registeredDoi'::character varying, 'pub-id::publisher-id'::character varying])::text[]));


--
-- Name: publication_settings_publication_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publication_settings_publication_id ON public.publication_settings USING btree (publication_id);


--
-- Name: publications_doi_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publications_doi_id ON public.publications USING btree (doi_id);


--
-- Name: publications_section_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publications_section_id ON public.publications USING btree (section_id);


--
-- Name: publications_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publications_submission_id ON public.publications USING btree (submission_id);


--
-- Name: publications_url_path; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publications_url_path ON public.publications USING btree (url_path);


--
-- Name: publications_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX publications_user_id ON public.publications USING btree (primary_contact_id);


--
-- Name: queries_assoc_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX queries_assoc_id ON public.queries USING btree (assoc_type, assoc_id);


--
-- Name: query_participants_query_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX query_participants_query_id ON public.query_participants USING btree (query_id);


--
-- Name: query_participants_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX query_participants_user_id ON public.query_participants USING btree (user_id);


--
-- Name: review_assignment_reviewer_round; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_assignment_reviewer_round ON public.review_assignments USING btree (review_round_id, reviewer_id);


--
-- Name: review_assignments_form_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_assignments_form_id ON public.review_assignments USING btree (review_form_id);


--
-- Name: review_assignments_reviewer_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_assignments_reviewer_id ON public.review_assignments USING btree (reviewer_id);


--
-- Name: review_assignments_reviewer_review; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_assignments_reviewer_review ON public.review_assignments USING btree (reviewer_id, review_id);


--
-- Name: review_assignments_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_assignments_submission_id ON public.review_assignments USING btree (submission_id);


--
-- Name: review_files_review_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_files_review_id ON public.review_files USING btree (review_id);


--
-- Name: review_files_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_files_submission_file_id ON public.review_files USING btree (submission_file_id);


--
-- Name: review_form_element_settings_review_form_element_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_form_element_settings_review_form_element_id ON public.review_form_element_settings USING btree (review_form_element_id);


--
-- Name: review_form_elements_review_form_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_form_elements_review_form_id ON public.review_form_elements USING btree (review_form_id);


--
-- Name: review_form_responses_pkey; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_form_responses_pkey ON public.review_form_responses USING btree (review_form_element_id, review_id);


--
-- Name: review_form_responses_review_form_element_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_form_responses_review_form_element_id ON public.review_form_responses USING btree (review_form_element_id);


--
-- Name: review_form_responses_review_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_form_responses_review_id ON public.review_form_responses USING btree (review_id);


--
-- Name: review_form_settings_review_form_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_form_settings_review_form_id ON public.review_form_settings USING btree (review_form_id);


--
-- Name: review_round_files_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_round_files_submission_file_id ON public.review_round_files USING btree (submission_file_id);


--
-- Name: review_round_files_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_round_files_submission_id ON public.review_round_files USING btree (submission_id);


--
-- Name: review_rounds_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX review_rounds_submission_id ON public.review_rounds USING btree (submission_id);


--
-- Name: section_settings_section_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX section_settings_section_id ON public.section_settings USING btree (section_id);


--
-- Name: sections_journal_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX sections_journal_id ON public.sections USING btree (journal_id);


--
-- Name: sections_review_form_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX sections_review_form_id ON public.sections USING btree (review_form_id);


--
-- Name: sessions_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX sessions_user_id ON public.sessions USING btree (user_id);


--
-- Name: stage_assignments_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX stage_assignments_submission_id ON public.stage_assignments USING btree (submission_id);


--
-- Name: stage_assignments_user_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX stage_assignments_user_group_id ON public.stage_assignments USING btree (user_group_id);


--
-- Name: stage_assignments_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX stage_assignments_user_id ON public.stage_assignments USING btree (user_id);


--
-- Name: static_page_settings_static_page_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX static_page_settings_static_page_id ON public.static_page_settings USING btree (static_page_id);


--
-- Name: subeditor_submission_group_assoc_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subeditor_submission_group_assoc_id ON public.subeditor_submission_group USING btree (assoc_id, assoc_type);


--
-- Name: subeditor_submission_group_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subeditor_submission_group_context_id ON public.subeditor_submission_group USING btree (context_id);


--
-- Name: subeditor_submission_group_user_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subeditor_submission_group_user_group_id ON public.subeditor_submission_group USING btree (user_group_id);


--
-- Name: subeditor_submission_group_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subeditor_submission_group_user_id ON public.subeditor_submission_group USING btree (user_id);


--
-- Name: submission_comments_author_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_comments_author_id ON public.submission_comments USING btree (author_id);


--
-- Name: submission_comments_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_comments_submission_id ON public.submission_comments USING btree (submission_id);


--
-- Name: submission_file_revisions_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_file_revisions_file_id ON public.submission_file_revisions USING btree (file_id);


--
-- Name: submission_file_revisions_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_file_revisions_submission_file_id ON public.submission_file_revisions USING btree (submission_file_id);


--
-- Name: submission_file_settings_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_file_settings_submission_file_id ON public.submission_file_settings USING btree (submission_file_id);


--
-- Name: submission_files_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_files_file_id ON public.submission_files USING btree (file_id);


--
-- Name: submission_files_genre_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_files_genre_id ON public.submission_files USING btree (genre_id);


--
-- Name: submission_files_source_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_files_source_submission_file_id ON public.submission_files USING btree (source_submission_file_id);


--
-- Name: submission_files_stage_assoc; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_files_stage_assoc ON public.submission_files USING btree (file_stage, assoc_type, assoc_id);


--
-- Name: submission_files_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_files_submission_id ON public.submission_files USING btree (submission_id);


--
-- Name: submission_files_uploader_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_files_uploader_user_id ON public.submission_files USING btree (uploader_user_id);


--
-- Name: submission_search_object_keywords_keyword_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_search_object_keywords_keyword_id ON public.submission_search_object_keywords USING btree (keyword_id);


--
-- Name: submission_search_object_keywords_object_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_search_object_keywords_object_id ON public.submission_search_object_keywords USING btree (object_id);


--
-- Name: submission_search_objects_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_search_objects_submission_id ON public.submission_search_objects USING btree (submission_id);


--
-- Name: submission_settings_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submission_settings_submission_id ON public.submission_settings USING btree (submission_id);


--
-- Name: submissions_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submissions_context_id ON public.submissions USING btree (context_id);


--
-- Name: submissions_publication_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX submissions_publication_id ON public.submissions USING btree (current_publication_id);


--
-- Name: subscription_type_settings_type_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subscription_type_settings_type_id ON public.subscription_type_settings USING btree (type_id);


--
-- Name: subscription_types_journal_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subscription_types_journal_id ON public.subscription_types USING btree (journal_id);


--
-- Name: subscriptions_journal_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subscriptions_journal_id ON public.subscriptions USING btree (journal_id);


--
-- Name: subscriptions_type_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subscriptions_type_id ON public.subscriptions USING btree (type_id);


--
-- Name: subscriptions_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX subscriptions_user_id ON public.subscriptions USING btree (user_id);


--
-- Name: temporary_files_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX temporary_files_user_id ON public.temporary_files USING btree (user_id);


--
-- Name: usage_stats_total_temporary_records_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usage_stats_total_temporary_records_context_id ON public.usage_stats_total_temporary_records USING btree (context_id);


--
-- Name: usage_stats_total_temporary_records_issue_galley_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usage_stats_total_temporary_records_issue_galley_id ON public.usage_stats_total_temporary_records USING btree (issue_galley_id);


--
-- Name: usage_stats_total_temporary_records_issue_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usage_stats_total_temporary_records_issue_id ON public.usage_stats_total_temporary_records USING btree (issue_id);


--
-- Name: usage_stats_total_temporary_records_representation_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usage_stats_total_temporary_records_representation_id ON public.usage_stats_total_temporary_records USING btree (representation_id);


--
-- Name: usage_stats_total_temporary_records_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usage_stats_total_temporary_records_submission_file_id ON public.usage_stats_total_temporary_records USING btree (submission_file_id);


--
-- Name: usage_stats_total_temporary_records_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usage_stats_total_temporary_records_submission_id ON public.usage_stats_total_temporary_records USING btree (submission_id);


--
-- Name: user_group_settings_user_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_group_settings_user_group_id ON public.user_group_settings USING btree (user_group_id);


--
-- Name: user_group_stage_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_group_stage_context_id ON public.user_group_stage USING btree (context_id);


--
-- Name: user_group_stage_stage_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_group_stage_stage_id ON public.user_group_stage USING btree (stage_id);


--
-- Name: user_group_stage_user_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_group_stage_user_group_id ON public.user_group_stage USING btree (user_group_id);


--
-- Name: user_groups_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_groups_context_id ON public.user_groups USING btree (context_id);


--
-- Name: user_groups_role_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_groups_role_id ON public.user_groups USING btree (role_id);


--
-- Name: user_groups_user_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_groups_user_group_id ON public.user_groups USING btree (user_group_id);


--
-- Name: user_interests_controlled_vocab_entry_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_interests_controlled_vocab_entry_id ON public.user_interests USING btree (controlled_vocab_entry_id);


--
-- Name: user_interests_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_interests_user_id ON public.user_interests USING btree (user_id);


--
-- Name: user_settings_locale_setting_name_index; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_settings_locale_setting_name_index ON public.user_settings USING btree (setting_name, locale);


--
-- Name: user_settings_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_settings_user_id ON public.user_settings USING btree (user_id);


--
-- Name: user_user_groups_user_group_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_user_groups_user_group_id ON public.user_user_groups USING btree (user_group_id);


--
-- Name: user_user_groups_user_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX user_user_groups_user_id ON public.user_user_groups USING btree (user_id);


--
-- Name: users_email; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE UNIQUE INDEX users_email ON public.users USING btree (lower((email)::text));


--
-- Name: users_username; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE UNIQUE INDEX users_username ON public.users USING btree (lower((username)::text));


--
-- Name: usi_institution_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usi_institution_id ON public.usage_stats_institution_temporary_records USING btree (institution_id);


--
-- Name: usii_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usii_context_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (context_id);


--
-- Name: usii_representation_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usii_representation_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (representation_id);


--
-- Name: usii_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usii_submission_file_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (submission_file_id);


--
-- Name: usii_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usii_submission_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (submission_id);


--
-- Name: usir_context_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usir_context_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (context_id);


--
-- Name: usir_representation_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usir_representation_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (representation_id);


--
-- Name: usir_submission_file_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usir_submission_file_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (submission_file_id);


--
-- Name: usir_submission_id; Type: INDEX; Schema: public; Owner: ojs-ci
--

CREATE INDEX usir_submission_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (submission_id);


--
-- Name: access_keys_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: announcement_settings_announcement_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcement_settings
    ADD CONSTRAINT announcement_settings_announcement_id_foreign FOREIGN KEY (announcement_id) REFERENCES public.announcements(announcement_id) ON DELETE CASCADE;


--
-- Name: announcement_type_settings_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcement_type_settings
    ADD CONSTRAINT announcement_type_settings_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.announcement_types(type_id) ON DELETE CASCADE;


--
-- Name: announcement_types_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcement_types
    ADD CONSTRAINT announcement_types_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: announcements_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.announcement_types(type_id) ON DELETE SET NULL;


--
-- Name: assignment_settings_navigation_menu_item_assignment_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignment_settings
    ADD CONSTRAINT assignment_settings_navigation_menu_item_assignment_id FOREIGN KEY (navigation_menu_item_assignment_id) REFERENCES public.navigation_menu_item_assignments(navigation_menu_item_assignment_id) ON DELETE CASCADE;


--
-- Name: author_settings_author_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.author_settings
    ADD CONSTRAINT author_settings_author_id FOREIGN KEY (author_id) REFERENCES public.authors(author_id) ON DELETE CASCADE;


--
-- Name: authors_publication_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_publication_id_foreign FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: authors_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: c_v_e_s_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocab_entry_settings
    ADD CONSTRAINT c_v_e_s_entry_id FOREIGN KEY (controlled_vocab_entry_id) REFERENCES public.controlled_vocab_entries(controlled_vocab_entry_id) ON DELETE CASCADE;


--
-- Name: categories_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: categories_parent_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_foreign FOREIGN KEY (parent_id) REFERENCES public.categories(category_id) ON DELETE SET NULL;


--
-- Name: category_settings_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.category_settings
    ADD CONSTRAINT category_settings_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON DELETE CASCADE;


--
-- Name: citation_settings_citation_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.citation_settings
    ADD CONSTRAINT citation_settings_citation_id FOREIGN KEY (citation_id) REFERENCES public.citations(citation_id) ON DELETE CASCADE;


--
-- Name: citations_publication; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_publication FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: completed_payments_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.completed_payments
    ADD CONSTRAINT completed_payments_context_id FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: completed_payments_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.completed_payments
    ADD CONSTRAINT completed_payments_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE SET NULL;


--
-- Name: controlled_vocab_entries_controlled_vocab_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries
    ADD CONSTRAINT controlled_vocab_entries_controlled_vocab_id_foreign FOREIGN KEY (controlled_vocab_id) REFERENCES public.controlled_vocabs(controlled_vocab_id) ON DELETE CASCADE;


--
-- Name: custom_issue_orders_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.custom_issue_orders
    ADD CONSTRAINT custom_issue_orders_issue_id FOREIGN KEY (issue_id) REFERENCES public.issues(issue_id) ON DELETE CASCADE;


--
-- Name: custom_issue_orders_journal_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.custom_issue_orders
    ADD CONSTRAINT custom_issue_orders_journal_id FOREIGN KEY (journal_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: custom_section_orders_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.custom_section_orders
    ADD CONSTRAINT custom_section_orders_issue_id FOREIGN KEY (issue_id) REFERENCES public.issues(issue_id) ON DELETE CASCADE;


--
-- Name: custom_section_orders_section_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.custom_section_orders
    ADD CONSTRAINT custom_section_orders_section_id FOREIGN KEY (section_id) REFERENCES public.sections(section_id) ON DELETE CASCADE;


--
-- Name: data_object_tombstone_oai_set_objects_tombstone_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects
    ADD CONSTRAINT data_object_tombstone_oai_set_objects_tombstone_id FOREIGN KEY (tombstone_id) REFERENCES public.data_object_tombstones(tombstone_id) ON DELETE CASCADE;


--
-- Name: data_object_tombstone_settings_tombstone_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.data_object_tombstone_settings
    ADD CONSTRAINT data_object_tombstone_settings_tombstone_id FOREIGN KEY (tombstone_id) REFERENCES public.data_object_tombstones(tombstone_id) ON DELETE CASCADE;


--
-- Name: doi_settings_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.doi_settings
    ADD CONSTRAINT doi_settings_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE CASCADE;


--
-- Name: dois_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.dois
    ADD CONSTRAINT dois_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_editor_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_editor_id FOREIGN KEY (editor_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_review_round_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_review_round_id_foreign FOREIGN KEY (review_round_id) REFERENCES public.review_rounds(review_round_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: email_log_users_email_log_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_users_email_log_id_foreign FOREIGN KEY (email_log_id) REFERENCES public.email_log(log_id) ON DELETE CASCADE;


--
-- Name: email_log_users_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_users_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: email_templates_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: email_templates_settings_email_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.email_templates_settings
    ADD CONSTRAINT email_templates_settings_email_id FOREIGN KEY (email_id) REFERENCES public.email_templates(email_id) ON DELETE CASCADE;


--
-- Name: event_log_settings_log_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.event_log_settings
    ADD CONSTRAINT event_log_settings_log_id FOREIGN KEY (log_id) REFERENCES public.event_log(log_id) ON DELETE CASCADE;


--
-- Name: event_log_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.event_log
    ADD CONSTRAINT event_log_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: filter_settings_filter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filter_settings
    ADD CONSTRAINT filter_settings_filter_id_foreign FOREIGN KEY (filter_id) REFERENCES public.filters(filter_id) ON DELETE CASCADE;


--
-- Name: filters_filter_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_filter_group_id_foreign FOREIGN KEY (filter_group_id) REFERENCES public.filter_groups(filter_group_id) ON DELETE CASCADE;


--
-- Name: genre_settings_genre_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.genre_settings
    ADD CONSTRAINT genre_settings_genre_id_foreign FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) ON DELETE CASCADE;


--
-- Name: genres_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: institution_ip_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institution_ip
    ADD CONSTRAINT institution_ip_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: institution_settings_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institution_settings
    ADD CONSTRAINT institution_settings_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: institutional_subscriptions_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institutional_subscriptions
    ADD CONSTRAINT institutional_subscriptions_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: institutional_subscriptions_subscription_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institutional_subscriptions
    ADD CONSTRAINT institutional_subscriptions_subscription_id FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(subscription_id) ON DELETE CASCADE;


--
-- Name: institutions_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: issue_files_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_files
    ADD CONSTRAINT issue_files_issue_id FOREIGN KEY (issue_id) REFERENCES public.issues(issue_id) ON DELETE CASCADE;


--
-- Name: issue_galleys_file_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_galleys
    ADD CONSTRAINT issue_galleys_file_id FOREIGN KEY (file_id) REFERENCES public.issue_files(file_id) ON DELETE CASCADE;


--
-- Name: issue_galleys_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_galleys
    ADD CONSTRAINT issue_galleys_issue_id FOREIGN KEY (issue_id) REFERENCES public.issues(issue_id) ON DELETE CASCADE;


--
-- Name: issue_galleys_settings_galley_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_galley_settings
    ADD CONSTRAINT issue_galleys_settings_galley_id FOREIGN KEY (galley_id) REFERENCES public.issue_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: issue_settings_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issue_settings
    ADD CONSTRAINT issue_settings_issue_id FOREIGN KEY (issue_id) REFERENCES public.issues(issue_id) ON DELETE CASCADE;


--
-- Name: issues_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: issues_journal_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_journal_id FOREIGN KEY (journal_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: journal_settings_journal_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.journal_settings
    ADD CONSTRAINT journal_settings_journal_id FOREIGN KEY (journal_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: journals_current_issue_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.journals
    ADD CONSTRAINT journals_current_issue_id_foreign FOREIGN KEY (current_issue_id) REFERENCES public.issues(issue_id) ON DELETE SET NULL;


--
-- Name: library_file_settings_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.library_file_settings
    ADD CONSTRAINT library_file_settings_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.library_files(file_id) ON DELETE CASCADE;


--
-- Name: library_files_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_context_id FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: library_files_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: metrics_context_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_context
    ADD CONSTRAINT metrics_context_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: metrics_issue_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_issue
    ADD CONSTRAINT metrics_issue_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: metrics_issue_issue_galley_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_issue
    ADD CONSTRAINT metrics_issue_issue_galley_id_foreign FOREIGN KEY (issue_galley_id) REFERENCES public.issue_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: metrics_issue_issue_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_issue
    ADD CONSTRAINT metrics_issue_issue_id_foreign FOREIGN KEY (issue_id) REFERENCES public.issues(issue_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msd_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: msd_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msgd_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: msgd_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msgm_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: msgm_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msid_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: msid_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: msid_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msim_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: msim_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: msim_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msm_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: msm_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_assignments_navigation_menu_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_navigation_menu_id_foreign FOREIGN KEY (navigation_menu_id) REFERENCES public.navigation_menus(navigation_menu_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_assignments_navigation_menu_item_id_foreig; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_navigation_menu_item_id_foreig FOREIGN KEY (navigation_menu_item_id) REFERENCES public.navigation_menu_items(navigation_menu_item_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_settings_navigation_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.navigation_menu_item_settings
    ADD CONSTRAINT navigation_menu_item_settings_navigation_menu_id FOREIGN KEY (navigation_menu_item_id) REFERENCES public.navigation_menu_items(navigation_menu_item_id) ON DELETE CASCADE;


--
-- Name: notes_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: notification_settings_notification_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_notification_id_foreign FOREIGN KEY (notification_id) REFERENCES public.notifications(notification_id) ON DELETE CASCADE;


--
-- Name: notification_subscription_settings_context_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_context_foreign FOREIGN KEY (context) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: notification_subscription_settings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: publication_categories_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON DELETE CASCADE;


--
-- Name: publication_categories_publication_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_publication_id_foreign FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publication_galley_settings_galley_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_galley_settings
    ADD CONSTRAINT publication_galley_settings_galley_id FOREIGN KEY (galley_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: publication_galleys_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: publication_galleys_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_publication_id FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publication_galleys_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_galleys
    ADD CONSTRAINT publication_galleys_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id);


--
-- Name: publication_settings_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publication_settings
    ADD CONSTRAINT publication_settings_publication_id FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publications_author_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_author_id FOREIGN KEY (primary_contact_id) REFERENCES public.authors(author_id) ON DELETE SET NULL;


--
-- Name: publications_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: publications_section_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_section_id FOREIGN KEY (section_id) REFERENCES public.sections(section_id) ON DELETE SET NULL;


--
-- Name: publications_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: query_participants_query_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_query_id_foreign FOREIGN KEY (query_id) REFERENCES public.queries(query_id) ON DELETE CASCADE;


--
-- Name: query_participants_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: review_assignments_review_form_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_review_form_id_foreign FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id);


--
-- Name: review_assignments_review_round_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_review_round_id_foreign FOREIGN KEY (review_round_id) REFERENCES public.review_rounds(review_round_id);


--
-- Name: review_assignments_reviewer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_reviewer_id_foreign FOREIGN KEY (reviewer_id) REFERENCES public.users(user_id);


--
-- Name: review_assignments_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id);


--
-- Name: review_files_review_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_review_id_foreign FOREIGN KEY (review_id) REFERENCES public.review_assignments(review_id) ON DELETE CASCADE;


--
-- Name: review_files_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: review_form_element_settings_review_form_element_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_element_settings
    ADD CONSTRAINT review_form_element_settings_review_form_element_id FOREIGN KEY (review_form_element_id) REFERENCES public.review_form_elements(review_form_element_id) ON DELETE CASCADE;


--
-- Name: review_form_elements_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_elements
    ADD CONSTRAINT review_form_elements_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE CASCADE;


--
-- Name: review_form_responses_review_form_element_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_responses
    ADD CONSTRAINT review_form_responses_review_form_element_id_foreign FOREIGN KEY (review_form_element_id) REFERENCES public.review_form_elements(review_form_element_id) ON DELETE CASCADE;


--
-- Name: review_form_responses_review_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_responses
    ADD CONSTRAINT review_form_responses_review_id_foreign FOREIGN KEY (review_id) REFERENCES public.review_assignments(review_id) ON DELETE CASCADE;


--
-- Name: review_form_settings_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_form_settings
    ADD CONSTRAINT review_form_settings_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE CASCADE;


--
-- Name: review_round_files_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: review_round_files_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: section_editors_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT section_editors_context_id FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: section_settings_section_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.section_settings
    ADD CONSTRAINT section_settings_section_id FOREIGN KEY (section_id) REFERENCES public.sections(section_id) ON DELETE CASCADE;


--
-- Name: sections_journal_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_journal_id FOREIGN KEY (journal_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: sections_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE SET NULL;


--
-- Name: sessions_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_user_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_user_group_id FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: subeditor_submission_group_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT subeditor_submission_group_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: subeditor_submission_group_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT subeditor_submission_group_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: submission_comments_author_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_author_id_foreign FOREIGN KEY (author_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: submission_comments_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_file_revisions_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.files(file_id) ON DELETE CASCADE;


--
-- Name: submission_file_revisions_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_file_settings_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_file_settings
    ADD CONSTRAINT submission_file_settings_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_files_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.files(file_id) ON DELETE CASCADE;


--
-- Name: submission_files_genre_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_genre_id_foreign FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) ON DELETE SET NULL;


--
-- Name: submission_files_source_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_source_submission_file_id_foreign FOREIGN KEY (source_submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_files_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_files_uploader_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_uploader_user_id_foreign FOREIGN KEY (uploader_user_id) REFERENCES public.users(user_id) ON DELETE SET NULL;


--
-- Name: submission_search_object_keywords_keyword_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_keyword_id FOREIGN KEY (keyword_id) REFERENCES public.submission_search_keyword_list(keyword_id) ON DELETE CASCADE;


--
-- Name: submission_search_object_keywords_object_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_object_id_foreign FOREIGN KEY (object_id) REFERENCES public.submission_search_objects(object_id) ON DELETE CASCADE;


--
-- Name: submission_search_object_submission; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_search_objects
    ADD CONSTRAINT submission_search_object_submission FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_settings_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submission_settings
    ADD CONSTRAINT submission_settings_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submissions_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_context_id FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: submissions_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_publication_id FOREIGN KEY (current_publication_id) REFERENCES public.publications(publication_id) ON DELETE SET NULL;


--
-- Name: subscription_type_settings_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscription_type_settings
    ADD CONSTRAINT subscription_type_settings_type_id FOREIGN KEY (type_id) REFERENCES public.subscription_types(type_id) ON DELETE CASCADE;


--
-- Name: subscription_types_journal_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscription_types
    ADD CONSTRAINT subscription_types_journal_id FOREIGN KEY (journal_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: subscriptions_journal_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_journal_id FOREIGN KEY (journal_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: subscriptions_type_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_type_id FOREIGN KEY (type_id) REFERENCES public.subscription_types(type_id) ON DELETE CASCADE;


--
-- Name: subscriptions_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: temporary_files_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.temporary_files
    ADD CONSTRAINT temporary_files_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_group_settings_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_group_settings
    ADD CONSTRAINT user_group_settings_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_group_stage_context_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_context_id FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: user_group_stage_user_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_user_group_id FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_interests_controlled_vocab_entry_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_controlled_vocab_entry_id_foreign FOREIGN KEY (controlled_vocab_entry_id) REFERENCES public.controlled_vocab_entries(controlled_vocab_entry_id) ON DELETE CASCADE;


--
-- Name: user_interests_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_settings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_user_groups_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_user_groups_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: usi_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_institution_temporary_records
    ADD CONSTRAINT usi_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: usii_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: usii_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: usii_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: usii_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: usir_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: usir_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: usir_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: usir_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: ust_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.journals(journal_id) ON DELETE CASCADE;


--
-- Name: ust_issue_galley_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_issue_galley_id_foreign FOREIGN KEY (issue_galley_id) REFERENCES public.issue_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: ust_issue_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_issue_id_foreign FOREIGN KEY (issue_id) REFERENCES public.issues(issue_id) ON DELETE CASCADE;


--
-- Name: ust_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_galleys(galley_id) ON DELETE CASCADE;


--
-- Name: ust_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: ust_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: ojs-ci
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

