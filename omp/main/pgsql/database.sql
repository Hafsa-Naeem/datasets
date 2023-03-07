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

ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records DROP CONSTRAINT ustr_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records DROP CONSTRAINT ustr_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records DROP CONSTRAINT ustr_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records DROP CONSTRAINT ustr_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records DROP CONSTRAINT ustr_chapter_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records DROP CONSTRAINT usti_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records DROP CONSTRAINT usti_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records DROP CONSTRAINT usti_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records DROP CONSTRAINT usti_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records DROP CONSTRAINT usti_chapter_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_series_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_total_temporary_records DROP CONSTRAINT ust_chapter_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records DROP CONSTRAINT usir_chapter_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_submission_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_submission_file_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_representation_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_context_id_foreign;
ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records DROP CONSTRAINT usii_chapter_id_foreign;
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
ALTER TABLE ONLY public.submission_files DROP CONSTRAINT submission_files_doi_id_foreign;
ALTER TABLE ONLY public.submission_file_settings DROP CONSTRAINT submission_file_settings_submission_file_id_foreign;
ALTER TABLE ONLY public.submission_file_revisions DROP CONSTRAINT submission_file_revisions_submission_file_id_foreign;
ALTER TABLE ONLY public.submission_file_revisions DROP CONSTRAINT submission_file_revisions_file_id_foreign;
ALTER TABLE ONLY public.submission_comments DROP CONSTRAINT submission_comments_submission_id;
ALTER TABLE ONLY public.submission_comments DROP CONSTRAINT submission_comments_author_id_foreign;
ALTER TABLE ONLY public.submission_chapters DROP CONSTRAINT submission_chapters_source_chapter_id_foreign;
ALTER TABLE ONLY public.submission_chapters DROP CONSTRAINT submission_chapters_publication_id;
ALTER TABLE ONLY public.submission_chapters DROP CONSTRAINT submission_chapters_primary_contact_id_foreign;
ALTER TABLE ONLY public.submission_chapters DROP CONSTRAINT submission_chapters_doi_id_foreign;
ALTER TABLE ONLY public.submission_chapter_settings DROP CONSTRAINT submission_chapter_settings_chapter_id_foreign;
ALTER TABLE ONLY public.submission_chapter_authors DROP CONSTRAINT submission_chapter_authors_chapter_id_foreign;
ALTER TABLE ONLY public.submission_chapter_authors DROP CONSTRAINT submission_chapter_authors_author_id_foreign;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT subeditor_submission_group_user_id;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT subeditor_submission_group_user_group_id_foreign;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_user_id;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_user_group_id;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_submission_id_foreign;
ALTER TABLE ONLY public.spotlights DROP CONSTRAINT spotlights_press_id_foreign;
ALTER TABLE ONLY public.spotlight_settings DROP CONSTRAINT spotlight_settings_spotlight_id_foreign;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_user_id;
ALTER TABLE ONLY public.series_settings DROP CONSTRAINT series_settings_series_id;
ALTER TABLE ONLY public.series DROP CONSTRAINT series_review_form_id;
ALTER TABLE ONLY public.series DROP CONSTRAINT series_press_id;
ALTER TABLE ONLY public.series_categories DROP CONSTRAINT series_categories_series_id;
ALTER TABLE ONLY public.series_categories DROP CONSTRAINT series_categories_category_id;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT section_editors_context_id;
ALTER TABLE ONLY public.sales_rights DROP CONSTRAINT sales_rights_publication_format_id;
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
ALTER TABLE ONLY public.representatives DROP CONSTRAINT representatives_submission_id;
ALTER TABLE ONLY public.query_participants DROP CONSTRAINT query_participants_user_id_foreign;
ALTER TABLE ONLY public.query_participants DROP CONSTRAINT query_participants_query_id_foreign;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_submission_id;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_series_id;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_doi_id_foreign;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_author_id;
ALTER TABLE ONLY public.publication_settings DROP CONSTRAINT publication_settings_publication_id_foreign;
ALTER TABLE ONLY public.publication_formats DROP CONSTRAINT publication_formats_publication_id;
ALTER TABLE ONLY public.publication_formats DROP CONSTRAINT publication_formats_doi_id_foreign;
ALTER TABLE ONLY public.publication_format_settings DROP CONSTRAINT publication_format_settings_publication_format_id;
ALTER TABLE ONLY public.publication_dates DROP CONSTRAINT publication_dates_publication_format_id;
ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_publication_id_foreign;
ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_category_id_foreign;
ALTER TABLE ONLY public.press_settings DROP CONSTRAINT press_settings_press_id_foreign;
ALTER TABLE ONLY public.notification_subscription_settings DROP CONSTRAINT notification_subscription_settings_user_id_foreign;
ALTER TABLE ONLY public.notification_subscription_settings DROP CONSTRAINT notification_subscription_settings_context_foreign;
ALTER TABLE ONLY public.notification_settings DROP CONSTRAINT notification_settings_notification_id_foreign;
ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_user_id_foreign;
ALTER TABLE ONLY public.new_releases DROP CONSTRAINT new_releases_submission_id;
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
ALTER TABLE ONLY public.metrics_submission DROP CONSTRAINT metrics_submission_chapter_id_foreign;
ALTER TABLE ONLY public.metrics_series DROP CONSTRAINT metrics_series_series_id_foreign;
ALTER TABLE ONLY public.metrics_series DROP CONSTRAINT metrics_series_context_id_foreign;
ALTER TABLE ONLY public.metrics_context DROP CONSTRAINT metrics_context_context_id_foreign;
ALTER TABLE ONLY public.markets DROP CONSTRAINT markets_publication_format_id;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_submission_id_foreign;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_context_id;
ALTER TABLE ONLY public.library_file_settings DROP CONSTRAINT library_file_settings_file_id_foreign;
ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_context_id_foreign;
ALTER TABLE ONLY public.institution_settings DROP CONSTRAINT institution_settings_institution_id_foreign;
ALTER TABLE ONLY public.institution_ip DROP CONSTRAINT institution_ip_institution_id_foreign;
ALTER TABLE ONLY public.identification_codes DROP CONSTRAINT identification_codes_publication_format_id;
ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_context_id_foreign;
ALTER TABLE ONLY public.genre_settings DROP CONSTRAINT genre_settings_genre_id_foreign;
ALTER TABLE ONLY public.filters DROP CONSTRAINT filters_filter_group_id_foreign;
ALTER TABLE ONLY public.filter_settings DROP CONSTRAINT filter_settings_filter_id_foreign;
ALTER TABLE ONLY public.features DROP CONSTRAINT features_submission_id_foreign;
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
ALTER TABLE ONLY public.completed_payments DROP CONSTRAINT completed_payments_user_id_foreign;
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
DROP INDEX public.ustr_submission_id;
DROP INDEX public.ustr_submission_file_id;
DROP INDEX public.ustr_representation_id;
DROP INDEX public.ustr_context_id;
DROP INDEX public.ustr_chapter_id;
DROP INDEX public.usti_submission_id;
DROP INDEX public.usti_submission_file_id;
DROP INDEX public.usti_representation_id;
DROP INDEX public.usti_context_id;
DROP INDEX public.usti_chapter_id;
DROP INDEX public.ust_submission_id;
DROP INDEX public.ust_submission_file_id;
DROP INDEX public.ust_series_id;
DROP INDEX public.ust_representation_id;
DROP INDEX public.ust_context_id;
DROP INDEX public.ust_chapter_id;
DROP INDEX public.usir_submission_id;
DROP INDEX public.usir_submission_file_id;
DROP INDEX public.usir_representation_id;
DROP INDEX public.usir_context_id;
DROP INDEX public.usir_chapter_id;
DROP INDEX public.usii_submission_id;
DROP INDEX public.usii_submission_file_id;
DROP INDEX public.usii_representation_id;
DROP INDEX public.usii_context_id;
DROP INDEX public.usii_chapter_id;
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
DROP INDEX public.submission_files_doi_id;
DROP INDEX public.submission_file_settings_submission_file_id;
DROP INDEX public.submission_file_revisions_submission_file_id;
DROP INDEX public.submission_file_revisions_file_id;
DROP INDEX public.submission_comments_submission_id;
DROP INDEX public.submission_comments_author_id;
DROP INDEX public.submission_chapters_source_chapter_id;
DROP INDEX public.submission_chapters_publication_id;
DROP INDEX public.submission_chapters_primary_contact_id;
DROP INDEX public.submission_chapter_settings_chapter_id;
DROP INDEX public.submission_chapter_authors_chapter_id;
DROP INDEX public.submission_chapter_authors_author_id;
DROP INDEX public.subeditor_submission_group_user_id;
DROP INDEX public.subeditor_submission_group_user_group_id;
DROP INDEX public.subeditor_submission_group_context_id;
DROP INDEX public.subeditor_submission_group_assoc_id;
DROP INDEX public.static_page_settings_static_page_id;
DROP INDEX public.stage_assignments_user_id;
DROP INDEX public.stage_assignments_user_group_id;
DROP INDEX public.stage_assignments_submission_id;
DROP INDEX public.spotlights_press_id;
DROP INDEX public.spotlights_assoc;
DROP INDEX public.spotlight_settings_id;
DROP INDEX public.sessions_user_id;
DROP INDEX public.series_settings_series_id;
DROP INDEX public.series_review_form_id;
DROP INDEX public.series_press_id;
DROP INDEX public.series_categories_series_id;
DROP INDEX public.series_categories_category_id;
DROP INDEX public.sales_rights_publication_format_id;
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
DROP INDEX public.representatives_submission_id;
DROP INDEX public.query_participants_user_id;
DROP INDEX public.query_participants_query_id;
DROP INDEX public.queries_assoc_id;
DROP INDEX public.publications_submission_id;
DROP INDEX public.publications_section_id;
DROP INDEX public.publications_primary_contact_id;
DROP INDEX public.publications_doi_id;
DROP INDEX public.publication_settings_name_value;
DROP INDEX public.publication_formats_publication_id;
DROP INDEX public.publication_formats_doi_id;
DROP INDEX public.publication_format_submission_id;
DROP INDEX public.publication_format_id_key;
DROP INDEX public.publication_dates_publication_format_id;
DROP INDEX public.publication_categories_publication_id;
DROP INDEX public.publication_categories_category_id;
DROP INDEX public.press_settings_press_id;
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
DROP INDEX public.new_releases_submission_id;
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
DROP INDEX public.metrics_submission_chapter_id;
DROP INDEX public.metrics_series_series_id;
DROP INDEX public.metrics_series_load_id;
DROP INDEX public.metrics_series_context_id_series_id;
DROP INDEX public.metrics_series_context_id;
DROP INDEX public.metrics_counter_submission_monthly_submission_id;
DROP INDEX public.metrics_counter_submission_monthly_context_id;
DROP INDEX public.metrics_counter_submission_daily_submission_id;
DROP INDEX public.metrics_counter_submission_daily_context_id;
DROP INDEX public.metrics_context_load_id;
DROP INDEX public.metrics_context_context_id;
DROP INDEX public.markets_publication_format_id;
DROP INDEX public.library_files_submission_id;
DROP INDEX public.library_files_context_id;
DROP INDEX public.library_file_settings_file_id;
DROP INDEX public.jobs_queue_reserved_at_index;
DROP INDEX public.institutions_context_id;
DROP INDEX public.institution_settings_institution_id;
DROP INDEX public.institution_ip_start;
DROP INDEX public.institution_ip_institution_id;
DROP INDEX public.institution_ip_end;
DROP INDEX public.identification_codes_publication_format_id;
DROP INDEX public.identification_codes_key;
DROP INDEX public.genres_context_id;
DROP INDEX public.genre_settings_genre_id;
DROP INDEX public.format_sales_rights_pkey;
DROP INDEX public.format_representatives_pkey;
DROP INDEX public.format_publication_dates_pkey;
DROP INDEX public.format_markets_pkey;
DROP INDEX public.filters_filter_group_id;
DROP INDEX public.filter_settings_id;
DROP INDEX public.features_submission_id;
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
DROP INDEX public.completed_payments_user_id;
DROP INDEX public.completed_payments_context_id;
DROP INDEX public.citations_publication;
DROP INDEX public.citation_settings_citation_id;
DROP INDEX public.chapters_chapter_id;
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
ALTER TABLE ONLY public.usage_stats_institution_temporary_records DROP CONSTRAINT usi_load_id_line_number_institution_id;
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
ALTER TABLE ONLY public.submission_chapters DROP CONSTRAINT submission_chapters_pkey;
ALTER TABLE ONLY public.submission_chapter_settings DROP CONSTRAINT submission_chapter_settings_pkey;
ALTER TABLE ONLY public.static_pages DROP CONSTRAINT static_pages_pkey;
ALTER TABLE ONLY public.static_page_settings DROP CONSTRAINT static_page_settings_pkey;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignments_pkey;
ALTER TABLE ONLY public.stage_assignments DROP CONSTRAINT stage_assignment;
ALTER TABLE ONLY public.spotlights DROP CONSTRAINT spotlights_pkey;
ALTER TABLE ONLY public.spotlight_settings DROP CONSTRAINT spotlight_settings_pkey;
ALTER TABLE ONLY public.site_settings DROP CONSTRAINT site_settings_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
ALTER TABLE ONLY public.series_settings DROP CONSTRAINT series_settings_pkey;
ALTER TABLE ONLY public.series DROP CONSTRAINT series_pkey;
ALTER TABLE ONLY public.series DROP CONSTRAINT series_path;
ALTER TABLE ONLY public.series_categories DROP CONSTRAINT series_categories_id;
ALTER TABLE ONLY public.subeditor_submission_group DROP CONSTRAINT section_editors_pkey;
ALTER TABLE ONLY public.scheduled_tasks DROP CONSTRAINT scheduled_tasks_pkey;
ALTER TABLE ONLY public.sales_rights DROP CONSTRAINT sales_rights_pkey;
ALTER TABLE ONLY public.review_rounds DROP CONSTRAINT review_rounds_submission_id_stage_id_round_pkey;
ALTER TABLE ONLY public.review_rounds DROP CONSTRAINT review_rounds_pkey;
ALTER TABLE ONLY public.review_round_files DROP CONSTRAINT review_round_files_pkey;
ALTER TABLE ONLY public.review_forms DROP CONSTRAINT review_forms_pkey;
ALTER TABLE ONLY public.review_form_settings DROP CONSTRAINT review_form_settings_pkey;
ALTER TABLE ONLY public.review_form_elements DROP CONSTRAINT review_form_elements_pkey;
ALTER TABLE ONLY public.review_form_element_settings DROP CONSTRAINT review_form_element_settings_pkey;
ALTER TABLE ONLY public.review_files DROP CONSTRAINT review_files_pkey;
ALTER TABLE ONLY public.review_assignments DROP CONSTRAINT review_assignments_pkey;
ALTER TABLE ONLY public.representatives DROP CONSTRAINT representatives_pkey;
ALTER TABLE ONLY public.queued_payments DROP CONSTRAINT queued_payments_pkey;
ALTER TABLE ONLY public.query_participants DROP CONSTRAINT query_participants_pkey;
ALTER TABLE ONLY public.queries DROP CONSTRAINT queries_pkey;
ALTER TABLE ONLY public.publications DROP CONSTRAINT publications_pkey;
ALTER TABLE ONLY public.publication_settings DROP CONSTRAINT publication_settings_pkey;
ALTER TABLE ONLY public.publication_formats DROP CONSTRAINT publication_formats_pkey;
ALTER TABLE ONLY public.publication_format_settings DROP CONSTRAINT publication_format_settings_pkey;
ALTER TABLE ONLY public.publication_dates DROP CONSTRAINT publication_dates_pkey;
ALTER TABLE ONLY public.publication_categories DROP CONSTRAINT publication_categories_id;
ALTER TABLE ONLY public.presses DROP CONSTRAINT presses_pkey;
ALTER TABLE ONLY public.press_settings DROP CONSTRAINT press_settings_pkey;
ALTER TABLE ONLY public.presses DROP CONSTRAINT press_path;
ALTER TABLE ONLY public.features DROP CONSTRAINT press_features_pkey;
ALTER TABLE ONLY public.plugin_settings DROP CONSTRAINT plugin_settings_pkey;
ALTER TABLE ONLY public.oai_resumption_tokens DROP CONSTRAINT oai_resumption_tokens_pkey;
ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
ALTER TABLE ONLY public.notification_subscription_settings DROP CONSTRAINT notification_subscription_settings_pkey;
ALTER TABLE ONLY public.notification_settings DROP CONSTRAINT notification_settings_pkey;
ALTER TABLE ONLY public.notes DROP CONSTRAINT notes_pkey;
ALTER TABLE ONLY public.new_releases DROP CONSTRAINT new_releases_pkey;
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
ALTER TABLE ONLY public.markets DROP CONSTRAINT markets_pkey;
ALTER TABLE ONLY public.library_files DROP CONSTRAINT library_files_pkey;
ALTER TABLE ONLY public.library_file_settings DROP CONSTRAINT library_file_settings_pkey;
ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
ALTER TABLE ONLY public.institutions DROP CONSTRAINT institutions_pkey;
ALTER TABLE ONLY public.institution_settings DROP CONSTRAINT institution_settings_pkey;
ALTER TABLE ONLY public.institution_ip DROP CONSTRAINT institution_ip_pkey;
ALTER TABLE ONLY public.identification_codes DROP CONSTRAINT identification_codes_pkey;
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
ALTER TABLE ONLY public.completed_payments DROP CONSTRAINT completed_payments_pkey;
ALTER TABLE ONLY public.citations DROP CONSTRAINT citations_publication_seq;
ALTER TABLE ONLY public.citations DROP CONSTRAINT citations_pkey;
ALTER TABLE ONLY public.citation_settings DROP CONSTRAINT citation_settings_pkey;
ALTER TABLE ONLY public.submission_chapter_authors DROP CONSTRAINT chapter_authors_pkey;
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
ALTER TABLE public.submission_chapters ALTER COLUMN chapter_id DROP DEFAULT;
ALTER TABLE public.static_pages ALTER COLUMN static_page_id DROP DEFAULT;
ALTER TABLE public.stage_assignments ALTER COLUMN stage_assignment_id DROP DEFAULT;
ALTER TABLE public.spotlights ALTER COLUMN spotlight_id DROP DEFAULT;
ALTER TABLE public.series ALTER COLUMN series_id DROP DEFAULT;
ALTER TABLE public.sales_rights ALTER COLUMN sales_rights_id DROP DEFAULT;
ALTER TABLE public.review_rounds ALTER COLUMN review_round_id DROP DEFAULT;
ALTER TABLE public.review_forms ALTER COLUMN review_form_id DROP DEFAULT;
ALTER TABLE public.review_form_elements ALTER COLUMN review_form_element_id DROP DEFAULT;
ALTER TABLE public.review_assignments ALTER COLUMN review_id DROP DEFAULT;
ALTER TABLE public.representatives ALTER COLUMN representative_id DROP DEFAULT;
ALTER TABLE public.queued_payments ALTER COLUMN queued_payment_id DROP DEFAULT;
ALTER TABLE public.queries ALTER COLUMN query_id DROP DEFAULT;
ALTER TABLE public.publications ALTER COLUMN publication_id DROP DEFAULT;
ALTER TABLE public.publication_formats ALTER COLUMN publication_format_id DROP DEFAULT;
ALTER TABLE public.publication_dates ALTER COLUMN publication_date_id DROP DEFAULT;
ALTER TABLE public.presses ALTER COLUMN press_id DROP DEFAULT;
ALTER TABLE public.notifications ALTER COLUMN notification_id DROP DEFAULT;
ALTER TABLE public.notification_subscription_settings ALTER COLUMN setting_id DROP DEFAULT;
ALTER TABLE public.notes ALTER COLUMN note_id DROP DEFAULT;
ALTER TABLE public.navigation_menus ALTER COLUMN navigation_menu_id DROP DEFAULT;
ALTER TABLE public.navigation_menu_items ALTER COLUMN navigation_menu_item_id DROP DEFAULT;
ALTER TABLE public.navigation_menu_item_assignments ALTER COLUMN navigation_menu_item_assignment_id DROP DEFAULT;
ALTER TABLE public.markets ALTER COLUMN market_id DROP DEFAULT;
ALTER TABLE public.library_files ALTER COLUMN file_id DROP DEFAULT;
ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.institutions ALTER COLUMN institution_id DROP DEFAULT;
ALTER TABLE public.institution_ip ALTER COLUMN institution_ip_id DROP DEFAULT;
ALTER TABLE public.identification_codes ALTER COLUMN identification_code_id DROP DEFAULT;
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
DROP TABLE public.usage_stats_unique_title_requests_temporary_records;
DROP TABLE public.usage_stats_unique_title_investigations_temporary_records;
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
DROP SEQUENCE public.submission_chapters_chapter_id_seq;
DROP TABLE public.submission_chapters;
DROP TABLE public.submission_chapter_settings;
DROP TABLE public.submission_chapter_authors;
DROP TABLE public.subeditor_submission_group;
DROP SEQUENCE public.static_pages_static_page_id_seq;
DROP TABLE public.static_pages;
DROP TABLE public.static_page_settings;
DROP SEQUENCE public.stage_assignments_stage_assignment_id_seq;
DROP TABLE public.stage_assignments;
DROP SEQUENCE public.spotlights_spotlight_id_seq;
DROP TABLE public.spotlights;
DROP TABLE public.spotlight_settings;
DROP TABLE public.site_settings;
DROP TABLE public.site;
DROP TABLE public.sessions;
DROP TABLE public.series_settings;
DROP SEQUENCE public.series_series_id_seq;
DROP TABLE public.series_categories;
DROP TABLE public.series;
DROP TABLE public.scheduled_tasks;
DROP SEQUENCE public.sales_rights_sales_rights_id_seq;
DROP TABLE public.sales_rights;
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
DROP SEQUENCE public.representatives_representative_id_seq;
DROP TABLE public.representatives;
DROP SEQUENCE public.queued_payments_queued_payment_id_seq;
DROP TABLE public.queued_payments;
DROP TABLE public.query_participants;
DROP SEQUENCE public.queries_query_id_seq;
DROP TABLE public.queries;
DROP SEQUENCE public.publications_publication_id_seq;
DROP TABLE public.publications;
DROP TABLE public.publication_settings;
DROP SEQUENCE public.publication_formats_publication_format_id_seq;
DROP TABLE public.publication_formats;
DROP TABLE public.publication_format_settings;
DROP SEQUENCE public.publication_dates_publication_date_id_seq;
DROP TABLE public.publication_dates;
DROP TABLE public.publication_categories;
DROP SEQUENCE public.presses_press_id_seq;
DROP TABLE public.presses;
DROP TABLE public.press_settings;
DROP TABLE public.plugin_settings;
DROP TABLE public.oai_resumption_tokens;
DROP SEQUENCE public.notifications_notification_id_seq;
DROP TABLE public.notifications;
DROP SEQUENCE public.notification_subscription_settings_setting_id_seq;
DROP TABLE public.notification_subscription_settings;
DROP TABLE public.notification_settings;
DROP SEQUENCE public.notes_note_id_seq;
DROP TABLE public.notes;
DROP TABLE public.new_releases;
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
DROP TABLE public.metrics_series;
DROP TABLE public.metrics_counter_submission_monthly;
DROP TABLE public.metrics_counter_submission_institution_monthly;
DROP TABLE public.metrics_counter_submission_institution_daily;
DROP TABLE public.metrics_counter_submission_daily;
DROP TABLE public.metrics_context;
DROP SEQUENCE public.markets_market_id_seq;
DROP TABLE public.markets;
DROP SEQUENCE public.library_files_file_id_seq;
DROP TABLE public.library_files;
DROP TABLE public.library_file_settings;
DROP SEQUENCE public.jobs_id_seq;
DROP TABLE public.jobs;
DROP TABLE public.job_batches;
DROP SEQUENCE public.institutions_institution_id_seq;
DROP TABLE public.institutions;
DROP TABLE public.institution_settings;
DROP SEQUENCE public.institution_ip_institution_ip_id_seq;
DROP TABLE public.institution_ip;
DROP SEQUENCE public.identification_codes_identification_code_id_seq;
DROP TABLE public.identification_codes;
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
DROP TABLE public.features;
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
-- Name: access_keys; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.access_keys (
    access_key_id bigint NOT NULL,
    context character varying(40) NOT NULL,
    key_hash character varying(40) NOT NULL,
    user_id bigint NOT NULL,
    assoc_id bigint,
    expiry_date timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.access_keys OWNER TO "omp-ci";

--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.access_keys_access_key_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.access_keys_access_key_id_seq OWNER TO "omp-ci";

--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.access_keys_access_key_id_seq OWNED BY public.access_keys.access_key_id;


--
-- Name: announcement_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.announcement_settings (
    announcement_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6)
);


ALTER TABLE public.announcement_settings OWNER TO "omp-ci";

--
-- Name: announcement_type_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.announcement_type_settings (
    type_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.announcement_type_settings OWNER TO "omp-ci";

--
-- Name: announcement_types; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.announcement_types (
    type_id bigint NOT NULL,
    context_id bigint NOT NULL
);


ALTER TABLE public.announcement_types OWNER TO "omp-ci";

--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.announcement_types_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcement_types_type_id_seq OWNER TO "omp-ci";

--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.announcement_types_type_id_seq OWNED BY public.announcement_types.type_id;


--
-- Name: announcements; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.announcements (
    announcement_id bigint NOT NULL,
    assoc_type smallint,
    assoc_id bigint NOT NULL,
    type_id bigint,
    date_expire date,
    date_posted timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.announcements OWNER TO "omp-ci";

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.announcements_announcement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_announcement_id_seq OWNER TO "omp-ci";

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.announcements_announcement_id_seq OWNED BY public.announcements.announcement_id;


--
-- Name: author_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.author_settings (
    author_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.author_settings OWNER TO "omp-ci";

--
-- Name: authors; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.authors (
    author_id bigint NOT NULL,
    email character varying(90) NOT NULL,
    include_in_browse smallint DEFAULT '1'::smallint NOT NULL,
    publication_id bigint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    user_group_id bigint
);


ALTER TABLE public.authors OWNER TO "omp-ci";

--
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.authors_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_author_id_seq OWNER TO "omp-ci";

--
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.author_id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.categories (
    category_id bigint NOT NULL,
    context_id bigint NOT NULL,
    parent_id bigint,
    seq bigint,
    path character varying(255) NOT NULL,
    image text
);


ALTER TABLE public.categories OWNER TO "omp-ci";

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_id_seq OWNER TO "omp-ci";

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- Name: category_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.category_settings (
    category_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.category_settings OWNER TO "omp-ci";

--
-- Name: citation_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.citation_settings (
    citation_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.citation_settings OWNER TO "omp-ci";

--
-- Name: citations; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.citations (
    citation_id bigint NOT NULL,
    publication_id bigint NOT NULL,
    raw_citation text NOT NULL,
    seq bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE public.citations OWNER TO "omp-ci";

--
-- Name: citations_citation_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.citations_citation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.citations_citation_id_seq OWNER TO "omp-ci";

--
-- Name: citations_citation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.citations_citation_id_seq OWNED BY public.citations.citation_id;


--
-- Name: completed_payments; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.completed_payments (
    completed_payment_id bigint NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    payment_type bigint NOT NULL,
    context_id bigint NOT NULL,
    user_id bigint,
    assoc_id character varying(16),
    amount double precision NOT NULL,
    currency_code_alpha character varying(3),
    payment_method_plugin_name character varying(80)
);


ALTER TABLE public.completed_payments OWNER TO "omp-ci";

--
-- Name: completed_payments_completed_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.completed_payments_completed_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.completed_payments_completed_payment_id_seq OWNER TO "omp-ci";

--
-- Name: completed_payments_completed_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.completed_payments_completed_payment_id_seq OWNED BY public.completed_payments.completed_payment_id;


--
-- Name: controlled_vocab_entries; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.controlled_vocab_entries (
    controlled_vocab_entry_id bigint NOT NULL,
    controlled_vocab_id bigint NOT NULL,
    seq double precision
);


ALTER TABLE public.controlled_vocab_entries OWNER TO "omp-ci";

--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controlled_vocab_entries_controlled_vocab_entry_id_seq OWNER TO "omp-ci";

--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.controlled_vocab_entries_controlled_vocab_entry_id_seq OWNED BY public.controlled_vocab_entries.controlled_vocab_entry_id;


--
-- Name: controlled_vocab_entry_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.controlled_vocab_entry_settings (
    controlled_vocab_entry_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.controlled_vocab_entry_settings OWNER TO "omp-ci";

--
-- Name: controlled_vocabs; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.controlled_vocabs (
    controlled_vocab_id bigint NOT NULL,
    symbolic character varying(64) NOT NULL,
    assoc_type bigint DEFAULT '0'::bigint NOT NULL,
    assoc_id bigint DEFAULT '0'::bigint NOT NULL
);


ALTER TABLE public.controlled_vocabs OWNER TO "omp-ci";

--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.controlled_vocabs_controlled_vocab_id_seq OWNER TO "omp-ci";

--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.controlled_vocabs_controlled_vocab_id_seq OWNED BY public.controlled_vocabs.controlled_vocab_id;


--
-- Name: data_object_tombstone_oai_set_objects; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.data_object_tombstone_oai_set_objects (
    object_id bigint NOT NULL,
    tombstone_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL
);


ALTER TABLE public.data_object_tombstone_oai_set_objects OWNER TO "omp-ci";

--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.data_object_tombstone_oai_set_objects_object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_object_tombstone_oai_set_objects_object_id_seq OWNER TO "omp-ci";

--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.data_object_tombstone_oai_set_objects_object_id_seq OWNED BY public.data_object_tombstone_oai_set_objects.object_id;


--
-- Name: data_object_tombstone_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.data_object_tombstone_settings (
    tombstone_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.data_object_tombstone_settings OWNER TO "omp-ci";

--
-- Name: COLUMN data_object_tombstone_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.data_object_tombstone_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: data_object_tombstones; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.data_object_tombstones (
    tombstone_id bigint NOT NULL,
    data_object_id bigint NOT NULL,
    date_deleted timestamp(0) without time zone NOT NULL,
    set_spec character varying(255) NOT NULL,
    set_name character varying(255) NOT NULL,
    oai_identifier character varying(255) NOT NULL
);


ALTER TABLE public.data_object_tombstones OWNER TO "omp-ci";

--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.data_object_tombstones_tombstone_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_object_tombstones_tombstone_id_seq OWNER TO "omp-ci";

--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.data_object_tombstones_tombstone_id_seq OWNED BY public.data_object_tombstones.tombstone_id;


--
-- Name: doi_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.doi_settings (
    doi_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.doi_settings OWNER TO "omp-ci";

--
-- Name: dois; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.dois (
    doi_id bigint NOT NULL,
    context_id bigint NOT NULL,
    doi character varying(255) NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL
);


ALTER TABLE public.dois OWNER TO "omp-ci";

--
-- Name: dois_doi_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.dois_doi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dois_doi_id_seq OWNER TO "omp-ci";

--
-- Name: dois_doi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.dois_doi_id_seq OWNED BY public.dois.doi_id;


--
-- Name: edit_decisions; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.edit_decisions OWNER TO "omp-ci";

--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.edit_decisions_edit_decision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.edit_decisions_edit_decision_id_seq OWNER TO "omp-ci";

--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.edit_decisions_edit_decision_id_seq OWNED BY public.edit_decisions.edit_decision_id;


--
-- Name: email_log; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.email_log OWNER TO "omp-ci";

--
-- Name: email_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.email_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_log_log_id_seq OWNER TO "omp-ci";

--
-- Name: email_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.email_log_log_id_seq OWNED BY public.email_log.log_id;


--
-- Name: email_log_users; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.email_log_users (
    email_log_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.email_log_users OWNER TO "omp-ci";

--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.email_templates (
    email_id bigint NOT NULL,
    email_key character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    alternate_to character varying(255)
);


ALTER TABLE public.email_templates OWNER TO "omp-ci";

--
-- Name: COLUMN email_templates.email_key; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.email_templates.email_key IS 'Unique identifier for this email.';


--
-- Name: email_templates_default_data; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.email_templates_default_data (
    email_key character varying(255) NOT NULL,
    locale character varying(14) DEFAULT 'en'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    body text
);


ALTER TABLE public.email_templates_default_data OWNER TO "omp-ci";

--
-- Name: COLUMN email_templates_default_data.email_key; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.email_templates_default_data.email_key IS 'Unique identifier for this email.';


--
-- Name: email_templates_email_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.email_templates_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_templates_email_id_seq OWNER TO "omp-ci";

--
-- Name: email_templates_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.email_templates_email_id_seq OWNED BY public.email_templates.email_id;


--
-- Name: email_templates_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.email_templates_settings (
    email_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.email_templates_settings OWNER TO "omp-ci";

--
-- Name: event_log; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.event_log OWNER TO "omp-ci";

--
-- Name: event_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.event_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_log_log_id_seq OWNER TO "omp-ci";

--
-- Name: event_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.event_log_log_id_seq OWNED BY public.event_log.log_id;


--
-- Name: event_log_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.event_log_settings (
    log_id bigint NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.event_log_settings OWNER TO "omp-ci";

--
-- Name: COLUMN event_log_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.event_log_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO "omp-ci";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO "omp-ci";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: features; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.features (
    submission_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    seq bigint NOT NULL
);


ALTER TABLE public.features OWNER TO "omp-ci";

--
-- Name: files; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.files (
    file_id bigint NOT NULL,
    path character varying(255) NOT NULL,
    mimetype character varying(255) NOT NULL
);


ALTER TABLE public.files OWNER TO "omp-ci";

--
-- Name: files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_file_id_seq OWNER TO "omp-ci";

--
-- Name: files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.files_file_id_seq OWNED BY public.files.file_id;


--
-- Name: filter_groups; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.filter_groups (
    filter_group_id bigint NOT NULL,
    symbolic character varying(255),
    display_name character varying(255),
    description character varying(255),
    input_type character varying(255),
    output_type character varying(255)
);


ALTER TABLE public.filter_groups OWNER TO "omp-ci";

--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.filter_groups_filter_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filter_groups_filter_group_id_seq OWNER TO "omp-ci";

--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.filter_groups_filter_group_id_seq OWNED BY public.filter_groups.filter_group_id;


--
-- Name: filter_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.filter_settings (
    filter_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.filter_settings OWNER TO "omp-ci";

--
-- Name: filters; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.filters OWNER TO "omp-ci";

--
-- Name: filters_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.filters_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filters_filter_id_seq OWNER TO "omp-ci";

--
-- Name: filters_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.filters_filter_id_seq OWNED BY public.filters.filter_id;


--
-- Name: genre_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.genre_settings (
    genre_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.genre_settings OWNER TO "omp-ci";

--
-- Name: COLUMN genre_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.genre_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: genres; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.genres OWNER TO "omp-ci";

--
-- Name: COLUMN genres.required; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.genres.required IS 'Whether or not at least one file of this genre is required for a new submission.';


--
-- Name: genres_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.genres_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_genre_id_seq OWNER TO "omp-ci";

--
-- Name: genres_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.genres_genre_id_seq OWNED BY public.genres.genre_id;


--
-- Name: identification_codes; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.identification_codes (
    identification_code_id bigint NOT NULL,
    publication_format_id bigint NOT NULL,
    code character varying(40) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.identification_codes OWNER TO "omp-ci";

--
-- Name: identification_codes_identification_code_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.identification_codes_identification_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.identification_codes_identification_code_id_seq OWNER TO "omp-ci";

--
-- Name: identification_codes_identification_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.identification_codes_identification_code_id_seq OWNED BY public.identification_codes.identification_code_id;


--
-- Name: institution_ip; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.institution_ip (
    institution_ip_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    ip_string character varying(40) NOT NULL,
    ip_start bigint NOT NULL,
    ip_end bigint
);


ALTER TABLE public.institution_ip OWNER TO "omp-ci";

--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.institution_ip_institution_ip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institution_ip_institution_ip_id_seq OWNER TO "omp-ci";

--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.institution_ip_institution_ip_id_seq OWNED BY public.institution_ip.institution_ip_id;


--
-- Name: institution_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.institution_settings (
    institution_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.institution_settings OWNER TO "omp-ci";

--
-- Name: institutions; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.institutions (
    institution_id bigint NOT NULL,
    context_id bigint NOT NULL,
    ror character varying(255),
    deleted_at timestamp(0) without time zone
);


ALTER TABLE public.institutions OWNER TO "omp-ci";

--
-- Name: institutions_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.institutions_institution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.institutions_institution_id_seq OWNER TO "omp-ci";

--
-- Name: institutions_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.institutions_institution_id_seq OWNED BY public.institutions.institution_id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.job_batches OWNER TO "omp-ci";

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.jobs OWNER TO "omp-ci";

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO "omp-ci";

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: library_file_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.library_file_settings (
    file_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.library_file_settings OWNER TO "omp-ci";

--
-- Name: COLUMN library_file_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.library_file_settings.setting_type IS '(bool|int|float|string|object|date)';


--
-- Name: library_files; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.library_files OWNER TO "omp-ci";

--
-- Name: library_files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.library_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_files_file_id_seq OWNER TO "omp-ci";

--
-- Name: library_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.library_files_file_id_seq OWNED BY public.library_files.file_id;


--
-- Name: markets; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.markets (
    market_id bigint NOT NULL,
    publication_format_id bigint NOT NULL,
    countries_included text,
    countries_excluded text,
    regions_included text,
    regions_excluded text,
    market_date_role character varying(40) NOT NULL,
    market_date_format character varying(40) NOT NULL,
    market_date character varying(255) NOT NULL,
    price character varying(255),
    discount character varying(255),
    price_type_code character varying(255),
    currency_code character varying(255),
    tax_rate_code character varying(255),
    tax_type_code character varying(255),
    agent_id bigint,
    supplier_id bigint
);


ALTER TABLE public.markets OWNER TO "omp-ci";

--
-- Name: markets_market_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.markets_market_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.markets_market_id_seq OWNER TO "omp-ci";

--
-- Name: markets_market_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.markets_market_id_seq OWNED BY public.markets.market_id;


--
-- Name: metrics_context; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.metrics_context (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    date date NOT NULL,
    metric integer NOT NULL
);


ALTER TABLE public.metrics_context OWNER TO "omp-ci";

--
-- Name: metrics_counter_submission_daily; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.metrics_counter_submission_daily (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    date date NOT NULL,
    metric_book_investigations integer NOT NULL,
    metric_book_investigations_unique integer NOT NULL,
    metric_book_requests integer NOT NULL,
    metric_book_requests_unique integer NOT NULL,
    metric_chapter_investigations integer NOT NULL,
    metric_chapter_investigations_unique integer NOT NULL,
    metric_chapter_requests integer NOT NULL,
    metric_chapter_requests_unique integer NOT NULL,
    metric_title_investigations_unique integer NOT NULL,
    metric_title_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_daily OWNER TO "omp-ci";

--
-- Name: metrics_counter_submission_institution_daily; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.metrics_counter_submission_institution_daily (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    date date NOT NULL,
    metric_book_investigations integer NOT NULL,
    metric_book_investigations_unique integer NOT NULL,
    metric_book_requests integer NOT NULL,
    metric_book_requests_unique integer NOT NULL,
    metric_chapter_investigations integer NOT NULL,
    metric_chapter_investigations_unique integer NOT NULL,
    metric_chapter_requests integer NOT NULL,
    metric_chapter_requests_unique integer NOT NULL,
    metric_title_investigations_unique integer NOT NULL,
    metric_title_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_institution_daily OWNER TO "omp-ci";

--
-- Name: metrics_counter_submission_institution_monthly; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.metrics_counter_submission_institution_monthly (
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    institution_id bigint NOT NULL,
    month integer NOT NULL,
    metric_book_investigations integer NOT NULL,
    metric_book_investigations_unique integer NOT NULL,
    metric_book_requests integer NOT NULL,
    metric_book_requests_unique integer NOT NULL,
    metric_chapter_investigations integer NOT NULL,
    metric_chapter_investigations_unique integer NOT NULL,
    metric_chapter_requests integer NOT NULL,
    metric_chapter_requests_unique integer NOT NULL,
    metric_title_investigations_unique integer NOT NULL,
    metric_title_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_institution_monthly OWNER TO "omp-ci";

--
-- Name: metrics_counter_submission_monthly; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.metrics_counter_submission_monthly (
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    month integer NOT NULL,
    metric_book_investigations integer NOT NULL,
    metric_book_investigations_unique integer NOT NULL,
    metric_book_requests integer NOT NULL,
    metric_book_requests_unique integer NOT NULL,
    metric_chapter_investigations integer NOT NULL,
    metric_chapter_investigations_unique integer NOT NULL,
    metric_chapter_requests integer NOT NULL,
    metric_chapter_requests_unique integer NOT NULL,
    metric_title_investigations_unique integer NOT NULL,
    metric_title_requests_unique integer NOT NULL
);


ALTER TABLE public.metrics_counter_submission_monthly OWNER TO "omp-ci";

--
-- Name: metrics_series; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.metrics_series (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    series_id bigint NOT NULL,
    date date NOT NULL,
    metric integer NOT NULL
);


ALTER TABLE public.metrics_series OWNER TO "omp-ci";

--
-- Name: metrics_submission; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.metrics_submission (
    load_id character varying(255) NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    chapter_id bigint,
    representation_id bigint,
    submission_file_id bigint,
    file_type bigint,
    assoc_type bigint NOT NULL,
    date date NOT NULL,
    metric integer NOT NULL
);


ALTER TABLE public.metrics_submission OWNER TO "omp-ci";

--
-- Name: metrics_submission_geo_daily; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.metrics_submission_geo_daily OWNER TO "omp-ci";

--
-- Name: metrics_submission_geo_monthly; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.metrics_submission_geo_monthly OWNER TO "omp-ci";

--
-- Name: navigation_menu_item_assignments; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.navigation_menu_item_assignments (
    navigation_menu_item_assignment_id bigint NOT NULL,
    navigation_menu_id bigint NOT NULL,
    navigation_menu_item_id bigint NOT NULL,
    parent_id bigint,
    seq bigint DEFAULT '0'::bigint
);


ALTER TABLE public.navigation_menu_item_assignments OWNER TO "omp-ci";

--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq OWNER TO "omp-ci";

--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq OWNED BY public.navigation_menu_item_assignments.navigation_menu_item_assignment_id;


--
-- Name: navigation_menu_item_assignment_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.navigation_menu_item_assignment_settings (
    navigation_menu_item_assignment_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.navigation_menu_item_assignment_settings OWNER TO "omp-ci";

--
-- Name: navigation_menu_item_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.navigation_menu_item_settings (
    navigation_menu_item_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.navigation_menu_item_settings OWNER TO "omp-ci";

--
-- Name: navigation_menu_items; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.navigation_menu_items (
    navigation_menu_item_id bigint NOT NULL,
    context_id bigint NOT NULL,
    path character varying(255) DEFAULT ''::character varying,
    type character varying(255) DEFAULT ''::character varying
);


ALTER TABLE public.navigation_menu_items OWNER TO "omp-ci";

--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.navigation_menu_items_navigation_menu_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menu_items_navigation_menu_item_id_seq OWNER TO "omp-ci";

--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.navigation_menu_items_navigation_menu_item_id_seq OWNED BY public.navigation_menu_items.navigation_menu_item_id;


--
-- Name: navigation_menus; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.navigation_menus (
    navigation_menu_id bigint NOT NULL,
    context_id bigint NOT NULL,
    area_name character varying(255) DEFAULT ''::character varying,
    title character varying(255) NOT NULL
);


ALTER TABLE public.navigation_menus OWNER TO "omp-ci";

--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.navigation_menus_navigation_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.navigation_menus_navigation_menu_id_seq OWNER TO "omp-ci";

--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.navigation_menus_navigation_menu_id_seq OWNED BY public.navigation_menus.navigation_menu_id;


--
-- Name: new_releases; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.new_releases (
    submission_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL
);


ALTER TABLE public.new_releases OWNER TO "omp-ci";

--
-- Name: notes; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.notes OWNER TO "omp-ci";

--
-- Name: notes_note_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.notes_note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_note_id_seq OWNER TO "omp-ci";

--
-- Name: notes_note_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.notes_note_id_seq OWNED BY public.notes.note_id;


--
-- Name: notification_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.notification_settings (
    notification_id bigint NOT NULL,
    locale character varying(14),
    setting_name character varying(64) NOT NULL,
    setting_value text NOT NULL,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.notification_settings OWNER TO "omp-ci";

--
-- Name: COLUMN notification_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.notification_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: notification_subscription_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.notification_subscription_settings (
    setting_id bigint NOT NULL,
    setting_name character varying(64) NOT NULL,
    setting_value text NOT NULL,
    user_id bigint NOT NULL,
    context bigint NOT NULL,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.notification_subscription_settings OWNER TO "omp-ci";

--
-- Name: COLUMN notification_subscription_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.notification_subscription_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.notification_subscription_settings_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notification_subscription_settings_setting_id_seq OWNER TO "omp-ci";

--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.notification_subscription_settings_setting_id_seq OWNED BY public.notification_subscription_settings.setting_id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.notifications OWNER TO "omp-ci";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.notifications_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_notification_id_seq OWNER TO "omp-ci";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.notifications_notification_id_seq OWNED BY public.notifications.notification_id;


--
-- Name: oai_resumption_tokens; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.oai_resumption_tokens (
    token character varying(32) NOT NULL,
    expire bigint NOT NULL,
    record_offset integer NOT NULL,
    params text
);


ALTER TABLE public.oai_resumption_tokens OWNER TO "omp-ci";

--
-- Name: plugin_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.plugin_settings (
    plugin_name character varying(80) NOT NULL,
    context_id bigint NOT NULL,
    setting_name character varying(80) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.plugin_settings OWNER TO "omp-ci";

--
-- Name: COLUMN plugin_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.plugin_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: press_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.press_settings (
    press_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6)
);


ALTER TABLE public.press_settings OWNER TO "omp-ci";

--
-- Name: presses; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.presses (
    press_id bigint NOT NULL,
    path character varying(32) NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    primary_locale character varying(14) NOT NULL,
    enabled smallint DEFAULT '1'::smallint NOT NULL
);


ALTER TABLE public.presses OWNER TO "omp-ci";

--
-- Name: presses_press_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.presses_press_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.presses_press_id_seq OWNER TO "omp-ci";

--
-- Name: presses_press_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.presses_press_id_seq OWNED BY public.presses.press_id;


--
-- Name: publication_categories; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.publication_categories (
    publication_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.publication_categories OWNER TO "omp-ci";

--
-- Name: publication_dates; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.publication_dates (
    publication_date_id bigint NOT NULL,
    publication_format_id bigint NOT NULL,
    role character varying(40) NOT NULL,
    date_format character varying(40) NOT NULL,
    date character varying(255) NOT NULL
);


ALTER TABLE public.publication_dates OWNER TO "omp-ci";

--
-- Name: publication_dates_publication_date_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.publication_dates_publication_date_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publication_dates_publication_date_id_seq OWNER TO "omp-ci";

--
-- Name: publication_dates_publication_date_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.publication_dates_publication_date_id_seq OWNED BY public.publication_dates.publication_date_id;


--
-- Name: publication_format_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.publication_format_settings (
    publication_format_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.publication_format_settings OWNER TO "omp-ci";

--
-- Name: COLUMN publication_format_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.publication_format_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: publication_formats; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.publication_formats (
    publication_format_id bigint NOT NULL,
    publication_id bigint NOT NULL,
    submission_id bigint,
    physical_format smallint DEFAULT '1'::smallint,
    entry_key character varying(64),
    seq double precision DEFAULT '0'::double precision NOT NULL,
    file_size character varying(255),
    front_matter character varying(255),
    back_matter character varying(255),
    height character varying(255),
    height_unit_code character varying(255),
    width character varying(255),
    width_unit_code character varying(255),
    thickness character varying(255),
    thickness_unit_code character varying(255),
    weight character varying(255),
    weight_unit_code character varying(255),
    product_composition_code character varying(255),
    product_form_detail_code character varying(255),
    country_manufacture_code character varying(255),
    imprint character varying(255),
    product_availability_code character varying(255),
    technical_protection_code character varying(255),
    returnable_indicator_code character varying(255),
    remote_url character varying(2047),
    url_path character varying(64),
    is_approved smallint DEFAULT '0'::smallint NOT NULL,
    is_available smallint DEFAULT '0'::smallint NOT NULL,
    doi_id bigint
);


ALTER TABLE public.publication_formats OWNER TO "omp-ci";

--
-- Name: publication_formats_publication_format_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.publication_formats_publication_format_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publication_formats_publication_format_id_seq OWNER TO "omp-ci";

--
-- Name: publication_formats_publication_format_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.publication_formats_publication_format_id_seq OWNED BY public.publication_formats.publication_format_id;


--
-- Name: publication_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.publication_settings (
    publication_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.publication_settings OWNER TO "omp-ci";

--
-- Name: publications; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.publications (
    publication_id bigint NOT NULL,
    date_published date,
    last_modified timestamp(0) without time zone,
    primary_contact_id bigint,
    publication_date_type character varying(32) DEFAULT 'pub'::character varying,
    publication_type character varying(32) DEFAULT 'publication'::character varying,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    series_id bigint,
    series_position character varying(255),
    submission_id bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    url_path character varying(64),
    version bigint,
    doi_id bigint
);


ALTER TABLE public.publications OWNER TO "omp-ci";

--
-- Name: publications_publication_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.publications_publication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publications_publication_id_seq OWNER TO "omp-ci";

--
-- Name: publications_publication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.publications_publication_id_seq OWNED BY public.publications.publication_id;


--
-- Name: queries; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.queries OWNER TO "omp-ci";

--
-- Name: queries_query_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.queries_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queries_query_id_seq OWNER TO "omp-ci";

--
-- Name: queries_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.queries_query_id_seq OWNED BY public.queries.query_id;


--
-- Name: query_participants; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.query_participants (
    query_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.query_participants OWNER TO "omp-ci";

--
-- Name: queued_payments; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.queued_payments (
    queued_payment_id bigint NOT NULL,
    date_created timestamp(0) without time zone NOT NULL,
    date_modified timestamp(0) without time zone NOT NULL,
    expiry_date date,
    payment_data text
);


ALTER TABLE public.queued_payments OWNER TO "omp-ci";

--
-- Name: queued_payments_queued_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.queued_payments_queued_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queued_payments_queued_payment_id_seq OWNER TO "omp-ci";

--
-- Name: queued_payments_queued_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.queued_payments_queued_payment_id_seq OWNED BY public.queued_payments.queued_payment_id;


--
-- Name: representatives; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.representatives (
    representative_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    role character varying(40) NOT NULL,
    representative_id_type character varying(255),
    representative_id_value character varying(255),
    name character varying(255),
    phone character varying(255),
    email character varying(255),
    url character varying(2047),
    is_supplier smallint DEFAULT '1'::smallint NOT NULL
);


ALTER TABLE public.representatives OWNER TO "omp-ci";

--
-- Name: representatives_representative_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.representatives_representative_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.representatives_representative_id_seq OWNER TO "omp-ci";

--
-- Name: representatives_representative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.representatives_representative_id_seq OWNED BY public.representatives.representative_id;


--
-- Name: review_assignments; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.review_assignments OWNER TO "omp-ci";

--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.review_assignments_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_assignments_review_id_seq OWNER TO "omp-ci";

--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.review_assignments_review_id_seq OWNED BY public.review_assignments.review_id;


--
-- Name: review_files; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_files (
    review_id bigint NOT NULL,
    submission_file_id bigint NOT NULL
);


ALTER TABLE public.review_files OWNER TO "omp-ci";

--
-- Name: review_form_element_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_form_element_settings (
    review_form_element_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.review_form_element_settings OWNER TO "omp-ci";

--
-- Name: review_form_elements; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_form_elements (
    review_form_element_id bigint NOT NULL,
    review_form_id bigint NOT NULL,
    seq double precision,
    element_type bigint,
    required smallint,
    included smallint
);


ALTER TABLE public.review_form_elements OWNER TO "omp-ci";

--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.review_form_elements_review_form_element_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_form_elements_review_form_element_id_seq OWNER TO "omp-ci";

--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.review_form_elements_review_form_element_id_seq OWNED BY public.review_form_elements.review_form_element_id;


--
-- Name: review_form_responses; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_form_responses (
    review_form_element_id bigint NOT NULL,
    review_id bigint NOT NULL,
    response_type character varying(6),
    response_value text
);


ALTER TABLE public.review_form_responses OWNER TO "omp-ci";

--
-- Name: review_form_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_form_settings (
    review_form_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.review_form_settings OWNER TO "omp-ci";

--
-- Name: review_forms; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_forms (
    review_form_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    assoc_id bigint NOT NULL,
    seq double precision,
    is_active smallint
);


ALTER TABLE public.review_forms OWNER TO "omp-ci";

--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.review_forms_review_form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_forms_review_form_id_seq OWNER TO "omp-ci";

--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.review_forms_review_form_id_seq OWNED BY public.review_forms.review_form_id;


--
-- Name: review_round_files; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_round_files (
    submission_id bigint NOT NULL,
    review_round_id bigint NOT NULL,
    stage_id smallint NOT NULL,
    submission_file_id bigint NOT NULL
);


ALTER TABLE public.review_round_files OWNER TO "omp-ci";

--
-- Name: review_rounds; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.review_rounds (
    review_round_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    stage_id bigint,
    round smallint NOT NULL,
    review_revision bigint,
    status bigint
);


ALTER TABLE public.review_rounds OWNER TO "omp-ci";

--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.review_rounds_review_round_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_rounds_review_round_id_seq OWNER TO "omp-ci";

--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.review_rounds_review_round_id_seq OWNED BY public.review_rounds.review_round_id;


--
-- Name: sales_rights; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.sales_rights (
    sales_rights_id bigint NOT NULL,
    publication_format_id bigint NOT NULL,
    type character varying(40) NOT NULL,
    row_setting smallint DEFAULT '0'::smallint NOT NULL,
    countries_included text,
    countries_excluded text,
    regions_included text,
    regions_excluded text
);


ALTER TABLE public.sales_rights OWNER TO "omp-ci";

--
-- Name: sales_rights_sales_rights_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.sales_rights_sales_rights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_rights_sales_rights_id_seq OWNER TO "omp-ci";

--
-- Name: sales_rights_sales_rights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.sales_rights_sales_rights_id_seq OWNED BY public.sales_rights.sales_rights_id;


--
-- Name: scheduled_tasks; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.scheduled_tasks (
    class_name character varying(255) NOT NULL,
    last_run timestamp(0) without time zone
);


ALTER TABLE public.scheduled_tasks OWNER TO "omp-ci";

--
-- Name: series; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.series (
    series_id bigint NOT NULL,
    press_id bigint NOT NULL,
    review_form_id bigint,
    seq double precision DEFAULT '0'::double precision,
    featured smallint DEFAULT '0'::smallint NOT NULL,
    editor_restricted smallint DEFAULT '0'::smallint NOT NULL,
    path character varying(255) NOT NULL,
    image text,
    is_inactive smallint DEFAULT '0'::smallint NOT NULL
);


ALTER TABLE public.series OWNER TO "omp-ci";

--
-- Name: series_categories; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.series_categories (
    series_id bigint NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.series_categories OWNER TO "omp-ci";

--
-- Name: series_series_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.series_series_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.series_series_id_seq OWNER TO "omp-ci";

--
-- Name: series_series_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.series_series_id_seq OWNED BY public.series.series_id;


--
-- Name: series_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.series_settings (
    series_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.series_settings OWNER TO "omp-ci";

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.sessions OWNER TO "omp-ci";

--
-- Name: site; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.site (
    redirect bigint DEFAULT '0'::bigint NOT NULL,
    primary_locale character varying(14) NOT NULL,
    min_password_length smallint DEFAULT '6'::smallint NOT NULL,
    installed_locales character varying(1024) DEFAULT 'en'::character varying NOT NULL,
    supported_locales character varying(1024),
    original_style_file_name character varying(255)
);


ALTER TABLE public.site OWNER TO "omp-ci";

--
-- Name: COLUMN site.redirect; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.site.redirect IS 'If not 0, redirect to the specified journal/conference/... site.';


--
-- Name: COLUMN site.primary_locale; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.site.primary_locale IS 'Primary locale for the site.';


--
-- Name: COLUMN site.installed_locales; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.site.installed_locales IS 'Locales for which support has been installed.';


--
-- Name: COLUMN site.supported_locales; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.site.supported_locales IS 'Locales supported by the site (for hosted journals/conferences/...).';


--
-- Name: site_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.site_settings (
    setting_name character varying(255) NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_value text
);


ALTER TABLE public.site_settings OWNER TO "omp-ci";

--
-- Name: spotlight_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.spotlight_settings (
    spotlight_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.spotlight_settings OWNER TO "omp-ci";

--
-- Name: COLUMN spotlight_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.spotlight_settings.setting_type IS '(bool|int|float|string|object|date)';


--
-- Name: spotlights; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.spotlights (
    spotlight_id bigint NOT NULL,
    assoc_type smallint NOT NULL,
    assoc_id smallint NOT NULL,
    press_id bigint NOT NULL
);


ALTER TABLE public.spotlights OWNER TO "omp-ci";

--
-- Name: spotlights_spotlight_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.spotlights_spotlight_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spotlights_spotlight_id_seq OWNER TO "omp-ci";

--
-- Name: spotlights_spotlight_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.spotlights_spotlight_id_seq OWNED BY public.spotlights.spotlight_id;


--
-- Name: stage_assignments; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.stage_assignments OWNER TO "omp-ci";

--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.stage_assignments_stage_assignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stage_assignments_stage_assignment_id_seq OWNER TO "omp-ci";

--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.stage_assignments_stage_assignment_id_seq OWNED BY public.stage_assignments.stage_assignment_id;


--
-- Name: static_page_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.static_page_settings (
    static_page_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.static_page_settings OWNER TO "omp-ci";

--
-- Name: COLUMN static_page_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.static_page_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: static_pages; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.static_pages (
    static_page_id bigint NOT NULL,
    path character varying(255) NOT NULL,
    context_id bigint NOT NULL
);


ALTER TABLE public.static_pages OWNER TO "omp-ci";

--
-- Name: static_pages_static_page_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.static_pages_static_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.static_pages_static_page_id_seq OWNER TO "omp-ci";

--
-- Name: static_pages_static_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.static_pages_static_page_id_seq OWNED BY public.static_pages.static_page_id;


--
-- Name: subeditor_submission_group; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.subeditor_submission_group (
    context_id bigint NOT NULL,
    assoc_id bigint NOT NULL,
    assoc_type bigint NOT NULL,
    user_id bigint NOT NULL,
    user_group_id bigint NOT NULL
);


ALTER TABLE public.subeditor_submission_group OWNER TO "omp-ci";

--
-- Name: submission_chapter_authors; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_chapter_authors (
    author_id bigint NOT NULL,
    chapter_id bigint NOT NULL,
    primary_contact smallint DEFAULT '0'::smallint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL
);


ALTER TABLE public.submission_chapter_authors OWNER TO "omp-ci";

--
-- Name: submission_chapter_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_chapter_settings (
    chapter_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) NOT NULL
);


ALTER TABLE public.submission_chapter_settings OWNER TO "omp-ci";

--
-- Name: COLUMN submission_chapter_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.submission_chapter_settings.setting_type IS '(bool|int|float|string|object)';


--
-- Name: submission_chapters; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_chapters (
    chapter_id bigint NOT NULL,
    primary_contact_id bigint,
    publication_id bigint NOT NULL,
    seq double precision DEFAULT '0'::double precision NOT NULL,
    source_chapter_id bigint,
    doi_id bigint
);


ALTER TABLE public.submission_chapters OWNER TO "omp-ci";

--
-- Name: submission_chapters_chapter_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.submission_chapters_chapter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_chapters_chapter_id_seq OWNER TO "omp-ci";

--
-- Name: submission_chapters_chapter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.submission_chapters_chapter_id_seq OWNED BY public.submission_chapters.chapter_id;


--
-- Name: submission_comments; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.submission_comments OWNER TO "omp-ci";

--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.submission_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_comments_comment_id_seq OWNER TO "omp-ci";

--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.submission_comments_comment_id_seq OWNED BY public.submission_comments.comment_id;


--
-- Name: submission_file_revisions; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_file_revisions (
    revision_id bigint NOT NULL,
    submission_file_id bigint NOT NULL,
    file_id bigint NOT NULL
);


ALTER TABLE public.submission_file_revisions OWNER TO "omp-ci";

--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.submission_file_revisions_revision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_file_revisions_revision_id_seq OWNER TO "omp-ci";

--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.submission_file_revisions_revision_id_seq OWNED BY public.submission_file_revisions.revision_id;


--
-- Name: submission_file_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_file_settings (
    submission_file_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text,
    setting_type character varying(6) DEFAULT 'string'::character varying NOT NULL
);


ALTER TABLE public.submission_file_settings OWNER TO "omp-ci";

--
-- Name: COLUMN submission_file_settings.setting_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.submission_file_settings.setting_type IS '(bool|int|float|string|object|date)';


--
-- Name: submission_files; Type: TABLE; Schema: public; Owner: omp-ci
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
    assoc_id bigint,
    doi_id bigint
);


ALTER TABLE public.submission_files OWNER TO "omp-ci";

--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.submission_files_submission_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_files_submission_file_id_seq OWNER TO "omp-ci";

--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.submission_files_submission_file_id_seq OWNED BY public.submission_files.submission_file_id;


--
-- Name: submission_search_keyword_list; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_search_keyword_list (
    keyword_id bigint NOT NULL,
    keyword_text character varying(60) NOT NULL
);


ALTER TABLE public.submission_search_keyword_list OWNER TO "omp-ci";

--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.submission_search_keyword_list_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_search_keyword_list_keyword_id_seq OWNER TO "omp-ci";

--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.submission_search_keyword_list_keyword_id_seq OWNED BY public.submission_search_keyword_list.keyword_id;


--
-- Name: submission_search_object_keywords; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_search_object_keywords (
    object_id bigint NOT NULL,
    keyword_id bigint NOT NULL,
    pos integer NOT NULL
);


ALTER TABLE public.submission_search_object_keywords OWNER TO "omp-ci";

--
-- Name: COLUMN submission_search_object_keywords.pos; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.submission_search_object_keywords.pos IS 'Word position of the keyword in the object.';


--
-- Name: submission_search_objects; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_search_objects (
    object_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    type integer NOT NULL,
    assoc_id bigint
);


ALTER TABLE public.submission_search_objects OWNER TO "omp-ci";

--
-- Name: COLUMN submission_search_objects.type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.submission_search_objects.type IS 'Type of item. E.g., abstract, fulltext, etc.';


--
-- Name: COLUMN submission_search_objects.assoc_id; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.submission_search_objects.assoc_id IS 'Optional ID of an associated record (e.g., a file_id)';


--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.submission_search_objects_object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submission_search_objects_object_id_seq OWNER TO "omp-ci";

--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.submission_search_objects_object_id_seq OWNED BY public.submission_search_objects.object_id;


--
-- Name: submission_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.submission_settings (
    submission_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.submission_settings OWNER TO "omp-ci";

--
-- Name: submissions; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.submissions OWNER TO "omp-ci";

--
-- Name: submissions_submission_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.submissions_submission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submissions_submission_id_seq OWNER TO "omp-ci";

--
-- Name: submissions_submission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.submissions_submission_id_seq OWNED BY public.submissions.submission_id;


--
-- Name: temporary_files; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.temporary_files OWNER TO "omp-ci";

--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.temporary_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temporary_files_file_id_seq OWNER TO "omp-ci";

--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.temporary_files_file_id_seq OWNED BY public.temporary_files.file_id;


--
-- Name: usage_stats_institution_temporary_records; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.usage_stats_institution_temporary_records (
    load_id character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    institution_id bigint NOT NULL
);


ALTER TABLE public.usage_stats_institution_temporary_records OWNER TO "omp-ci";

--
-- Name: usage_stats_total_temporary_records; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.usage_stats_total_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    canonical_url character varying(255) NOT NULL,
    series_id bigint,
    context_id bigint NOT NULL,
    submission_id bigint,
    chapter_id bigint,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_total_temporary_records OWNER TO "omp-ci";

--
-- Name: usage_stats_unique_item_investigations_temporary_records; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.usage_stats_unique_item_investigations_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    chapter_id bigint,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_unique_item_investigations_temporary_records OWNER TO "omp-ci";

--
-- Name: usage_stats_unique_item_requests_temporary_records; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.usage_stats_unique_item_requests_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    chapter_id bigint,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_unique_item_requests_temporary_records OWNER TO "omp-ci";

--
-- Name: usage_stats_unique_title_investigations_temporary_records; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.usage_stats_unique_title_investigations_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    chapter_id bigint,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_unique_title_investigations_temporary_records OWNER TO "omp-ci";

--
-- Name: usage_stats_unique_title_requests_temporary_records; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.usage_stats_unique_title_requests_temporary_records (
    date timestamp(0) without time zone NOT NULL,
    ip character varying(255) NOT NULL,
    user_agent character varying(255) NOT NULL,
    line_number bigint NOT NULL,
    context_id bigint NOT NULL,
    submission_id bigint NOT NULL,
    chapter_id bigint,
    representation_id bigint,
    submission_file_id bigint,
    assoc_type bigint NOT NULL,
    file_type smallint,
    country character varying(2) DEFAULT ''::character varying NOT NULL,
    region character varying(3) DEFAULT ''::character varying NOT NULL,
    city character varying(255) DEFAULT ''::character varying NOT NULL,
    load_id character varying(255) NOT NULL
);


ALTER TABLE public.usage_stats_unique_title_requests_temporary_records OWNER TO "omp-ci";

--
-- Name: user_group_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.user_group_settings (
    user_group_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.user_group_settings OWNER TO "omp-ci";

--
-- Name: user_group_stage; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.user_group_stage (
    context_id bigint NOT NULL,
    user_group_id bigint NOT NULL,
    stage_id bigint NOT NULL
);


ALTER TABLE public.user_group_stage OWNER TO "omp-ci";

--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.user_groups OWNER TO "omp-ci";

--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.user_groups_user_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_user_group_id_seq OWNER TO "omp-ci";

--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.user_groups_user_group_id_seq OWNED BY public.user_groups.user_group_id;


--
-- Name: user_interests; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.user_interests (
    user_id bigint NOT NULL,
    controlled_vocab_entry_id bigint NOT NULL
);


ALTER TABLE public.user_interests OWNER TO "omp-ci";

--
-- Name: user_settings; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.user_settings (
    user_id bigint NOT NULL,
    locale character varying(14) DEFAULT ''::character varying NOT NULL,
    setting_name character varying(255) NOT NULL,
    setting_value text
);


ALTER TABLE public.user_settings OWNER TO "omp-ci";

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: omp-ci
--

CREATE TABLE public.user_user_groups (
    user_group_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO "omp-ci";

--
-- Name: users; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.users OWNER TO "omp-ci";

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: omp-ci
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO "omp-ci";

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: omp-ci
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: omp-ci
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


ALTER TABLE public.versions OWNER TO "omp-ci";

--
-- Name: COLUMN versions.major; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.major IS 'Major component of version number, e.g. the 2 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.minor; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.minor IS 'Minor component of version number, e.g. the 3 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.revision; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.revision IS 'Revision component of version number, e.g. the 8 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.build; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.build IS 'Build component of version number, e.g. the 0 in OJS 2.3.8-0';


--
-- Name: COLUMN versions.current; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.current IS '1 iff the version entry being described is currently active. This permits the table to store past installation history for forensic purposes.';


--
-- Name: COLUMN versions.product_type; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.product_type IS 'Describes the type of product this row describes, e.g. "plugins.generic" (for a generic plugin) or "core" for the application itelf';


--
-- Name: COLUMN versions.product; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.product IS 'Uniquely identifies the product this version row describes, e.g. "ojs2" for OJS 2.x, "languageToggle" for the language toggle block plugin, etc.';


--
-- Name: COLUMN versions.product_class_name; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.product_class_name IS 'Specifies the class name associated with this product, for plugins, or the empty string where not applicable.';


--
-- Name: COLUMN versions.lazy_load; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.lazy_load IS '1 iff the row describes a lazy-load plugin; 0 otherwise';


--
-- Name: COLUMN versions.sitewide; Type: COMMENT; Schema: public; Owner: omp-ci
--

COMMENT ON COLUMN public.versions.sitewide IS '1 iff the row describes a site-wide plugin; 0 otherwise';


--
-- Name: access_key_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.access_keys ALTER COLUMN access_key_id SET DEFAULT nextval('public.access_keys_access_key_id_seq'::regclass);


--
-- Name: type_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcement_types ALTER COLUMN type_id SET DEFAULT nextval('public.announcement_types_type_id_seq'::regclass);


--
-- Name: announcement_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcements ALTER COLUMN announcement_id SET DEFAULT nextval('public.announcements_announcement_id_seq'::regclass);


--
-- Name: author_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);


--
-- Name: category_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: citation_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.citations ALTER COLUMN citation_id SET DEFAULT nextval('public.citations_citation_id_seq'::regclass);


--
-- Name: completed_payment_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.completed_payments ALTER COLUMN completed_payment_id SET DEFAULT nextval('public.completed_payments_completed_payment_id_seq'::regclass);


--
-- Name: controlled_vocab_entry_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries ALTER COLUMN controlled_vocab_entry_id SET DEFAULT nextval('public.controlled_vocab_entries_controlled_vocab_entry_id_seq'::regclass);


--
-- Name: controlled_vocab_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocabs ALTER COLUMN controlled_vocab_id SET DEFAULT nextval('public.controlled_vocabs_controlled_vocab_id_seq'::regclass);


--
-- Name: object_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects ALTER COLUMN object_id SET DEFAULT nextval('public.data_object_tombstone_oai_set_objects_object_id_seq'::regclass);


--
-- Name: tombstone_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.data_object_tombstones ALTER COLUMN tombstone_id SET DEFAULT nextval('public.data_object_tombstones_tombstone_id_seq'::regclass);


--
-- Name: doi_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.dois ALTER COLUMN doi_id SET DEFAULT nextval('public.dois_doi_id_seq'::regclass);


--
-- Name: edit_decision_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.edit_decisions ALTER COLUMN edit_decision_id SET DEFAULT nextval('public.edit_decisions_edit_decision_id_seq'::regclass);


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_log ALTER COLUMN log_id SET DEFAULT nextval('public.email_log_log_id_seq'::regclass);


--
-- Name: email_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_templates ALTER COLUMN email_id SET DEFAULT nextval('public.email_templates_email_id_seq'::regclass);


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.event_log ALTER COLUMN log_id SET DEFAULT nextval('public.event_log_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.files ALTER COLUMN file_id SET DEFAULT nextval('public.files_file_id_seq'::regclass);


--
-- Name: filter_group_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filter_groups ALTER COLUMN filter_group_id SET DEFAULT nextval('public.filter_groups_filter_group_id_seq'::regclass);


--
-- Name: filter_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filters ALTER COLUMN filter_id SET DEFAULT nextval('public.filters_filter_id_seq'::regclass);


--
-- Name: genre_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_genre_id_seq'::regclass);


--
-- Name: identification_code_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.identification_codes ALTER COLUMN identification_code_id SET DEFAULT nextval('public.identification_codes_identification_code_id_seq'::regclass);


--
-- Name: institution_ip_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institution_ip ALTER COLUMN institution_ip_id SET DEFAULT nextval('public.institution_ip_institution_ip_id_seq'::regclass);


--
-- Name: institution_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institutions ALTER COLUMN institution_id SET DEFAULT nextval('public.institutions_institution_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.library_files ALTER COLUMN file_id SET DEFAULT nextval('public.library_files_file_id_seq'::regclass);


--
-- Name: market_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.markets ALTER COLUMN market_id SET DEFAULT nextval('public.markets_market_id_seq'::regclass);


--
-- Name: navigation_menu_item_assignment_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments ALTER COLUMN navigation_menu_item_assignment_id SET DEFAULT nextval('public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq'::regclass);


--
-- Name: navigation_menu_item_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_items ALTER COLUMN navigation_menu_item_id SET DEFAULT nextval('public.navigation_menu_items_navigation_menu_item_id_seq'::regclass);


--
-- Name: navigation_menu_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menus ALTER COLUMN navigation_menu_id SET DEFAULT nextval('public.navigation_menus_navigation_menu_id_seq'::regclass);


--
-- Name: note_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notes ALTER COLUMN note_id SET DEFAULT nextval('public.notes_note_id_seq'::regclass);


--
-- Name: setting_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notification_subscription_settings ALTER COLUMN setting_id SET DEFAULT nextval('public.notification_subscription_settings_setting_id_seq'::regclass);


--
-- Name: notification_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notifications ALTER COLUMN notification_id SET DEFAULT nextval('public.notifications_notification_id_seq'::regclass);


--
-- Name: press_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.presses ALTER COLUMN press_id SET DEFAULT nextval('public.presses_press_id_seq'::regclass);


--
-- Name: publication_date_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_dates ALTER COLUMN publication_date_id SET DEFAULT nextval('public.publication_dates_publication_date_id_seq'::regclass);


--
-- Name: publication_format_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_formats ALTER COLUMN publication_format_id SET DEFAULT nextval('public.publication_formats_publication_format_id_seq'::regclass);


--
-- Name: publication_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publications ALTER COLUMN publication_id SET DEFAULT nextval('public.publications_publication_id_seq'::regclass);


--
-- Name: query_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.queries ALTER COLUMN query_id SET DEFAULT nextval('public.queries_query_id_seq'::regclass);


--
-- Name: queued_payment_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.queued_payments ALTER COLUMN queued_payment_id SET DEFAULT nextval('public.queued_payments_queued_payment_id_seq'::regclass);


--
-- Name: representative_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.representatives ALTER COLUMN representative_id SET DEFAULT nextval('public.representatives_representative_id_seq'::regclass);


--
-- Name: review_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_assignments ALTER COLUMN review_id SET DEFAULT nextval('public.review_assignments_review_id_seq'::regclass);


--
-- Name: review_form_element_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_elements ALTER COLUMN review_form_element_id SET DEFAULT nextval('public.review_form_elements_review_form_element_id_seq'::regclass);


--
-- Name: review_form_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_forms ALTER COLUMN review_form_id SET DEFAULT nextval('public.review_forms_review_form_id_seq'::regclass);


--
-- Name: review_round_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_rounds ALTER COLUMN review_round_id SET DEFAULT nextval('public.review_rounds_review_round_id_seq'::regclass);


--
-- Name: sales_rights_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.sales_rights ALTER COLUMN sales_rights_id SET DEFAULT nextval('public.sales_rights_sales_rights_id_seq'::regclass);


--
-- Name: series_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series ALTER COLUMN series_id SET DEFAULT nextval('public.series_series_id_seq'::regclass);


--
-- Name: spotlight_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.spotlights ALTER COLUMN spotlight_id SET DEFAULT nextval('public.spotlights_spotlight_id_seq'::regclass);


--
-- Name: stage_assignment_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.stage_assignments ALTER COLUMN stage_assignment_id SET DEFAULT nextval('public.stage_assignments_stage_assignment_id_seq'::regclass);


--
-- Name: static_page_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.static_pages ALTER COLUMN static_page_id SET DEFAULT nextval('public.static_pages_static_page_id_seq'::regclass);


--
-- Name: chapter_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapters ALTER COLUMN chapter_id SET DEFAULT nextval('public.submission_chapters_chapter_id_seq'::regclass);


--
-- Name: comment_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.submission_comments_comment_id_seq'::regclass);


--
-- Name: revision_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_file_revisions ALTER COLUMN revision_id SET DEFAULT nextval('public.submission_file_revisions_revision_id_seq'::regclass);


--
-- Name: submission_file_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files ALTER COLUMN submission_file_id SET DEFAULT nextval('public.submission_files_submission_file_id_seq'::regclass);


--
-- Name: keyword_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list ALTER COLUMN keyword_id SET DEFAULT nextval('public.submission_search_keyword_list_keyword_id_seq'::regclass);


--
-- Name: object_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_objects ALTER COLUMN object_id SET DEFAULT nextval('public.submission_search_objects_object_id_seq'::regclass);


--
-- Name: submission_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submissions ALTER COLUMN submission_id SET DEFAULT nextval('public.submissions_submission_id_seq'::regclass);


--
-- Name: file_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.temporary_files ALTER COLUMN file_id SET DEFAULT nextval('public.temporary_files_file_id_seq'::regclass);


--
-- Name: user_group_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_groups ALTER COLUMN user_group_id SET DEFAULT nextval('public.user_groups_user_group_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: access_keys; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.access_keys (access_key_id, context, key_hash, user_id, assoc_id, expiry_date) FROM stdin;
\.


--
-- Name: access_keys_access_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.access_keys_access_key_id_seq', 1, false);


--
-- Data for Name: announcement_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.announcement_settings (announcement_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: announcement_type_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.announcement_type_settings (type_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: announcement_types; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.announcement_types (type_id, context_id) FROM stdin;
\.


--
-- Name: announcement_types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.announcement_types_type_id_seq', 1, false);


--
-- Data for Name: announcements; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.announcements (announcement_id, assoc_type, assoc_id, type_id, date_expire, date_posted) FROM stdin;
\.


--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.announcements_announcement_id_seq', 1, false);


--
-- Data for Name: author_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.author_settings (author_id, locale, setting_name, setting_value) FROM stdin;
1	en	affiliation	University of Calgary
1		country	CA
1	en	familyName	Clark
1	en	givenName	Arthur
3	fr_CA	familyName	\N
3	fr_CA	givenName	\N
13	en	affiliation	University of Alberta
13		country	CA
13	en	familyName	Miller
13	en	givenName	Toby
14	en	affiliation	Athabasca University
14		country	CA
14	en	familyName	Wagman
14	en	givenName	Ira
2	en	affiliation	Athabasca University
2		country	CA
2	en	familyName	Finkel
2	en	givenName	Alvin
3		country	CA
3	en	familyName	Carter
3	en	givenName	Sarah
3		isVolumeEditor	0
4	fr_CA	affiliation	\N
4	en	affiliation	\N
4	fr_CA	biography	\N
4	en	biography	\N
4		country	CA
4	fr_CA	familyName	\N
4	en	familyName	Fortna
4	fr_CA	givenName	\N
4	en	givenName	Peter
4	fr_CA	preferredPublicName	\N
4	en	preferredPublicName	\N
4		isVolumeEditor	0
5	fr_CA	affiliation	\N
5	en	affiliation	\N
5	fr_CA	biography	\N
5	en	biography	\N
5		country	CA
5	fr_CA	familyName	\N
5	en	familyName	Friesen
5	fr_CA	givenName	\N
5	en	givenName	Gerald
5	fr_CA	preferredPublicName	\N
5	en	preferredPublicName	\N
5		isVolumeEditor	0
6	fr_CA	affiliation	\N
6	en	affiliation	\N
6	fr_CA	biography	\N
6	en	biography	\N
6		country	CA
6	fr_CA	familyName	\N
6	en	familyName	Dick
6	fr_CA	givenName	\N
6	en	givenName	Lyle
6	fr_CA	preferredPublicName	\N
6	en	preferredPublicName	\N
6		isVolumeEditor	0
7	fr_CA	affiliation	\N
7	en	affiliation	\N
7	fr_CA	biography	\N
7	en	biography	\N
7		country	CA
7	fr_CA	familyName	\N
7	en	familyName	Wheeler
7	fr_CA	givenName	\N
7	en	givenName	Winona
7	fr_CA	preferredPublicName	\N
7	en	preferredPublicName	\N
7		isVolumeEditor	0
8	fr_CA	affiliation	\N
8	en	affiliation	\N
8	fr_CA	biography	\N
8	en	biography	\N
8		country	CA
8	fr_CA	familyName	\N
8	en	familyName	Dyce
8	fr_CA	givenName	\N
8	en	givenName	Matt
8	fr_CA	preferredPublicName	\N
8	en	preferredPublicName	\N
8		isVolumeEditor	0
9	fr_CA	affiliation	\N
9	en	affiliation	\N
9	fr_CA	biography	\N
9	en	biography	\N
9		country	CA
9	fr_CA	familyName	\N
9	en	familyName	Opp
9	fr_CA	givenName	\N
9	en	givenName	James
9	fr_CA	preferredPublicName	\N
9	en	preferredPublicName	\N
9		isVolumeEditor	0
11	en	affiliation	Athabasca University
11		country	CA
11	en	familyName	Barnetson
11	en	givenName	Bob
12	en	affiliation	University of British Columbia
12		country	CA
12	en	familyName	Beaty
12	en	givenName	Bart
15	en	affiliation	University of Calgary
15		country	CA
15	en	familyName	Straw
15	en	givenName	Will
16	en	affiliation	University of Southern California
16		country	CA
16	en	familyName	Allan
16	en	givenName	Chantal
17	en	affiliation	SUNY
17		country	US
17	en	familyName	Bernnard
17	en	givenName	Deborah
18	en	affiliation	SUNY
18		country	US
18	en	familyName	Bobish
18	en	givenName	Greg
19	en	affiliation	SUNY
19		country	US
19	en	familyName	Bullis
19	en	givenName	Daryl
20	en	affiliation	SUNY
20		country	US
20	en	familyName	Hecker
20	en	givenName	Jenna
21	en	affiliation	Athabasca University
21		country	CA
21	en	familyName	Kennepohl
21	en	givenName	Dietmar
22	en	affiliation	University of Calgary
22		country	CA
22	en	familyName	Anderson
22	en	givenName	Terry
23	en	affiliation	University of Alberta
23		country	CA
23	en	familyName	Gorsky
23	en	givenName	Paul
24	en	affiliation	Athabasca University
24		country	CA
24	en	familyName	Parchoma
24	en	givenName	Gale
25	en	affiliation	University of Alberta
25		country	CA
25	en	familyName	Palmer
25	en	givenName	Stuart
26	en	affiliation	University of Sussex
26		country	CA
26	en	familyName	Perini
26	en	givenName	Fernando
27		country	GB
27	en	familyName	Mansell
27	en	givenName	Robin
28		country	AR
28	en	familyName	Galperin
28	en	givenName	Hernan
29		country	CL
29	en	familyName	Bello
29	en	givenName	Pablo
30		country	AR
30	en	familyName	Rabinovich
30	en	givenName	Eleonora
31	en	affiliation	Buffalo National Park Foundation
31		country	CA
31	en	familyName	Brower
31	en	givenName	Jennifer
32	en	affiliation	University of Alberta
32		country	CA
32	en	familyName	Locke Hart
32	en	givenName	Jonathan
33	en	affiliation	International Development Research Centre
33		country	CA
33	en	familyName	Elder
33	en	givenName	Laurent
34		country	CA
34	en	familyName	Emdon
34	en	givenName	Heloise
35		country	CA
35	en	familyName	Tulus
35	en	givenName	Frank
36		country	AR
36	en	familyName	Hyma
36	en	givenName	Raymond
37		country	CA
37	en	familyName	Valk
37	en	givenName	John
38		country	CA
38	en	familyName	Fourati
38	en	givenName	Khaled
39		country	CA
39	en	familyName	de Beer
39	en	givenName	Jeremy
40		country	CA
40	en	familyName	Bannerman
40	en	givenName	Sara
41	en	affiliation	Athabasca University
41		country	CA
41	en	familyName	Ally
41	en	givenName	Mohamed
42		country	GB
42	en	familyName	Traxler
42	en	givenName	John
43		country	CA
43	en	familyName	Koole
43	en	givenName	Marguerite
44		country	NO
44	en	familyName	Rekkedal
44	en	givenName	Torstein
45	en	affiliation	University of Alberta
45		country	CA
45	en	familyName	Dawson
45	en	givenName	Michael
46	en	affiliation	Athabasca University
46		country	CA
46	en	familyName	Dupuis
46	en	givenName	Brian
47	en	affiliation	University of Calgary
47		country	CA
47	en	familyName	Wilson
47	en	givenName	Michael
48	en	affiliation	University of Calgary
48		country	CA
48	en	familyName	Foran
48	en	givenName	Max
49	en	affiliation	London School of Economics
49		country	CA
49	en	familyName	Power
49	en	givenName	Michael
50	en	affiliation	International Development Research Centre
50		country	CA
50	en	familyName	Smith
50	en	givenName	Matthew
51		country	US
51	en	familyName	Benkler
51	en	givenName	Yochai
52		country	CA
52	en	familyName	Reilly
52	en	givenName	Katherine
53		country	US
53	en	familyName	Loudon
53	en	givenName	Melissa
54		country	SA
54	en	familyName	Rivett
54	en	givenName	Ulrike
55		country	GB
55	en	familyName	Graham
55	en	givenName	Mark
56		country	NO
56	en	familyName	Haarstad
56	en	givenName	Håvard
57		country	US
57	en	familyName	Smith
57	en	givenName	Marshall
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.authors (author_id, email, include_in_browse, publication_id, seq, user_group_id) FROM stdin;
1	aclark@mailinator.com	1	1	0	13
2	afinkel@mailinator.com	1	2	0	13
3	scarter@mailinator.com	1	2	1	14
4	pfortna@mailinator.com	1	2	2	14
5	gfriesen@mailinator.com	1	2	3	15
6	ldick@mailinator.com	1	2	4	15
7	wwheeler@mailinator.com	1	2	5	15
8	mdyce@mailinator.com	1	2	6	15
9	jopp@mailinator.com	1	2	7	15
11	bbarnetson@mailinator.com	1	3	0	13
12	bbeaty@mailinator.com	1	4	0	13
13	tmiller@mailinator.com	1	4	0	13
14	awagman@mailinator.com	1	4	0	13
15	wstraw@mailinator.com	1	4	0	13
16	callan@mailinator.com	1	5	0	13
17	dbernnard@mailinator.com	1	6	0	13
18	gbobish@mailinator.com	1	6	0	13
19	dbullis@mailinator.com	1	6	0	13
20	jhecker@mailinator.com	1	6	0	13
21	dkennepohl@mailinator.com	1	7	0	13
22	tanderson@mailinator.com	1	7	0	13
23	pgorsky@mailinator.com	1	7	0	13
24	gparchoma@mailinator.com	1	7	0	13
25	spalmer@mailinator.com	1	7	0	13
26	fperini@mailinator.com	1	9	0	13
27	rmansell@mailinator.com	1	9	0	13
28	hgalperin@mailinator.com	1	9	0	13
29	pbello@mailinator.com	1	9	0	13
30	erabinovich@mailinator.com	1	9	0	13
31	jbrower@mailinator.com	1	10	0	13
32	jlockehart@mailinator.com	1	11	0	13
33	lelder@mailinator.com	1	12	0	13
34	lelder@mailinator.com	1	12	0	14
35	ftulus@mailinator.com	1	12	0	13
36	rhyma@mailinator.com	1	12	0	13
37	jvalk@mailinator.com	1	12	0	13
38	fkourati@mailinator.com	1	12	0	13
39	jdebeer@mailinator.com	1	12	0	13
40	sbannerman@mailinator.com	1	12	0	13
41	mally@mailinator.com	1	13	0	13
42	jtraxler@mailinator.com	1	13	0	13
43	mkoole@mailinator.com	1	13	0	13
44	trekkedal@mailinator.com	1	13	0	13
45	mdawson@mailinator.com	1	14	0	13
46	bdupuis@mailinator.com	1	14	0	13
47	mwilson@mailinator.com	1	14	0	13
48	mforan@mailinator.com	1	15	0	13
49	mpower@mailinator.com	1	16	0	13
50	msmith@mailinator.com	1	17	0	13
51	ybenkler@mailinator.com	1	17	0	13
52	kreilly@mailinator.com	1	17	0	13
53	mloudon@mailinator.com	1	17	0	13
54	urivett@mailinator.com	1	17	0	13
55	mgraham@mailinator.com	1	17	0	13
56	hhaarstad@mailinator.com	1	17	0	13
57	masmith@mailinator.com	1	17	0	13
\.


--
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 57, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: omp-ci
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
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 6, true);


--
-- Data for Name: category_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
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
-- Data for Name: citation_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.citation_settings (citation_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: citations; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.citations (citation_id, publication_id, raw_citation, seq) FROM stdin;
\.


--
-- Name: citations_citation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.citations_citation_id_seq', 1, false);


--
-- Data for Name: completed_payments; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.completed_payments (completed_payment_id, "timestamp", payment_type, context_id, user_id, assoc_id, amount, currency_code_alpha, payment_method_plugin_name) FROM stdin;
\.


--
-- Name: completed_payments_completed_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.completed_payments_completed_payment_id_seq', 1, false);


--
-- Data for Name: controlled_vocab_entries; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.controlled_vocab_entries (controlled_vocab_entry_id, controlled_vocab_id, seq) FROM stdin;
1	12	1
2	12	2
3	17	1
4	17	2
14	22	1
15	22	2
16	22	3
17	27	1
18	27	2
19	32	1
20	42	1
21	42	2
22	42	3
23	47	1
24	47	2
25	47	3
26	57	1
27	57	2
28	62	1
30	67	1
31	82	1
32	82	2
\.


--
-- Name: controlled_vocab_entries_controlled_vocab_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.controlled_vocab_entries_controlled_vocab_entry_id_seq', 32, true);


--
-- Data for Name: controlled_vocab_entry_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.controlled_vocab_entry_settings (controlled_vocab_entry_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	submissionKeyword	Business & Economics	string
2	en	submissionKeyword	Political & International Studies	string
3	en	submissionKeyword	Canadian Studies	string
4	en	submissionKeyword	Communication & Cultural Studies	string
14	en	submissionKeyword	Canadian Studies	string
15	en	submissionKeyword	Communication & Cultural Studies	string
16	en	submissionKeyword	Political & International Studies	string
17	en	submissionKeyword	information literacy	string
18	en	submissionKeyword	academic libraries	string
19	en	submissionKeyword	Education	string
20	en	submissionKeyword	Information	string
21	en	submissionKeyword	society	string
22	en	submissionKeyword	ICT	string
23	en	submissionKeyword	Biography & Memoir	string
24	en	submissionKeyword	Environmental Studies	string
25	en	submissionKeyword	Political & International Studies	string
26	en	submissionKeyword	International Development	string
27	en	submissionKeyword	ICT	string
28	en	submissionKeyword	Educational Technology	string
30	en	submissionKeyword	Psychology	string
31	en	submissionKeyword	International Development	string
32	en	submissionKeyword	ICT	string
\.


--
-- Data for Name: controlled_vocabs; Type: TABLE DATA; Schema: public; Owner: omp-ci
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
\.


--
-- Name: controlled_vocabs_controlled_vocab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.controlled_vocabs_controlled_vocab_id_seq', 86, true);


--
-- Data for Name: data_object_tombstone_oai_set_objects; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.data_object_tombstone_oai_set_objects (object_id, tombstone_id, assoc_type, assoc_id) FROM stdin;
\.


--
-- Name: data_object_tombstone_oai_set_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.data_object_tombstone_oai_set_objects_object_id_seq', 6, true);


--
-- Data for Name: data_object_tombstone_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.data_object_tombstone_settings (tombstone_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: data_object_tombstones; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.data_object_tombstones (tombstone_id, data_object_id, date_deleted, set_spec, set_name, oai_identifier) FROM stdin;
\.


--
-- Name: data_object_tombstones_tombstone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.data_object_tombstones_tombstone_id_seq', 3, true);


--
-- Data for Name: doi_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.doi_settings (doi_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: dois; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.dois (doi_id, context_id, doi, status) FROM stdin;
\.


--
-- Name: dois_doi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.dois_doi_id_seq', 1, false);


--
-- Data for Name: edit_decisions; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.edit_decisions (edit_decision_id, submission_id, review_round_id, stage_id, round, editor_id, decision, date_decided) FROM stdin;
1	1	\N	1	\N	3	18	2023-03-07 19:07:26
2	1	1	3	1	3	2	2023-03-07 19:07:42
3	2	\N	1	\N	3	18	2023-03-07 19:10:46
4	4	\N	1	\N	3	1	2023-03-07 19:13:14
5	4	3	2	1	3	3	2023-03-07 19:13:32
6	4	4	3	1	3	2	2023-03-07 19:13:50
7	4	\N	4	\N	3	7	2023-03-07 19:14:09
8	5	\N	1	\N	3	1	2023-03-07 19:15:54
9	5	5	2	1	3	3	2023-03-07 19:16:14
10	5	6	3	1	3	2	2023-03-07 19:16:33
11	5	\N	4	\N	3	7	2023-03-07 19:16:53
12	6	\N	1	\N	3	1	2023-03-07 19:19:04
13	6	7	2	1	6	23	2023-03-07 19:19:44
14	7	\N	1	\N	3	18	2023-03-07 19:21:17
15	7	8	3	1	3	2	2023-03-07 19:21:36
16	9	\N	1	\N	3	1	2023-03-07 19:23:18
17	11	\N	1	\N	3	1	2023-03-07 19:25:56
18	11	10	2	1	3	3	2023-03-07 19:26:11
19	11	11	3	1	3	2	2023-03-07 19:27:16
20	12	\N	1	\N	3	1	2023-03-07 19:28:18
21	13	\N	1	\N	3	1	2023-03-07 19:29:56
22	13	13	2	1	3	3	2023-03-07 19:30:13
23	13	14	3	1	3	2	2023-03-07 19:31:31
24	14	\N	1	\N	3	1	2023-03-07 19:32:46
25	14	15	2	1	3	3	2023-03-07 19:33:05
26	14	16	3	1	3	2	2023-03-07 19:33:24
27	14	\N	4	\N	3	7	2023-03-07 19:33:42
28	15	\N	1	\N	3	18	2023-03-07 19:35:59
29	16	\N	1	\N	3	18	2023-03-07 19:37:19
30	17	\N	1	\N	3	1	2023-03-07 19:39:39
\.


--
-- Name: edit_decisions_edit_decision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.edit_decisions_edit_decision_id_seq', 30, true);


--
-- Data for Name: email_log; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.email_log (log_id, assoc_type, assoc_id, sender_id, date_sent, event_type, from_address, recipients, cc_recipients, bcc_recipients, subject, body) FROM stdin;
1	1048585	1	0	2023-03-07 19:07:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: The ABCs of Human Survival: A Paradigm for Global Citizenship	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">The ABCs of Human Survival: A Paradigm for Global Citizenship</a><br />Arthur Clark</p><p><b>Abstract</b></p>The ABCs of Human Survival examines the effect of militant nationalism and the lawlessness of powerful states on the well-being of individuals and local communities―and the essential role of global citizenship within that dynamic. Based on the analysis of world events, Dr. Arthur Clark presents militant nationalism as a pathological pattern of thinking that threatens our security, while emphasizing effective democracy and international law as indispensable frameworks for human protection.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
2	1048585	1	0	2023-03-07 19:07:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: The ABCs of Human Survival: A Paradigm for Global Citizenship	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">The ABCs of Human Survival: A Paradigm for Global Citizenship</a><br />Arthur Clark</p><p><b>Abstract</b></p>The ABCs of Human Survival examines the effect of militant nationalism and the lawlessness of powerful states on the well-being of individuals and local communities―and the essential role of global citizenship within that dynamic. Based on the analysis of world events, Dr. Arthur Clark presents militant nationalism as a pathological pattern of thinking that threatens our security, while emphasizing effective democracy and international law as indispensable frameworks for human protection.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
3	1048585	1	0	2023-03-07 19:07:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: The ABCs of Human Survival: A Paradigm for Global Citizenship	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/1">The ABCs of Human Survival: A Paradigm for Global Citizenship</a><br />Arthur Clark</p><p><b>Abstract</b></p>The ABCs of Human Survival examines the effect of militant nationalism and the lawlessness of powerful states on the well-being of individuals and local communities―and the essential role of global citizenship within that dynamic. Based on the analysis of world events, Dr. Arthur Clark presents militant nationalism as a pathological pattern of thinking that threatens our security, while emphasizing effective democracy and international law as indispensable frameworks for human protection.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
4	1048585	1	0	2023-03-07 19:07:12	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Arthur Clark" <aclark@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Arthur Clark,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, The ABCs of Human Survival: A Paradigm for Global Citizenship, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/1</p><p>If you have been logged out, you can login again with the username aclark.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/1">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
5	1048585	1	3	2023-03-07 19:07:26	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Arthur Clark" <aclark@mailinator.com>			Your submission has been sent for review	<p>Dear Arthur Clark,</p><p>I am pleased to inform you that an editor has reviewed your submission, The ABCs of Human Survival: A Paradigm for Global Citizenship, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
6	1048585	1	3	2023-03-07 19:07:42	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Arthur Clark" <aclark@mailinator.com>			Your submission has been accepted to Public Knowledge Press	<p>Dear Arthur Clark,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, The ABCs of Human Survival: A Paradigm for Global Citizenship, to meet or exceed our expectations. We are excited to publish your piece in Public Knowledge Press and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for Public Knowledge Press and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/1">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
7	1048585	2	0	2023-03-07 19:10:18	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: The West and Beyond: New Perspectives on an Imagined Region	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The West and Beyond: New Perspectives on an Imagined Region</a><br />Alvin Finkel, Sarah Carter, Peter Fortna, Gerald Friesen, Lyle Dick, Winona Wheeler, Matt Dyce, James Opp</p><p><b>Abstract</b></p><p>The West and Beyond explores the state of Western Canadian history, showcasing the research interests of a new generation of scholars while charting new directions for the future and stimulating further interrogation of our past. This dynamic collection encourages dialogue among generations of historians of the West, and among practitioners of diverse approaches to the past. It also reflects a broad range of disciplinary and professional boundaries, offering new ways to understand the West.</p><p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
8	1048585	2	0	2023-03-07 19:10:18	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: The West and Beyond: New Perspectives on an Imagined Region	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The West and Beyond: New Perspectives on an Imagined Region</a><br />Alvin Finkel, Sarah Carter, Peter Fortna, Gerald Friesen, Lyle Dick, Winona Wheeler, Matt Dyce, James Opp</p><p><b>Abstract</b></p><p>The West and Beyond explores the state of Western Canadian history, showcasing the research interests of a new generation of scholars while charting new directions for the future and stimulating further interrogation of our past. This dynamic collection encourages dialogue among generations of historians of the West, and among practitioners of diverse approaches to the past. It also reflects a broad range of disciplinary and professional boundaries, offering new ways to understand the West.</p><p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
9	1048585	2	0	2023-03-07 19:10:18	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: The West and Beyond: New Perspectives on an Imagined Region	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/2">The West and Beyond: New Perspectives on an Imagined Region</a><br />Alvin Finkel, Sarah Carter, Peter Fortna, Gerald Friesen, Lyle Dick, Winona Wheeler, Matt Dyce, James Opp</p><p><b>Abstract</b></p><p>The West and Beyond explores the state of Western Canadian history, showcasing the research interests of a new generation of scholars while charting new directions for the future and stimulating further interrogation of our past. This dynamic collection encourages dialogue among generations of historians of the West, and among practitioners of diverse approaches to the past. It also reflects a broad range of disciplinary and professional boundaries, offering new ways to understand the West.</p><p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
10	1048585	2	0	2023-03-07 19:10:18	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Alvin Finkel" <afinkel@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Alvin Finkel,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, The West and Beyond: New Perspectives on an Imagined Region, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/2</p><p>If you have been logged out, you can login again with the username afinkel.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/2">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
11	1048585	2	0	2023-03-07 19:10:18	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Sarah Carter" <scarter@mailinator.com>, "Peter Fortna" <pfortna@mailinator.com>, "Gerald Friesen" <gfriesen@mailinator.com>, "Lyle Dick" <ldick@mailinator.com>, "Winona Wheeler" <wwheeler@mailinator.com>, "Matt Dyce" <mdyce@mailinator.com>, "James Opp" <jopp@mailinator.com>			Submission confirmation	<p>Dear Sarah Carter, Peter Fortna, Gerald Friesen, Lyle Dick, Winona Wheeler, Matt Dyce, James Opp,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Alvin Finkel, provided the following details:</p><p>The West and Beyond: New Perspectives on an Imagined Region<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
12	1048585	2	3	2023-03-07 19:10:46	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Alvin Finkel" <afinkel@mailinator.com>			Your submission has been sent for review	<p>Dear Alvin Finkel,</p><p>I am pleased to inform you that an editor has reviewed your submission, The West and Beyond: New Perspectives on an Imagined Region, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
13	1048585	3	0	2023-03-07 19:12:09	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: The Political Economy of Workplace Injury in Canada	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">The Political Economy of Workplace Injury in Canada</a><br />Bob Barnetson</p><p><b>Abstract</b></p>Workplace injuries are common, avoidable, and unacceptable. The Political Economy of Workplace Injury in Canada reveals how employers and governments engage in ineffective injury prevention efforts, intervening only when necessary to maintain the standard legitimacy. Dr. Bob Barnetson sheds light on this faulty system, highlighting the way in which employers create dangerous work environments yet pour billions of dollars into compensation and treatment. Examining this dynamic clarifies the way in which production costs are passed on to workers in the form of workplace injuries.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
14	1048585	3	0	2023-03-07 19:12:09	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: The Political Economy of Workplace Injury in Canada	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">The Political Economy of Workplace Injury in Canada</a><br />Bob Barnetson</p><p><b>Abstract</b></p>Workplace injuries are common, avoidable, and unacceptable. The Political Economy of Workplace Injury in Canada reveals how employers and governments engage in ineffective injury prevention efforts, intervening only when necessary to maintain the standard legitimacy. Dr. Bob Barnetson sheds light on this faulty system, highlighting the way in which employers create dangerous work environments yet pour billions of dollars into compensation and treatment. Examining this dynamic clarifies the way in which production costs are passed on to workers in the form of workplace injuries.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
15	1048585	3	0	2023-03-07 19:12:09	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: The Political Economy of Workplace Injury in Canada	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/3">The Political Economy of Workplace Injury in Canada</a><br />Bob Barnetson</p><p><b>Abstract</b></p>Workplace injuries are common, avoidable, and unacceptable. The Political Economy of Workplace Injury in Canada reveals how employers and governments engage in ineffective injury prevention efforts, intervening only when necessary to maintain the standard legitimacy. Dr. Bob Barnetson sheds light on this faulty system, highlighting the way in which employers create dangerous work environments yet pour billions of dollars into compensation and treatment. Examining this dynamic clarifies the way in which production costs are passed on to workers in the form of workplace injuries.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
16	1048585	3	0	2023-03-07 19:12:09	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Bob Barnetson" <bbarnetson@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Bob Barnetson,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, The Political Economy of Workplace Injury in Canada, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/3</p><p>If you have been logged out, you can login again with the username bbarnetson.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/3">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
17	1048585	4	0	2023-03-07 19:12:58	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: How Canadians Communicate: Contexts of Canadian Popular Culture	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">How Canadians Communicate: Contexts of Canadian Popular Culture</a><br />Bart Beaty, Toby Miller, Ira Wagman, Will Straw</p><p><b>Abstract</b></p>What does Canadian popular culture say about the construction and negotiation of Canadian national identity? This third volume of How Canadians Communicate describes the negotiation of popular culture across terrains where national identity is built by producers and audiences, government and industry, history and geography, ethnicities and citizenships.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
18	1048585	4	0	2023-03-07 19:12:59	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: How Canadians Communicate: Contexts of Canadian Popular Culture	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">How Canadians Communicate: Contexts of Canadian Popular Culture</a><br />Bart Beaty, Toby Miller, Ira Wagman, Will Straw</p><p><b>Abstract</b></p>What does Canadian popular culture say about the construction and negotiation of Canadian national identity? This third volume of How Canadians Communicate describes the negotiation of popular culture across terrains where national identity is built by producers and audiences, government and industry, history and geography, ethnicities and citizenships.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
19	1048585	4	0	2023-03-07 19:12:59	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: How Canadians Communicate: Contexts of Canadian Popular Culture	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/4">How Canadians Communicate: Contexts of Canadian Popular Culture</a><br />Bart Beaty, Toby Miller, Ira Wagman, Will Straw</p><p><b>Abstract</b></p>What does Canadian popular culture say about the construction and negotiation of Canadian national identity? This third volume of How Canadians Communicate describes the negotiation of popular culture across terrains where national identity is built by producers and audiences, government and industry, history and geography, ethnicities and citizenships.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
20	1048585	4	0	2023-03-07 19:12:59	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Bart Beaty" <bbeaty@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Bart Beaty,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, How Canadians Communicate: Contexts of Canadian Popular Culture, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/4</p><p>If you have been logged out, you can login again with the username bbeaty.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/4">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
21	1048585	4	0	2023-03-07 19:12:59	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Toby Miller" <tmiller@mailinator.com>, "Ira Wagman" <awagman@mailinator.com>, "Will Straw" <wstraw@mailinator.com>			Submission confirmation	<p>Dear Toby Miller, Ira Wagman, Will Straw,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Bart Beaty, provided the following details:</p><p>How Canadians Communicate: Contexts of Canadian Popular Culture<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
22	1048585	4	3	2023-03-07 19:13:14	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Bart Beaty" <bbeaty@mailinator.com>			Your submission has been sent for internal review	<p>Dear Bart Beaty,</p><p>I am pleased to inform you that an editor has reviewed your submission, How Canadians Communicate: Contexts of Canadian Popular Culture, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
23	1048585	4	3	2023-03-07 19:13:32	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Bart Beaty" <bbeaty@mailinator.com>			Your submission has been sent for review	<p>Dear Bart Beaty,</p><p>I am pleased to inform you that an editor has reviewed your submission, How Canadians Communicate: Contexts of Canadian Popular Culture, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
24	1048585	4	3	2023-03-07 19:13:51	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Bart Beaty" <bbeaty@mailinator.com>			Your submission has been accepted to Public Knowledge Press	<p>Dear Bart Beaty,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, How Canadians Communicate: Contexts of Canadian Popular Culture, to meet or exceed our expectations. We are excited to publish your piece in Public Knowledge Press and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for Public Knowledge Press and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/4">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
25	1048585	4	3	2023-03-07 19:14:09	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Bart Beaty" <bbeaty@mailinator.com>			Next steps for publishing your submission	<p>Dear Bart Beaty,</p><p>I am writing from Public Knowledge Press to let you know that the editing of your submission, How Canadians Communicate: Contexts of Canadian Popular Culture, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/4">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
26	1048585	5	0	2023-03-07 19:15:36	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Bomb Canada and Other Unkind Remarks in the American Media	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Bomb Canada and Other Unkind Remarks in the American Media</a><br />Chantal Allan</p><p><b>Abstract</b></p>Canada and the United States. Two nations, one border, same continent. Anti-American sentiment in Canada is well documented, but what have Americans had to say about their northern neighbour? Allan examines how the American media has portrayed Canada, from Confederation to Obama’s election. By examining major events that have tested bilateral relations, Bomb Canada tracks the history of anti-Canadianism in the U.S. Informative, thought provoking and at times hilarious, this book reveals another layer of the complex relationship between Canada and the United States.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
27	1048585	5	0	2023-03-07 19:15:36	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Bomb Canada and Other Unkind Remarks in the American Media	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Bomb Canada and Other Unkind Remarks in the American Media</a><br />Chantal Allan</p><p><b>Abstract</b></p>Canada and the United States. Two nations, one border, same continent. Anti-American sentiment in Canada is well documented, but what have Americans had to say about their northern neighbour? Allan examines how the American media has portrayed Canada, from Confederation to Obama’s election. By examining major events that have tested bilateral relations, Bomb Canada tracks the history of anti-Canadianism in the U.S. Informative, thought provoking and at times hilarious, this book reveals another layer of the complex relationship between Canada and the United States.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
28	1048585	5	0	2023-03-07 19:15:36	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Bomb Canada and Other Unkind Remarks in the American Media	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/5">Bomb Canada and Other Unkind Remarks in the American Media</a><br />Chantal Allan</p><p><b>Abstract</b></p>Canada and the United States. Two nations, one border, same continent. Anti-American sentiment in Canada is well documented, but what have Americans had to say about their northern neighbour? Allan examines how the American media has portrayed Canada, from Confederation to Obama’s election. By examining major events that have tested bilateral relations, Bomb Canada tracks the history of anti-Canadianism in the U.S. Informative, thought provoking and at times hilarious, this book reveals another layer of the complex relationship between Canada and the United States.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
29	1048585	5	0	2023-03-07 19:15:36	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Chantal Allan" <callan@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Chantal Allan,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Bomb Canada and Other Unkind Remarks in the American Media, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/5</p><p>If you have been logged out, you can login again with the username callan.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/5">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
30	1048585	5	3	2023-03-07 19:15:54	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Chantal Allan" <callan@mailinator.com>			Your submission has been sent for internal review	<p>Dear Chantal Allan,</p><p>I am pleased to inform you that an editor has reviewed your submission, Bomb Canada and Other Unkind Remarks in the American Media, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
31	1048585	5	3	2023-03-07 19:16:14	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Chantal Allan" <callan@mailinator.com>			Your submission has been sent for review	<p>Dear Chantal Allan,</p><p>I am pleased to inform you that an editor has reviewed your submission, Bomb Canada and Other Unkind Remarks in the American Media, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
32	1048585	5	3	2023-03-07 19:16:33	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Chantal Allan" <callan@mailinator.com>			Your submission has been accepted to Public Knowledge Press	<p>Dear Chantal Allan,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Bomb Canada and Other Unkind Remarks in the American Media, to meet or exceed our expectations. We are excited to publish your piece in Public Knowledge Press and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for Public Knowledge Press and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/5">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
33	1048585	5	3	2023-03-07 19:16:53	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Chantal Allan" <callan@mailinator.com>			Next steps for publishing your submission	<p>Dear Chantal Allan,</p><p>I am writing from Public Knowledge Press to let you know that the editing of your submission, Bomb Canada and Other Unkind Remarks in the American Media, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/5">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
34	1048585	6	0	2023-03-07 19:18:48	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: The Information Literacy User’s Guide	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">The Information Literacy User’s Guide</a><br />Deborah Bernnard, Greg Bobish, Daryl Bullis, Jenna Hecker</p><p><b>Abstract</b></p>Good researchers have a host of tools at their disposal that make navigating today’s complex information ecosystem much more manageable. Gaining the knowledge, abilities, and self-reflection necessary to be a good researcher helps not only in academic settings, but is invaluable in any career, and throughout one’s life. The Information Literacy User’s Guide will start you on this route to success.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
35	1048585	6	0	2023-03-07 19:18:48	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: The Information Literacy User’s Guide	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">The Information Literacy User’s Guide</a><br />Deborah Bernnard, Greg Bobish, Daryl Bullis, Jenna Hecker</p><p><b>Abstract</b></p>Good researchers have a host of tools at their disposal that make navigating today’s complex information ecosystem much more manageable. Gaining the knowledge, abilities, and self-reflection necessary to be a good researcher helps not only in academic settings, but is invaluable in any career, and throughout one’s life. The Information Literacy User’s Guide will start you on this route to success.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
36	1048585	6	0	2023-03-07 19:18:48	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: The Information Literacy User’s Guide	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/6">The Information Literacy User’s Guide</a><br />Deborah Bernnard, Greg Bobish, Daryl Bullis, Jenna Hecker</p><p><b>Abstract</b></p>Good researchers have a host of tools at their disposal that make navigating today’s complex information ecosystem much more manageable. Gaining the knowledge, abilities, and self-reflection necessary to be a good researcher helps not only in academic settings, but is invaluable in any career, and throughout one’s life. The Information Literacy User’s Guide will start you on this route to success.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
37	1048585	6	0	2023-03-07 19:18:48	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Deborah Bernnard" <dbernnard@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Deborah Bernnard,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, The Information Literacy User’s Guide, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/6</p><p>If you have been logged out, you can login again with the username dbernnard.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/6">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
38	1048585	6	0	2023-03-07 19:18:48	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Greg Bobish" <gbobish@mailinator.com>, "Daryl Bullis" <dbullis@mailinator.com>, "Jenna Hecker" <jhecker@mailinator.com>			Submission confirmation	<p>Dear Greg Bobish, Daryl Bullis, Jenna Hecker,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Deborah Bernnard, provided the following details:</p><p>The Information Literacy User’s Guide<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
39	1048585	6	3	2023-03-07 19:19:04	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Deborah Bernnard" <dbernnard@mailinator.com>			Your submission has been sent for internal review	<p>Dear Deborah Bernnard,</p><p>I am pleased to inform you that an editor has reviewed your submission, The Information Literacy User’s Guide, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
40	1048585	7	0	2023-03-07 19:21:00	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Accessible Elements: Teaching Science Online and at a Distance	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Accessible Elements: Teaching Science Online and at a Distance</a><br />Dietmar Kennepohl, Terry Anderson, Paul Gorsky, Gale Parchoma, Stuart Palmer</p><p><b>Abstract</b></p>Accessible Elements informs science educators about current practices in online and distance education: distance-delivered methods for laboratory coursework, the requisite administrative and institutional aspects of online and distance teaching, and the relevant educational theory.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
41	1048585	7	0	2023-03-07 19:21:00	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Accessible Elements: Teaching Science Online and at a Distance	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Accessible Elements: Teaching Science Online and at a Distance</a><br />Dietmar Kennepohl, Terry Anderson, Paul Gorsky, Gale Parchoma, Stuart Palmer</p><p><b>Abstract</b></p>Accessible Elements informs science educators about current practices in online and distance education: distance-delivered methods for laboratory coursework, the requisite administrative and institutional aspects of online and distance teaching, and the relevant educational theory.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
42	1048585	7	0	2023-03-07 19:21:00	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Accessible Elements: Teaching Science Online and at a Distance	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/7">Accessible Elements: Teaching Science Online and at a Distance</a><br />Dietmar Kennepohl, Terry Anderson, Paul Gorsky, Gale Parchoma, Stuart Palmer</p><p><b>Abstract</b></p>Accessible Elements informs science educators about current practices in online and distance education: distance-delivered methods for laboratory coursework, the requisite administrative and institutional aspects of online and distance teaching, and the relevant educational theory.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
43	1048585	7	0	2023-03-07 19:21:00	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Dietmar Kennepohl" <dkennepohl@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Dietmar Kennepohl,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Accessible Elements: Teaching Science Online and at a Distance, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/7</p><p>If you have been logged out, you can login again with the username dkennepohl.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/7">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
44	1048585	7	0	2023-03-07 19:21:00	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Terry Anderson" <tanderson@mailinator.com>, "Paul Gorsky" <pgorsky@mailinator.com>, "Gale Parchoma" <gparchoma@mailinator.com>, "Stuart Palmer" <spalmer@mailinator.com>			Submission confirmation	<p>Dear Terry Anderson, Paul Gorsky, Gale Parchoma, Stuart Palmer,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Dietmar Kennepohl, provided the following details:</p><p>Accessible Elements: Teaching Science Online and at a Distance<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
45	1048585	7	3	2023-03-07 19:21:17	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Dietmar Kennepohl" <dkennepohl@mailinator.com>			Your submission has been sent for review	<p>Dear Dietmar Kennepohl,</p><p>I am pleased to inform you that an editor has reviewed your submission, Accessible Elements: Teaching Science Online and at a Distance, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
46	1048585	7	3	2023-03-07 19:21:36	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Dietmar Kennepohl" <dkennepohl@mailinator.com>			Your submission has been accepted to Public Knowledge Press	<p>Dear Dietmar Kennepohl,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Accessible Elements: Teaching Science Online and at a Distance, to meet or exceed our expectations. We are excited to publish your piece in Public Knowledge Press and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for Public Knowledge Press and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/7">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
47	1048585	8	0	2023-03-07 19:22:03	805306370	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			You have been assigned as an editor on a submission to Public Knowledge Press	<p>Dear Daniel Barnes,</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Editorial</a><br /></p><p><b>Abstract</b></p>A Note From The Publisher<p>If you find the submission to be relevant for Public Knowledge Press, please forward the submission to the review stage by selecting "Send to Internal Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this press, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
48	1048585	8	0	2023-03-07 19:22:03	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Editorial	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Editorial</a><br /></p><p><b>Abstract</b></p>A Note From The Publisher<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
49	1048585	8	0	2023-03-07 19:22:03	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Editorial	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Editorial</a><br /></p><p><b>Abstract</b></p>A Note From The Publisher<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
50	1048585	8	0	2023-03-07 19:22:03	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Editorial	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/8">Editorial</a><br /></p><p><b>Abstract</b></p>A Note From The Publisher<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
51	1048585	9	0	2023-03-07 19:23:01	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Enabling Openness: The future of the information society in Latin America and the Caribbean	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Enabling Openness: The future of the information society in Latin America and the Caribbean</a><br />Fernando Perini, Robin Mansell, Hernan Galperin, Pablo Bello, Eleonora Rabinovich</p><p><b>Abstract</b></p>In recent years, the Internet and other network technologies have emerged as a central issue for development in Latin America and the Caribbean. They have shown their potential to increase productivity and economic competitiveness, to create new ways to deliver education and health services, and to be driving forces for the modernization of the provision of public services.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
52	1048585	9	0	2023-03-07 19:23:01	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Enabling Openness: The future of the information society in Latin America and the Caribbean	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Enabling Openness: The future of the information society in Latin America and the Caribbean</a><br />Fernando Perini, Robin Mansell, Hernan Galperin, Pablo Bello, Eleonora Rabinovich</p><p><b>Abstract</b></p>In recent years, the Internet and other network technologies have emerged as a central issue for development in Latin America and the Caribbean. They have shown their potential to increase productivity and economic competitiveness, to create new ways to deliver education and health services, and to be driving forces for the modernization of the provision of public services.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
53	1048585	9	0	2023-03-07 19:23:01	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Enabling Openness: The future of the information society in Latin America and the Caribbean	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/9">Enabling Openness: The future of the information society in Latin America and the Caribbean</a><br />Fernando Perini, Robin Mansell, Hernan Galperin, Pablo Bello, Eleonora Rabinovich</p><p><b>Abstract</b></p>In recent years, the Internet and other network technologies have emerged as a central issue for development in Latin America and the Caribbean. They have shown their potential to increase productivity and economic competitiveness, to create new ways to deliver education and health services, and to be driving forces for the modernization of the provision of public services.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
54	1048585	9	0	2023-03-07 19:23:01	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Fernando Perini" <fperini@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Fernando Perini,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Enabling Openness: The future of the information society in Latin America and the Caribbean, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/9</p><p>If you have been logged out, you can login again with the username fperini.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/9">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
55	1048585	9	0	2023-03-07 19:23:01	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Robin Mansell" <rmansell@mailinator.com>, "Hernan Galperin" <hgalperin@mailinator.com>, "Pablo Bello" <pbello@mailinator.com>, "Eleonora Rabinovich" <erabinovich@mailinator.com>			Submission confirmation	<p>Dear Robin Mansell, Hernan Galperin, Pablo Bello, Eleonora Rabinovich,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Fernando Perini, provided the following details:</p><p>Enabling Openness: The future of the information society in Latin America and the Caribbean<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
56	1048585	9	3	2023-03-07 19:23:18	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Fernando Perini" <fperini@mailinator.com>			Your submission has been sent for internal review	<p>Dear Fernando Perini,</p><p>I am pleased to inform you that an editor has reviewed your submission, Enabling Openness: The future of the information society in Latin America and the Caribbean, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
57	1048585	10	0	2023-03-07 19:25:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Lost Tracks: Buffalo National Park, 1909-1939	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Lost Tracks: Buffalo National Park, 1909-1939</a><br />Jennifer Brower</p><p><b>Abstract</b></p>While contemporaries and historians alike hailed the establishment of Buffalo National Park in Wainwright, Alberta as a wildlife saving effort, the political climate of the early 20th century worked against it. The Canadian Parks Branch was never sufficiently funded to operate BNP effectively or to remedy the crises the animals faced as a result. Cross-breeding experiments with bison and domestic cattle proved unfruitful. Attempts at commercializing the herd had no success. Ultimately, the Department of National Defence repurposed the park for military training and the bison disappeared once more.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
58	1048585	10	0	2023-03-07 19:25:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Lost Tracks: Buffalo National Park, 1909-1939	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Lost Tracks: Buffalo National Park, 1909-1939</a><br />Jennifer Brower</p><p><b>Abstract</b></p>While contemporaries and historians alike hailed the establishment of Buffalo National Park in Wainwright, Alberta as a wildlife saving effort, the political climate of the early 20th century worked against it. The Canadian Parks Branch was never sufficiently funded to operate BNP effectively or to remedy the crises the animals faced as a result. Cross-breeding experiments with bison and domestic cattle proved unfruitful. Attempts at commercializing the herd had no success. Ultimately, the Department of National Defence repurposed the park for military training and the bison disappeared once more.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
59	1048585	10	0	2023-03-07 19:25:12	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Lost Tracks: Buffalo National Park, 1909-1939	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/10">Lost Tracks: Buffalo National Park, 1909-1939</a><br />Jennifer Brower</p><p><b>Abstract</b></p>While contemporaries and historians alike hailed the establishment of Buffalo National Park in Wainwright, Alberta as a wildlife saving effort, the political climate of the early 20th century worked against it. The Canadian Parks Branch was never sufficiently funded to operate BNP effectively or to remedy the crises the animals faced as a result. Cross-breeding experiments with bison and domestic cattle proved unfruitful. Attempts at commercializing the herd had no success. Ultimately, the Department of National Defence repurposed the park for military training and the bison disappeared once more.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
60	1048585	10	0	2023-03-07 19:25:12	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Jennifer Brower" <jbrower@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Jennifer Brower,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Lost Tracks: Buffalo National Park, 1909-1939, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/10</p><p>If you have been logged out, you can login again with the username jbrower.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/10">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
61	1048585	11	0	2023-03-07 19:25:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Dreamwork	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Dreamwork</a><br />Jonathan Locke Hart</p><p><b>Abstract</b></p>Dreamwork is a poetic exploration of the then and there, here and now, of landscapes and inscapes over time. It is part of a poetry series on dream and its relation to actuality. The poems explore past, present, and future in different places from Canada through New Jersey, New York and New England to England and Europe, part of the speaker’s journey. A typology of home and displacement, of natural beauty and industrial scars unfolds in the movement of the book.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
62	1048585	11	0	2023-03-07 19:25:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Dreamwork	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Dreamwork</a><br />Jonathan Locke Hart</p><p><b>Abstract</b></p>Dreamwork is a poetic exploration of the then and there, here and now, of landscapes and inscapes over time. It is part of a poetry series on dream and its relation to actuality. The poems explore past, present, and future in different places from Canada through New Jersey, New York and New England to England and Europe, part of the speaker’s journey. A typology of home and displacement, of natural beauty and industrial scars unfolds in the movement of the book.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
63	1048585	11	0	2023-03-07 19:25:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Dreamwork	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">Dreamwork</a><br />Jonathan Locke Hart</p><p><b>Abstract</b></p>Dreamwork is a poetic exploration of the then and there, here and now, of landscapes and inscapes over time. It is part of a poetry series on dream and its relation to actuality. The poems explore past, present, and future in different places from Canada through New Jersey, New York and New England to England and Europe, part of the speaker’s journey. A typology of home and displacement, of natural beauty and industrial scars unfolds in the movement of the book.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
64	1048585	11	0	2023-03-07 19:25:41	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Jonathan Locke Hart" <jlockehart@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Jonathan Locke Hart,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Dreamwork, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/11</p><p>If you have been logged out, you can login again with the username jlockehart.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/11">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
65	1048585	11	3	2023-03-07 19:25:56	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Jonathan Locke Hart" <jlockehart@mailinator.com>			Your submission has been sent for internal review	<p>Dear Jonathan Locke Hart,</p><p>I am pleased to inform you that an editor has reviewed your submission, Dreamwork, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
66	1048585	11	3	2023-03-07 19:26:12	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Jonathan Locke Hart" <jlockehart@mailinator.com>			Your submission has been sent for review	<p>Dear Jonathan Locke Hart,</p><p>I am pleased to inform you that an editor has reviewed your submission, Dreamwork, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
67	1048585	11	10	2023-03-07 19:26:37	1073741829	"Adela Gallego" <agallego@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			Review accepted: Adela Gallego accepted review assignment for #11 Locke Hart — Dreamwork	<p>Dear Ramiro Vaca,</p><p>Adela Gallego has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">#11 Locke Hart — Dreamwork</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-04-04</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/11">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.
68	1048585	11	12	2023-03-07 19:26:50	1073741829	"Gonzalo Favio" <gfavio@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			Review accepted: Gonzalo Favio accepted review assignment for #11 Locke Hart — Dreamwork	<p>Dear Ramiro Vaca,</p><p>Gonzalo Favio has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/11">#11 Locke Hart — Dreamwork</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-04-04</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/11">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.
69	1048585	11	3	2023-03-07 19:27:16	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Jonathan Locke Hart" <jlockehart@mailinator.com>			Your submission has been accepted to Public Knowledge Press	<p>Dear Jonathan Locke Hart,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Dreamwork, to meet or exceed our expectations. We are excited to publish your piece in Public Knowledge Press and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for Public Knowledge Press and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/11">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
70	1048585	12	0	2023-03-07 19:28:01	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Connecting ICTs to Development	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Connecting ICTs to Development</a><br />Laurent Elder, Heloise Emdon, Frank Tulus, Raymond Hyma, John Valk, Khaled Fourati, Jeremy de Beer, Sara Bannerman</p><p><b>Abstract</b></p>Over the past two decades, projects supported by the International Development Research Centre (IDRC) have critically examined how information and communications technologies (ICTs) can be used to improve learning, empower the disenfranchised, generate income opportunities for the poor, and facilitate access to healthcare in Africa, Asia, Latin America and the Caribbean. Considering that most development institutions and governments are currently attempting to integrate ICTs into their practices, it is an opportune time to reflect on the research findings that have emerged from IDRC’s work and research in this area.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
71	1048585	12	0	2023-03-07 19:28:01	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Connecting ICTs to Development	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Connecting ICTs to Development</a><br />Laurent Elder, Heloise Emdon, Frank Tulus, Raymond Hyma, John Valk, Khaled Fourati, Jeremy de Beer, Sara Bannerman</p><p><b>Abstract</b></p>Over the past two decades, projects supported by the International Development Research Centre (IDRC) have critically examined how information and communications technologies (ICTs) can be used to improve learning, empower the disenfranchised, generate income opportunities for the poor, and facilitate access to healthcare in Africa, Asia, Latin America and the Caribbean. Considering that most development institutions and governments are currently attempting to integrate ICTs into their practices, it is an opportune time to reflect on the research findings that have emerged from IDRC’s work and research in this area.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
72	1048585	12	0	2023-03-07 19:28:02	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Connecting ICTs to Development	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">Connecting ICTs to Development</a><br />Laurent Elder, Heloise Emdon, Frank Tulus, Raymond Hyma, John Valk, Khaled Fourati, Jeremy de Beer, Sara Bannerman</p><p><b>Abstract</b></p>Over the past two decades, projects supported by the International Development Research Centre (IDRC) have critically examined how information and communications technologies (ICTs) can be used to improve learning, empower the disenfranchised, generate income opportunities for the poor, and facilitate access to healthcare in Africa, Asia, Latin America and the Caribbean. Considering that most development institutions and governments are currently attempting to integrate ICTs into their practices, it is an opportune time to reflect on the research findings that have emerged from IDRC’s work and research in this area.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
73	1048585	12	0	2023-03-07 19:28:02	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Laurent Elder" <lelder@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Laurent Elder,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Connecting ICTs to Development, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/12</p><p>If you have been logged out, you can login again with the username lelder.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/12">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
74	1048585	12	0	2023-03-07 19:28:02	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Frank Tulus" <ftulus@mailinator.com>, "Raymond Hyma" <rhyma@mailinator.com>, "John Valk" <jvalk@mailinator.com>, "Khaled Fourati" <fkourati@mailinator.com>, "Jeremy de Beer" <jdebeer@mailinator.com>, "Sara Bannerman" <sbannerman@mailinator.com>			Submission confirmation	<p>Dear Frank Tulus, Raymond Hyma, John Valk, Khaled Fourati, Jeremy de Beer, Sara Bannerman,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Laurent Elder, provided the following details:</p><p>Connecting ICTs to Development<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
75	1048585	12	3	2023-03-07 19:28:18	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Laurent Elder" <lelder@mailinator.com>			Your submission has been sent for internal review	<p>Dear Laurent Elder,</p><p>I am pleased to inform you that an editor has reviewed your submission, Connecting ICTs to Development, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
76	1048585	12	8	2023-03-07 19:28:54	1073741829	"Paul Hudson" <phudson@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			Review accepted: Paul Hudson accepted review assignment for #12 Elder et al. — Connecting ICTs to Development	<p>Dear Ramiro Vaca,</p><p>Paul Hudson has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/12">#12 Elder et al. — Connecting ICTs to Development</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-04-04</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/12">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.
77	1048585	13	0	2023-03-07 19:29:39	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Mobile Learning: Transforming the Delivery of Education and Training	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Mobile Learning: Transforming the Delivery of Education and Training</a><br />Mohamed Ally, John Traxler, Marguerite Koole, Torstein Rekkedal</p><p><b>Abstract</b></p>This collection is for anyone interested in the use of mobile technology for various distance learning applications. Readers will discover how to design learning materials for delivery on mobile technology and become familiar with the best practices of other educators, trainers, and researchers in the field, as well as the most recent initiatives in mobile learning research. Businesses and governments can learn how to deliver timely information to staff using mobile devices. Professors can use this book as a textbook for courses on distance education, mobile learning, and educational technology.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
84	1048585	13	10	2023-03-07 19:30:50	1073741829	"Adela Gallego" <agallego@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			Review accepted: Adela Gallego accepted review assignment for #13 Ally et al. — Mobile Learning: Transforming the Delivery of Education and Training	<p>Dear Ramiro Vaca,</p><p>Adela Gallego has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">#13 Ally et al. — Mobile Learning: Transforming the Delivery of Education and Training</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-04-04</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/13">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.
78	1048585	13	0	2023-03-07 19:29:39	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Mobile Learning: Transforming the Delivery of Education and Training	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Mobile Learning: Transforming the Delivery of Education and Training</a><br />Mohamed Ally, John Traxler, Marguerite Koole, Torstein Rekkedal</p><p><b>Abstract</b></p>This collection is for anyone interested in the use of mobile technology for various distance learning applications. Readers will discover how to design learning materials for delivery on mobile technology and become familiar with the best practices of other educators, trainers, and researchers in the field, as well as the most recent initiatives in mobile learning research. Businesses and governments can learn how to deliver timely information to staff using mobile devices. Professors can use this book as a textbook for courses on distance education, mobile learning, and educational technology.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
79	1048585	13	0	2023-03-07 19:29:39	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Mobile Learning: Transforming the Delivery of Education and Training	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">Mobile Learning: Transforming the Delivery of Education and Training</a><br />Mohamed Ally, John Traxler, Marguerite Koole, Torstein Rekkedal</p><p><b>Abstract</b></p>This collection is for anyone interested in the use of mobile technology for various distance learning applications. Readers will discover how to design learning materials for delivery on mobile technology and become familiar with the best practices of other educators, trainers, and researchers in the field, as well as the most recent initiatives in mobile learning research. Businesses and governments can learn how to deliver timely information to staff using mobile devices. Professors can use this book as a textbook for courses on distance education, mobile learning, and educational technology.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
80	1048585	13	0	2023-03-07 19:29:39	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Mohamed Ally" <mally@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Mohamed Ally,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Mobile Learning: Transforming the Delivery of Education and Training, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/13</p><p>If you have been logged out, you can login again with the username mally.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/13">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
81	1048585	13	0	2023-03-07 19:29:39	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"John Traxler" <jtraxler@mailinator.com>, "Marguerite Koole" <mkoole@mailinator.com>, "Torstein Rekkedal" <trekkedal@mailinator.com>			Submission confirmation	<p>Dear John Traxler, Marguerite Koole, Torstein Rekkedal,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Mohamed Ally, provided the following details:</p><p>Mobile Learning: Transforming the Delivery of Education and Training<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
82	1048585	13	3	2023-03-07 19:29:56	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Mohamed Ally" <mally@mailinator.com>			Your submission has been sent for internal review	<p>Dear Mohamed Ally,</p><p>I am pleased to inform you that an editor has reviewed your submission, Mobile Learning: Transforming the Delivery of Education and Training, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
83	1048585	13	3	2023-03-07 19:30:13	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Mohamed Ally" <mally@mailinator.com>			Your submission has been sent for review	<p>Dear Mohamed Ally,</p><p>I am pleased to inform you that an editor has reviewed your submission, Mobile Learning: Transforming the Delivery of Education and Training, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
85	1048585	13	12	2023-03-07 19:31:03	1073741829	"Gonzalo Favio" <gfavio@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			Review accepted: Gonzalo Favio accepted review assignment for #13 Ally et al. — Mobile Learning: Transforming the Delivery of Education and Training	<p>Dear Ramiro Vaca,</p><p>Gonzalo Favio has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/13">#13 Ally et al. — Mobile Learning: Transforming the Delivery of Education and Training</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-04-04</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/13">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.
86	1048585	13	3	2023-03-07 19:31:31	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Mohamed Ally" <mally@mailinator.com>			Your submission has been accepted to Public Knowledge Press	<p>Dear Mohamed Ally,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, Mobile Learning: Transforming the Delivery of Education and Training, to meet or exceed our expectations. We are excited to publish your piece in Public Knowledge Press and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for Public Knowledge Press and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/13">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
87	1048585	14	0	2023-03-07 19:32:27	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots</a><br />Michael Dawson, Brian Dupuis, Michael Wilson</p><p><b>Abstract</b></p>From Bricks to Brains introduces embodied cognitive science, and illustrates its foundational ideas through the construction and observation of LEGO Mindstorms robots. Discussing the characteristics that distinguish embodied cognitive science from classical cognitive science, From Bricks to Brains places a renewed emphasis on sensing and acting, the importance of embodiment, the exploration of distributed notions of control, and the development of theories by synthesizing simple systems and exploring their behaviour. Numerous examples are used to illustrate a key theme: the importance of an agent’s environment. Even simple agents, such as LEGO robots, are capable of exhibiting complex behaviour when they can sense and affect the world around them.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
88	1048585	14	0	2023-03-07 19:32:27	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots</a><br />Michael Dawson, Brian Dupuis, Michael Wilson</p><p><b>Abstract</b></p>From Bricks to Brains introduces embodied cognitive science, and illustrates its foundational ideas through the construction and observation of LEGO Mindstorms robots. Discussing the characteristics that distinguish embodied cognitive science from classical cognitive science, From Bricks to Brains places a renewed emphasis on sensing and acting, the importance of embodiment, the exploration of distributed notions of control, and the development of theories by synthesizing simple systems and exploring their behaviour. Numerous examples are used to illustrate a key theme: the importance of an agent’s environment. Even simple agents, such as LEGO robots, are capable of exhibiting complex behaviour when they can sense and affect the world around them.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
89	1048585	14	0	2023-03-07 19:32:27	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/14">From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots</a><br />Michael Dawson, Brian Dupuis, Michael Wilson</p><p><b>Abstract</b></p>From Bricks to Brains introduces embodied cognitive science, and illustrates its foundational ideas through the construction and observation of LEGO Mindstorms robots. Discussing the characteristics that distinguish embodied cognitive science from classical cognitive science, From Bricks to Brains places a renewed emphasis on sensing and acting, the importance of embodiment, the exploration of distributed notions of control, and the development of theories by synthesizing simple systems and exploring their behaviour. Numerous examples are used to illustrate a key theme: the importance of an agent’s environment. Even simple agents, such as LEGO robots, are capable of exhibiting complex behaviour when they can sense and affect the world around them.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
90	1048585	14	0	2023-03-07 19:32:27	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Michael Dawson" <mdawson@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Michael Dawson,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/14</p><p>If you have been logged out, you can login again with the username mdawson.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/14">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
91	1048585	14	0	2023-03-07 19:32:27	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Brian Dupuis" <bdupuis@mailinator.com>, "Michael Wilson" <mwilson@mailinator.com>			Submission confirmation	<p>Dear Brian Dupuis, Michael Wilson,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Michael Dawson, provided the following details:</p><p>From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
92	1048585	14	3	2023-03-07 19:32:46	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Michael Dawson" <mdawson@mailinator.com>			Your submission has been sent for internal review	<p>Dear Michael Dawson,</p><p>I am pleased to inform you that an editor has reviewed your submission, From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
93	1048585	14	3	2023-03-07 19:33:05	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Michael Dawson" <mdawson@mailinator.com>			Your submission has been sent for review	<p>Dear Michael Dawson,</p><p>I am pleased to inform you that an editor has reviewed your submission, From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
94	1048585	14	3	2023-03-07 19:33:24	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Michael Dawson" <mdawson@mailinator.com>			Your submission has been accepted to Public Knowledge Press	<p>Dear Michael Dawson,</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots, to meet or exceed our expectations. We are excited to publish your piece in Public Knowledge Press and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for Public Knowledge Press and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/14">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
95	1048585	14	3	2023-03-07 19:33:43	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Michael Dawson" <mdawson@mailinator.com>			Next steps for publishing your submission	<p>Dear Michael Dawson,</p><p>I am writing from Public Knowledge Press to let you know that the editing of your submission, From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/14">submission dashboard</a>.</p><p>Kind regards,</p><p>Daniel Barnes</p>
96	1048585	15	0	2023-03-07 19:35:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Expansive Discourses: Urban Sprawl in Calgary, 1945-1978	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Expansive Discourses: Urban Sprawl in Calgary, 1945-1978</a><br />Max Foran</p><p><b>Abstract</b></p>A groundbreaking study of urban sprawl in Calgary after the Second World War. The interactions of land developers and the local government influenced how the pattern grew: developers met market demands and optimized profits by building houses as efficiently as possible, while the City had to consider wider planning constraints and infrastructure costs. Foran examines the complexity of their interactions from a historical perspective, why each party acted as it did, and where each can be criticized.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
97	1048585	15	0	2023-03-07 19:35:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Expansive Discourses: Urban Sprawl in Calgary, 1945-1978	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Expansive Discourses: Urban Sprawl in Calgary, 1945-1978</a><br />Max Foran</p><p><b>Abstract</b></p>A groundbreaking study of urban sprawl in Calgary after the Second World War. The interactions of land developers and the local government influenced how the pattern grew: developers met market demands and optimized profits by building houses as efficiently as possible, while the City had to consider wider planning constraints and infrastructure costs. Foran examines the complexity of their interactions from a historical perspective, why each party acted as it did, and where each can be criticized.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
98	1048585	15	0	2023-03-07 19:35:41	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Expansive Discourses: Urban Sprawl in Calgary, 1945-1978	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/15">Expansive Discourses: Urban Sprawl in Calgary, 1945-1978</a><br />Max Foran</p><p><b>Abstract</b></p>A groundbreaking study of urban sprawl in Calgary after the Second World War. The interactions of land developers and the local government influenced how the pattern grew: developers met market demands and optimized profits by building houses as efficiently as possible, while the City had to consider wider planning constraints and infrastructure costs. Foran examines the complexity of their interactions from a historical perspective, why each party acted as it did, and where each can be criticized.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
99	1048585	15	0	2023-03-07 19:35:41	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Max Foran" <mforan@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Max Foran,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Expansive Discourses: Urban Sprawl in Calgary, 1945-1978, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/15</p><p>If you have been logged out, you can login again with the username mforan.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/15">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
100	1048585	15	3	2023-03-07 19:35:59	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Max Foran" <mforan@mailinator.com>			Your submission has been sent for review	<p>Dear Max Foran,</p><p>I am pleased to inform you that an editor has reviewed your submission, Expansive Discourses: Urban Sprawl in Calgary, 1945-1978, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
101	1048585	16	0	2023-03-07 19:36:59	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: A Designer's Log: Case Studies in Instructional Design	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">A Designer's Log: Case Studies in Instructional Design</a><br />Michael Power</p><p><b>Abstract</b></p>Books and articles on instructional design in online learning abound but rarely do we get such a comprehensive picture of what instructional designers do, how they do it, and the problems they solve as their university changes. Power documents the emergence of an adapted instructional design model for transforming courses from single-mode to dual-mode instruction, making this designer’s log a unique contribution to the fi eld of online learning.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
102	1048585	16	0	2023-03-07 19:36:59	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: A Designer's Log: Case Studies in Instructional Design	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">A Designer's Log: Case Studies in Instructional Design</a><br />Michael Power</p><p><b>Abstract</b></p>Books and articles on instructional design in online learning abound but rarely do we get such a comprehensive picture of what instructional designers do, how they do it, and the problems they solve as their university changes. Power documents the emergence of an adapted instructional design model for transforming courses from single-mode to dual-mode instruction, making this designer’s log a unique contribution to the fi eld of online learning.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
103	1048585	16	0	2023-03-07 19:36:59	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: A Designer's Log: Case Studies in Instructional Design	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">A Designer's Log: Case Studies in Instructional Design</a><br />Michael Power</p><p><b>Abstract</b></p>Books and articles on instructional design in online learning abound but rarely do we get such a comprehensive picture of what instructional designers do, how they do it, and the problems they solve as their university changes. Power documents the emergence of an adapted instructional design model for transforming courses from single-mode to dual-mode instruction, making this designer’s log a unique contribution to the fi eld of online learning.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
104	1048585	16	0	2023-03-07 19:36:59	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Michael Power" <mpower@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Michael Power,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, A Designer's Log: Case Studies in Instructional Design, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/16</p><p>If you have been logged out, you can login again with the username mpower.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/16">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
105	1048585	16	3	2023-03-07 19:37:19	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Michael Power" <mpower@mailinator.com>			Your submission has been sent for review	<p>Dear Michael Power,</p><p>I am pleased to inform you that an editor has reviewed your submission, A Designer's Log: Case Studies in Instructional Design, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>This journal conducts double-anonymous peer review. The reviewers will not see any identifying information about you or your co-authors. Similarly, you will not know who reviewed your submission, and you will not hear from the reviewers directly. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
106	1048585	16	10	2023-03-07 19:37:57	1073741829	"Adela Gallego" <agallego@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			Review accepted: Adela Gallego accepted review assignment for #16 Power — A Designer's Log: Case Studies in Instructional Design	<p>Dear Ramiro Vaca,</p><p>Adela Gallego has accepted the following review:</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/16">#16 Power — A Designer's Log: Case Studies in Instructional Design</a><br /><b>Type:</b> Anonymous Reviewer/Anonymous Author</p><b>Review Due:</b> 2023-04-04</p><p>Login to <a href="http://localhost/index.php/publicknowledge/workflow/access/16">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.
107	1048585	17	0	2023-03-07 19:39:18	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"admin admin" <pkpadmin@mailinator.com>			A new submission needs an editor to be assigned: Open Development: Networked Innovations in International Development	<p>Dear admin admin,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Open Development: Networked Innovations in International Development</a><br />Matthew Smith, Yochai Benkler, Katherine Reilly, Melissa Loudon, Ulrike Rivett, Mark Graham, Håvard Haarstad, Marshall Smith</p><p><b>Abstract</b></p>The emergence of open networked models made possible by digital technology has the potential to transform international development. Open network structures allow people to come together to share information, organize, and collaborate. Open development harnesses this power to create new organizational forms and improve people’s lives; it is not only an agenda for research and practice but also a statement about how to approach international development. In this volume, experts explore a variety of applications of openness, addressing challenges as well as opportunities.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
108	1048585	17	0	2023-03-07 19:39:18	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Ramiro Vaca" <rvaca@mailinator.com>			A new submission needs an editor to be assigned: Open Development: Networked Innovations in International Development	<p>Dear Ramiro Vaca,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Open Development: Networked Innovations in International Development</a><br />Matthew Smith, Yochai Benkler, Katherine Reilly, Melissa Loudon, Ulrike Rivett, Mark Graham, Håvard Haarstad, Marshall Smith</p><p><b>Abstract</b></p>The emergence of open networked models made possible by digital technology has the potential to transform international development. Open network structures allow people to come together to share information, organize, and collaborate. Open development harnesses this power to create new organizational forms and improve people’s lives; it is not only an agenda for research and practice but also a statement about how to approach international development. In this volume, experts explore a variety of applications of openness, addressing challenges as well as opportunities.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
109	1048585	17	0	2023-03-07 19:39:18	805306373	"Ramiro Vaca" <rvaca@mailinator.com>	"Daniel Barnes" <dbarnes@mailinator.com>			A new submission needs an editor to be assigned: Open Development: Networked Innovations in International Development	<p>Dear Daniel Barnes,</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="http://localhost/index.php/publicknowledge/workflow/access/17">Open Development: Networked Innovations in International Development</a><br />Matthew Smith, Yochai Benkler, Katherine Reilly, Melissa Loudon, Ulrike Rivett, Mark Graham, Håvard Haarstad, Marshall Smith</p><p><b>Abstract</b></p>The emergence of open networked models made possible by digital technology has the potential to transform international development. Open network structures allow people to come together to share information, organize, and collaborate. Open development harnesses this power to create new organizational forms and improve people’s lives; it is not only an agenda for research and practice but also a statement about how to approach international development. In this volume, experts explore a variety of applications of openness, addressing challenges as well as opportunities.<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
110	1048585	17	0	2023-03-07 19:39:18	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Matthew Smith" <msmith@mailinator.com>			Thank you for your submission to Public Knowledge Press	<p>Dear Matthew Smith,</p><p>Thank you for your submission to Public Knowledge Press. We have received your submission, Open Development: Networked Innovations in International Development, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: http://localhost/index.php/publicknowledge/authorDashboard/submission/17</p><p>If you have been logged out, you can login again with the username msmith.</p><p>If you have any questions, please contact me from your <a href="http://localhost/index.php/publicknowledge/authorDashboard/submission/17">submission dashboard</a>.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
111	1048585	17	0	2023-03-07 19:39:18	536870914	"Ramiro Vaca" <rvaca@mailinator.com>	"Yochai Benkler" <ybenkler@mailinator.com>, "Katherine Reilly" <kreilly@mailinator.com>, "Melissa Loudon" <mloudon@mailinator.com>, "Ulrike Rivett" <urivett@mailinator.com>, "Mark Graham" <mgraham@mailinator.com>, "Håvard Haarstad" <hhaarstad@mailinator.com>, "Marshall Smith" <masmith@mailinator.com>			Submission confirmation	<p>Dear Yochai Benkler, Katherine Reilly, Melissa Loudon, Ulrike Rivett, Mark Graham, Håvard Haarstad, Marshall Smith,</p><p>You have been named as a co-author on a submission to Public Knowledge Press. The submitter, Matthew Smith, provided the following details:</p><p>Open Development: Networked Innovations in International Development<br></p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering Public Knowledge Press as a venue for your work.</p><p>Kind regards,</p><br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>
112	1048585	17	3	2023-03-07 19:39:39	805306369	"Daniel Barnes" <dbarnes@mailinator.com>	"Matthew Smith" <msmith@mailinator.com>			Your submission has been sent for internal review	<p>Dear Matthew Smith,</p><p>I am pleased to inform you that an editor has reviewed your submission, Open Development: Networked Innovations in International Development, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p><p>Daniel Barnes</p></p>
\.


--
-- Name: email_log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.email_log_log_id_seq', 112, true);


--
-- Data for Name: email_log_users; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.email_log_users (email_log_id, user_id) FROM stdin;
1	1
2	2
3	3
4	19
5	19
6	19
7	1
8	2
9	3
10	20
12	20
13	1
14	2
15	3
16	21
17	1
18	2
19	3
20	22
22	22
23	22
24	22
25	22
26	1
27	2
28	3
29	23
30	23
31	23
32	23
33	23
34	1
35	2
36	3
37	24
39	24
40	1
41	2
42	3
43	25
45	25
46	25
47	3
48	1
49	2
50	3
51	1
52	2
53	3
54	26
56	26
57	1
58	2
59	3
60	27
61	1
62	2
63	3
64	28
65	28
66	28
67	2
68	2
69	28
70	1
71	2
72	3
73	29
75	29
76	2
77	1
78	2
79	3
80	30
82	30
83	30
84	2
85	2
86	30
87	1
88	2
89	3
90	31
92	31
93	31
94	31
95	31
96	1
97	2
98	3
99	32
100	32
101	1
102	2
103	3
104	33
105	33
106	2
107	1
108	2
109	3
110	34
112	34
\.


--
-- Data for Name: email_templates; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.email_templates (email_id, email_key, context_id, alternate_to) FROM stdin;
1	COPYEDIT_REQUEST	1	DISCUSSION_NOTIFICATION_COPYEDITING
2	EDITOR_ASSIGN_SUBMISSION	1	DISCUSSION_NOTIFICATION_SUBMISSION
3	EDITOR_ASSIGN_REVIEW	1	DISCUSSION_NOTIFICATION_REVIEW
4	EDITOR_ASSIGN_PRODUCTION	1	DISCUSSION_NOTIFICATION_PRODUCTION
5	LAYOUT_REQUEST	1	DISCUSSION_NOTIFICATION_PRODUCTION
6	LAYOUT_COMPLETE	1	DISCUSSION_NOTIFICATION_PRODUCTION
7	INDEX_REQUEST	1	DISCUSSION_NOTIFICATION_PRODUCTION
8	INDEX_COMPLETE	1	DISCUSSION_NOTIFICATION_PRODUCTION
\.


--
-- Data for Name: email_templates_default_data; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.email_templates_default_data (email_key, locale, name, subject, body) FROM stdin;
PASSWORD_RESET_CONFIRM	en	Password Reset Confirm	Password Reset Confirmation	We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$lostPasswordUrl}<br />\n<br />\n{$siteContactName}
USER_REGISTER	en	User Created	Press Registration	{$recipientName}<br />\n<br />\nYou have now been registered as a user with {$pressName}. We have included your username and password in this email, which are needed for all work with this press through its website. At any point, you can ask to be removed from the list of users by contacting me.<br />\n<br />\nUsername: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$signature}
USER_VALIDATE_CONTEXT	en	Validate Email (Press Registration)	Validate Your Account	{$recipientName}<br />\n<br />\nYou have created an account with {$pressName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$pressSignature}
USER_VALIDATE_SITE	en	Validate Email (Site)	Validate Your Account	{$recipientName}<br />\n<br />\nYou have created an account with {$siteTitle}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$siteSignature}
REVIEWER_REGISTER	en	Reviewer Register	Registration as Reviewer with {$pressName}	In light of your expertise, we have taken the liberty of registering your name in the reviewer database for {$pressName}. This does not entail any form of commitment on your part, but simply enables us to approach you with a submission to possibly review. On being invited to review, you will have an opportunity to see the title and abstract of the paper in question, and you'll always be in a position to accept or decline the invitation. You can also ask at any point to have your name removed from this reviewer list.<br />\n<br />\nWe are providing you with a username and password, which is used in all interactions with the press through its website. You may wish, for example, to update your profile, including your reviewing interests.<br />\n<br />\nUsername: {$recipientUsername}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$signature}
SUBMISSION_ACK	en	Submission Confirmation	Thank you for your submission to {$pressName}	<p>Dear {$recipientName},</p><p>Thank you for your submission to {$pressName}. We have received your submission, {$submissionTitle}, and a member of our editorial team will see it soon. You will be sent an email when an initial decision is made, and we may contact you for further information.</p><p>You can view your submission and track its progress through the editorial process at the following location:</p><p>Submission URL: {$authorSubmissionUrl}</p><p>If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Thank you for considering {$pressName} as a venue for your work.</p>{$pressSignature}
SUBMISSION_ACK_NOT_USER	en	Submission Confirmation (Other Authors)	Submission confirmation	<p>Dear {$recipientName},</p><p>You have been named as a co-author on a submission to {$pressName}. The submitter, {$submitterName}, provided the following details:</p><p>{$submissionTitle}<br>{$authorsWithAffiliation}</p><p>If any of these details are incorrect, or you do not wish to be named on this submission, please contact me.</p><p>Thank you for considering {$pressName} as a venue for your work.</p><p>Kind regards,</p>{$pressSignature}
EDITOR_ASSIGN	en	Editor Assigned	You have been assigned as an editor on a submission to {$pressName}	<p>Dear {$recipientName},</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>If you find the submission to be relevant for {$pressName}, please forward the submission to the review stage by selecting "Send to Internal Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this press, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p>{$pressSignature}
REVIEW_CANCEL	en	Reviewer Unassign	Request for Review Cancelled	{$recipientName}:<br />\n<br />\nWe have decided at this point to cancel our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$pressName}. We apologize for any inconvenience this may cause you and hope that we will be able to call on you to assist with this review process in the future.<br />\n<br />\nIf you have any questions, please contact me.
REVIEW_REINSTATE	en	Reviewer Reinstate	Can you still review something for {$pressName}?	<p>Dear {$recipientName},</p><p>We recently cancelled our request for you to review a submission, {$submissionTitle}, for {$pressName}. We've reversed that decision and we hope that you are still able to conduct the review.</p><p>If you are able to assist with this submission's review, you can <a href="{$reviewAssignmentUrl}">login to the press</a> to view the submission, upload review files, and submit your review request.</p><p>If you have any questions, please contact me.</p><p>Kind regards,</p>{$signature}
REVIEW_RESEND_REQUEST	en	Resend Review Request to Reviewer	Requesting your review again for {$pressName}	<p>Dear {$recipientName},</p><p>Recently, you declined our request to review a submission, {$submissionTitle}, for {$pressName}. I'm writing to see if you are able to conduct the review after all.</p><p>We would be grateful if you're able to perform this review, but we understand if that is not possible at this time. Either way, please <a href="{$reviewAssignmentUrl}">accept or decline the request</a> by {$responseDueDate}, so that we can find an alternate reviewer.<p>If you have any questions, please contact me.</p><p>Kind regards,</p>{$signature}
REVIEW_REQUEST	en	Review Request	Manuscript Review Request	<p>Dear {$recipientName},</p><p>I believe that you would serve as an excellent reviewer for a submission  to {$pressName}. The submission's title and abstract are below, and I hope that you will consider undertaking this important task for us.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can view the submission, upload review files, and submit your review by logging into the press and following the steps at the link below.</p><p><a href="{$reviewAssignmentUrl}">{$submissionTitle}</a></p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please <a href="{$reviewAssignmentUrl}">accept or decline</a> the review by <b>{$responseDueDate}</b>.</p><p>You may contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$signature}
REVIEW_REQUEST_SUBSEQUENT	en	Review Request Subsequent	Request to review a revised submission	<p>Dear {$recipientName},</p><p>Thank you for your review of <a href="{$reviewAssignmentUrl}">{$submissionTitle}</a>. The authors have considered the reviewers' feedback and have now submitted a revised version of their work. I'm writing to ask if you would conduct a second round of peer review for this submission.</p><p>If you are able to review this submission, your review is due by {$reviewDueDate}. You can <a href="{$reviewAssignmentUrl}">follow the review steps</a> to view the submission, upload review files, and submit your review comments.<p><p><a href="{$reviewAssignmentUrl}">{$submissionTitle}</a></p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please <a href="{$reviewAssignmentUrl}">accept or decline</a> the review by <b>{$responseDueDate}</b>.</p><p>Please feel free to contact me with any questions about the submission or the review process.</p><p>Thank you for considering this request. Your help is much appreciated.</p><p>Kind regards,</p>{$signature}
REVIEW_RESPONSE_OVERDUE_AUTO	en	Review Response Overdue (Automated)	Manuscript Review Request	Dear {$recipientName},<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$pressName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\n{$messageToReviewer}<br />\n<br />\nPlease log into the press web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$reviewAssignmentUrl}<br />\n<br />\nUsername: {$recipientUsername}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n<br />\nSincerely,<br />\n{$pressSignature}<br />\n
REVIEW_CONFIRM	en	Review Confirm	Review accepted: {$reviewerName} accepted review assignment for #{$submissionId} {$authorsShort} — {$submissionTitle}	<p>Dear {$recipientName},</p><p>{$reviewerName} has accepted the following review:</p><p><a href="{$submissionUrl}">#{$submissionId} {$authorsShort} — {$submissionTitle}</a><br /><b>Type:</b> {$reviewMethod}</p><b>Review Due:</b> {$reviewDueDate}</p><p>Login to <a href="{$submissionUrl}">view all reviewer assignments</a> for this submission.</p><br><br>—<br>This is an automated message from <a href="{$pressUrl}">{$pressName}</a>.
REVIEW_DECLINE	en	Review Decline	Unable to Review	Editor(s):<br />\n<br />\nI am afraid that at this time I am unable to review the submission, &quot;{$submissionTitle},&quot; for {$pressName}. Thank you for thinking of me, and another time feel free to call on me.<br />\n<br />\n{$senderName}
REVIEW_ACK	en		Thank you for your review	<p>Dear {$recipientName},</p>\n<p>Thank you for completing your review of the submission, {$submissionTitle}, for {$pressName}. We appreciate your time and expertise in contributing to the quality of the work that we publish.</p>\n<p>It has been a pleasure to work with you as a reviewer for {$pressName}, and we hope to have the opportunity to work with you again in the future.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>
REVIEW_REMIND	en	Review Reminder	A reminder to please complete your review	<p>Dear {$recipientName},</p><p>Just a gentle reminder of our request for your review of the submission, "{$submissionTitle}," for {$pressName}. We were expecting to have this review by {$reviewDueDate} and we would be pleased to receive it as soon as you are able to prepare it.</p><p>You can <a href="{$reviewAssignmentUrl}">login to the press</a> and follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>If you need an extension of the deadline, please contact me. I look forward to hearing from you.</p><p>Thank you in advance and kind regards,</p>{$signature}
REVIEW_REMIND_AUTO	en	Review Reminder (Automated)	A reminder to please complete your review	<p>Dear {$recipientName}:</p><p>This email is an automated reminder from {$pressName} in regards to our request for your review of the submission, "{$submissionTitle}."</p><p>We were expecting to have this review by {$reviewDueDate} and we would be pleased to receive it as soon as you are able to prepare it.</p><p>Please <a href="{$reviewAssignmentUrl}">login to the press</a> and follow the review steps to view the submission, upload review files, and submit your review comments.</p><p>If you need an extension of the deadline, please contact me. I look forward to hearing from you.</p><p>Thank you in advance and kind regards,</p>{$pressSignature}
REVIEW_COMPLETE	en	Review Completed	Review complete: {$reviewerName} recommends {$reviewRecommendation} for #{$submissionId} {$authorsShort} — {$submissionTitle}	<p>Dear {$recipientName},</p><p>{$reviewerName} completed the following review:</p><p><a href="{$submissionUrl}">#{$submissionId} {$authorsShort} — {$submissionTitle}</a><br /><b>Recommendation:</b> {$reviewRecommendation}<br /><b>Type:</b> {$reviewMethod}</p><p>Login to <a href="{$submissionUrl}">view all files and comments</a> provided by this reviewer.</p>
REVIEW_EDIT	en	Review Edited	Your review assignment has been changed for {$pressName}	<p>Dear {$recipientName},</p><p>An editor has made changes to your review assignment for {$pressName}. Please review the details below and let us know if you have any questions.</p><p><a href="{$reviewAssignmentUrl}">{$submissionTitle}</a><br /><b>Type:</b> {$reviewMethod}<br /><b>Accept or Decline By:</b> {$responseDueDate}<br /><b>Submit Review By:</b> {$reviewDueDate}</p><p>You can login to <a href="{$reviewAssignmentUrl}">complete this review</a> at any time.</p>
EDITOR_DECISION_ACCEPT	en	Submission Accepted	Your submission has been accepted to {$pressName}	<p>Dear {$recipientName},</p><p>I am pleased to inform you that we have decided to accept your submission without further revision. After careful review, we found your submission, {$submissionTitle}, to meet or exceed our expectations. We are excited to publish your piece in {$pressName} and we thank you for choosing our press as a venue for your work.</p><p>Your submission will soon be published on the press site for {$pressName} and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on reaching this stage.</p><p>Your submission will now undergo copy editing and formatting to prepare it for publication.</p><p>You will shortly receive further instructions.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p>{$signature}
EDITOR_DECISION_SEND_TO_INTERNAL	en	Sent to Internal Review	Your submission has been sent for internal review	<p>Dear {$recipientName},</p><p>I am pleased to inform you that an editor has reviewed your submission, {$submissionTitle}, and has decided to send it for internal review. You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission for internal review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p>{$signature}</p>
EDITOR_DECISION_SEND_TO_EXTERNAL	en	Sent to Review	Your submission has been sent for review	<p>Dear {$recipientName},</p><p>I am pleased to inform you that an editor has reviewed your submission, {$submissionTitle}, and has decided to send it for peer review. An editor will identify qualified reviewers who will provide feedback on your submission.</p><p>{$reviewTypeDescription} You will hear from us with feedback from the reviewers and information about the next steps.</p><p>Please note that sending the submission to peer review does not guarantee that it will be published. We will consider the reviewers' recommendations before deciding to accept the submission for publication. You may be asked to make revisions and respond to the reviewers' comments before a final decision is made.</p><p>If you have any questions, please contact me from your submission dashboard.</p><p>{$signature}</p>
EDITOR_DECISION_SEND_TO_PRODUCTION	en	Sent to Production	Next steps for publishing your submission	<p>Dear {$recipientName},</p><p>I am writing from {$pressName} to let you know that the editing of your submission, {$submissionTitle}, is complete. Your submission will now advance to the production stage, where the final galleys will be prepared for publication. We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p>{$signature}
EDITOR_DECISION_REVISIONS	en	Revisions Requested	Your submission has been reviewed and we encourage you to submit revisions	<p>Dear {$recipientName},</p><p>Your submission {$submissionTitle} has been reviewed and we would like to encourage you to submit revisions that address the reviewers' comments. An editor will review these revisions and if they address the concerns adequately, your submission may be accepted for publication.</p><p>The reviewers' comments are included at the bottom of this email. Please respond to each point in the reviewers' comments and identify what changes you have made. If you find any of the reviewer's comments to be unjustified or inappropriate, please explain your perspective.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers' comments at your <a href="{$authorSubmissionUrl}">submission dashboard</a>. If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}
EDITOR_DECISION_RESUBMIT	en	Resubmit for Review	Your submission has been reviewed - please revise and resubmit	<p>Dear {$recipientName},</p><p>After reviewing your submission, {$submissionTitle}, the reviewers have recommended that your submission cannot be accepted for publication in its current form. However, we would like to encourage you to submit a revised version that addresses the reviewers' comments. Your revisions will be reviewed by an editor and may be sent out for another round of peer review.</p><p>Please note that resubmitting your work does not guarantee that it will be accepted.</p><p>The reviewers' comments are included at the bottom of this email. Please respond to each point and identify what changes you have made. If you find any of the reviewer's comments inappropriate, please explain your perspective. If you have questions about the recommendations in your review, please include these in your response.</p><p>When you have completed your revisions, you can upload revised documents along with your response to the reviewers' comments <a href="{$authorSubmissionUrl}">at your submission dashboard</a>. If you have been logged out, you can login again with the username {$recipientUsername}.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>We look forward to receiving your revised submission.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}
EDITOR_DECISION_DECLINE	en	Submission Declined	Your submission has been declined	<p>Dear {$recipientName},</p><p>While we appreciate receiving your submission, we are unable to accept {$submissionTitle} for publication on the basis of the comments from reviewers.</p><p>The reviewers' comments are included at the bottom of this email.</p><p>Thank you for submitting to {$pressName}. Although it is disappointing to have a submission declined, I hope you find the reviewers' comments to be constructive and helpful.</p><p>You are now free to submit the work elsewhere if you choose to do so.</p><p>Kind regards,</p>{$signature}<hr><p>The following comments were received from reviewers.</p>{$allReviewerComments}
EDITOR_DECISION_INITIAL_DECLINE	en	Submission Declined (Pre-Review)	Your submission has been declined	<p>Dear {$recipientName},</p><p>I’m sorry to inform you that, after reviewing your submission, {$submissionTitle}, the editor has found that it does not meet our requirements for publication in {$pressName}.</p><p>I wish you success if you consider submitting your work elsewhere.</p><p>Kind regards,</p>{$signature}
EDITOR_RECOMMENDATION	en	Recommendation Made	Editor Recommendation	<p>Dear {$recipientName},</p><p>After considering the reviewers' feedback, I would like to make the following recommendation regarding the submission {$submissionTitle}.</p><p>My recommendation is: {$recommendation}.</p><p>Please visit the submission's <a href="{$submissionUrl}">editorial workflow</a> to act on this recommendation.</p><p>Please feel free to contact me with any questions.</p><p>Kind regards,</p><p>{$senderName}</p>
EDITOR_DECISION_NOTIFY_OTHER_AUTHORS	en	Notify Other Authors	An update regarding your submission	<p>The following email was sent to {$submittingAuthorName} from {$pressName} regarding {$submissionTitle}.</p>\n<p>You are receiving a copy of this notification because you are identified as an author of the submission. Any instructions in the message below are intended for the submitting author, {$submittingAuthorName}, and no action is required of you at this time.</p>\n\n{$messageToSubmittingAuthor}
EDITOR_DECISION_NOTIFY_REVIEWERS	en	Notify Reviewers of Decision	Thank you for your review	<p>Dear {$recipientName},</p>\n<p>Thank you for completing your review of the submission, {$submissionTitle}, for {$pressName}. We appreciate your time and expertise in contributing to the quality of the work that we publish. We have shared your comments with the authors, along with our other reviewers' comments and the editor's decision.</p>\n<p>Based on the feedback we received, we have notified the authors of the following:</p>\n<p>{$decisionDescription}</p>\n<p>Your recommendation was considered alongside the recommendations of other reviewers before coming to a decision. Occasionally the editor's decision may differ from the recommendation made by one or more reviewers. The editor considers many factors, and does not take these decisions lightly. We are grateful for our reviewers' expertise and suggestions.</p>\n<p>It has been a pleasure to work with you as a reviewer for {$pressName}, and we hope to have the opportunity to work with you again in the future.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>
EDITOR_DECISION_NEW_ROUND	en	New Review Round Initiated	Your submission has been sent for another round of review	<p>Dear {$recipientName},</p>\n<p>Your revised submission, {$submissionTitle}, has been sent for a new round of peer review. \nYou will hear from us with feedback from the reviewers and information about the next steps.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_REVERT_DECLINE	en	Reinstate Declined Submission	We have reversed the decision to decline your submission	<p>Dear {$recipientName},</p>\n<p>The decision to decline your submission, {$submissionTitle}, has been reversed. \nAn editor will complete the round of review and you will be notified when a \ndecision is made.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_REVERT_INITIAL_DECLINE	en	Reinstate Submission Declined Without Review	We have reversed the decision to decline your submission	<p>Dear {$recipientName},</p>\n<p>The decision to decline your submission, {$submissionTitle}, has been reversed. \nAn editor will look further at your submission before deciding whether to decline \nthe submission or send it for review.</p>\n<p>Occasionally, a decision to decline a submission will be recorded accidentally in \nour system and must be reverted. I apologize for any confusion this may have caused.</p>\n<p>We will contact you if we need any further assistance.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_SKIP_REVIEW	en	Submission Accepted (Without Review)	Your submission has been sent for copyediting	<p>Dear {$recipientName},</p>\n<p>I am pleased to inform you that we have decided to accept your submission without peer review. We found your submission, {$submissionTitle}, to meet our expectations, and we do not require that work of this type undergo peer review. We are excited to publish your piece in {$pressName} and we thank you for choosing our press as a venue for your work.</p>\n<p>Your submission will soon be published on the press site for {$pressName} and you are welcome to include it in your list of publications. We recognize the hard work that goes into every successful submission and we want to congratulate you on your efforts.</p>\n<p>Your submission will now undergo copy editing and formatting to prepare it for publication. </p>\n<p>You will shortly receive further instructions.</p>\n<p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p>\n<p>Kind regards,</p>\n<p>{$signature}</p>\n
EDITOR_DECISION_BACK_FROM_PRODUCTION	en	Submission Sent Back to Copyediting	Your submission has been sent back to copyediting	<p>Dear {$recipientName},</p><p>Your submission, {$submissionTitle}, has been sent back to the copyediting stage, where it will undergo further copyediting and formatting to prepare it for publication.</p><p>Occasionally, a submission is sent to the production stage before it is ready for the final galleys to be prepared for publication. Your submission is still forthcoming. I apologize for any confusion.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>We will contact you if we need any further assistance.</p><p>Kind regards,</p><p>{$signature}</p>
EDITOR_DECISION_BACK_FROM_COPYEDITING	en	Submission Sent Back from Copyediting	Your submission has been sent back to review	<p>Dear {$recipientName},</p><p>Your submission, {$submissionTitle}, has been sent back to the review stage. It will undergo further review before it can be accepted for publication.</p><p>Occasionally, a decision to accept a submission will be recorded accidentally in our system and we must send it back to review. I apologize for any confusion this has caused. We will work to complete any further review quickly so that you have a final decision as soon as possible.</p><p>We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p><p>{$signature}</p>
EDITOR_DECISION_CANCEL_REVIEW_ROUND	en	Review Round Cancelled	A review round for your submission has been cancelled	<p>Dear {$recipientName},</p><p>We recently opened a new review round for your submission, {$submissionTitle}. We are closing this review round now.</p><p>Occasionally, a decision to open a round of review will be recorded accidentally in our system and we must cancel this review round. I apologize for any confusion this may have caused.</p><p>We will contact you if we need any further assistance.</p><p>If you have any questions, please contact me from your <a href="{$authorSubmissionUrl}">submission dashboard</a>.</p><p>Kind regards,</p><p>{$signature}</p>
REVISED_VERSION_NOTIFY	en	Revised Version Notification	Revised Version Uploaded	<p>Dear {$recipientName},</p><p>The author has uploaded revisions for the submission, <b>{$authorsShort} — {$submissionTitle}</b>. <p>As an assigned editor, we ask that you login and <a href="{$submissionUrl}">view the revisions</a> and make a decision to accept, decline or send the submission for further review.</p><br><br>—<br>This is an automated message from <a href="{$pressUrl}">{$pressName}</a>.
STATISTICS_REPORT_NOTIFICATION	en	Statistics Report Notification	Editorial activity for {$month}, {$year}	\n{$recipientName}, <br />\n<br />\nYour press health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n\t<li>New submissions this month: {$newSubmissions}</li>\n\t<li>Declined submissions this month: {$declinedSubmissions}</li>\n\t<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n\t<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the the press to view more detailed <a href="{$editorialStatsLink}">editorial trends</a> and <a href="{$publicationStatsLink}">published book stats</a>. A full copy of this month's editorial trends is attached.<br />\n<br />\nSincerely,<br />\n{$pressSignature}
ANNOUNCEMENT	en	New Announcement	{$announcementTitle}	<b>{$announcementTitle}</b><br />\n<br />\n{$announcementSummary}<br />\n<br />\nVisit our website to read the <a href="{$announcementUrl}">full announcement</a>.
DISCUSSION_NOTIFICATION_SUBMISSION	en	Discussion (Submission)	A message regarding {$pressName}	Please enter your message.
DISCUSSION_NOTIFICATION_REVIEW	en	Discussion (Review)	A message regarding {$pressName}	Please enter your message.
DISCUSSION_NOTIFICATION_COPYEDITING	en	Discussion (Copyediting)	A message regarding {$pressName}	Please enter your message.
DISCUSSION_NOTIFICATION_PRODUCTION	en	Discussion (Production)	A message regarding {$pressName}	Please enter your message.
COPYEDIT_REQUEST	en	Request Copyedit	Submission {$submissionId} is ready to be copyedited for {$contextAcronym}	<p>Dear {$recipientName},</p><p>A new submission is ready to be copyedited:</p><p><a href"{$submissionUrl}">{$submissionId} — {$submissionTitle}</a><br />{$pressName}</p><p>Please follow these steps to complete this task:</p><ol><li>Click on the Submission URL below.</li><li>Open any files available under Draft Files and edit the files. Use the Copyediting Discussions area if you need to contact the editor(s) or author(s).</li><li>Save the copyedited file(s) and upload them to the Copyedited panel.</li><li>Use the Copyediting Discussions to notify the editor(s) that all files have been prepared, and that the Production process may begin.</li></ol><p>If you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to {$pressName}.</p><p>Kind regards,</p>{$signature}
EDITOR_ASSIGN_SUBMISSION	en	Assign Editor	You have been assigned as an editor on a submission to {$pressName}	<p>Dear {$recipientName},</p><p>The following submission has been assigned to you to see through the editorial process.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>If you find the submission to be relevant for {$pressName}, please forward the submission to the review stage by selecting "Send to Internal Review" and then assign reviewers by clicking "Add Reviewer".</p><p>If the submission is not appropriate for this press, please decline the submission.</p><p>Thank you in advance.</p><p>Kind regards,</p>{$pressSignature}
EDITOR_ASSIGN_REVIEW	en	Assign Editor	You have been assigned as an editor on a submission to {$pressName}	
EDITOR_ASSIGN_PRODUCTION	en	Assign Editor	You have been assigned as an editor on a submission to {$pressName}	
LAYOUT_REQUEST	en	Ready for Production	Submission {$submissionId} is ready for production at {$contextAcronym}	<p>Dear {$recipientName},</p><p>A new submission is ready for layout editing:</p><p><a href="{$submissionUrl}">{$submissionId} {$submissionTitle}</a><br />{$pressName}</p><ol><li>Click on the Submission URL above.</li><li>Download the Production Ready files and use them to create the galleys according to the press's standards.</li><li>Upload the galleys to the Publication Formats section of the submission.</li><li>Use the Production Discussions to notify the editor that the galleys are ready.</li></ol><p>If you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this press.</p><p>Kind regards,</p>{$signature}
LAYOUT_COMPLETE	en		Galleys Complete	<p>Dear {$recipientName},<p><p>Galleys have now been prepared for the following submission and are ready for final review.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$pressName}</p><p>If you have any questions, please contact me.</p><p>Kind regards,</p><p>{$senderName}</p>
INDEX_REQUEST	en	Index Requested	Request Index	{$recipientName}:<br />\n<br />\nThe submission &quot;{$submissionTitle}&quot; to {$pressName} now needs indexes created by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Log into the press and use the Page Proofs file to create the galleys according to press standards.<br />\n3. Send the COMPLETE email to the editor.<br />\n<br />\n{$pressName} URL: {$pressUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$recipientUsername}<br />\n<br />\nIf you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this press.<br />\n<br />\n{$signature}
INDEX_COMPLETE	en	Index Completed	Index Galleys Complete	{$recipientName}:<br />\n<br />\nIndexes have now been prepared for the manuscript, &quot;{$submissionTitle},&quot; for {$pressName} and are ready for proofreading.<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n{$signatureFullName}
VERSION_CREATED	en	Version Created	A new version was created for {$submissionTitle}	<p>Dear {$recipientName}, </p><p>This is an automated message to inform you that a new version of your submission, {$submissionTitle}, was created. You can view this version from your submission dashboard at the following link:</p><p><a href="{$submissionUrl}">{$submissionTitle}</a></p><hr><p>This is an automatic email sent from <a href="{$pressUrl}">{$pressName}</a>.</p>
EDITORIAL_REMINDER	en	Editorial Reminder	Outstanding editorial tasks for {$pressName}	<p>Dear {$recipientName},</p><p>You are currently assigned to {$numberOfSubmissions} submissions in <a href="{$pressUrl}">{$pressName}</a>. The following submissions are <b>waiting for your response</b>.</p>{$outstandingTasks}<p>View all of your assignments in your <a href="{$submissionsUrl}">submission dashboard</a>.</p><p>If you have any questions about your assignments, please contact {$contactName} at {$contactEmail}.</p>
SUBMISSION_SAVED_FOR_LATER	en	Submission Saved for Later	Resume your submission to {$pressName}	<p>Dear {$recipientName},</p><p>Your submission details have been saved in our system, but it has not yet been submitted for consideration. You can return to complete your submission at any time by following the link below.</p><p><a href="{$submissionWizardUrl}">{$authorsShort} — {$submissionTitle}</a></p><hr><p>This is an automated email from <a href="{$pressUrl}">{$pressName}</a>.</p>
SUBMISSION_NEEDS_EDITOR	en	Submission Needs Editor	A new submission needs an editor to be assigned: {$submissionTitle}	<p>Dear {$recipientName},</p><p>The following submission has been submitted and there is no editor assigned.</p><p><a href="{$submissionUrl}">{$submissionTitle}</a><br />{$authors}</p><p><b>Abstract</b></p>{$submissionAbstract}<p>Please assign an editor who will be responsible for the submission by clicking the title above and assigning an editor under the Participants section.</p><hr><p>This is an automated email from <a href="{$pressUrl}">{$pressName}</a>.</p>
MANUAL_PAYMENT_NOTIFICATION	en		Manual Payment Notification	A manual payment needs to be processed for the press {$pressName} and the user {$senderName} (username &quot;{$senderUsername}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$paymentName}&quot;.<br />\nThe cost is {$paymentAmount} ({$paymentCurrencyCode}).<br />\n<br />\nThis email was generated by the Open Monograph Press Manual Payment plugin.
PASSWORD_RESET_CONFIRM	fr_CA		Confirmation de réinitialisation du mot de passe	Nous avons reçu une requête de réinitialisation de votre mot de passe pour le site Web {$siteTitle}.<br />\n<br />\nSi vous n'avez pas fait cette requête, veuillez ignorer ce courriel et votre mot de passe demeurera le même. Si vous souhaitez modifier votre mot de passe, cliquez sur l'adresse URL ci-dessous.<br />\n<br />\nModifier mon mot de passe: {$lostPasswordUrl}<br />\n<br />\n{$siteContactName}
USER_REGISTER	fr_CA		Inscription à la presse	{$recipientName}<br />\n<br />\nVous êtes désormais inscrit à la presse {$pressName}. Ce courriel contient votre nom d'utilisateur et votre mot de passe, dont vous aurez besoin pour tous vos travaux au sein de la presse. Vous pouvez demander que l'on retire votre nom de la liste des utilisateurs en tout temps. Il suffit de me contacter.<br />\n<br />\n<br />\nNom d'utilisateur: {$recipientUsername}<br />\nMot de passe: {$password}<br />\n<br />\nMerci,<br />\n{$signature}
USER_VALIDATE_CONTEXT	fr_CA			
USER_VALIDATE_SITE	fr_CA			
REVIEWER_REGISTER	fr_CA		Inscription à titre d'évaluateur pour la presse {$pressName}	En raison de votre expertise, nous avons ajouté votre nom à notre base de données d'évaluateurs pour la presse {$pressName}. Ceci ne vous oblige à rien, mais nous permet simplement de vous approcher si nous recevons une soumission que vous pourriez évaluer. Après avoir reçu une demande d'évaluation, vous aurez la possibilité de lire le titre et le résumé de l'article en question. Vous serez toujours libre d'accepter ou de refuser l'invitation. Vous pouvez demander que l'on retire votre nom de notre liste d'évaluateurs en tout temps.<br />\n<br />\nVoici votre nom d'utilisateur et votre mot de passe, dont vous aurez besoin dans tous vos échanges avec la presse à travers son site Web. Vous pourriez, par exemple, mettre votre profil à jour, y compris vos champs d'intérêt en ce qui concerne l'évaluation des articles.<br />\n<br />\n<br />\nNom d'utilisateur: {$recipientUsername}<br />\nMot de passe: {$password}<br />\n<br />\nMerci,<br />\n{$signature}
SUBMISSION_ACK	fr_CA		Accusé de réception de la soumission	{$recipientName},<br />\n<br />\nNous vous remercions d'avoir soumis le manuscrit intitulé « {$submissionTitle} » à la revue {$pressName}. Grâce à notre système de gestion en ligne, vous pourrez suivre votre soumission tout au long du processus d'édition en accédant au site Web de la revue :<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}<br />\n<br />\nSi vous avez des questions, n'hésitez pas à communiquer avec nous. Nous vous remercions d'avoir pensé à notre revue pour la publication de vos travaux.<br />\n<br />\n{$pressSignature}
SUBMISSION_ACK_NOT_USER	fr_CA		Accusé de réception de la soumission	<p>Bonjour,</p><p>Le manuscrit intitulé , « {$submissionTitle} » , a été soumis par {$submitterName} à la revue {$pressName}.</p><p>Si vous avez des questions, n'hésitez pas à communiquer avec nous. Nous vous remercions d'avoir pensé à la revue {$pressName} pour la publication de vos travaux.</p><p>Cordialement,</p>{$pressSignature}
EDITOR_ASSIGN	fr_CA		Travail éditorial	{$recipientName}:<br />\n<br />\nLa soumission &quot;{$submissionTitle}&quot; à la presse {$pressName} vous a été assignée. En tant que rédacteur en chef, vous devrez superviser le processus éditorial de cette soumission.<br />\n<br />\nURL de la soumission: {$submissionUrl}<br />\nNom d'utilisateur: {$recipientUsername}<br />\n<br />\nMerci,
REVIEW_CANCEL	fr_CA		Annulation de la requête d'évaluation	{$recipientName}:<br />\n<br />\n<br />\nNous avons décidé d'annuler notre requête d'évaluation pour la soumission &quot;{$submissionTitle}&quot; de la presse {$pressName}. Nous vous prions de nous excuser pour tout inconvénient que cette décision pourrait occasionner et nous espérons que vous serez en mesure d'évaluer une soumission dans un avenir prochain.<br />\n<br />\nSi vous avez des questions, n'hésitez pas à me contacter.
REVIEW_REINSTATE	fr_CA			
REVIEW_RESEND_REQUEST	fr_CA			
REVIEW_REQUEST	fr_CA		Requête d'évaluation d'un manuscrit	Bonjour {$recipientName},<br />\n<br />\n{$messageToReviewer}<br />\n<br />\nVeuillez ouvrir une session sur le site Web de la presse d'ici le {$responseDueDate} pour indiquer si vous serez en mesure d'évaluer l'article ou non. Ceci vous permettra également d'accéder à la soumission, et de saisir votre évaluation et vos recommandations.<br />\n<br />\n<br />\nL'évaluation doit être terminée d'ici le {$reviewDueDate}.<br />\n<br />\nURL de la soumission: {$reviewAssignmentUrl}<br />\n<br />\nNom d'utilisateur: {$recipientUsername}<br />\n<br />\nMerci de votre intérêt à évaluer des articles pour notre presse.<br />\n<br />\n{$signature}<br />\n
REVIEW_REQUEST_SUBSEQUENT	fr_CA			
REVIEW_RESPONSE_OVERDUE_AUTO	fr_CA			
REVIEW_CONFIRM	fr_CA		Acceptation d'évaluation	Rédacteurs-trices,<br />\n<br />\nJe suis en mesure d'évaluer la soumission intitulée « {$submissionTitle} » pour la revue {$pressName}. Je vous remercie d'avoir pensé à moi. Je devrais être en mesure de compléter l'évaluation pour la date du {$reviewDueDate}, voire avant.<br />\n<br />\n{$senderName}
REVIEW_DECLINE	fr_CA		Ne peux pas évaluer	Éditeurs:<br />\n<br />\nMalheureusement, je ne pourrai pas évaluer &quot;{$submissionTitle}&quot; pour la presse {$pressName}. Merci de m'avoir invité à évaluer cet article et n'hésitez pas à me contacter dans un avenir prochain.<br />\n<br />\n{$senderName}
REVIEW_ACK	fr_CA		Accusé de réception de l'évaluation d'une soumission	{$recipientName},<br />\n<br />\nNous vous remercions d'avoir évalué la soumission intitulée « {$submissionTitle} » pour la revue {$pressName}. Nous vous sommes reconnaissants de votre contribution à la qualité des travaux que nous publions.
REVIEW_REMIND	fr_CA		Rappel d'évaluation	{$recipientName}:<br />\n<br />\nNous vous remercions d'avoir accepté d'évaluer &quot;{$submissionTitle}&quot; pour la presse {$pressName}. Veuillez noter que cette évaluation doit nous parvenir avant le {$reviewDueDate}. Nous vous serions reconnaissants si vous pouviez nous faire parvenir votre évaluation dans les plus brefs délais.<br />\n<br />\nSi vous n'avez plus votre nom d'utilisateur et mot de passe pour le site Web, vous pouvez réinitialiser votre mot de passe en cliquant sur le lien suivant. Votre mot de passe et nom d'utilisateur vous seront envoyés par courriel. {$lostPasswordUrl}<br />\n<br />\nURL de la soumission: {$reviewAssignmentUrl}<br />\n<br />\nNom d'utilisateur: {$recipientUsername}<br />\n<br />\nNous vous prions de confirmer si vous êtes encore disponible pour participer à cette étape cruciale de notre processus éditorial. Nous vous prions d'agréer l'expression de nos sentiments les plus distingués. <br />\n<br />\n{$signature}
REVIEW_REMIND_AUTO	fr_CA		Rappel d'évaluation	{$recipientName}:<br />\n<br />\nNous vous remercions d'avoir accepté d'évaluer &quot;{$submissionTitle}&quot; pour la presse {$pressName}. Veuillez noter que cette évaluation doit nous parvenir avant le {$reviewDueDate}. Ce courriel a été généré et envoyé automatiquement parce que vous avez dépassé la date d'échéance. Toutefois, nous vous serions reconnaissants si vous pouviez nous faire parvenir votre évaluation dans les plus brefs délais.<br />\n<br />\nSi vous n'avez plus votre nom d'utilisateur et mot de passe pour le site Web, vous pouvez réinitialiser votre mot de passe en cliquant sur le lien suivant. Votre mot de passe et nom d'utilisateur vous seront envoyés par courriel. {$lostPasswordUrl}<br />\n<br />\nURL de la soumission: {$reviewAssignmentUrl}<br />\n<br />\nNous vous prions de confirmer si vous êtes encore disponible pour participer à cette étape cruciale de notre processus éditorial. Veuillez agréer l'expression de nos sentiments les plus distingués. <br />\n<br />\n{$pressSignature}
REVIEW_COMPLETE	fr_CA			
REVIEW_EDIT	fr_CA			
EDITOR_DECISION_ACCEPT	fr_CA		Décision du rédacteur en chef	{$authors}:<br />\n<br />\nNous avons pris une décision concernant votre soumission à la presse {$pressName} intitulée &quot;{$submissionTitle}&quot;.<br />\n<br />\nNous avons décidé de:<br />\n<br />\nURL du manuscrit: {$submissionUrl}
EDITOR_DECISION_SEND_TO_INTERNAL	fr_CA			
EDITOR_DECISION_SEND_TO_EXTERNAL	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$pressName}.<br />\n<br />\nNotre décision est d'envoyer votre soumission en évaluation.<br />\n<br />\nURL de la soumission : {$submissionUrl}
EDITOR_DECISION_SEND_TO_PRODUCTION	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nL'édition de votre soumission « {$submissionTitle} » est complétée. Nous l'envoyons maintenant en production.<br />\n<br />\nURL de la soumission : {$submissionUrl}
EDITOR_DECISION_REVISIONS	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$pressName}.<br />\n<br />\nNotre décision est de vous demander d'apporter des révisions à votre soumission.
EDITOR_DECISION_RESUBMIT	fr_CA		Décision du rédacteur	{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$pressName}.<br />\n<br />\nNotre décision est de vous demander d'apporter des révisions à votre soumission et de la soumettre à nouveau.
EDITOR_DECISION_DECLINE	fr_CA		Décision du rédacteur	{$authors}:<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à la revue {$pressName}.<br />\n<br />\nNotre décision est de refuser votre soumission.
EDITOR_DECISION_INITIAL_DECLINE	fr_CA		Décision du rédacteur	\n\t\t\t{$authors},<br />\n<br />\nNous avons pris une décision concernant votre soumission « {$submissionTitle} » à  la revue {$pressName}.<br />\n<br />\nNotre décision est de refuser votre soumission.
EDITOR_RECOMMENDATION	fr_CA		Recommandation du rédacteur	{$editors},<br />\n<br />\nLa recommandation concernant la soumission « {$submissionTitle} » à la revue {$pressName} est de : {$recommendation}
EDITOR_DECISION_NOTIFY_OTHER_AUTHORS	fr_CA			
EDITOR_DECISION_NOTIFY_REVIEWERS	fr_CA			
EDITOR_DECISION_NEW_ROUND	fr_CA			
EDITOR_DECISION_REVERT_DECLINE	fr_CA			
EDITOR_DECISION_REVERT_INITIAL_DECLINE	fr_CA			
EDITOR_DECISION_SKIP_REVIEW	fr_CA			
EDITOR_DECISION_BACK_FROM_PRODUCTION	fr_CA			
EDITOR_DECISION_BACK_FROM_COPYEDITING	fr_CA			
EDITOR_DECISION_CANCEL_REVIEW_ROUND	fr_CA			
REVISED_VERSION_NOTIFY	fr_CA			
STATISTICS_REPORT_NOTIFICATION	fr_CA			
ANNOUNCEMENT	fr_CA			
DISCUSSION_NOTIFICATION_SUBMISSION	fr_CA		Un message à propos de la revue {$pressName}	Prière de saisir votre message.
DISCUSSION_NOTIFICATION_REVIEW	fr_CA		Un message à propos de la revue {$pressName}	Prière de saisir votre message.
DISCUSSION_NOTIFICATION_COPYEDITING	fr_CA		Un message à propos de la revue {$pressName}	Prière de saisir votre message.
DISCUSSION_NOTIFICATION_PRODUCTION	fr_CA		Un message à propos de la revue {$pressName}	Prière de saisir votre message.
COPYEDIT_REQUEST	fr_CA		Demande de révision d'une soumission	{$recipientName},<br />\n<br />\nJ'aimerais que vous effectuiez la révision du manuscrit intitulé « {$submissionTitle} » pour la revue {$pressName} à l'aide des étapes suivantes.<br />\n1. Cliquer sur l'URL de la soumission ci-dessous.<br />\n2. Ouvrir le(s) fichier(s) disponible(s) sous Fichiers des ébauches finales et effectuer votre révision, tout en ajoutant des discussions sur la révision, le cas échéant.<br />\n3. Enregistrer le(s) fichier(s) révisé(s) et le(s) téléverser dans la section Version(s) révisée(s).<br />\n4. Informer le,la rédacteur-trice que tous les fichiers ont été révisés et que l'étape de production peut débuter.<br />\n<br />\nURL de la revue {$pressName} : {$pressUrl}<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d'utilisateur-trice : {$recipientUsername}
EDITOR_ASSIGN_SUBMISSION	fr_CA		Travail éditorial	{$recipientName}:<br />\n<br />\nLa soumission &quot;{$submissionTitle}&quot; à la presse {$pressName} vous a été assignée. En tant que rédacteur en chef, vous devrez superviser le processus éditorial de cette soumission.<br />\n<br />\nURL de la soumission: {$submissionUrl}<br />\nNom d'utilisateur: {$recipientUsername}<br />\n<br />\nMerci,
EDITOR_ASSIGN_REVIEW	fr_CA		Travail éditorial	
EDITOR_ASSIGN_PRODUCTION	fr_CA		Travail éditorial	
LAYOUT_REQUEST	fr_CA		Requête des épreuves en placard	{$recipientName}:<br />\n<br />\nIl faut maintenant préparer les épreuves en placard de la soumission &quot;{$submissionTitle}&quot; pour la presse {$pressName}. Pour ce faire, veuillez suivre les étapes suivantes:<br />\n<br />\n1. Cliquez sur le lien URL de la soumission ci-dessous.<br />\n2. Ouvrez une session sur la presse et utilisez le fichier Version de mise en page pour créer les épreuves en placard conformément aux normes de la presse.<br />\n3. Envoyez le courriel COMPLET au rédacteur en chef.<br />\n<br />\n{$pressName} URL: {$pressUrl}<br />\nURL de la soumission: {$submissionUrl}<br />\nNom d'utilisateur: {$recipientUsername}<br />\n<br />\nSi vous ne pouvez pas faire ce travail en ce moment ou si vous avez des questions, n'hésitez pas à me contacter. Merci d'avoir contribué à cette presse.
LAYOUT_COMPLETE	fr_CA		Épreuves en placard complétées	{$recipientName}:<br />\n<br />\nLes épreuves en placard du manuscrit &quot;{$submissionTitle}&quot; pour la presse {$pressName} ont été préparées et peuvent être révisées.<br />\n<br />\nSi vous avez questions, n'hésitez pas à me contacter.<br />\n<br />\n{$senderName}
INDEX_REQUEST	fr_CA		Requête d'indexage	{$recipientName}:<br />\n<br />\nLa soumission &quot;{$submissionTitle}&quot; par la presse {$pressName} doit désormais être indexée. Veuillez suivre les étapes suivantes:<br />\n<br />\n1. Cliquez sur le lien URL de la soumission ci-dessous.<br />\n2. Ouvrez une session sur la presse et utilisez les fichiers d'épreuves de mise en page pour créer les épreuves en placard conformément aux normes de la presse.<br />\n3. Envoyez le courriel COMPLET au rédacteur en chef.<br />\n<br />\n{$pressName} URL: {$pressUrl}<br />\nURL de la soumission: {$submissionUrl}<br />\nNom d'utilisateur: {$recipientUsername}<br />\n<br />\nSi vous ne pouvez pas faire ce travail en ce moment ou si vous avez des questions, n'hésitez pas à me contacter. Merci d'avoir contribué à cette presse.<br />\n<br />\n{$signature}
INDEX_COMPLETE	fr_CA		Indexage des épreuves en placard complété	{$recipientName}:<br />\n<br />\nLes index du manuscrit &quot;{$submissionTitle}&quot; pour la presse {$pressName} sont prêts et peuvent être révisés.<br />\n<br />\nSi vous avez questions, n'hésitez pas à me contacter.<br />\n<br />\n{$signatureFullName}
VERSION_CREATED	fr_CA			
EDITORIAL_REMINDER	fr_CA			
SUBMISSION_SAVED_FOR_LATER	fr_CA			
SUBMISSION_NEEDS_EDITOR	fr_CA			
\.


--
-- Name: email_templates_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.email_templates_email_id_seq', 8, true);


--
-- Data for Name: email_templates_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.email_templates_settings (email_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: event_log; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.event_log (log_id, assoc_type, assoc_id, user_id, date_logged, event_type, message, is_translated) FROM stdin;
1	1048585	1	19	2023-03-07 19:06:44	268435458	submission.event.general.metadataUpdated	0
2	1048585	1	19	2023-03-07 19:06:45	268435458	submission.event.general.metadataUpdated	0
3	515	1	19	2023-03-07 19:06:49	1342177281	submission.event.fileUploaded	0
4	1048585	1	19	2023-03-07 19:06:49	1342177288	submission.event.fileRevised	0
5	515	1	19	2023-03-07 19:06:49	1342177296	submission.event.fileEdited	0
6	1048585	1	19	2023-03-07 19:06:49	1342177296	submission.event.fileEdited	0
7	515	2	19	2023-03-07 19:06:50	1342177281	submission.event.fileUploaded	0
8	1048585	1	19	2023-03-07 19:06:50	1342177288	submission.event.fileRevised	0
9	515	2	19	2023-03-07 19:06:50	1342177296	submission.event.fileEdited	0
10	1048585	1	19	2023-03-07 19:06:50	1342177296	submission.event.fileEdited	0
11	515	3	19	2023-03-07 19:06:51	1342177281	submission.event.fileUploaded	0
12	1048585	1	19	2023-03-07 19:06:51	1342177288	submission.event.fileRevised	0
13	515	3	19	2023-03-07 19:06:52	1342177296	submission.event.fileEdited	0
14	1048585	1	19	2023-03-07 19:06:52	1342177296	submission.event.fileEdited	0
15	1048585	1	19	2023-03-07 19:07:12	268435457	submission.event.submissionSubmitted	0
16	1048585	1	3	2023-03-07 19:07:26	805306371	editor.submission.decision.sendExternalReview.log	0
17	515	4	3	2023-03-07 19:07:26	1342177281	submission.event.fileUploaded	0
18	1048585	1	3	2023-03-07 19:07:26	1342177288	submission.event.fileRevised	0
19	515	5	3	2023-03-07 19:07:26	1342177281	submission.event.fileUploaded	0
20	1048585	1	3	2023-03-07 19:07:26	1342177288	submission.event.fileRevised	0
21	515	6	3	2023-03-07 19:07:26	1342177281	submission.event.fileUploaded	0
22	1048585	1	3	2023-03-07 19:07:26	1342177288	submission.event.fileRevised	0
23	1048585	1	3	2023-03-07 19:07:36	1073741825	log.review.reviewerAssigned	0
24	1048585	1	3	2023-03-07 19:07:42	805306371	editor.submission.decision.accept.log	0
25	1048585	1	3	2023-03-07 19:07:51	268435459	submission.event.participantAdded	0
26	1048585	2	20	2023-03-07 19:08:04	268435458	submission.event.general.metadataUpdated	0
27	1048585	2	20	2023-03-07 19:08:05	268435458	submission.event.general.metadataUpdated	0
28	515	7	20	2023-03-07 19:08:18	1342177281	submission.event.fileUploaded	0
29	1048585	2	20	2023-03-07 19:08:18	1342177288	submission.event.fileRevised	0
30	1048585	2	20	2023-03-07 19:08:18	268435458	submission.event.general.metadataUpdated	0
31	515	7	20	2023-03-07 19:08:18	1342177296	submission.event.fileEdited	0
32	1048585	2	20	2023-03-07 19:08:18	1342177296	submission.event.fileEdited	0
33	515	8	20	2023-03-07 19:08:19	1342177281	submission.event.fileUploaded	0
34	1048585	2	20	2023-03-07 19:08:19	1342177288	submission.event.fileRevised	0
35	515	8	20	2023-03-07 19:08:20	1342177296	submission.event.fileEdited	0
36	1048585	2	20	2023-03-07 19:08:20	1342177296	submission.event.fileEdited	0
37	515	9	20	2023-03-07 19:08:20	1342177281	submission.event.fileUploaded	0
38	1048585	2	20	2023-03-07 19:08:20	1342177288	submission.event.fileRevised	0
39	515	9	20	2023-03-07 19:08:21	1342177296	submission.event.fileEdited	0
40	1048585	2	20	2023-03-07 19:08:21	1342177296	submission.event.fileEdited	0
41	515	10	20	2023-03-07 19:08:22	1342177281	submission.event.fileUploaded	0
42	1048585	2	20	2023-03-07 19:08:22	1342177288	submission.event.fileRevised	0
43	515	10	20	2023-03-07 19:08:22	1342177296	submission.event.fileEdited	0
44	1048585	2	20	2023-03-07 19:08:22	1342177296	submission.event.fileEdited	0
45	515	11	20	2023-03-07 19:08:23	1342177281	submission.event.fileUploaded	0
46	1048585	2	20	2023-03-07 19:08:23	1342177288	submission.event.fileRevised	0
47	515	11	20	2023-03-07 19:08:24	1342177296	submission.event.fileEdited	0
48	1048585	2	20	2023-03-07 19:08:24	1342177296	submission.event.fileEdited	0
49	515	11	20	2023-03-07 19:08:25	1342177282	submission.event.fileDeleted	0
50	1048585	2	20	2023-03-07 19:10:17	268435457	submission.event.submissionSubmitted	0
51	1048585	2	3	2023-03-07 19:10:46	805306371	editor.submission.decision.sendExternalReview.log	0
52	515	12	3	2023-03-07 19:10:47	1342177281	submission.event.fileUploaded	0
53	1048585	2	3	2023-03-07 19:10:47	1342177288	submission.event.fileRevised	0
54	515	13	3	2023-03-07 19:10:47	1342177281	submission.event.fileUploaded	0
55	1048585	2	3	2023-03-07 19:10:47	1342177288	submission.event.fileRevised	0
56	515	14	3	2023-03-07 19:10:47	1342177281	submission.event.fileUploaded	0
57	1048585	2	3	2023-03-07 19:10:47	1342177288	submission.event.fileRevised	0
58	515	15	3	2023-03-07 19:10:48	1342177281	submission.event.fileUploaded	0
59	1048585	2	3	2023-03-07 19:10:48	1342177288	submission.event.fileRevised	0
60	1048585	2	3	2023-03-07 19:11:02	1073741825	log.review.reviewerAssigned	0
61	1048585	2	3	2023-03-07 19:11:12	1073741825	log.review.reviewerAssigned	0
62	1048585	3	21	2023-03-07 19:11:23	268435458	submission.event.general.metadataUpdated	0
63	1048585	3	21	2023-03-07 19:11:23	268435458	submission.event.general.metadataUpdated	0
64	515	16	21	2023-03-07 19:11:27	1342177281	submission.event.fileUploaded	0
65	1048585	3	21	2023-03-07 19:11:27	1342177288	submission.event.fileRevised	0
66	515	16	21	2023-03-07 19:11:27	1342177296	submission.event.fileEdited	0
67	1048585	3	21	2023-03-07 19:11:27	1342177296	submission.event.fileEdited	0
68	515	17	21	2023-03-07 19:11:28	1342177281	submission.event.fileUploaded	0
69	1048585	3	21	2023-03-07 19:11:28	1342177288	submission.event.fileRevised	0
70	515	17	21	2023-03-07 19:11:28	1342177296	submission.event.fileEdited	0
71	1048585	3	21	2023-03-07 19:11:28	1342177296	submission.event.fileEdited	0
72	515	18	21	2023-03-07 19:11:29	1342177281	submission.event.fileUploaded	0
73	1048585	3	21	2023-03-07 19:11:29	1342177288	submission.event.fileRevised	0
74	515	18	21	2023-03-07 19:11:30	1342177296	submission.event.fileEdited	0
75	1048585	3	21	2023-03-07 19:11:30	1342177296	submission.event.fileEdited	0
76	515	19	21	2023-03-07 19:11:30	1342177281	submission.event.fileUploaded	0
77	1048585	3	21	2023-03-07 19:11:30	1342177288	submission.event.fileRevised	0
78	515	19	21	2023-03-07 19:11:31	1342177296	submission.event.fileEdited	0
79	1048585	3	21	2023-03-07 19:11:31	1342177296	submission.event.fileEdited	0
80	515	20	21	2023-03-07 19:11:32	1342177281	submission.event.fileUploaded	0
81	1048585	3	21	2023-03-07 19:11:32	1342177288	submission.event.fileRevised	0
82	515	20	21	2023-03-07 19:11:32	1342177296	submission.event.fileEdited	0
83	1048585	3	21	2023-03-07 19:11:32	1342177296	submission.event.fileEdited	0
84	1048585	3	21	2023-03-07 19:12:09	268435457	submission.event.submissionSubmitted	0
85	1048585	4	22	2023-03-07 19:12:19	268435458	submission.event.general.metadataUpdated	0
86	1048585	4	22	2023-03-07 19:12:20	268435458	submission.event.general.metadataUpdated	0
87	515	21	22	2023-03-07 19:12:24	1342177281	submission.event.fileUploaded	0
88	1048585	4	22	2023-03-07 19:12:24	1342177288	submission.event.fileRevised	0
89	515	21	22	2023-03-07 19:12:24	1342177296	submission.event.fileEdited	0
90	1048585	4	22	2023-03-07 19:12:24	1342177296	submission.event.fileEdited	0
91	515	22	22	2023-03-07 19:12:25	1342177281	submission.event.fileUploaded	0
92	1048585	4	22	2023-03-07 19:12:25	1342177288	submission.event.fileRevised	0
93	515	22	22	2023-03-07 19:12:25	1342177296	submission.event.fileEdited	0
94	1048585	4	22	2023-03-07 19:12:25	1342177296	submission.event.fileEdited	0
95	515	23	22	2023-03-07 19:12:26	1342177281	submission.event.fileUploaded	0
96	1048585	4	22	2023-03-07 19:12:26	1342177288	submission.event.fileRevised	0
97	515	23	22	2023-03-07 19:12:26	1342177296	submission.event.fileEdited	0
98	1048585	4	22	2023-03-07 19:12:26	1342177296	submission.event.fileEdited	0
99	515	24	22	2023-03-07 19:12:27	1342177281	submission.event.fileUploaded	0
100	1048585	4	22	2023-03-07 19:12:27	1342177288	submission.event.fileRevised	0
101	515	24	22	2023-03-07 19:12:28	1342177296	submission.event.fileEdited	0
102	1048585	4	22	2023-03-07 19:12:28	1342177296	submission.event.fileEdited	0
103	1048585	4	22	2023-03-07 19:12:58	268435457	submission.event.submissionSubmitted	0
104	1048585	4	3	2023-03-07 19:13:14	805306371	editor.submission.decision.sendInternalReview.log	0
105	515	25	3	2023-03-07 19:13:15	1342177281	submission.event.fileUploaded	0
106	1048585	4	3	2023-03-07 19:13:15	1342177288	submission.event.fileRevised	0
107	515	26	3	2023-03-07 19:13:15	1342177281	submission.event.fileUploaded	0
108	1048585	4	3	2023-03-07 19:13:15	1342177288	submission.event.fileRevised	0
109	515	27	3	2023-03-07 19:13:15	1342177281	submission.event.fileUploaded	0
110	1048585	4	3	2023-03-07 19:13:15	1342177288	submission.event.fileRevised	0
111	515	28	3	2023-03-07 19:13:15	1342177281	submission.event.fileUploaded	0
112	1048585	4	3	2023-03-07 19:13:15	1342177288	submission.event.fileRevised	0
113	1048585	4	3	2023-03-07 19:13:26	1073741825	log.review.reviewerAssigned	0
114	1048585	4	3	2023-03-07 19:13:32	805306371	editor.submission.decision.sendExternalReview.log	0
115	1048585	4	3	2023-03-07 19:13:44	1073741825	log.review.reviewerAssigned	0
116	1048585	4	3	2023-03-07 19:13:50	805306371	editor.submission.decision.accept.log	0
117	1048585	4	3	2023-03-07 19:14:01	268435459	submission.event.participantAdded	0
118	1048585	4	3	2023-03-07 19:14:09	805306371	editor.submission.decision.sendToProduction.log	0
119	1048585	4	3	2023-03-07 19:14:20	268435459	submission.event.participantAdded	0
120	1048585	4	3	2023-03-07 19:14:28	268435474	submission.event.publicationFormatCreated	0
121	1048585	5	23	2023-03-07 19:14:38	268435458	submission.event.general.metadataUpdated	0
122	1048585	5	23	2023-03-07 19:14:38	268435458	submission.event.general.metadataUpdated	0
123	515	29	23	2023-03-07 19:14:42	1342177281	submission.event.fileUploaded	0
124	1048585	5	23	2023-03-07 19:14:42	1342177288	submission.event.fileRevised	0
125	515	29	23	2023-03-07 19:14:42	1342177296	submission.event.fileEdited	0
126	1048585	5	23	2023-03-07 19:14:42	1342177296	submission.event.fileEdited	0
127	515	30	23	2023-03-07 19:14:43	1342177281	submission.event.fileUploaded	0
128	1048585	5	23	2023-03-07 19:14:43	1342177288	submission.event.fileRevised	0
129	515	30	23	2023-03-07 19:14:43	1342177296	submission.event.fileEdited	0
130	1048585	5	23	2023-03-07 19:14:43	1342177296	submission.event.fileEdited	0
131	515	31	23	2023-03-07 19:14:44	1342177281	submission.event.fileUploaded	0
132	1048585	5	23	2023-03-07 19:14:44	1342177288	submission.event.fileRevised	0
133	515	31	23	2023-03-07 19:14:45	1342177296	submission.event.fileEdited	0
134	1048585	5	23	2023-03-07 19:14:45	1342177296	submission.event.fileEdited	0
135	515	32	23	2023-03-07 19:14:45	1342177281	submission.event.fileUploaded	0
136	1048585	5	23	2023-03-07 19:14:45	1342177288	submission.event.fileRevised	0
137	515	32	23	2023-03-07 19:14:46	1342177296	submission.event.fileEdited	0
138	1048585	5	23	2023-03-07 19:14:46	1342177296	submission.event.fileEdited	0
139	515	33	23	2023-03-07 19:14:47	1342177281	submission.event.fileUploaded	0
140	1048585	5	23	2023-03-07 19:14:47	1342177288	submission.event.fileRevised	0
141	515	33	23	2023-03-07 19:14:47	1342177296	submission.event.fileEdited	0
142	1048585	5	23	2023-03-07 19:14:47	1342177296	submission.event.fileEdited	0
143	515	34	23	2023-03-07 19:14:48	1342177281	submission.event.fileUploaded	0
144	1048585	5	23	2023-03-07 19:14:48	1342177288	submission.event.fileRevised	0
145	515	34	23	2023-03-07 19:14:48	1342177296	submission.event.fileEdited	0
146	1048585	5	23	2023-03-07 19:14:48	1342177296	submission.event.fileEdited	0
147	1048585	5	23	2023-03-07 19:15:36	268435457	submission.event.submissionSubmitted	0
148	1048585	5	3	2023-03-07 19:15:54	805306371	editor.submission.decision.sendInternalReview.log	0
149	515	35	3	2023-03-07 19:15:54	1342177281	submission.event.fileUploaded	0
150	1048585	5	3	2023-03-07 19:15:54	1342177288	submission.event.fileRevised	0
151	515	36	3	2023-03-07 19:15:54	1342177281	submission.event.fileUploaded	0
152	1048585	5	3	2023-03-07 19:15:54	1342177288	submission.event.fileRevised	0
153	515	37	3	2023-03-07 19:15:55	1342177281	submission.event.fileUploaded	0
154	1048585	5	3	2023-03-07 19:15:55	1342177288	submission.event.fileRevised	0
155	515	38	3	2023-03-07 19:15:55	1342177281	submission.event.fileUploaded	0
156	1048585	5	3	2023-03-07 19:15:55	1342177288	submission.event.fileRevised	0
157	515	39	3	2023-03-07 19:15:55	1342177281	submission.event.fileUploaded	0
158	1048585	5	3	2023-03-07 19:15:55	1342177288	submission.event.fileRevised	0
159	515	40	3	2023-03-07 19:15:55	1342177281	submission.event.fileUploaded	0
160	1048585	5	3	2023-03-07 19:15:55	1342177288	submission.event.fileRevised	0
161	1048585	5	3	2023-03-07 19:16:07	1073741825	log.review.reviewerAssigned	0
162	1048585	5	3	2023-03-07 19:16:14	805306371	editor.submission.decision.sendExternalReview.log	0
163	1048585	5	3	2023-03-07 19:16:26	1073741825	log.review.reviewerAssigned	0
164	1048585	5	3	2023-03-07 19:16:33	805306371	editor.submission.decision.accept.log	0
165	1048585	5	3	2023-03-07 19:16:45	268435459	submission.event.participantAdded	0
166	1048585	5	3	2023-03-07 19:16:53	805306371	editor.submission.decision.sendToProduction.log	0
167	1048585	5	3	2023-03-07 19:17:06	268435459	submission.event.participantAdded	0
168	1048585	5	3	2023-03-07 19:17:13	268435459	submission.event.participantAdded	0
169	1048585	5	3	2023-03-07 19:17:20	268435474	submission.event.publicationFormatCreated	0
170	515	41	3	2023-03-07 19:17:24	1342177281	submission.event.fileUploaded	0
171	1048585	5	3	2023-03-07 19:17:24	1342177288	submission.event.fileRevised	0
172	1048585	5	3	2023-03-07 19:17:27	268435464	submission.event.publicationFormatPublished	0
173	1048585	5	3	2023-03-07 19:17:29	268435476	submission.event.publicationFormatMadeAvailable	0
174	515	41	3	2023-03-07 19:17:31	1342177296	submission.event.fileEdited	0
175	1048585	5	3	2023-03-07 19:17:31	1342177296	submission.event.fileEdited	0
176	515	41	3	2023-03-07 19:17:31	1342177287	submission.event.signoffSignoff	0
177	515	41	3	2023-03-07 19:17:35	1342177296	submission.event.fileEdited	0
178	1048585	5	3	2023-03-07 19:17:35	1342177296	submission.event.fileEdited	0
179	1048585	5	3	2023-03-07 19:17:37	268435462	publication.event.published	0
180	1048585	5	3	2023-03-07 19:17:50	268435463	publication.event.unpublished	0
181	1048585	5	3	2023-03-07 19:18:00	268435462	publication.event.published	0
182	1048585	6	24	2023-03-07 19:18:10	268435458	submission.event.general.metadataUpdated	0
183	1048585	6	24	2023-03-07 19:18:11	268435458	submission.event.general.metadataUpdated	0
184	515	42	24	2023-03-07 19:18:14	1342177281	submission.event.fileUploaded	0
185	1048585	6	24	2023-03-07 19:18:14	1342177288	submission.event.fileRevised	0
186	515	42	24	2023-03-07 19:18:14	1342177296	submission.event.fileEdited	0
187	1048585	6	24	2023-03-07 19:18:15	1342177296	submission.event.fileEdited	0
188	515	43	24	2023-03-07 19:18:15	1342177281	submission.event.fileUploaded	0
189	1048585	6	24	2023-03-07 19:18:15	1342177288	submission.event.fileRevised	0
190	515	43	24	2023-03-07 19:18:16	1342177296	submission.event.fileEdited	0
191	1048585	6	24	2023-03-07 19:18:16	1342177296	submission.event.fileEdited	0
192	515	44	24	2023-03-07 19:18:16	1342177281	submission.event.fileUploaded	0
193	1048585	6	24	2023-03-07 19:18:16	1342177288	submission.event.fileRevised	0
194	515	44	24	2023-03-07 19:18:17	1342177296	submission.event.fileEdited	0
195	1048585	6	24	2023-03-07 19:18:17	1342177296	submission.event.fileEdited	0
196	515	45	24	2023-03-07 19:18:18	1342177281	submission.event.fileUploaded	0
197	1048585	6	24	2023-03-07 19:18:18	1342177288	submission.event.fileRevised	0
198	515	45	24	2023-03-07 19:18:18	1342177296	submission.event.fileEdited	0
199	1048585	6	24	2023-03-07 19:18:18	1342177296	submission.event.fileEdited	0
200	1048585	6	24	2023-03-07 19:18:48	268435457	submission.event.submissionSubmitted	0
201	1048585	6	3	2023-03-07 19:19:04	805306371	editor.submission.decision.sendInternalReview.log	0
202	515	46	3	2023-03-07 19:19:04	1342177281	submission.event.fileUploaded	0
203	1048585	6	3	2023-03-07 19:19:04	1342177288	submission.event.fileRevised	0
204	515	47	3	2023-03-07 19:19:05	1342177281	submission.event.fileUploaded	0
205	1048585	6	3	2023-03-07 19:19:05	1342177288	submission.event.fileRevised	0
206	515	48	3	2023-03-07 19:19:05	1342177281	submission.event.fileUploaded	0
207	1048585	6	3	2023-03-07 19:19:05	1342177288	submission.event.fileRevised	0
208	515	49	3	2023-03-07 19:19:05	1342177281	submission.event.fileUploaded	0
209	1048585	6	3	2023-03-07 19:19:05	1342177288	submission.event.fileRevised	0
210	1048585	6	3	2023-03-07 19:19:15	268435459	submission.event.participantAdded	0
211	1048585	6	3	2023-03-07 19:19:21	268435459	submission.event.participantAdded	0
212	1048585	6	3	2023-03-07 19:19:27	268435459	submission.event.participantAdded	0
213	1048585	6	6	2023-03-07 19:19:44	805306372	editor.submission.recommend.accept.log	0
214	1048585	7	25	2023-03-07 19:20:09	268435458	submission.event.general.metadataUpdated	0
215	1048585	7	25	2023-03-07 19:20:10	268435458	submission.event.general.metadataUpdated	0
216	515	50	25	2023-03-07 19:20:13	1342177281	submission.event.fileUploaded	0
217	1048585	7	25	2023-03-07 19:20:13	1342177288	submission.event.fileRevised	0
218	515	50	25	2023-03-07 19:20:13	1342177296	submission.event.fileEdited	0
219	1048585	7	25	2023-03-07 19:20:14	1342177296	submission.event.fileEdited	0
220	515	51	25	2023-03-07 19:20:14	1342177281	submission.event.fileUploaded	0
221	1048585	7	25	2023-03-07 19:20:14	1342177288	submission.event.fileRevised	0
222	515	51	25	2023-03-07 19:20:15	1342177296	submission.event.fileEdited	0
223	1048585	7	25	2023-03-07 19:20:15	1342177296	submission.event.fileEdited	0
224	515	52	25	2023-03-07 19:20:16	1342177281	submission.event.fileUploaded	0
225	1048585	7	25	2023-03-07 19:20:16	1342177288	submission.event.fileRevised	0
226	515	52	25	2023-03-07 19:20:16	1342177296	submission.event.fileEdited	0
227	1048585	7	25	2023-03-07 19:20:16	1342177296	submission.event.fileEdited	0
228	515	53	25	2023-03-07 19:20:17	1342177281	submission.event.fileUploaded	0
229	1048585	7	25	2023-03-07 19:20:17	1342177288	submission.event.fileRevised	0
230	515	53	25	2023-03-07 19:20:17	1342177296	submission.event.fileEdited	0
231	1048585	7	25	2023-03-07 19:20:17	1342177296	submission.event.fileEdited	0
232	515	54	25	2023-03-07 19:20:18	1342177281	submission.event.fileUploaded	0
233	1048585	7	25	2023-03-07 19:20:18	1342177288	submission.event.fileRevised	0
234	515	54	25	2023-03-07 19:20:19	1342177296	submission.event.fileEdited	0
235	1048585	7	25	2023-03-07 19:20:19	1342177296	submission.event.fileEdited	0
236	1048585	7	25	2023-03-07 19:20:59	268435457	submission.event.submissionSubmitted	0
237	1048585	7	3	2023-03-07 19:21:17	805306371	editor.submission.decision.sendExternalReview.log	0
238	515	55	3	2023-03-07 19:21:18	1342177281	submission.event.fileUploaded	0
239	1048585	7	3	2023-03-07 19:21:18	1342177288	submission.event.fileRevised	0
240	515	56	3	2023-03-07 19:21:18	1342177281	submission.event.fileUploaded	0
241	1048585	7	3	2023-03-07 19:21:18	1342177288	submission.event.fileRevised	0
242	515	57	3	2023-03-07 19:21:18	1342177281	submission.event.fileUploaded	0
243	1048585	7	3	2023-03-07 19:21:18	1342177288	submission.event.fileRevised	0
244	515	58	3	2023-03-07 19:21:18	1342177281	submission.event.fileUploaded	0
245	1048585	7	3	2023-03-07 19:21:18	1342177288	submission.event.fileRevised	0
246	515	59	3	2023-03-07 19:21:18	1342177281	submission.event.fileUploaded	0
247	1048585	7	3	2023-03-07 19:21:18	1342177288	submission.event.fileRevised	0
248	1048585	7	3	2023-03-07 19:21:29	1073741825	log.review.reviewerAssigned	0
249	1048585	7	3	2023-03-07 19:21:36	805306371	editor.submission.decision.accept.log	0
250	1048585	7	3	2023-03-07 19:21:46	268435459	submission.event.participantAdded	0
251	1048585	8	3	2023-03-07 19:21:58	268435458	submission.event.general.metadataUpdated	0
252	515	60	3	2023-03-07 19:22:02	1342177281	submission.event.fileUploaded	0
253	1048585	8	3	2023-03-07 19:22:02	1342177288	submission.event.fileRevised	0
254	515	60	3	2023-03-07 19:22:02	1342177296	submission.event.fileEdited	0
255	1048585	8	3	2023-03-07 19:22:02	1342177296	submission.event.fileEdited	0
256	1048585	8	3	2023-03-07 19:22:03	268435457	submission.event.submissionSubmitted	0
257	1048585	9	26	2023-03-07 19:22:12	268435458	submission.event.general.metadataUpdated	0
258	1048585	9	26	2023-03-07 19:22:12	268435458	submission.event.general.metadataUpdated	0
259	515	61	26	2023-03-07 19:22:16	1342177281	submission.event.fileUploaded	0
260	1048585	9	26	2023-03-07 19:22:16	1342177288	submission.event.fileRevised	0
261	515	61	26	2023-03-07 19:22:16	1342177296	submission.event.fileEdited	0
262	1048585	9	26	2023-03-07 19:22:16	1342177296	submission.event.fileEdited	0
263	515	62	26	2023-03-07 19:22:17	1342177281	submission.event.fileUploaded	0
264	1048585	9	26	2023-03-07 19:22:17	1342177288	submission.event.fileRevised	0
265	515	62	26	2023-03-07 19:22:17	1342177296	submission.event.fileEdited	0
266	1048585	9	26	2023-03-07 19:22:17	1342177296	submission.event.fileEdited	0
267	515	63	26	2023-03-07 19:22:18	1342177281	submission.event.fileUploaded	0
268	1048585	9	26	2023-03-07 19:22:18	1342177288	submission.event.fileRevised	0
269	515	63	26	2023-03-07 19:22:19	1342177296	submission.event.fileEdited	0
270	1048585	9	26	2023-03-07 19:22:19	1342177296	submission.event.fileEdited	0
271	515	64	26	2023-03-07 19:22:19	1342177281	submission.event.fileUploaded	0
272	1048585	9	26	2023-03-07 19:22:19	1342177288	submission.event.fileRevised	0
273	515	64	26	2023-03-07 19:22:20	1342177296	submission.event.fileEdited	0
274	1048585	9	26	2023-03-07 19:22:20	1342177296	submission.event.fileEdited	0
275	515	65	26	2023-03-07 19:22:21	1342177281	submission.event.fileUploaded	0
276	1048585	9	26	2023-03-07 19:22:21	1342177288	submission.event.fileRevised	0
277	515	65	26	2023-03-07 19:22:21	1342177296	submission.event.fileEdited	0
278	1048585	9	26	2023-03-07 19:22:21	1342177296	submission.event.fileEdited	0
279	1048585	9	26	2023-03-07 19:23:01	268435457	submission.event.submissionSubmitted	0
280	1048585	9	3	2023-03-07 19:23:18	805306371	editor.submission.decision.sendInternalReview.log	0
281	515	66	3	2023-03-07 19:23:19	1342177281	submission.event.fileUploaded	0
282	1048585	9	3	2023-03-07 19:23:19	1342177288	submission.event.fileRevised	0
283	515	67	3	2023-03-07 19:23:19	1342177281	submission.event.fileUploaded	0
284	1048585	9	3	2023-03-07 19:23:19	1342177288	submission.event.fileRevised	0
285	515	68	3	2023-03-07 19:23:19	1342177281	submission.event.fileUploaded	0
286	1048585	9	3	2023-03-07 19:23:19	1342177288	submission.event.fileRevised	0
287	515	69	3	2023-03-07 19:23:19	1342177281	submission.event.fileUploaded	0
288	1048585	9	3	2023-03-07 19:23:19	1342177288	submission.event.fileRevised	0
289	515	70	3	2023-03-07 19:23:19	1342177281	submission.event.fileUploaded	0
290	1048585	9	3	2023-03-07 19:23:19	1342177288	submission.event.fileRevised	0
291	1048585	10	27	2023-03-07 19:23:35	268435458	submission.event.general.metadataUpdated	0
292	1048585	10	27	2023-03-07 19:23:35	268435458	submission.event.general.metadataUpdated	0
293	515	71	27	2023-03-07 19:23:39	1342177281	submission.event.fileUploaded	0
294	1048585	10	27	2023-03-07 19:23:39	1342177288	submission.event.fileRevised	0
295	515	71	27	2023-03-07 19:23:39	1342177296	submission.event.fileEdited	0
296	1048585	10	27	2023-03-07 19:23:39	1342177296	submission.event.fileEdited	0
297	515	72	27	2023-03-07 19:23:40	1342177281	submission.event.fileUploaded	0
298	1048585	10	27	2023-03-07 19:23:40	1342177288	submission.event.fileRevised	0
299	515	72	27	2023-03-07 19:23:40	1342177296	submission.event.fileEdited	0
300	1048585	10	27	2023-03-07 19:23:40	1342177296	submission.event.fileEdited	0
301	515	73	27	2023-03-07 19:23:41	1342177281	submission.event.fileUploaded	0
302	1048585	10	27	2023-03-07 19:23:41	1342177288	submission.event.fileRevised	0
303	515	73	27	2023-03-07 19:23:42	1342177296	submission.event.fileEdited	0
304	1048585	10	27	2023-03-07 19:23:42	1342177296	submission.event.fileEdited	0
305	515	74	27	2023-03-07 19:23:42	1342177281	submission.event.fileUploaded	0
306	1048585	10	27	2023-03-07 19:23:42	1342177288	submission.event.fileRevised	0
307	515	74	27	2023-03-07 19:23:43	1342177296	submission.event.fileEdited	0
308	1048585	10	27	2023-03-07 19:23:43	1342177296	submission.event.fileEdited	0
309	515	75	27	2023-03-07 19:23:44	1342177281	submission.event.fileUploaded	0
310	1048585	10	27	2023-03-07 19:23:44	1342177288	submission.event.fileRevised	0
311	515	75	27	2023-03-07 19:23:44	1342177296	submission.event.fileEdited	0
312	1048585	10	27	2023-03-07 19:23:44	1342177296	submission.event.fileEdited	0
313	515	76	27	2023-03-07 19:23:45	1342177281	submission.event.fileUploaded	0
314	1048585	10	27	2023-03-07 19:23:45	1342177288	submission.event.fileRevised	0
315	515	76	27	2023-03-07 19:23:46	1342177296	submission.event.fileEdited	0
316	1048585	10	27	2023-03-07 19:23:46	1342177296	submission.event.fileEdited	0
317	515	77	27	2023-03-07 19:23:46	1342177281	submission.event.fileUploaded	0
318	1048585	10	27	2023-03-07 19:23:46	1342177288	submission.event.fileRevised	0
319	515	77	27	2023-03-07 19:23:47	1342177296	submission.event.fileEdited	0
320	1048585	10	27	2023-03-07 19:23:47	1342177296	submission.event.fileEdited	0
321	515	78	27	2023-03-07 19:23:48	1342177281	submission.event.fileUploaded	0
322	1048585	10	27	2023-03-07 19:23:48	1342177288	submission.event.fileRevised	0
323	515	78	27	2023-03-07 19:23:48	1342177296	submission.event.fileEdited	0
324	1048585	10	27	2023-03-07 19:23:48	1342177296	submission.event.fileEdited	0
325	515	79	27	2023-03-07 19:23:49	1342177281	submission.event.fileUploaded	0
326	1048585	10	27	2023-03-07 19:23:49	1342177288	submission.event.fileRevised	0
327	515	79	27	2023-03-07 19:23:50	1342177296	submission.event.fileEdited	0
328	1048585	10	27	2023-03-07 19:23:50	1342177296	submission.event.fileEdited	0
329	1048585	10	27	2023-03-07 19:25:11	268435457	submission.event.submissionSubmitted	0
330	1048585	11	28	2023-03-07 19:25:22	268435458	submission.event.general.metadataUpdated	0
331	1048585	11	28	2023-03-07 19:25:23	268435458	submission.event.general.metadataUpdated	0
332	515	80	28	2023-03-07 19:25:26	1342177281	submission.event.fileUploaded	0
333	1048585	11	28	2023-03-07 19:25:26	1342177288	submission.event.fileRevised	0
334	515	80	28	2023-03-07 19:25:27	1342177296	submission.event.fileEdited	0
335	1048585	11	28	2023-03-07 19:25:27	1342177296	submission.event.fileEdited	0
336	515	81	28	2023-03-07 19:25:27	1342177281	submission.event.fileUploaded	0
337	1048585	11	28	2023-03-07 19:25:27	1342177288	submission.event.fileRevised	0
338	515	81	28	2023-03-07 19:25:28	1342177296	submission.event.fileEdited	0
339	1048585	11	28	2023-03-07 19:25:28	1342177296	submission.event.fileEdited	0
340	1048585	11	28	2023-03-07 19:25:41	268435457	submission.event.submissionSubmitted	0
341	1048585	11	3	2023-03-07 19:25:56	805306371	editor.submission.decision.sendInternalReview.log	0
342	515	82	3	2023-03-07 19:25:56	1342177281	submission.event.fileUploaded	0
343	1048585	11	3	2023-03-07 19:25:56	1342177288	submission.event.fileRevised	0
344	515	83	3	2023-03-07 19:25:57	1342177281	submission.event.fileUploaded	0
345	1048585	11	3	2023-03-07 19:25:57	1342177288	submission.event.fileRevised	0
346	1048585	11	3	2023-03-07 19:26:06	1073741825	log.review.reviewerAssigned	0
347	1048585	11	3	2023-03-07 19:26:11	805306371	editor.submission.decision.sendExternalReview.log	0
348	1048585	11	3	2023-03-07 19:26:22	1073741825	log.review.reviewerAssigned	0
349	1048585	11	3	2023-03-07 19:26:29	1073741825	log.review.reviewerAssigned	0
350	1048585	11	10	2023-03-07 19:26:37	1073741830	log.review.reviewAccepted	0
351	1048585	11	10	2023-03-07 19:26:43	1073741848	log.review.reviewReady	0
352	1048585	11	12	2023-03-07 19:26:50	1073741830	log.review.reviewAccepted	0
353	1048585	11	12	2023-03-07 19:26:55	1073741848	log.review.reviewReady	0
354	1048585	11	3	2023-03-07 19:27:16	805306371	editor.submission.decision.accept.log	0
355	1048585	11	3	2023-03-07 19:27:16	1073741856	submission.event.decisionReviewerEmailSent	0
356	1048585	12	29	2023-03-07 19:27:30	268435458	submission.event.general.metadataUpdated	0
357	1048585	12	29	2023-03-07 19:27:31	268435458	submission.event.general.metadataUpdated	0
358	515	84	29	2023-03-07 19:27:34	1342177281	submission.event.fileUploaded	0
359	1048585	12	29	2023-03-07 19:27:34	1342177288	submission.event.fileRevised	0
360	515	84	29	2023-03-07 19:27:35	1342177296	submission.event.fileEdited	0
361	1048585	12	29	2023-03-07 19:27:35	1342177296	submission.event.fileEdited	0
362	515	85	29	2023-03-07 19:27:35	1342177281	submission.event.fileUploaded	0
363	1048585	12	29	2023-03-07 19:27:35	1342177288	submission.event.fileRevised	0
364	515	85	29	2023-03-07 19:27:36	1342177296	submission.event.fileEdited	0
365	1048585	12	29	2023-03-07 19:27:36	1342177296	submission.event.fileEdited	0
366	515	86	29	2023-03-07 19:27:37	1342177281	submission.event.fileUploaded	0
367	1048585	12	29	2023-03-07 19:27:37	1342177288	submission.event.fileRevised	0
368	515	86	29	2023-03-07 19:27:37	1342177296	submission.event.fileEdited	0
369	1048585	12	29	2023-03-07 19:27:37	1342177296	submission.event.fileEdited	0
370	1048585	12	29	2023-03-07 19:28:01	268435457	submission.event.submissionSubmitted	0
371	1048585	12	3	2023-03-07 19:28:18	805306371	editor.submission.decision.sendInternalReview.log	0
372	515	87	3	2023-03-07 19:28:19	1342177281	submission.event.fileUploaded	0
373	1048585	12	3	2023-03-07 19:28:19	1342177288	submission.event.fileRevised	0
374	515	88	3	2023-03-07 19:28:19	1342177281	submission.event.fileUploaded	0
375	1048585	12	3	2023-03-07 19:28:19	1342177288	submission.event.fileRevised	0
376	515	89	3	2023-03-07 19:28:19	1342177281	submission.event.fileUploaded	0
377	1048585	12	3	2023-03-07 19:28:19	1342177288	submission.event.fileRevised	0
378	1048585	12	3	2023-03-07 19:28:30	1073741825	log.review.reviewerAssigned	0
379	1048585	12	3	2023-03-07 19:28:38	1073741825	log.review.reviewerAssigned	0
380	1048585	12	3	2023-03-07 19:28:45	1073741825	log.review.reviewerAssigned	0
381	1048585	12	8	2023-03-07 19:28:54	1073741830	log.review.reviewAccepted	0
382	1048585	12	8	2023-03-07 19:28:59	1073741848	log.review.reviewReady	0
383	1048585	13	30	2023-03-07 19:29:10	268435458	submission.event.general.metadataUpdated	0
384	1048585	13	30	2023-03-07 19:29:10	268435458	submission.event.general.metadataUpdated	0
385	515	90	30	2023-03-07 19:29:14	1342177281	submission.event.fileUploaded	0
386	1048585	13	30	2023-03-07 19:29:14	1342177288	submission.event.fileRevised	0
387	515	90	30	2023-03-07 19:29:14	1342177296	submission.event.fileEdited	0
388	1048585	13	30	2023-03-07 19:29:14	1342177296	submission.event.fileEdited	0
389	515	91	30	2023-03-07 19:29:15	1342177281	submission.event.fileUploaded	0
390	1048585	13	30	2023-03-07 19:29:15	1342177288	submission.event.fileRevised	0
391	515	91	30	2023-03-07 19:29:15	1342177296	submission.event.fileEdited	0
392	1048585	13	30	2023-03-07 19:29:15	1342177296	submission.event.fileEdited	0
393	515	92	30	2023-03-07 19:29:16	1342177281	submission.event.fileUploaded	0
394	1048585	13	30	2023-03-07 19:29:16	1342177288	submission.event.fileRevised	0
395	515	92	30	2023-03-07 19:29:16	1342177296	submission.event.fileEdited	0
396	1048585	13	30	2023-03-07 19:29:16	1342177296	submission.event.fileEdited	0
397	1048585	13	30	2023-03-07 19:29:39	268435457	submission.event.submissionSubmitted	0
398	1048585	13	3	2023-03-07 19:29:56	805306371	editor.submission.decision.sendInternalReview.log	0
399	515	93	3	2023-03-07 19:29:56	1342177281	submission.event.fileUploaded	0
400	1048585	13	3	2023-03-07 19:29:56	1342177288	submission.event.fileRevised	0
401	515	94	3	2023-03-07 19:29:56	1342177281	submission.event.fileUploaded	0
402	1048585	13	3	2023-03-07 19:29:56	1342177288	submission.event.fileRevised	0
403	515	95	3	2023-03-07 19:29:57	1342177281	submission.event.fileUploaded	0
404	1048585	13	3	2023-03-07 19:29:57	1342177288	submission.event.fileRevised	0
405	1048585	13	3	2023-03-07 19:30:07	1073741825	log.review.reviewerAssigned	0
406	1048585	13	3	2023-03-07 19:30:13	805306371	editor.submission.decision.sendExternalReview.log	0
407	1048585	13	3	2023-03-07 19:30:24	1073741825	log.review.reviewerAssigned	0
408	1048585	13	3	2023-03-07 19:30:32	1073741825	log.review.reviewerAssigned	0
409	1048585	13	3	2023-03-07 19:30:40	1073741825	log.review.reviewerAssigned	0
410	1048585	13	10	2023-03-07 19:30:50	1073741830	log.review.reviewAccepted	0
411	1048585	13	10	2023-03-07 19:30:55	1073741848	log.review.reviewReady	0
412	1048585	13	12	2023-03-07 19:31:03	1073741830	log.review.reviewAccepted	0
413	1048585	13	12	2023-03-07 19:31:08	1073741848	log.review.reviewReady	0
414	1048585	13	3	2023-03-07 19:31:31	805306371	editor.submission.decision.accept.log	0
415	1048585	13	3	2023-03-07 19:31:31	1073741856	submission.event.decisionReviewerEmailSent	0
416	1048585	14	31	2023-03-07 19:31:45	268435458	submission.event.general.metadataUpdated	0
417	1048585	14	31	2023-03-07 19:31:46	268435458	submission.event.general.metadataUpdated	0
418	515	96	31	2023-03-07 19:31:49	1342177281	submission.event.fileUploaded	0
419	1048585	14	31	2023-03-07 19:31:49	1342177288	submission.event.fileRevised	0
420	515	96	31	2023-03-07 19:31:50	1342177296	submission.event.fileEdited	0
421	1048585	14	31	2023-03-07 19:31:50	1342177296	submission.event.fileEdited	0
422	515	97	31	2023-03-07 19:31:51	1342177281	submission.event.fileUploaded	0
423	1048585	14	31	2023-03-07 19:31:51	1342177288	submission.event.fileRevised	0
424	515	97	31	2023-03-07 19:31:51	1342177296	submission.event.fileEdited	0
425	1048585	14	31	2023-03-07 19:31:51	1342177296	submission.event.fileEdited	0
426	515	98	31	2023-03-07 19:31:52	1342177281	submission.event.fileUploaded	0
427	1048585	14	31	2023-03-07 19:31:52	1342177288	submission.event.fileRevised	0
428	515	98	31	2023-03-07 19:31:52	1342177296	submission.event.fileEdited	0
429	1048585	14	31	2023-03-07 19:31:52	1342177296	submission.event.fileEdited	0
430	515	99	31	2023-03-07 19:31:53	1342177281	submission.event.fileUploaded	0
431	1048585	14	31	2023-03-07 19:31:53	1342177288	submission.event.fileRevised	0
432	515	99	31	2023-03-07 19:31:54	1342177296	submission.event.fileEdited	0
433	1048585	14	31	2023-03-07 19:31:54	1342177296	submission.event.fileEdited	0
434	515	100	31	2023-03-07 19:31:54	1342177281	submission.event.fileUploaded	0
435	1048585	14	31	2023-03-07 19:31:54	1342177288	submission.event.fileRevised	0
436	515	100	31	2023-03-07 19:31:55	1342177296	submission.event.fileEdited	0
437	1048585	14	31	2023-03-07 19:31:55	1342177296	submission.event.fileEdited	0
438	515	101	31	2023-03-07 19:31:56	1342177281	submission.event.fileUploaded	0
439	1048585	14	31	2023-03-07 19:31:56	1342177288	submission.event.fileRevised	0
440	515	101	31	2023-03-07 19:31:56	1342177296	submission.event.fileEdited	0
441	1048585	14	31	2023-03-07 19:31:56	1342177296	submission.event.fileEdited	0
442	1048585	14	31	2023-03-07 19:32:27	268435457	submission.event.submissionSubmitted	0
443	1048585	14	3	2023-03-07 19:32:46	805306371	editor.submission.decision.sendInternalReview.log	0
444	515	102	3	2023-03-07 19:32:47	1342177281	submission.event.fileUploaded	0
445	1048585	14	3	2023-03-07 19:32:47	1342177288	submission.event.fileRevised	0
446	515	103	3	2023-03-07 19:32:47	1342177281	submission.event.fileUploaded	0
447	1048585	14	3	2023-03-07 19:32:47	1342177288	submission.event.fileRevised	0
448	515	104	3	2023-03-07 19:32:47	1342177281	submission.event.fileUploaded	0
449	1048585	14	3	2023-03-07 19:32:47	1342177288	submission.event.fileRevised	0
450	515	105	3	2023-03-07 19:32:47	1342177281	submission.event.fileUploaded	0
451	1048585	14	3	2023-03-07 19:32:47	1342177288	submission.event.fileRevised	0
452	515	106	3	2023-03-07 19:32:47	1342177281	submission.event.fileUploaded	0
453	1048585	14	3	2023-03-07 19:32:47	1342177288	submission.event.fileRevised	0
454	515	107	3	2023-03-07 19:32:47	1342177281	submission.event.fileUploaded	0
455	1048585	14	3	2023-03-07 19:32:47	1342177288	submission.event.fileRevised	0
456	1048585	14	3	2023-03-07 19:32:59	1073741825	log.review.reviewerAssigned	0
457	1048585	14	3	2023-03-07 19:33:05	805306371	editor.submission.decision.sendExternalReview.log	0
458	1048585	14	3	2023-03-07 19:33:17	1073741825	log.review.reviewerAssigned	0
459	1048585	14	3	2023-03-07 19:33:24	805306371	editor.submission.decision.accept.log	0
460	1048585	14	3	2023-03-07 19:33:35	268435459	submission.event.participantAdded	0
461	1048585	14	3	2023-03-07 19:33:42	805306371	editor.submission.decision.sendToProduction.log	0
462	1048585	14	3	2023-03-07 19:33:55	268435459	submission.event.participantAdded	0
463	1048585	14	3	2023-03-07 19:34:02	268435459	submission.event.participantAdded	0
464	1048585	14	3	2023-03-07 19:34:08	268435474	submission.event.publicationFormatCreated	0
465	515	108	3	2023-03-07 19:34:16	1342177281	submission.event.fileUploaded	0
466	1048585	14	3	2023-03-07 19:34:16	1342177288	submission.event.fileRevised	0
467	515	109	3	2023-03-07 19:34:16	1342177281	submission.event.fileUploaded	0
468	1048585	14	3	2023-03-07 19:34:16	1342177288	submission.event.fileRevised	0
469	515	110	3	2023-03-07 19:34:16	1342177281	submission.event.fileUploaded	0
470	1048585	14	3	2023-03-07 19:34:16	1342177288	submission.event.fileRevised	0
471	515	111	3	2023-03-07 19:34:16	1342177281	submission.event.fileUploaded	0
472	1048585	14	3	2023-03-07 19:34:16	1342177288	submission.event.fileRevised	0
473	515	112	3	2023-03-07 19:34:16	1342177281	submission.event.fileUploaded	0
474	1048585	14	3	2023-03-07 19:34:16	1342177288	submission.event.fileRevised	0
475	515	113	3	2023-03-07 19:34:16	1342177281	submission.event.fileUploaded	0
476	1048585	14	3	2023-03-07 19:34:16	1342177288	submission.event.fileRevised	0
477	1048585	14	3	2023-03-07 19:34:19	268435464	submission.event.publicationFormatPublished	0
478	1048585	14	3	2023-03-07 19:34:22	268435476	submission.event.publicationFormatMadeAvailable	0
479	515	113	3	2023-03-07 19:34:25	1342177296	submission.event.fileEdited	0
480	1048585	14	3	2023-03-07 19:34:25	1342177296	submission.event.fileEdited	0
481	515	113	3	2023-03-07 19:34:25	1342177287	submission.event.signoffSignoff	0
482	515	113	3	2023-03-07 19:34:28	1342177296	submission.event.fileEdited	0
483	1048585	14	3	2023-03-07 19:34:28	1342177296	submission.event.fileEdited	0
484	515	112	3	2023-03-07 19:34:31	1342177296	submission.event.fileEdited	0
485	1048585	14	3	2023-03-07 19:34:31	1342177296	submission.event.fileEdited	0
486	515	112	3	2023-03-07 19:34:31	1342177287	submission.event.signoffSignoff	0
487	515	112	3	2023-03-07 19:34:34	1342177296	submission.event.fileEdited	0
488	1048585	14	3	2023-03-07 19:34:34	1342177296	submission.event.fileEdited	0
489	515	111	3	2023-03-07 19:34:37	1342177296	submission.event.fileEdited	0
490	1048585	14	3	2023-03-07 19:34:37	1342177296	submission.event.fileEdited	0
491	515	111	3	2023-03-07 19:34:37	1342177287	submission.event.signoffSignoff	0
492	515	111	3	2023-03-07 19:34:41	1342177296	submission.event.fileEdited	0
493	1048585	14	3	2023-03-07 19:34:41	1342177296	submission.event.fileEdited	0
494	515	110	3	2023-03-07 19:34:43	1342177296	submission.event.fileEdited	0
495	1048585	14	3	2023-03-07 19:34:43	1342177296	submission.event.fileEdited	0
496	515	110	3	2023-03-07 19:34:44	1342177287	submission.event.signoffSignoff	0
497	515	110	3	2023-03-07 19:34:47	1342177296	submission.event.fileEdited	0
498	1048585	14	3	2023-03-07 19:34:47	1342177296	submission.event.fileEdited	0
499	515	109	3	2023-03-07 19:34:50	1342177296	submission.event.fileEdited	0
500	1048585	14	3	2023-03-07 19:34:50	1342177296	submission.event.fileEdited	0
501	515	109	3	2023-03-07 19:34:50	1342177287	submission.event.signoffSignoff	0
502	515	109	3	2023-03-07 19:34:53	1342177296	submission.event.fileEdited	0
503	1048585	14	3	2023-03-07 19:34:53	1342177296	submission.event.fileEdited	0
504	515	108	3	2023-03-07 19:34:56	1342177296	submission.event.fileEdited	0
505	1048585	14	3	2023-03-07 19:34:56	1342177296	submission.event.fileEdited	0
506	515	108	3	2023-03-07 19:34:56	1342177287	submission.event.signoffSignoff	0
507	515	108	3	2023-03-07 19:35:00	1342177296	submission.event.fileEdited	0
508	1048585	14	3	2023-03-07 19:35:00	1342177296	submission.event.fileEdited	0
509	1048585	14	3	2023-03-07 19:35:03	268435462	publication.event.published	0
510	1048585	15	32	2023-03-07 19:35:14	268435458	submission.event.general.metadataUpdated	0
511	1048585	15	32	2023-03-07 19:35:15	268435458	submission.event.general.metadataUpdated	0
512	515	114	32	2023-03-07 19:35:18	1342177281	submission.event.fileUploaded	0
513	1048585	15	32	2023-03-07 19:35:18	1342177288	submission.event.fileRevised	0
514	515	114	32	2023-03-07 19:35:18	1342177296	submission.event.fileEdited	0
515	1048585	15	32	2023-03-07 19:35:18	1342177296	submission.event.fileEdited	0
516	515	115	32	2023-03-07 19:35:19	1342177281	submission.event.fileUploaded	0
517	1048585	15	32	2023-03-07 19:35:19	1342177288	submission.event.fileRevised	0
518	515	115	32	2023-03-07 19:35:20	1342177296	submission.event.fileEdited	0
519	1048585	15	32	2023-03-07 19:35:20	1342177296	submission.event.fileEdited	0
520	515	116	32	2023-03-07 19:35:20	1342177281	submission.event.fileUploaded	0
521	1048585	15	32	2023-03-07 19:35:20	1342177288	submission.event.fileRevised	0
522	515	116	32	2023-03-07 19:35:21	1342177296	submission.event.fileEdited	0
523	1048585	15	32	2023-03-07 19:35:21	1342177296	submission.event.fileEdited	0
524	1048585	15	32	2023-03-07 19:35:41	268435457	submission.event.submissionSubmitted	0
525	1048585	15	3	2023-03-07 19:35:59	805306371	editor.submission.decision.sendExternalReview.log	0
526	515	117	3	2023-03-07 19:35:59	1342177281	submission.event.fileUploaded	0
527	1048585	15	3	2023-03-07 19:35:59	1342177288	submission.event.fileRevised	0
528	515	118	3	2023-03-07 19:35:59	1342177281	submission.event.fileUploaded	0
529	1048585	15	3	2023-03-07 19:35:59	1342177288	submission.event.fileRevised	0
530	515	119	3	2023-03-07 19:35:59	1342177281	submission.event.fileUploaded	0
531	1048585	15	3	2023-03-07 19:35:59	1342177288	submission.event.fileRevised	0
532	1048585	16	33	2023-03-07 19:36:14	268435458	submission.event.general.metadataUpdated	0
533	1048585	16	33	2023-03-07 19:36:15	268435458	submission.event.general.metadataUpdated	0
534	515	120	33	2023-03-07 19:36:18	1342177281	submission.event.fileUploaded	0
535	1048585	16	33	2023-03-07 19:36:18	1342177288	submission.event.fileRevised	0
536	515	120	33	2023-03-07 19:36:18	1342177296	submission.event.fileEdited	0
537	1048585	16	33	2023-03-07 19:36:19	1342177296	submission.event.fileEdited	0
538	515	121	33	2023-03-07 19:36:19	1342177281	submission.event.fileUploaded	0
539	1048585	16	33	2023-03-07 19:36:19	1342177288	submission.event.fileRevised	0
540	515	121	33	2023-03-07 19:36:20	1342177296	submission.event.fileEdited	0
541	1048585	16	33	2023-03-07 19:36:20	1342177296	submission.event.fileEdited	0
542	515	122	33	2023-03-07 19:36:21	1342177281	submission.event.fileUploaded	0
543	1048585	16	33	2023-03-07 19:36:21	1342177288	submission.event.fileRevised	0
544	515	122	33	2023-03-07 19:36:21	1342177296	submission.event.fileEdited	0
545	1048585	16	33	2023-03-07 19:36:21	1342177296	submission.event.fileEdited	0
546	515	123	33	2023-03-07 19:36:22	1342177281	submission.event.fileUploaded	0
547	1048585	16	33	2023-03-07 19:36:22	1342177288	submission.event.fileRevised	0
548	515	123	33	2023-03-07 19:36:22	1342177296	submission.event.fileEdited	0
549	1048585	16	33	2023-03-07 19:36:22	1342177296	submission.event.fileEdited	0
550	515	124	33	2023-03-07 19:36:23	1342177281	submission.event.fileUploaded	0
551	1048585	16	33	2023-03-07 19:36:23	1342177288	submission.event.fileRevised	0
552	515	124	33	2023-03-07 19:36:24	1342177296	submission.event.fileEdited	0
553	1048585	16	33	2023-03-07 19:36:24	1342177296	submission.event.fileEdited	0
554	1048585	16	33	2023-03-07 19:36:59	268435457	submission.event.submissionSubmitted	0
555	1048585	16	3	2023-03-07 19:37:19	805306371	editor.submission.decision.sendExternalReview.log	0
556	515	125	3	2023-03-07 19:37:19	1342177281	submission.event.fileUploaded	0
557	1048585	16	3	2023-03-07 19:37:19	1342177288	submission.event.fileRevised	0
558	515	126	3	2023-03-07 19:37:19	1342177281	submission.event.fileUploaded	0
559	1048585	16	3	2023-03-07 19:37:19	1342177288	submission.event.fileRevised	0
560	515	127	3	2023-03-07 19:37:19	1342177281	submission.event.fileUploaded	0
561	1048585	16	3	2023-03-07 19:37:19	1342177288	submission.event.fileRevised	0
562	515	128	3	2023-03-07 19:37:20	1342177281	submission.event.fileUploaded	0
563	1048585	16	3	2023-03-07 19:37:20	1342177288	submission.event.fileRevised	0
564	515	129	3	2023-03-07 19:37:20	1342177281	submission.event.fileUploaded	0
565	1048585	16	3	2023-03-07 19:37:20	1342177288	submission.event.fileRevised	0
566	1048585	16	3	2023-03-07 19:37:31	1073741825	log.review.reviewerAssigned	0
567	1048585	16	3	2023-03-07 19:37:39	1073741825	log.review.reviewerAssigned	0
568	1048585	16	3	2023-03-07 19:37:47	1073741825	log.review.reviewerAssigned	0
569	1048585	16	10	2023-03-07 19:37:57	1073741830	log.review.reviewAccepted	0
570	1048585	16	10	2023-03-07 19:38:03	1073741848	log.review.reviewReady	0
571	1048585	17	34	2023-03-07 19:38:13	268435458	submission.event.general.metadataUpdated	0
572	1048585	17	34	2023-03-07 19:38:14	268435458	submission.event.general.metadataUpdated	0
573	515	130	34	2023-03-07 19:38:17	1342177281	submission.event.fileUploaded	0
574	1048585	17	34	2023-03-07 19:38:17	1342177288	submission.event.fileRevised	0
575	515	130	34	2023-03-07 19:38:17	1342177296	submission.event.fileEdited	0
576	1048585	17	34	2023-03-07 19:38:17	1342177296	submission.event.fileEdited	0
577	515	131	34	2023-03-07 19:38:18	1342177281	submission.event.fileUploaded	0
578	1048585	17	34	2023-03-07 19:38:18	1342177288	submission.event.fileRevised	0
579	515	131	34	2023-03-07 19:38:19	1342177296	submission.event.fileEdited	0
580	1048585	17	34	2023-03-07 19:38:19	1342177296	submission.event.fileEdited	0
581	515	132	34	2023-03-07 19:38:19	1342177281	submission.event.fileUploaded	0
582	1048585	17	34	2023-03-07 19:38:19	1342177288	submission.event.fileRevised	0
583	515	132	34	2023-03-07 19:38:20	1342177296	submission.event.fileEdited	0
584	1048585	17	34	2023-03-07 19:38:20	1342177296	submission.event.fileEdited	0
585	515	133	34	2023-03-07 19:38:21	1342177281	submission.event.fileUploaded	0
586	1048585	17	34	2023-03-07 19:38:21	1342177288	submission.event.fileRevised	0
587	515	133	34	2023-03-07 19:38:21	1342177296	submission.event.fileEdited	0
588	1048585	17	34	2023-03-07 19:38:21	1342177296	submission.event.fileEdited	0
589	515	134	34	2023-03-07 19:38:22	1342177281	submission.event.fileUploaded	0
590	1048585	17	34	2023-03-07 19:38:22	1342177288	submission.event.fileRevised	0
591	515	134	34	2023-03-07 19:38:22	1342177296	submission.event.fileEdited	0
592	1048585	17	34	2023-03-07 19:38:22	1342177296	submission.event.fileEdited	0
593	515	135	34	2023-03-07 19:38:23	1342177281	submission.event.fileUploaded	0
594	1048585	17	34	2023-03-07 19:38:23	1342177288	submission.event.fileRevised	0
595	515	135	34	2023-03-07 19:38:24	1342177296	submission.event.fileEdited	0
596	1048585	17	34	2023-03-07 19:38:24	1342177296	submission.event.fileEdited	0
597	1048585	17	34	2023-03-07 19:39:18	268435457	submission.event.submissionSubmitted	0
598	1048585	17	3	2023-03-07 19:39:39	805306371	editor.submission.decision.sendInternalReview.log	0
599	515	136	3	2023-03-07 19:39:39	1342177281	submission.event.fileUploaded	0
600	1048585	17	3	2023-03-07 19:39:39	1342177288	submission.event.fileRevised	0
601	515	137	3	2023-03-07 19:39:40	1342177281	submission.event.fileUploaded	0
602	1048585	17	3	2023-03-07 19:39:40	1342177288	submission.event.fileRevised	0
603	515	138	3	2023-03-07 19:39:40	1342177281	submission.event.fileUploaded	0
604	1048585	17	3	2023-03-07 19:39:40	1342177288	submission.event.fileRevised	0
605	515	139	3	2023-03-07 19:39:40	1342177281	submission.event.fileUploaded	0
606	1048585	17	3	2023-03-07 19:39:40	1342177288	submission.event.fileRevised	0
607	515	140	3	2023-03-07 19:39:40	1342177281	submission.event.fileUploaded	0
608	1048585	17	3	2023-03-07 19:39:40	1342177288	submission.event.fileRevised	0
609	515	141	3	2023-03-07 19:39:40	1342177281	submission.event.fileUploaded	0
610	1048585	17	3	2023-03-07 19:39:40	1342177288	submission.event.fileRevised	0
611	1048585	17	3	2023-03-07 19:39:52	1073741825	log.review.reviewerAssigned	0
612	1048585	17	3	2023-03-07 19:40:00	1073741825	log.review.reviewerAssigned	0
\.


--
-- Name: event_log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.event_log_log_id_seq', 612, true);


--
-- Data for Name: event_log_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.event_log_settings (log_id, setting_name, setting_value, setting_type) FROM stdin;
3	fileStage	2	int
3	sourceSubmissionFileId	\N	string
3	submissionFileId	1	int
3	fileId	1	int
3	submissionId	1	int
3	originalFileName	chapter1.pdf	string
3	username	aclark	string
4	fileStage	2	int
4	submissionFileId	1	int
4	fileId	1	int
4	submissionId	1	int
4	username	aclark	string
4	name	chapter1.pdf	string
5	fileStage	2	int
5	sourceSubmissionFileId	\N	string
5	submissionFileId	1	int
5	fileId	1	int
5	submissionId	1	int
5	originalFileName	chapter1.pdf	string
5	username	aclark	string
6	fileStage	2	int
6	sourceSubmissionFileId	\N	string
6	submissionFileId	1	int
6	fileId	1	int
6	submissionId	1	int
6	username	aclark	string
6	originalFileName	chapter1.pdf	string
6	name	chapter1.pdf	string
7	fileStage	2	int
7	sourceSubmissionFileId	\N	string
7	submissionFileId	2	int
7	fileId	2	int
7	submissionId	1	int
7	originalFileName	chapter2.pdf	string
7	username	aclark	string
8	fileStage	2	int
8	submissionFileId	2	int
8	fileId	2	int
8	submissionId	1	int
8	username	aclark	string
8	name	chapter2.pdf	string
9	fileStage	2	int
9	sourceSubmissionFileId	\N	string
9	submissionFileId	2	int
9	fileId	2	int
9	submissionId	1	int
9	originalFileName	chapter2.pdf	string
9	username	aclark	string
10	fileStage	2	int
10	sourceSubmissionFileId	\N	string
10	submissionFileId	2	int
10	fileId	2	int
10	submissionId	1	int
10	username	aclark	string
10	originalFileName	chapter2.pdf	string
10	name	chapter2.pdf	string
11	fileStage	2	int
11	sourceSubmissionFileId	\N	string
11	submissionFileId	3	int
11	fileId	3	int
11	submissionId	1	int
11	originalFileName	chapter3.pdf	string
11	username	aclark	string
12	fileStage	2	int
12	submissionFileId	3	int
12	fileId	3	int
12	submissionId	1	int
12	username	aclark	string
12	name	chapter3.pdf	string
13	fileStage	2	int
13	sourceSubmissionFileId	\N	string
13	submissionFileId	3	int
13	fileId	3	int
13	submissionId	1	int
13	originalFileName	chapter3.pdf	string
13	username	aclark	string
14	fileStage	2	int
14	sourceSubmissionFileId	\N	string
14	submissionFileId	3	int
14	fileId	3	int
14	submissionId	1	int
14	username	aclark	string
14	originalFileName	chapter3.pdf	string
14	name	chapter3.pdf	string
16	editorId	3	int
16	editorName	Daniel Barnes	string
16	submissionId	1	int
16	decision	18	int
17	fileStage	4	int
17	sourceSubmissionFileId	3	int
17	submissionFileId	4	int
17	fileId	3	int
17	submissionId	1	int
17	originalFileName	chapter3.pdf	string
17	username	dbarnes	string
18	fileStage	4	int
18	submissionFileId	4	int
18	fileId	3	int
18	submissionId	1	int
18	username	dbarnes	string
18	name	chapter3.pdf	string
19	fileStage	4	int
19	sourceSubmissionFileId	1	int
19	submissionFileId	5	int
19	fileId	1	int
19	submissionId	1	int
19	originalFileName	chapter1.pdf	string
19	username	dbarnes	string
20	fileStage	4	int
20	submissionFileId	5	int
20	fileId	1	int
20	submissionId	1	int
20	username	dbarnes	string
20	name	chapter1.pdf	string
21	fileStage	4	int
21	sourceSubmissionFileId	2	int
21	submissionFileId	6	int
21	fileId	2	int
21	submissionId	1	int
21	originalFileName	chapter2.pdf	string
21	username	dbarnes	string
22	fileStage	4	int
22	submissionFileId	6	int
22	fileId	2	int
22	submissionId	1	int
22	username	dbarnes	string
22	name	chapter2.pdf	string
23	reviewAssignmentId	1	int
23	reviewerName	Gonzalo Favio	string
23	submissionId	1	int
23	stageId	3	int
23	round	1	int
24	editorId	3	int
24	editorName	Daniel Barnes	string
24	submissionId	1	int
24	decision	2	int
25	name	Sarah Vogt	string
25	username	svogt	string
25	userGroupName	Copyeditor	string
28	fileStage	2	int
28	sourceSubmissionFileId	\N	string
28	submissionFileId	7	int
28	fileId	4	int
28	submissionId	2	int
28	originalFileName	chapter1.pdf	string
28	username	afinkel	string
29	fileStage	2	int
29	submissionFileId	7	int
29	fileId	4	int
29	submissionId	2	int
29	username	afinkel	string
29	name	chapter1.pdf	string
31	fileStage	2	int
31	sourceSubmissionFileId	\N	string
31	submissionFileId	7	int
31	fileId	4	int
31	submissionId	2	int
31	originalFileName	chapter1.pdf	string
31	username	afinkel	string
32	fileStage	2	int
32	sourceSubmissionFileId	\N	string
32	submissionFileId	7	int
32	fileId	4	int
32	submissionId	2	int
32	username	afinkel	string
32	originalFileName	chapter1.pdf	string
32	name	chapter1.pdf	string
33	fileStage	2	int
33	sourceSubmissionFileId	\N	string
33	submissionFileId	8	int
33	fileId	5	int
33	submissionId	2	int
33	originalFileName	chapter2.pdf	string
33	username	afinkel	string
34	fileStage	2	int
34	submissionFileId	8	int
34	fileId	5	int
34	submissionId	2	int
34	username	afinkel	string
34	name	chapter2.pdf	string
35	fileStage	2	int
35	sourceSubmissionFileId	\N	string
35	submissionFileId	8	int
35	fileId	5	int
35	submissionId	2	int
35	originalFileName	chapter2.pdf	string
35	username	afinkel	string
36	fileStage	2	int
36	sourceSubmissionFileId	\N	string
36	submissionFileId	8	int
36	fileId	5	int
36	submissionId	2	int
36	username	afinkel	string
36	originalFileName	chapter2.pdf	string
36	name	chapter2.pdf	string
37	fileStage	2	int
37	sourceSubmissionFileId	\N	string
37	submissionFileId	9	int
37	fileId	6	int
37	submissionId	2	int
37	originalFileName	chapter3.pdf	string
37	username	afinkel	string
38	fileStage	2	int
38	submissionFileId	9	int
38	fileId	6	int
38	submissionId	2	int
38	username	afinkel	string
38	name	chapter3.pdf	string
39	fileStage	2	int
39	sourceSubmissionFileId	\N	string
39	submissionFileId	9	int
39	fileId	6	int
39	submissionId	2	int
39	originalFileName	chapter3.pdf	string
39	username	afinkel	string
40	fileStage	2	int
40	sourceSubmissionFileId	\N	string
40	submissionFileId	9	int
40	fileId	6	int
40	submissionId	2	int
40	username	afinkel	string
40	originalFileName	chapter3.pdf	string
40	name	chapter3.pdf	string
41	fileStage	2	int
41	sourceSubmissionFileId	\N	string
41	submissionFileId	10	int
41	fileId	7	int
41	submissionId	2	int
41	originalFileName	chapter4.pdf	string
41	username	afinkel	string
42	fileStage	2	int
42	submissionFileId	10	int
42	fileId	7	int
42	submissionId	2	int
42	username	afinkel	string
42	name	chapter4.pdf	string
43	fileStage	2	int
43	sourceSubmissionFileId	\N	string
43	submissionFileId	10	int
43	fileId	7	int
43	submissionId	2	int
43	originalFileName	chapter4.pdf	string
43	username	afinkel	string
44	fileStage	2	int
44	sourceSubmissionFileId	\N	string
44	submissionFileId	10	int
44	fileId	7	int
44	submissionId	2	int
44	username	afinkel	string
44	originalFileName	chapter4.pdf	string
44	name	chapter4.pdf	string
45	fileStage	2	int
45	sourceSubmissionFileId	\N	string
45	submissionFileId	11	int
45	fileId	8	int
45	submissionId	2	int
45	originalFileName	delete-this-file.pdf	string
45	username	afinkel	string
46	fileStage	2	int
46	submissionFileId	11	int
46	fileId	8	int
46	submissionId	2	int
46	username	afinkel	string
46	name	delete-this-file.pdf	string
47	fileStage	2	int
47	sourceSubmissionFileId	\N	string
47	submissionFileId	11	int
47	fileId	8	int
47	submissionId	2	int
47	originalFileName	delete-this-file.pdf	string
47	username	afinkel	string
48	fileStage	2	int
48	sourceSubmissionFileId	\N	string
48	submissionFileId	11	int
48	fileId	8	int
48	submissionId	2	int
48	username	afinkel	string
48	originalFileName	delete-this-file.pdf	string
48	name	delete-this-file.pdf	string
49	fileStage	2	int
49	sourceSubmissionFileId	\N	string
49	submissionFileId	11	int
49	submissionId	2	int
49	username	afinkel	string
51	editorId	3	int
51	editorName	Daniel Barnes	string
51	submissionId	2	int
51	decision	18	int
52	fileStage	4	int
52	sourceSubmissionFileId	10	int
52	submissionFileId	12	int
52	fileId	7	int
52	submissionId	2	int
52	originalFileName	chapter4.pdf	string
52	username	dbarnes	string
53	fileStage	4	int
53	submissionFileId	12	int
53	fileId	7	int
53	submissionId	2	int
53	username	dbarnes	string
53	name	chapter4.pdf	string
54	fileStage	4	int
54	sourceSubmissionFileId	9	int
54	submissionFileId	13	int
54	fileId	6	int
54	submissionId	2	int
54	originalFileName	chapter3.pdf	string
54	username	dbarnes	string
55	fileStage	4	int
55	submissionFileId	13	int
55	fileId	6	int
55	submissionId	2	int
55	username	dbarnes	string
55	name	chapter3.pdf	string
56	fileStage	4	int
56	sourceSubmissionFileId	8	int
56	submissionFileId	14	int
56	fileId	5	int
56	submissionId	2	int
56	originalFileName	chapter2.pdf	string
56	username	dbarnes	string
57	fileStage	4	int
57	submissionFileId	14	int
57	fileId	5	int
57	submissionId	2	int
57	username	dbarnes	string
57	name	chapter2.pdf	string
58	fileStage	4	int
58	sourceSubmissionFileId	7	int
58	submissionFileId	15	int
58	fileId	4	int
58	submissionId	2	int
58	originalFileName	chapter1.pdf	string
58	username	dbarnes	string
59	fileStage	4	int
59	submissionFileId	15	int
59	fileId	4	int
59	submissionId	2	int
59	username	dbarnes	string
59	name	chapter1.pdf	string
60	reviewAssignmentId	2	int
60	reviewerName	Al Zacharia	string
60	submissionId	2	int
60	stageId	3	int
60	round	1	int
61	reviewAssignmentId	3	int
61	reviewerName	Gonzalo Favio	string
61	submissionId	2	int
61	stageId	3	int
61	round	1	int
64	fileStage	2	int
64	sourceSubmissionFileId	\N	string
64	submissionFileId	16	int
64	fileId	9	int
64	submissionId	3	int
64	originalFileName	chapter1.pdf	string
64	username	bbarnetson	string
65	fileStage	2	int
65	submissionFileId	16	int
65	fileId	9	int
65	submissionId	3	int
65	username	bbarnetson	string
65	name	chapter1.pdf	string
66	fileStage	2	int
66	sourceSubmissionFileId	\N	string
66	submissionFileId	16	int
66	fileId	9	int
66	submissionId	3	int
66	originalFileName	chapter1.pdf	string
66	username	bbarnetson	string
67	fileStage	2	int
67	sourceSubmissionFileId	\N	string
67	submissionFileId	16	int
67	fileId	9	int
67	submissionId	3	int
67	username	bbarnetson	string
67	originalFileName	chapter1.pdf	string
67	name	chapter1.pdf	string
68	fileStage	2	int
68	sourceSubmissionFileId	\N	string
68	submissionFileId	17	int
68	fileId	10	int
68	submissionId	3	int
68	originalFileName	chapter2.pdf	string
68	username	bbarnetson	string
69	fileStage	2	int
69	submissionFileId	17	int
69	fileId	10	int
69	submissionId	3	int
69	username	bbarnetson	string
69	name	chapter2.pdf	string
70	fileStage	2	int
70	sourceSubmissionFileId	\N	string
70	submissionFileId	17	int
70	fileId	10	int
70	submissionId	3	int
70	originalFileName	chapter2.pdf	string
70	username	bbarnetson	string
71	fileStage	2	int
71	sourceSubmissionFileId	\N	string
71	submissionFileId	17	int
71	fileId	10	int
71	submissionId	3	int
71	username	bbarnetson	string
71	originalFileName	chapter2.pdf	string
71	name	chapter2.pdf	string
72	fileStage	2	int
72	sourceSubmissionFileId	\N	string
72	submissionFileId	18	int
72	fileId	11	int
72	submissionId	3	int
72	originalFileName	chapter3.pdf	string
72	username	bbarnetson	string
73	fileStage	2	int
73	submissionFileId	18	int
73	fileId	11	int
73	submissionId	3	int
73	username	bbarnetson	string
73	name	chapter3.pdf	string
74	fileStage	2	int
74	sourceSubmissionFileId	\N	string
74	submissionFileId	18	int
74	fileId	11	int
74	submissionId	3	int
74	originalFileName	chapter3.pdf	string
74	username	bbarnetson	string
75	fileStage	2	int
75	sourceSubmissionFileId	\N	string
75	submissionFileId	18	int
75	fileId	11	int
75	submissionId	3	int
75	username	bbarnetson	string
75	originalFileName	chapter3.pdf	string
75	name	chapter3.pdf	string
76	fileStage	2	int
76	sourceSubmissionFileId	\N	string
76	submissionFileId	19	int
76	fileId	12	int
76	submissionId	3	int
76	originalFileName	chapter4.pdf	string
76	username	bbarnetson	string
77	fileStage	2	int
77	submissionFileId	19	int
77	fileId	12	int
77	submissionId	3	int
77	username	bbarnetson	string
77	name	chapter4.pdf	string
78	fileStage	2	int
78	sourceSubmissionFileId	\N	string
78	submissionFileId	19	int
78	fileId	12	int
78	submissionId	3	int
78	originalFileName	chapter4.pdf	string
78	username	bbarnetson	string
79	fileStage	2	int
79	sourceSubmissionFileId	\N	string
79	submissionFileId	19	int
79	fileId	12	int
79	submissionId	3	int
79	username	bbarnetson	string
79	originalFileName	chapter4.pdf	string
79	name	chapter4.pdf	string
80	fileStage	2	int
80	sourceSubmissionFileId	\N	string
80	submissionFileId	20	int
80	fileId	13	int
80	submissionId	3	int
80	originalFileName	chapter5.pdf	string
80	username	bbarnetson	string
81	fileStage	2	int
81	submissionFileId	20	int
81	fileId	13	int
81	submissionId	3	int
81	username	bbarnetson	string
81	name	chapter5.pdf	string
82	fileStage	2	int
82	sourceSubmissionFileId	\N	string
82	submissionFileId	20	int
82	fileId	13	int
82	submissionId	3	int
82	originalFileName	chapter5.pdf	string
82	username	bbarnetson	string
83	fileStage	2	int
83	sourceSubmissionFileId	\N	string
83	submissionFileId	20	int
83	fileId	13	int
83	submissionId	3	int
83	username	bbarnetson	string
83	originalFileName	chapter5.pdf	string
83	name	chapter5.pdf	string
87	fileStage	2	int
87	sourceSubmissionFileId	\N	string
87	submissionFileId	21	int
87	fileId	14	int
87	submissionId	4	int
87	originalFileName	chapter1.pdf	string
87	username	bbeaty	string
88	fileStage	2	int
88	submissionFileId	21	int
88	fileId	14	int
88	submissionId	4	int
88	username	bbeaty	string
88	name	chapter1.pdf	string
89	fileStage	2	int
89	sourceSubmissionFileId	\N	string
89	submissionFileId	21	int
89	fileId	14	int
89	submissionId	4	int
89	originalFileName	chapter1.pdf	string
89	username	bbeaty	string
90	fileStage	2	int
90	sourceSubmissionFileId	\N	string
90	submissionFileId	21	int
90	fileId	14	int
90	submissionId	4	int
90	username	bbeaty	string
90	originalFileName	chapter1.pdf	string
90	name	chapter1.pdf	string
91	fileStage	2	int
91	sourceSubmissionFileId	\N	string
91	submissionFileId	22	int
91	fileId	15	int
91	submissionId	4	int
91	originalFileName	chapter2.pdf	string
91	username	bbeaty	string
92	fileStage	2	int
92	submissionFileId	22	int
92	fileId	15	int
92	submissionId	4	int
92	username	bbeaty	string
92	name	chapter2.pdf	string
93	fileStage	2	int
93	sourceSubmissionFileId	\N	string
93	submissionFileId	22	int
93	fileId	15	int
93	submissionId	4	int
93	originalFileName	chapter2.pdf	string
93	username	bbeaty	string
94	fileStage	2	int
94	sourceSubmissionFileId	\N	string
94	submissionFileId	22	int
94	fileId	15	int
94	submissionId	4	int
94	username	bbeaty	string
94	originalFileName	chapter2.pdf	string
94	name	chapter2.pdf	string
95	fileStage	2	int
95	sourceSubmissionFileId	\N	string
95	submissionFileId	23	int
95	fileId	16	int
95	submissionId	4	int
95	originalFileName	chapter3.pdf	string
95	username	bbeaty	string
96	fileStage	2	int
96	submissionFileId	23	int
96	fileId	16	int
96	submissionId	4	int
96	username	bbeaty	string
96	name	chapter3.pdf	string
97	fileStage	2	int
97	sourceSubmissionFileId	\N	string
97	submissionFileId	23	int
97	fileId	16	int
97	submissionId	4	int
97	originalFileName	chapter3.pdf	string
97	username	bbeaty	string
98	fileStage	2	int
98	sourceSubmissionFileId	\N	string
98	submissionFileId	23	int
98	fileId	16	int
98	submissionId	4	int
98	username	bbeaty	string
98	originalFileName	chapter3.pdf	string
98	name	chapter3.pdf	string
99	fileStage	2	int
99	sourceSubmissionFileId	\N	string
99	submissionFileId	24	int
99	fileId	17	int
99	submissionId	4	int
99	originalFileName	intro.pdf	string
99	username	bbeaty	string
100	fileStage	2	int
100	submissionFileId	24	int
100	fileId	17	int
100	submissionId	4	int
100	username	bbeaty	string
100	name	intro.pdf	string
101	fileStage	2	int
101	sourceSubmissionFileId	\N	string
101	submissionFileId	24	int
101	fileId	17	int
101	submissionId	4	int
101	originalFileName	intro.pdf	string
101	username	bbeaty	string
102	fileStage	2	int
102	sourceSubmissionFileId	\N	string
102	submissionFileId	24	int
102	fileId	17	int
102	submissionId	4	int
102	username	bbeaty	string
102	originalFileName	intro.pdf	string
102	name	intro.pdf	string
104	editorId	3	int
104	editorName	Daniel Barnes	string
104	submissionId	4	int
104	decision	1	int
105	fileStage	19	int
105	sourceSubmissionFileId	24	int
105	submissionFileId	25	int
105	fileId	17	int
105	submissionId	4	int
105	originalFileName	intro.pdf	string
105	username	dbarnes	string
106	fileStage	19	int
106	submissionFileId	25	int
106	fileId	17	int
106	submissionId	4	int
106	username	dbarnes	string
106	name	intro.pdf	string
107	fileStage	19	int
107	sourceSubmissionFileId	23	int
107	submissionFileId	26	int
107	fileId	16	int
107	submissionId	4	int
107	originalFileName	chapter3.pdf	string
107	username	dbarnes	string
108	fileStage	19	int
108	submissionFileId	26	int
108	fileId	16	int
108	submissionId	4	int
108	username	dbarnes	string
108	name	chapter3.pdf	string
109	fileStage	19	int
109	sourceSubmissionFileId	22	int
109	submissionFileId	27	int
109	fileId	15	int
109	submissionId	4	int
109	originalFileName	chapter2.pdf	string
109	username	dbarnes	string
110	fileStage	19	int
110	submissionFileId	27	int
110	fileId	15	int
110	submissionId	4	int
110	username	dbarnes	string
110	name	chapter2.pdf	string
111	fileStage	19	int
111	sourceSubmissionFileId	21	int
111	submissionFileId	28	int
111	fileId	14	int
111	submissionId	4	int
111	originalFileName	chapter1.pdf	string
111	username	dbarnes	string
112	fileStage	19	int
112	submissionFileId	28	int
112	fileId	14	int
112	submissionId	4	int
112	username	dbarnes	string
112	name	chapter1.pdf	string
113	reviewAssignmentId	4	int
113	reviewerName	Aisla McCrae	string
113	submissionId	4	int
113	stageId	2	int
113	round	1	int
114	editorId	3	int
114	editorName	Daniel Barnes	string
114	submissionId	4	int
114	decision	3	int
115	reviewAssignmentId	5	int
115	reviewerName	Al Zacharia	string
115	submissionId	4	int
115	stageId	3	int
115	round	1	int
116	editorId	3	int
116	editorName	Daniel Barnes	string
116	submissionId	4	int
116	decision	2	int
117	name	Maria Fritz	string
117	username	mfritz	string
117	userGroupName	Copyeditor	string
118	editorId	3	int
118	editorName	Daniel Barnes	string
118	submissionId	4	int
118	decision	7	int
119	name	Graham Cox	string
119	username	gcox	string
119	userGroupName	Layout Editor	string
120	formatName	PDF	string
123	fileStage	2	int
123	sourceSubmissionFileId	\N	string
123	submissionFileId	29	int
123	fileId	18	int
123	submissionId	5	int
123	originalFileName	prologue.pdf	string
123	username	callan	string
124	fileStage	2	int
124	submissionFileId	29	int
124	fileId	18	int
124	submissionId	5	int
124	username	callan	string
124	name	prologue.pdf	string
125	fileStage	2	int
125	sourceSubmissionFileId	\N	string
125	submissionFileId	29	int
125	fileId	18	int
125	submissionId	5	int
125	originalFileName	prologue.pdf	string
125	username	callan	string
126	fileStage	2	int
126	sourceSubmissionFileId	\N	string
126	submissionFileId	29	int
126	fileId	18	int
126	submissionId	5	int
126	username	callan	string
126	originalFileName	prologue.pdf	string
126	name	prologue.pdf	string
127	fileStage	2	int
127	sourceSubmissionFileId	\N	string
127	submissionFileId	30	int
127	fileId	19	int
127	submissionId	5	int
127	originalFileName	chapter1.pdf	string
127	username	callan	string
128	fileStage	2	int
128	submissionFileId	30	int
128	fileId	19	int
128	submissionId	5	int
128	username	callan	string
128	name	chapter1.pdf	string
129	fileStage	2	int
129	sourceSubmissionFileId	\N	string
129	submissionFileId	30	int
129	fileId	19	int
129	submissionId	5	int
129	originalFileName	chapter1.pdf	string
129	username	callan	string
130	fileStage	2	int
130	sourceSubmissionFileId	\N	string
130	submissionFileId	30	int
130	fileId	19	int
130	submissionId	5	int
130	username	callan	string
130	originalFileName	chapter1.pdf	string
130	name	chapter1.pdf	string
131	fileStage	2	int
131	sourceSubmissionFileId	\N	string
131	submissionFileId	31	int
131	fileId	20	int
131	submissionId	5	int
131	originalFileName	chapter2.pdf	string
131	username	callan	string
132	fileStage	2	int
132	submissionFileId	31	int
132	fileId	20	int
132	submissionId	5	int
132	username	callan	string
132	name	chapter2.pdf	string
133	fileStage	2	int
133	sourceSubmissionFileId	\N	string
133	submissionFileId	31	int
133	fileId	20	int
133	submissionId	5	int
133	originalFileName	chapter2.pdf	string
133	username	callan	string
134	fileStage	2	int
134	sourceSubmissionFileId	\N	string
134	submissionFileId	31	int
134	fileId	20	int
134	submissionId	5	int
134	username	callan	string
134	originalFileName	chapter2.pdf	string
134	name	chapter2.pdf	string
135	fileStage	2	int
135	sourceSubmissionFileId	\N	string
135	submissionFileId	32	int
135	fileId	21	int
135	submissionId	5	int
135	originalFileName	chapter3.pdf	string
135	username	callan	string
136	fileStage	2	int
136	submissionFileId	32	int
136	fileId	21	int
136	submissionId	5	int
136	username	callan	string
136	name	chapter3.pdf	string
137	fileStage	2	int
137	sourceSubmissionFileId	\N	string
137	submissionFileId	32	int
137	fileId	21	int
137	submissionId	5	int
137	originalFileName	chapter3.pdf	string
137	username	callan	string
138	fileStage	2	int
138	sourceSubmissionFileId	\N	string
138	submissionFileId	32	int
138	fileId	21	int
138	submissionId	5	int
138	username	callan	string
138	originalFileName	chapter3.pdf	string
138	name	chapter3.pdf	string
139	fileStage	2	int
139	sourceSubmissionFileId	\N	string
139	submissionFileId	33	int
139	fileId	22	int
139	submissionId	5	int
139	originalFileName	chapter4.pdf	string
139	username	callan	string
140	fileStage	2	int
140	submissionFileId	33	int
140	fileId	22	int
140	submissionId	5	int
140	username	callan	string
140	name	chapter4.pdf	string
141	fileStage	2	int
141	sourceSubmissionFileId	\N	string
141	submissionFileId	33	int
141	fileId	22	int
141	submissionId	5	int
141	originalFileName	chapter4.pdf	string
141	username	callan	string
142	fileStage	2	int
142	sourceSubmissionFileId	\N	string
142	submissionFileId	33	int
142	fileId	22	int
142	submissionId	5	int
142	username	callan	string
142	originalFileName	chapter4.pdf	string
142	name	chapter4.pdf	string
143	fileStage	2	int
143	sourceSubmissionFileId	\N	string
143	submissionFileId	34	int
143	fileId	23	int
143	submissionId	5	int
143	originalFileName	epilogue.pdf	string
143	username	callan	string
144	fileStage	2	int
144	submissionFileId	34	int
144	fileId	23	int
144	submissionId	5	int
144	username	callan	string
144	name	epilogue.pdf	string
145	fileStage	2	int
145	sourceSubmissionFileId	\N	string
145	submissionFileId	34	int
145	fileId	23	int
145	submissionId	5	int
145	originalFileName	epilogue.pdf	string
145	username	callan	string
146	fileStage	2	int
146	sourceSubmissionFileId	\N	string
146	submissionFileId	34	int
146	fileId	23	int
146	submissionId	5	int
146	username	callan	string
146	originalFileName	epilogue.pdf	string
146	name	epilogue.pdf	string
148	editorId	3	int
148	editorName	Daniel Barnes	string
148	submissionId	5	int
148	decision	1	int
149	fileStage	19	int
149	sourceSubmissionFileId	34	int
149	submissionFileId	35	int
149	fileId	23	int
149	submissionId	5	int
149	originalFileName	epilogue.pdf	string
149	username	dbarnes	string
150	fileStage	19	int
150	submissionFileId	35	int
150	fileId	23	int
150	submissionId	5	int
150	username	dbarnes	string
150	name	epilogue.pdf	string
151	fileStage	19	int
151	sourceSubmissionFileId	32	int
151	submissionFileId	36	int
151	fileId	21	int
151	submissionId	5	int
151	originalFileName	chapter3.pdf	string
151	username	dbarnes	string
152	fileStage	19	int
152	submissionFileId	36	int
152	fileId	21	int
152	submissionId	5	int
152	username	dbarnes	string
152	name	chapter3.pdf	string
153	fileStage	19	int
153	sourceSubmissionFileId	33	int
153	submissionFileId	37	int
153	fileId	22	int
153	submissionId	5	int
153	originalFileName	chapter4.pdf	string
153	username	dbarnes	string
154	fileStage	19	int
154	submissionFileId	37	int
154	fileId	22	int
154	submissionId	5	int
154	username	dbarnes	string
154	name	chapter4.pdf	string
155	fileStage	19	int
155	sourceSubmissionFileId	31	int
155	submissionFileId	38	int
155	fileId	20	int
155	submissionId	5	int
155	originalFileName	chapter2.pdf	string
155	username	dbarnes	string
156	fileStage	19	int
156	submissionFileId	38	int
156	fileId	20	int
156	submissionId	5	int
156	username	dbarnes	string
156	name	chapter2.pdf	string
157	fileStage	19	int
157	sourceSubmissionFileId	30	int
157	submissionFileId	39	int
157	fileId	19	int
157	submissionId	5	int
157	originalFileName	chapter1.pdf	string
157	username	dbarnes	string
158	fileStage	19	int
158	submissionFileId	39	int
158	fileId	19	int
158	submissionId	5	int
158	username	dbarnes	string
158	name	chapter1.pdf	string
159	fileStage	19	int
159	sourceSubmissionFileId	29	int
159	submissionFileId	40	int
159	fileId	18	int
159	submissionId	5	int
159	originalFileName	prologue.pdf	string
159	username	dbarnes	string
160	fileStage	19	int
160	submissionFileId	40	int
160	fileId	18	int
160	submissionId	5	int
160	username	dbarnes	string
160	name	prologue.pdf	string
161	reviewAssignmentId	6	int
161	reviewerName	Paul Hudson	string
161	submissionId	5	int
161	stageId	2	int
161	round	1	int
162	editorId	3	int
162	editorName	Daniel Barnes	string
162	submissionId	5	int
162	decision	3	int
163	reviewAssignmentId	7	int
163	reviewerName	Gonzalo Favio	string
163	submissionId	5	int
163	stageId	3	int
163	round	1	int
164	editorId	3	int
164	editorName	Daniel Barnes	string
164	submissionId	5	int
164	decision	2	int
165	name	Sarah Vogt	string
165	username	svogt	string
165	userGroupName	Copyeditor	string
166	editorId	3	int
166	editorName	Daniel Barnes	string
166	submissionId	5	int
166	decision	7	int
167	name	Stephen Hellier	string
167	username	shellier	string
167	userGroupName	Layout Editor	string
168	name	Catherine Turner	string
168	username	cturner	string
168	userGroupName	Proofreader	string
169	formatName	PDF	string
170	fileStage	10	int
170	sourceSubmissionFileId	34	int
170	submissionFileId	41	int
170	fileId	23	int
170	submissionId	5	int
170	originalFileName	epilogue.pdf	string
170	username	dbarnes	string
171	fileStage	10	int
171	submissionFileId	41	int
171	fileId	23	int
171	submissionId	5	int
171	username	dbarnes	string
171	name	epilogue.pdf	string
172	publicationFormatName	PDF	string
173	publicationFormatName	PDF	string
174	fileStage	10	int
174	sourceSubmissionFileId	34	int
174	submissionFileId	41	int
174	fileId	23	int
174	submissionId	5	int
174	originalFileName	epilogue.pdf	string
174	username	dbarnes	string
175	fileStage	10	int
175	sourceSubmissionFileId	34	int
175	submissionFileId	41	int
175	fileId	23	int
175	submissionId	5	int
175	username	dbarnes	string
175	originalFileName	epilogue.pdf	string
175	name	epilogue.pdf	string
176	file	epilogue.pdf	string
176	name	Daniel Barnes	string
176	username	dbarnes	string
177	fileStage	10	int
177	sourceSubmissionFileId	34	int
177	submissionFileId	41	int
177	fileId	23	int
177	submissionId	5	int
177	originalFileName	epilogue.pdf	string
177	username	dbarnes	string
178	fileStage	10	int
178	sourceSubmissionFileId	34	int
178	submissionFileId	41	int
178	fileId	23	int
178	submissionId	5	int
178	username	dbarnes	string
178	originalFileName	epilogue.pdf	string
178	name	epilogue.pdf	string
184	fileStage	2	int
184	sourceSubmissionFileId	\N	string
184	submissionFileId	42	int
184	fileId	24	int
184	submissionId	6	int
184	originalFileName	chapter1.pdf	string
184	username	dbernnard	string
185	fileStage	2	int
185	submissionFileId	42	int
185	fileId	24	int
185	submissionId	6	int
185	username	dbernnard	string
185	name	chapter1.pdf	string
186	fileStage	2	int
186	sourceSubmissionFileId	\N	string
186	submissionFileId	42	int
186	fileId	24	int
186	submissionId	6	int
186	originalFileName	chapter1.pdf	string
186	username	dbernnard	string
187	fileStage	2	int
187	sourceSubmissionFileId	\N	string
187	submissionFileId	42	int
187	fileId	24	int
187	submissionId	6	int
187	username	dbernnard	string
187	originalFileName	chapter1.pdf	string
187	name	chapter1.pdf	string
188	fileStage	2	int
188	sourceSubmissionFileId	\N	string
188	submissionFileId	43	int
188	fileId	25	int
188	submissionId	6	int
188	originalFileName	chapter2.pdf	string
188	username	dbernnard	string
189	fileStage	2	int
189	submissionFileId	43	int
189	fileId	25	int
189	submissionId	6	int
189	username	dbernnard	string
189	name	chapter2.pdf	string
190	fileStage	2	int
190	sourceSubmissionFileId	\N	string
190	submissionFileId	43	int
190	fileId	25	int
190	submissionId	6	int
190	originalFileName	chapter2.pdf	string
190	username	dbernnard	string
191	fileStage	2	int
191	sourceSubmissionFileId	\N	string
191	submissionFileId	43	int
191	fileId	25	int
191	submissionId	6	int
191	username	dbernnard	string
191	originalFileName	chapter2.pdf	string
191	name	chapter2.pdf	string
192	fileStage	2	int
192	sourceSubmissionFileId	\N	string
192	submissionFileId	44	int
192	fileId	26	int
192	submissionId	6	int
192	originalFileName	chapter3.pdf	string
192	username	dbernnard	string
193	fileStage	2	int
193	submissionFileId	44	int
193	fileId	26	int
193	submissionId	6	int
193	username	dbernnard	string
193	name	chapter3.pdf	string
194	fileStage	2	int
194	sourceSubmissionFileId	\N	string
194	submissionFileId	44	int
194	fileId	26	int
194	submissionId	6	int
194	originalFileName	chapter3.pdf	string
194	username	dbernnard	string
195	fileStage	2	int
195	sourceSubmissionFileId	\N	string
195	submissionFileId	44	int
195	fileId	26	int
195	submissionId	6	int
195	username	dbernnard	string
195	originalFileName	chapter3.pdf	string
195	name	chapter3.pdf	string
196	fileStage	2	int
196	sourceSubmissionFileId	\N	string
196	submissionFileId	45	int
196	fileId	27	int
196	submissionId	6	int
196	originalFileName	chapter4.pdf	string
196	username	dbernnard	string
197	fileStage	2	int
197	submissionFileId	45	int
197	fileId	27	int
197	submissionId	6	int
197	username	dbernnard	string
197	name	chapter4.pdf	string
198	fileStage	2	int
198	sourceSubmissionFileId	\N	string
198	submissionFileId	45	int
198	fileId	27	int
198	submissionId	6	int
198	originalFileName	chapter4.pdf	string
198	username	dbernnard	string
199	fileStage	2	int
199	sourceSubmissionFileId	\N	string
199	submissionFileId	45	int
199	fileId	27	int
199	submissionId	6	int
199	username	dbernnard	string
199	originalFileName	chapter4.pdf	string
199	name	chapter4.pdf	string
201	editorId	3	int
201	editorName	Daniel Barnes	string
201	submissionId	6	int
201	decision	1	int
202	fileStage	19	int
202	sourceSubmissionFileId	45	int
202	submissionFileId	46	int
202	fileId	27	int
202	submissionId	6	int
202	originalFileName	chapter4.pdf	string
202	username	dbarnes	string
203	fileStage	19	int
203	submissionFileId	46	int
203	fileId	27	int
203	submissionId	6	int
203	username	dbarnes	string
203	name	chapter4.pdf	string
204	fileStage	19	int
204	sourceSubmissionFileId	44	int
204	submissionFileId	47	int
204	fileId	26	int
204	submissionId	6	int
204	originalFileName	chapter3.pdf	string
204	username	dbarnes	string
205	fileStage	19	int
205	submissionFileId	47	int
205	fileId	26	int
205	submissionId	6	int
205	username	dbarnes	string
205	name	chapter3.pdf	string
206	fileStage	19	int
206	sourceSubmissionFileId	43	int
206	submissionFileId	48	int
206	fileId	25	int
206	submissionId	6	int
206	originalFileName	chapter2.pdf	string
206	username	dbarnes	string
207	fileStage	19	int
207	submissionFileId	48	int
207	fileId	25	int
207	submissionId	6	int
207	username	dbarnes	string
207	name	chapter2.pdf	string
208	fileStage	19	int
208	sourceSubmissionFileId	42	int
208	submissionFileId	49	int
208	fileId	24	int
208	submissionId	6	int
208	originalFileName	chapter1.pdf	string
208	username	dbarnes	string
209	fileStage	19	int
209	submissionFileId	49	int
209	fileId	24	int
209	submissionId	6	int
209	username	dbarnes	string
209	name	chapter1.pdf	string
210	name	Daniel Barnes	string
210	username	dbarnes	string
210	userGroupName	Press editor	string
211	name	David Buskins	string
211	username	dbuskins	string
211	userGroupName	Series editor	string
212	name	Minoti Inoue	string
212	username	minoue	string
212	userGroupName	Series editor	string
213	editorId	6	int
213	editorName	Minoti Inoue	string
213	submissionId	6	int
213	decision	23	int
216	fileStage	2	int
216	sourceSubmissionFileId	\N	string
216	submissionFileId	50	int
216	fileId	28	int
216	submissionId	7	int
216	originalFileName	intro.pdf	string
216	username	dkennepohl	string
217	fileStage	2	int
217	submissionFileId	50	int
217	fileId	28	int
217	submissionId	7	int
217	username	dkennepohl	string
217	name	intro.pdf	string
218	fileStage	2	int
218	sourceSubmissionFileId	\N	string
218	submissionFileId	50	int
218	fileId	28	int
218	submissionId	7	int
218	originalFileName	intro.pdf	string
218	username	dkennepohl	string
219	fileStage	2	int
219	sourceSubmissionFileId	\N	string
219	submissionFileId	50	int
219	fileId	28	int
219	submissionId	7	int
219	username	dkennepohl	string
219	originalFileName	intro.pdf	string
219	name	intro.pdf	string
220	fileStage	2	int
220	sourceSubmissionFileId	\N	string
220	submissionFileId	51	int
220	fileId	29	int
220	submissionId	7	int
220	originalFileName	chapter1.pdf	string
220	username	dkennepohl	string
221	fileStage	2	int
221	submissionFileId	51	int
221	fileId	29	int
221	submissionId	7	int
221	username	dkennepohl	string
221	name	chapter1.pdf	string
222	fileStage	2	int
222	sourceSubmissionFileId	\N	string
222	submissionFileId	51	int
222	fileId	29	int
222	submissionId	7	int
222	originalFileName	chapter1.pdf	string
222	username	dkennepohl	string
223	fileStage	2	int
223	sourceSubmissionFileId	\N	string
223	submissionFileId	51	int
223	fileId	29	int
223	submissionId	7	int
223	username	dkennepohl	string
223	originalFileName	chapter1.pdf	string
223	name	chapter1.pdf	string
224	fileStage	2	int
224	sourceSubmissionFileId	\N	string
224	submissionFileId	52	int
224	fileId	30	int
224	submissionId	7	int
224	originalFileName	chapter2.pdf	string
224	username	dkennepohl	string
225	fileStage	2	int
225	submissionFileId	52	int
225	fileId	30	int
225	submissionId	7	int
225	username	dkennepohl	string
225	name	chapter2.pdf	string
226	fileStage	2	int
226	sourceSubmissionFileId	\N	string
226	submissionFileId	52	int
226	fileId	30	int
226	submissionId	7	int
226	originalFileName	chapter2.pdf	string
226	username	dkennepohl	string
227	fileStage	2	int
227	sourceSubmissionFileId	\N	string
227	submissionFileId	52	int
227	fileId	30	int
227	submissionId	7	int
227	username	dkennepohl	string
227	originalFileName	chapter2.pdf	string
227	name	chapter2.pdf	string
228	fileStage	2	int
228	sourceSubmissionFileId	\N	string
228	submissionFileId	53	int
228	fileId	31	int
228	submissionId	7	int
228	originalFileName	chapter3.pdf	string
228	username	dkennepohl	string
229	fileStage	2	int
229	submissionFileId	53	int
229	fileId	31	int
229	submissionId	7	int
229	username	dkennepohl	string
229	name	chapter3.pdf	string
230	fileStage	2	int
230	sourceSubmissionFileId	\N	string
230	submissionFileId	53	int
230	fileId	31	int
230	submissionId	7	int
230	originalFileName	chapter3.pdf	string
230	username	dkennepohl	string
231	fileStage	2	int
231	sourceSubmissionFileId	\N	string
231	submissionFileId	53	int
231	fileId	31	int
231	submissionId	7	int
231	username	dkennepohl	string
231	originalFileName	chapter3.pdf	string
231	name	chapter3.pdf	string
232	fileStage	2	int
232	sourceSubmissionFileId	\N	string
232	submissionFileId	54	int
232	fileId	32	int
232	submissionId	7	int
232	originalFileName	chapter4.pdf	string
232	username	dkennepohl	string
233	fileStage	2	int
233	submissionFileId	54	int
233	fileId	32	int
233	submissionId	7	int
233	username	dkennepohl	string
233	name	chapter4.pdf	string
234	fileStage	2	int
234	sourceSubmissionFileId	\N	string
234	submissionFileId	54	int
234	fileId	32	int
234	submissionId	7	int
234	originalFileName	chapter4.pdf	string
234	username	dkennepohl	string
235	fileStage	2	int
235	sourceSubmissionFileId	\N	string
235	submissionFileId	54	int
235	fileId	32	int
235	submissionId	7	int
235	username	dkennepohl	string
235	originalFileName	chapter4.pdf	string
235	name	chapter4.pdf	string
237	editorId	3	int
237	editorName	Daniel Barnes	string
237	submissionId	7	int
237	decision	18	int
238	fileStage	4	int
238	sourceSubmissionFileId	54	int
238	submissionFileId	55	int
238	fileId	32	int
238	submissionId	7	int
238	originalFileName	chapter4.pdf	string
238	username	dbarnes	string
239	fileStage	4	int
239	submissionFileId	55	int
239	fileId	32	int
239	submissionId	7	int
239	username	dbarnes	string
239	name	chapter4.pdf	string
240	fileStage	4	int
240	sourceSubmissionFileId	52	int
240	submissionFileId	56	int
240	fileId	30	int
240	submissionId	7	int
240	originalFileName	chapter2.pdf	string
240	username	dbarnes	string
241	fileStage	4	int
241	submissionFileId	56	int
241	fileId	30	int
241	submissionId	7	int
241	username	dbarnes	string
241	name	chapter2.pdf	string
242	fileStage	4	int
242	sourceSubmissionFileId	53	int
242	submissionFileId	57	int
242	fileId	31	int
242	submissionId	7	int
242	originalFileName	chapter3.pdf	string
242	username	dbarnes	string
243	fileStage	4	int
243	submissionFileId	57	int
243	fileId	31	int
243	submissionId	7	int
243	username	dbarnes	string
243	name	chapter3.pdf	string
244	fileStage	4	int
244	sourceSubmissionFileId	51	int
244	submissionFileId	58	int
244	fileId	29	int
244	submissionId	7	int
244	originalFileName	chapter1.pdf	string
244	username	dbarnes	string
245	fileStage	4	int
245	submissionFileId	58	int
245	fileId	29	int
245	submissionId	7	int
245	username	dbarnes	string
245	name	chapter1.pdf	string
246	fileStage	4	int
246	sourceSubmissionFileId	50	int
246	submissionFileId	59	int
246	fileId	28	int
246	submissionId	7	int
246	originalFileName	intro.pdf	string
246	username	dbarnes	string
247	fileStage	4	int
247	submissionFileId	59	int
247	fileId	28	int
247	submissionId	7	int
247	username	dbarnes	string
247	name	intro.pdf	string
248	reviewAssignmentId	8	int
248	reviewerName	Adela Gallego	string
248	submissionId	7	int
248	stageId	3	int
248	round	1	int
249	editorId	3	int
249	editorName	Daniel Barnes	string
249	submissionId	7	int
249	decision	2	int
250	name	Maria Fritz	string
250	username	mfritz	string
250	userGroupName	Copyeditor	string
252	fileStage	2	int
252	sourceSubmissionFileId	\N	string
252	submissionFileId	60	int
252	fileId	33	int
252	submissionId	8	int
252	originalFileName	note.pdf	string
252	username	dbarnes	string
253	fileStage	2	int
253	submissionFileId	60	int
253	fileId	33	int
253	submissionId	8	int
253	username	dbarnes	string
253	name	note.pdf	string
254	fileStage	2	int
254	sourceSubmissionFileId	\N	string
254	submissionFileId	60	int
254	fileId	33	int
254	submissionId	8	int
254	originalFileName	note.pdf	string
254	username	dbarnes	string
255	fileStage	2	int
255	sourceSubmissionFileId	\N	string
255	submissionFileId	60	int
255	fileId	33	int
255	submissionId	8	int
255	username	dbarnes	string
255	originalFileName	note.pdf	string
255	name	note.pdf	string
259	fileStage	2	int
259	sourceSubmissionFileId	\N	string
259	submissionFileId	61	int
259	fileId	34	int
259	submissionId	9	int
259	originalFileName	chapter1.pdf	string
259	username	fperini	string
260	fileStage	2	int
260	submissionFileId	61	int
260	fileId	34	int
260	submissionId	9	int
260	username	fperini	string
260	name	chapter1.pdf	string
261	fileStage	2	int
261	sourceSubmissionFileId	\N	string
261	submissionFileId	61	int
261	fileId	34	int
261	submissionId	9	int
261	originalFileName	chapter1.pdf	string
261	username	fperini	string
262	fileStage	2	int
262	sourceSubmissionFileId	\N	string
262	submissionFileId	61	int
262	fileId	34	int
262	submissionId	9	int
262	username	fperini	string
262	originalFileName	chapter1.pdf	string
262	name	chapter1.pdf	string
263	fileStage	2	int
263	sourceSubmissionFileId	\N	string
263	submissionFileId	62	int
263	fileId	35	int
263	submissionId	9	int
263	originalFileName	chapter2.pdf	string
263	username	fperini	string
264	fileStage	2	int
264	submissionFileId	62	int
264	fileId	35	int
264	submissionId	9	int
264	username	fperini	string
264	name	chapter2.pdf	string
265	fileStage	2	int
265	sourceSubmissionFileId	\N	string
265	submissionFileId	62	int
265	fileId	35	int
265	submissionId	9	int
265	originalFileName	chapter2.pdf	string
265	username	fperini	string
266	fileStage	2	int
266	sourceSubmissionFileId	\N	string
266	submissionFileId	62	int
266	fileId	35	int
266	submissionId	9	int
266	username	fperini	string
266	originalFileName	chapter2.pdf	string
266	name	chapter2.pdf	string
267	fileStage	2	int
267	sourceSubmissionFileId	\N	string
267	submissionFileId	63	int
267	fileId	36	int
267	submissionId	9	int
267	originalFileName	chapter3.pdf	string
267	username	fperini	string
268	fileStage	2	int
268	submissionFileId	63	int
268	fileId	36	int
268	submissionId	9	int
268	username	fperini	string
268	name	chapter3.pdf	string
269	fileStage	2	int
269	sourceSubmissionFileId	\N	string
269	submissionFileId	63	int
269	fileId	36	int
269	submissionId	9	int
269	originalFileName	chapter3.pdf	string
269	username	fperini	string
270	fileStage	2	int
270	sourceSubmissionFileId	\N	string
270	submissionFileId	63	int
270	fileId	36	int
270	submissionId	9	int
270	username	fperini	string
270	originalFileName	chapter3.pdf	string
270	name	chapter3.pdf	string
271	fileStage	2	int
271	sourceSubmissionFileId	\N	string
271	submissionFileId	64	int
271	fileId	37	int
271	submissionId	9	int
271	originalFileName	chapter4.pdf	string
271	username	fperini	string
272	fileStage	2	int
272	submissionFileId	64	int
272	fileId	37	int
272	submissionId	9	int
272	username	fperini	string
272	name	chapter4.pdf	string
273	fileStage	2	int
273	sourceSubmissionFileId	\N	string
273	submissionFileId	64	int
273	fileId	37	int
273	submissionId	9	int
273	originalFileName	chapter4.pdf	string
273	username	fperini	string
274	fileStage	2	int
274	sourceSubmissionFileId	\N	string
274	submissionFileId	64	int
274	fileId	37	int
274	submissionId	9	int
274	username	fperini	string
274	originalFileName	chapter4.pdf	string
274	name	chapter4.pdf	string
275	fileStage	2	int
275	sourceSubmissionFileId	\N	string
275	submissionFileId	65	int
275	fileId	38	int
275	submissionId	9	int
275	originalFileName	chapter5.pdf	string
275	username	fperini	string
276	fileStage	2	int
276	submissionFileId	65	int
276	fileId	38	int
276	submissionId	9	int
276	username	fperini	string
276	name	chapter5.pdf	string
277	fileStage	2	int
277	sourceSubmissionFileId	\N	string
277	submissionFileId	65	int
277	fileId	38	int
277	submissionId	9	int
277	originalFileName	chapter5.pdf	string
277	username	fperini	string
278	fileStage	2	int
278	sourceSubmissionFileId	\N	string
278	submissionFileId	65	int
278	fileId	38	int
278	submissionId	9	int
278	username	fperini	string
278	originalFileName	chapter5.pdf	string
278	name	chapter5.pdf	string
280	editorId	3	int
280	editorName	Daniel Barnes	string
280	submissionId	9	int
280	decision	1	int
281	fileStage	19	int
281	sourceSubmissionFileId	64	int
281	submissionFileId	66	int
281	fileId	37	int
281	submissionId	9	int
281	originalFileName	chapter4.pdf	string
281	username	dbarnes	string
282	fileStage	19	int
282	submissionFileId	66	int
282	fileId	37	int
282	submissionId	9	int
282	username	dbarnes	string
282	name	chapter4.pdf	string
283	fileStage	19	int
283	sourceSubmissionFileId	65	int
283	submissionFileId	67	int
283	fileId	38	int
283	submissionId	9	int
283	originalFileName	chapter5.pdf	string
283	username	dbarnes	string
284	fileStage	19	int
284	submissionFileId	67	int
284	fileId	38	int
284	submissionId	9	int
284	username	dbarnes	string
284	name	chapter5.pdf	string
285	fileStage	19	int
285	sourceSubmissionFileId	63	int
285	submissionFileId	68	int
285	fileId	36	int
285	submissionId	9	int
285	originalFileName	chapter3.pdf	string
285	username	dbarnes	string
286	fileStage	19	int
286	submissionFileId	68	int
286	fileId	36	int
286	submissionId	9	int
286	username	dbarnes	string
286	name	chapter3.pdf	string
287	fileStage	19	int
287	sourceSubmissionFileId	62	int
287	submissionFileId	69	int
287	fileId	35	int
287	submissionId	9	int
287	originalFileName	chapter2.pdf	string
287	username	dbarnes	string
288	fileStage	19	int
288	submissionFileId	69	int
288	fileId	35	int
288	submissionId	9	int
288	username	dbarnes	string
288	name	chapter2.pdf	string
289	fileStage	19	int
289	sourceSubmissionFileId	61	int
289	submissionFileId	70	int
289	fileId	34	int
289	submissionId	9	int
289	originalFileName	chapter1.pdf	string
289	username	dbarnes	string
290	fileStage	19	int
290	submissionFileId	70	int
290	fileId	34	int
290	submissionId	9	int
290	username	dbarnes	string
290	name	chapter1.pdf	string
293	fileStage	2	int
293	sourceSubmissionFileId	\N	string
293	submissionFileId	71	int
293	fileId	39	int
293	submissionId	10	int
293	originalFileName	intro.pdf	string
293	username	jbrower	string
294	fileStage	2	int
294	submissionFileId	71	int
294	fileId	39	int
294	submissionId	10	int
294	username	jbrower	string
294	name	intro.pdf	string
295	fileStage	2	int
295	sourceSubmissionFileId	\N	string
295	submissionFileId	71	int
295	fileId	39	int
295	submissionId	10	int
295	originalFileName	intro.pdf	string
295	username	jbrower	string
296	fileStage	2	int
296	sourceSubmissionFileId	\N	string
296	submissionFileId	71	int
296	fileId	39	int
296	submissionId	10	int
296	username	jbrower	string
296	originalFileName	intro.pdf	string
296	name	intro.pdf	string
297	fileStage	2	int
297	sourceSubmissionFileId	\N	string
297	submissionFileId	72	int
297	fileId	40	int
297	submissionId	10	int
297	originalFileName	chapter1.pdf	string
297	username	jbrower	string
298	fileStage	2	int
298	submissionFileId	72	int
298	fileId	40	int
298	submissionId	10	int
298	username	jbrower	string
298	name	chapter1.pdf	string
299	fileStage	2	int
299	sourceSubmissionFileId	\N	string
299	submissionFileId	72	int
299	fileId	40	int
299	submissionId	10	int
299	originalFileName	chapter1.pdf	string
299	username	jbrower	string
300	fileStage	2	int
300	sourceSubmissionFileId	\N	string
300	submissionFileId	72	int
300	fileId	40	int
300	submissionId	10	int
300	username	jbrower	string
300	originalFileName	chapter1.pdf	string
300	name	chapter1.pdf	string
301	fileStage	2	int
301	sourceSubmissionFileId	\N	string
301	submissionFileId	73	int
301	fileId	41	int
301	submissionId	10	int
301	originalFileName	chapter2.pdf	string
301	username	jbrower	string
302	fileStage	2	int
302	submissionFileId	73	int
302	fileId	41	int
302	submissionId	10	int
302	username	jbrower	string
302	name	chapter2.pdf	string
303	fileStage	2	int
303	sourceSubmissionFileId	\N	string
303	submissionFileId	73	int
303	fileId	41	int
303	submissionId	10	int
303	originalFileName	chapter2.pdf	string
303	username	jbrower	string
304	fileStage	2	int
304	sourceSubmissionFileId	\N	string
304	submissionFileId	73	int
304	fileId	41	int
304	submissionId	10	int
304	username	jbrower	string
304	originalFileName	chapter2.pdf	string
304	name	chapter2.pdf	string
305	fileStage	2	int
305	sourceSubmissionFileId	\N	string
305	submissionFileId	74	int
305	fileId	42	int
305	submissionId	10	int
305	originalFileName	chapter3.pdf	string
305	username	jbrower	string
306	fileStage	2	int
306	submissionFileId	74	int
306	fileId	42	int
306	submissionId	10	int
306	username	jbrower	string
306	name	chapter3.pdf	string
307	fileStage	2	int
307	sourceSubmissionFileId	\N	string
307	submissionFileId	74	int
307	fileId	42	int
307	submissionId	10	int
307	originalFileName	chapter3.pdf	string
307	username	jbrower	string
308	fileStage	2	int
308	sourceSubmissionFileId	\N	string
308	submissionFileId	74	int
308	fileId	42	int
308	submissionId	10	int
308	username	jbrower	string
308	originalFileName	chapter3.pdf	string
308	name	chapter3.pdf	string
309	fileStage	2	int
309	sourceSubmissionFileId	\N	string
309	submissionFileId	75	int
309	fileId	43	int
309	submissionId	10	int
309	originalFileName	chapter4.pdf	string
309	username	jbrower	string
310	fileStage	2	int
310	submissionFileId	75	int
310	fileId	43	int
310	submissionId	10	int
310	username	jbrower	string
310	name	chapter4.pdf	string
311	fileStage	2	int
311	sourceSubmissionFileId	\N	string
311	submissionFileId	75	int
311	fileId	43	int
311	submissionId	10	int
311	originalFileName	chapter4.pdf	string
311	username	jbrower	string
312	fileStage	2	int
312	sourceSubmissionFileId	\N	string
312	submissionFileId	75	int
312	fileId	43	int
312	submissionId	10	int
312	username	jbrower	string
312	originalFileName	chapter4.pdf	string
312	name	chapter4.pdf	string
313	fileStage	2	int
313	sourceSubmissionFileId	\N	string
313	submissionFileId	76	int
313	fileId	44	int
313	submissionId	10	int
313	originalFileName	chapter5.pdf	string
313	username	jbrower	string
314	fileStage	2	int
314	submissionFileId	76	int
314	fileId	44	int
314	submissionId	10	int
314	username	jbrower	string
314	name	chapter5.pdf	string
315	fileStage	2	int
315	sourceSubmissionFileId	\N	string
315	submissionFileId	76	int
315	fileId	44	int
315	submissionId	10	int
315	originalFileName	chapter5.pdf	string
315	username	jbrower	string
316	fileStage	2	int
316	sourceSubmissionFileId	\N	string
316	submissionFileId	76	int
316	fileId	44	int
316	submissionId	10	int
316	username	jbrower	string
316	originalFileName	chapter5.pdf	string
316	name	chapter5.pdf	string
317	fileStage	2	int
317	sourceSubmissionFileId	\N	string
317	submissionFileId	77	int
317	fileId	45	int
317	submissionId	10	int
317	originalFileName	conclusion.pdf	string
317	username	jbrower	string
318	fileStage	2	int
318	submissionFileId	77	int
318	fileId	45	int
318	submissionId	10	int
318	username	jbrower	string
318	name	conclusion.pdf	string
319	fileStage	2	int
319	sourceSubmissionFileId	\N	string
319	submissionFileId	77	int
319	fileId	45	int
319	submissionId	10	int
319	originalFileName	conclusion.pdf	string
319	username	jbrower	string
320	fileStage	2	int
320	sourceSubmissionFileId	\N	string
320	submissionFileId	77	int
320	fileId	45	int
320	submissionId	10	int
320	username	jbrower	string
320	originalFileName	conclusion.pdf	string
320	name	conclusion.pdf	string
321	fileStage	2	int
321	sourceSubmissionFileId	\N	string
321	submissionFileId	78	int
321	fileId	46	int
321	submissionId	10	int
321	originalFileName	bibliography.pdf	string
321	username	jbrower	string
322	fileStage	2	int
322	submissionFileId	78	int
322	fileId	46	int
322	submissionId	10	int
322	username	jbrower	string
322	name	bibliography.pdf	string
323	fileStage	2	int
323	sourceSubmissionFileId	\N	string
323	submissionFileId	78	int
323	fileId	46	int
323	submissionId	10	int
323	originalFileName	bibliography.pdf	string
323	username	jbrower	string
324	fileStage	2	int
324	sourceSubmissionFileId	\N	string
324	submissionFileId	78	int
324	fileId	46	int
324	submissionId	10	int
324	username	jbrower	string
324	originalFileName	bibliography.pdf	string
324	name	bibliography.pdf	string
325	fileStage	2	int
325	sourceSubmissionFileId	\N	string
325	submissionFileId	79	int
325	fileId	47	int
325	submissionId	10	int
325	originalFileName	index.pdf	string
325	username	jbrower	string
326	fileStage	2	int
326	submissionFileId	79	int
326	fileId	47	int
326	submissionId	10	int
326	username	jbrower	string
326	name	index.pdf	string
327	fileStage	2	int
327	sourceSubmissionFileId	\N	string
327	submissionFileId	79	int
327	fileId	47	int
327	submissionId	10	int
327	originalFileName	index.pdf	string
327	username	jbrower	string
328	fileStage	2	int
328	sourceSubmissionFileId	\N	string
328	submissionFileId	79	int
328	fileId	47	int
328	submissionId	10	int
328	username	jbrower	string
328	originalFileName	index.pdf	string
328	name	index.pdf	string
332	fileStage	2	int
332	sourceSubmissionFileId	\N	string
332	submissionFileId	80	int
332	fileId	48	int
332	submissionId	11	int
332	originalFileName	intro.pdf	string
332	username	jlockehart	string
333	fileStage	2	int
333	submissionFileId	80	int
333	fileId	48	int
333	submissionId	11	int
333	username	jlockehart	string
333	name	intro.pdf	string
334	fileStage	2	int
334	sourceSubmissionFileId	\N	string
334	submissionFileId	80	int
334	fileId	48	int
334	submissionId	11	int
334	originalFileName	intro.pdf	string
334	username	jlockehart	string
335	fileStage	2	int
335	sourceSubmissionFileId	\N	string
335	submissionFileId	80	int
335	fileId	48	int
335	submissionId	11	int
335	username	jlockehart	string
335	originalFileName	intro.pdf	string
335	name	intro.pdf	string
336	fileStage	2	int
336	sourceSubmissionFileId	\N	string
336	submissionFileId	81	int
336	fileId	49	int
336	submissionId	11	int
336	originalFileName	poems.pdf	string
336	username	jlockehart	string
337	fileStage	2	int
337	submissionFileId	81	int
337	fileId	49	int
337	submissionId	11	int
337	username	jlockehart	string
337	name	poems.pdf	string
338	fileStage	2	int
338	sourceSubmissionFileId	\N	string
338	submissionFileId	81	int
338	fileId	49	int
338	submissionId	11	int
338	originalFileName	poems.pdf	string
338	username	jlockehart	string
339	fileStage	2	int
339	sourceSubmissionFileId	\N	string
339	submissionFileId	81	int
339	fileId	49	int
339	submissionId	11	int
339	username	jlockehart	string
339	originalFileName	poems.pdf	string
339	name	poems.pdf	string
341	editorId	3	int
341	editorName	Daniel Barnes	string
341	submissionId	11	int
341	decision	1	int
342	fileStage	19	int
342	sourceSubmissionFileId	80	int
342	submissionFileId	82	int
342	fileId	48	int
342	submissionId	11	int
342	originalFileName	intro.pdf	string
342	username	dbarnes	string
343	fileStage	19	int
343	submissionFileId	82	int
343	fileId	48	int
343	submissionId	11	int
343	username	dbarnes	string
343	name	intro.pdf	string
344	fileStage	19	int
344	sourceSubmissionFileId	81	int
344	submissionFileId	83	int
344	fileId	49	int
344	submissionId	11	int
344	originalFileName	poems.pdf	string
344	username	dbarnes	string
345	fileStage	19	int
345	submissionFileId	83	int
345	fileId	49	int
345	submissionId	11	int
345	username	dbarnes	string
345	name	poems.pdf	string
346	reviewAssignmentId	9	int
346	reviewerName	Aisla McCrae	string
346	submissionId	11	int
346	stageId	2	int
346	round	1	int
347	editorId	3	int
347	editorName	Daniel Barnes	string
347	submissionId	11	int
347	decision	3	int
348	reviewAssignmentId	10	int
348	reviewerName	Adela Gallego	string
348	submissionId	11	int
348	stageId	3	int
348	round	1	int
349	reviewAssignmentId	11	int
349	reviewerName	Gonzalo Favio	string
349	submissionId	11	int
349	stageId	3	int
349	round	1	int
350	reviewAssignmentId	10	int
350	reviewerName	Adela Gallego	string
350	submissionId	11	int
350	round	1	int
351	reviewAssignmentId	10	int
351	reviewerName	Adela Gallego	string
351	submissionId	11	int
351	round	1	int
352	reviewAssignmentId	11	int
352	reviewerName	Gonzalo Favio	string
352	submissionId	11	int
352	round	1	int
353	reviewAssignmentId	11	int
353	reviewerName	Gonzalo Favio	string
353	submissionId	11	int
353	round	1	int
354	editorId	3	int
354	editorName	Daniel Barnes	string
354	submissionId	11	int
354	decision	2	int
355	recipientCount	2	int
355	subject	Thank you for your review	string
358	fileStage	2	int
358	sourceSubmissionFileId	\N	string
358	submissionFileId	84	int
358	fileId	50	int
358	submissionId	12	int
358	originalFileName	chapter1.pdf	string
358	username	lelder	string
359	fileStage	2	int
359	submissionFileId	84	int
359	fileId	50	int
359	submissionId	12	int
359	username	lelder	string
359	name	chapter1.pdf	string
360	fileStage	2	int
360	sourceSubmissionFileId	\N	string
360	submissionFileId	84	int
360	fileId	50	int
360	submissionId	12	int
360	originalFileName	chapter1.pdf	string
360	username	lelder	string
361	fileStage	2	int
361	sourceSubmissionFileId	\N	string
361	submissionFileId	84	int
361	fileId	50	int
361	submissionId	12	int
361	username	lelder	string
361	originalFileName	chapter1.pdf	string
361	name	chapter1.pdf	string
362	fileStage	2	int
362	sourceSubmissionFileId	\N	string
362	submissionFileId	85	int
362	fileId	51	int
362	submissionId	12	int
362	originalFileName	chapter2.pdf	string
362	username	lelder	string
363	fileStage	2	int
363	submissionFileId	85	int
363	fileId	51	int
363	submissionId	12	int
363	username	lelder	string
363	name	chapter2.pdf	string
364	fileStage	2	int
364	sourceSubmissionFileId	\N	string
364	submissionFileId	85	int
364	fileId	51	int
364	submissionId	12	int
364	originalFileName	chapter2.pdf	string
364	username	lelder	string
365	fileStage	2	int
365	sourceSubmissionFileId	\N	string
365	submissionFileId	85	int
365	fileId	51	int
365	submissionId	12	int
365	username	lelder	string
365	originalFileName	chapter2.pdf	string
365	name	chapter2.pdf	string
366	fileStage	2	int
366	sourceSubmissionFileId	\N	string
366	submissionFileId	86	int
366	fileId	52	int
366	submissionId	12	int
366	originalFileName	chapter3.pdf	string
366	username	lelder	string
367	fileStage	2	int
367	submissionFileId	86	int
367	fileId	52	int
367	submissionId	12	int
367	username	lelder	string
367	name	chapter3.pdf	string
368	fileStage	2	int
368	sourceSubmissionFileId	\N	string
368	submissionFileId	86	int
368	fileId	52	int
368	submissionId	12	int
368	originalFileName	chapter3.pdf	string
368	username	lelder	string
369	fileStage	2	int
369	sourceSubmissionFileId	\N	string
369	submissionFileId	86	int
369	fileId	52	int
369	submissionId	12	int
369	username	lelder	string
369	originalFileName	chapter3.pdf	string
369	name	chapter3.pdf	string
371	editorId	3	int
371	editorName	Daniel Barnes	string
371	submissionId	12	int
371	decision	1	int
372	fileStage	19	int
372	sourceSubmissionFileId	86	int
372	submissionFileId	87	int
372	fileId	52	int
372	submissionId	12	int
372	originalFileName	chapter3.pdf	string
372	username	dbarnes	string
373	fileStage	19	int
373	submissionFileId	87	int
373	fileId	52	int
373	submissionId	12	int
373	username	dbarnes	string
373	name	chapter3.pdf	string
374	fileStage	19	int
374	sourceSubmissionFileId	85	int
374	submissionFileId	88	int
374	fileId	51	int
374	submissionId	12	int
374	originalFileName	chapter2.pdf	string
374	username	dbarnes	string
375	fileStage	19	int
375	submissionFileId	88	int
375	fileId	51	int
375	submissionId	12	int
375	username	dbarnes	string
375	name	chapter2.pdf	string
376	fileStage	19	int
376	sourceSubmissionFileId	84	int
376	submissionFileId	89	int
376	fileId	50	int
376	submissionId	12	int
376	originalFileName	chapter1.pdf	string
376	username	dbarnes	string
377	fileStage	19	int
377	submissionFileId	89	int
377	fileId	50	int
377	submissionId	12	int
377	username	dbarnes	string
377	name	chapter1.pdf	string
378	reviewAssignmentId	12	int
378	reviewerName	Julie Janssen	string
378	submissionId	12	int
378	stageId	2	int
378	round	1	int
379	reviewAssignmentId	13	int
379	reviewerName	Paul Hudson	string
379	submissionId	12	int
379	stageId	2	int
379	round	1	int
380	reviewAssignmentId	14	int
380	reviewerName	Aisla McCrae	string
380	submissionId	12	int
380	stageId	2	int
380	round	1	int
381	reviewAssignmentId	13	int
381	reviewerName	Paul Hudson	string
381	submissionId	12	int
381	round	1	int
382	reviewAssignmentId	13	int
382	reviewerName	Paul Hudson	string
382	submissionId	12	int
382	round	1	int
385	fileStage	2	int
385	sourceSubmissionFileId	\N	string
385	submissionFileId	90	int
385	fileId	53	int
385	submissionId	13	int
385	originalFileName	chapter1.pdf	string
385	username	mally	string
386	fileStage	2	int
386	submissionFileId	90	int
386	fileId	53	int
386	submissionId	13	int
386	username	mally	string
386	name	chapter1.pdf	string
387	fileStage	2	int
387	sourceSubmissionFileId	\N	string
387	submissionFileId	90	int
387	fileId	53	int
387	submissionId	13	int
387	originalFileName	chapter1.pdf	string
387	username	mally	string
388	fileStage	2	int
388	sourceSubmissionFileId	\N	string
388	submissionFileId	90	int
388	fileId	53	int
388	submissionId	13	int
388	username	mally	string
388	originalFileName	chapter1.pdf	string
388	name	chapter1.pdf	string
389	fileStage	2	int
389	sourceSubmissionFileId	\N	string
389	submissionFileId	91	int
389	fileId	54	int
389	submissionId	13	int
389	originalFileName	chapter2.pdf	string
389	username	mally	string
390	fileStage	2	int
390	submissionFileId	91	int
390	fileId	54	int
390	submissionId	13	int
390	username	mally	string
390	name	chapter2.pdf	string
391	fileStage	2	int
391	sourceSubmissionFileId	\N	string
391	submissionFileId	91	int
391	fileId	54	int
391	submissionId	13	int
391	originalFileName	chapter2.pdf	string
391	username	mally	string
392	fileStage	2	int
392	sourceSubmissionFileId	\N	string
392	submissionFileId	91	int
392	fileId	54	int
392	submissionId	13	int
392	username	mally	string
392	originalFileName	chapter2.pdf	string
392	name	chapter2.pdf	string
393	fileStage	2	int
393	sourceSubmissionFileId	\N	string
393	submissionFileId	92	int
393	fileId	55	int
393	submissionId	13	int
393	originalFileName	chapter3.pdf	string
393	username	mally	string
394	fileStage	2	int
394	submissionFileId	92	int
394	fileId	55	int
394	submissionId	13	int
394	username	mally	string
394	name	chapter3.pdf	string
395	fileStage	2	int
395	sourceSubmissionFileId	\N	string
395	submissionFileId	92	int
395	fileId	55	int
395	submissionId	13	int
395	originalFileName	chapter3.pdf	string
395	username	mally	string
396	fileStage	2	int
396	sourceSubmissionFileId	\N	string
396	submissionFileId	92	int
396	fileId	55	int
396	submissionId	13	int
396	username	mally	string
396	originalFileName	chapter3.pdf	string
396	name	chapter3.pdf	string
398	editorId	3	int
398	editorName	Daniel Barnes	string
398	submissionId	13	int
398	decision	1	int
399	fileStage	19	int
399	sourceSubmissionFileId	92	int
399	submissionFileId	93	int
399	fileId	55	int
399	submissionId	13	int
399	originalFileName	chapter3.pdf	string
399	username	dbarnes	string
400	fileStage	19	int
400	submissionFileId	93	int
400	fileId	55	int
400	submissionId	13	int
400	username	dbarnes	string
400	name	chapter3.pdf	string
401	fileStage	19	int
401	sourceSubmissionFileId	91	int
401	submissionFileId	94	int
401	fileId	54	int
401	submissionId	13	int
401	originalFileName	chapter2.pdf	string
401	username	dbarnes	string
402	fileStage	19	int
402	submissionFileId	94	int
402	fileId	54	int
402	submissionId	13	int
402	username	dbarnes	string
402	name	chapter2.pdf	string
403	fileStage	19	int
403	sourceSubmissionFileId	90	int
403	submissionFileId	95	int
403	fileId	53	int
403	submissionId	13	int
403	originalFileName	chapter1.pdf	string
403	username	dbarnes	string
404	fileStage	19	int
404	submissionFileId	95	int
404	fileId	53	int
404	submissionId	13	int
404	username	dbarnes	string
404	name	chapter1.pdf	string
405	reviewAssignmentId	15	int
405	reviewerName	Paul Hudson	string
405	submissionId	13	int
405	stageId	2	int
405	round	1	int
406	editorId	3	int
406	editorName	Daniel Barnes	string
406	submissionId	13	int
406	decision	3	int
407	reviewAssignmentId	16	int
407	reviewerName	Adela Gallego	string
407	submissionId	13	int
407	stageId	3	int
407	round	1	int
408	reviewAssignmentId	17	int
408	reviewerName	Al Zacharia	string
408	submissionId	13	int
408	stageId	3	int
408	round	1	int
409	reviewAssignmentId	18	int
409	reviewerName	Gonzalo Favio	string
409	submissionId	13	int
409	stageId	3	int
409	round	1	int
410	reviewAssignmentId	16	int
410	reviewerName	Adela Gallego	string
410	submissionId	13	int
410	round	1	int
411	reviewAssignmentId	16	int
411	reviewerName	Adela Gallego	string
411	submissionId	13	int
411	round	1	int
412	reviewAssignmentId	18	int
412	reviewerName	Gonzalo Favio	string
412	submissionId	13	int
412	round	1	int
413	reviewAssignmentId	18	int
413	reviewerName	Gonzalo Favio	string
413	submissionId	13	int
413	round	1	int
414	editorId	3	int
414	editorName	Daniel Barnes	string
414	submissionId	13	int
414	decision	2	int
415	recipientCount	2	int
415	subject	Thank you for your review	string
418	fileStage	2	int
418	sourceSubmissionFileId	\N	string
418	submissionFileId	96	int
418	fileId	56	int
418	submissionId	14	int
418	originalFileName	chapter1.pdf	string
418	username	mdawson	string
419	fileStage	2	int
419	submissionFileId	96	int
419	fileId	56	int
419	submissionId	14	int
419	username	mdawson	string
419	name	chapter1.pdf	string
420	fileStage	2	int
420	sourceSubmissionFileId	\N	string
420	submissionFileId	96	int
420	fileId	56	int
420	submissionId	14	int
420	originalFileName	chapter1.pdf	string
420	username	mdawson	string
421	fileStage	2	int
421	sourceSubmissionFileId	\N	string
421	submissionFileId	96	int
421	fileId	56	int
421	submissionId	14	int
421	username	mdawson	string
421	originalFileName	chapter1.pdf	string
421	name	chapter1.pdf	string
422	fileStage	2	int
422	sourceSubmissionFileId	\N	string
422	submissionFileId	97	int
422	fileId	57	int
422	submissionId	14	int
422	originalFileName	chapter2.pdf	string
422	username	mdawson	string
423	fileStage	2	int
423	submissionFileId	97	int
423	fileId	57	int
423	submissionId	14	int
423	username	mdawson	string
423	name	chapter2.pdf	string
424	fileStage	2	int
424	sourceSubmissionFileId	\N	string
424	submissionFileId	97	int
424	fileId	57	int
424	submissionId	14	int
424	originalFileName	chapter2.pdf	string
424	username	mdawson	string
425	fileStage	2	int
425	sourceSubmissionFileId	\N	string
425	submissionFileId	97	int
425	fileId	57	int
425	submissionId	14	int
425	username	mdawson	string
425	originalFileName	chapter2.pdf	string
425	name	chapter2.pdf	string
426	fileStage	2	int
426	sourceSubmissionFileId	\N	string
426	submissionFileId	98	int
426	fileId	58	int
426	submissionId	14	int
426	originalFileName	chapter3.pdf	string
426	username	mdawson	string
427	fileStage	2	int
427	submissionFileId	98	int
427	fileId	58	int
427	submissionId	14	int
427	username	mdawson	string
427	name	chapter3.pdf	string
428	fileStage	2	int
428	sourceSubmissionFileId	\N	string
428	submissionFileId	98	int
428	fileId	58	int
428	submissionId	14	int
428	originalFileName	chapter3.pdf	string
428	username	mdawson	string
429	fileStage	2	int
429	sourceSubmissionFileId	\N	string
429	submissionFileId	98	int
429	fileId	58	int
429	submissionId	14	int
429	username	mdawson	string
429	originalFileName	chapter3.pdf	string
429	name	chapter3.pdf	string
430	fileStage	2	int
430	sourceSubmissionFileId	\N	string
430	submissionFileId	99	int
430	fileId	59	int
430	submissionId	14	int
430	originalFileName	chapter4.pdf	string
430	username	mdawson	string
431	fileStage	2	int
431	submissionFileId	99	int
431	fileId	59	int
431	submissionId	14	int
431	username	mdawson	string
431	name	chapter4.pdf	string
432	fileStage	2	int
432	sourceSubmissionFileId	\N	string
432	submissionFileId	99	int
432	fileId	59	int
432	submissionId	14	int
432	originalFileName	chapter4.pdf	string
432	username	mdawson	string
433	fileStage	2	int
433	sourceSubmissionFileId	\N	string
433	submissionFileId	99	int
433	fileId	59	int
433	submissionId	14	int
433	username	mdawson	string
433	originalFileName	chapter4.pdf	string
433	name	chapter4.pdf	string
434	fileStage	2	int
434	sourceSubmissionFileId	\N	string
434	submissionFileId	100	int
434	fileId	60	int
434	submissionId	14	int
434	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
434	username	mdawson	string
435	fileStage	2	int
435	submissionFileId	100	int
435	fileId	60	int
435	submissionId	14	int
435	username	mdawson	string
435	name	Segmentation of Vascular Ultrasound Imag.pdf	string
436	fileStage	2	int
436	sourceSubmissionFileId	\N	string
436	submissionFileId	100	int
436	fileId	60	int
436	submissionId	14	int
436	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
436	username	mdawson	string
437	fileStage	2	int
437	sourceSubmissionFileId	\N	string
437	submissionFileId	100	int
437	fileId	60	int
437	submissionId	14	int
437	username	mdawson	string
437	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
437	name	Segmentation of Vascular Ultrasound Imag.pdf	string
438	fileStage	2	int
438	sourceSubmissionFileId	\N	string
438	submissionFileId	101	int
438	fileId	61	int
438	submissionId	14	int
438	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
438	username	mdawson	string
439	fileStage	2	int
439	submissionFileId	101	int
439	fileId	61	int
439	submissionId	14	int
439	username	mdawson	string
439	name	The Canadian Nutrient File: Nutrient Val.pdf	string
440	fileStage	2	int
440	sourceSubmissionFileId	\N	string
440	submissionFileId	101	int
440	fileId	61	int
440	submissionId	14	int
440	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
440	username	mdawson	string
441	fileStage	2	int
441	sourceSubmissionFileId	\N	string
441	submissionFileId	101	int
441	fileId	61	int
441	submissionId	14	int
441	username	mdawson	string
441	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
467	fileStage	10	int
441	name	The Canadian Nutrient File: Nutrient Val.pdf	string
443	editorId	3	int
443	editorName	Daniel Barnes	string
443	submissionId	14	int
443	decision	1	int
444	fileStage	19	int
444	sourceSubmissionFileId	101	int
444	submissionFileId	102	int
444	fileId	61	int
444	submissionId	14	int
444	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
444	username	dbarnes	string
445	fileStage	19	int
445	submissionFileId	102	int
445	fileId	61	int
445	submissionId	14	int
445	username	dbarnes	string
445	name	The Canadian Nutrient File: Nutrient Val.pdf	string
446	fileStage	19	int
446	sourceSubmissionFileId	100	int
446	submissionFileId	103	int
446	fileId	60	int
446	submissionId	14	int
446	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
446	username	dbarnes	string
447	fileStage	19	int
447	submissionFileId	103	int
447	fileId	60	int
447	submissionId	14	int
447	username	dbarnes	string
447	name	Segmentation of Vascular Ultrasound Imag.pdf	string
448	fileStage	19	int
448	sourceSubmissionFileId	99	int
448	submissionFileId	104	int
448	fileId	59	int
448	submissionId	14	int
448	originalFileName	chapter4.pdf	string
448	username	dbarnes	string
449	fileStage	19	int
449	submissionFileId	104	int
449	fileId	59	int
449	submissionId	14	int
449	username	dbarnes	string
449	name	chapter4.pdf	string
450	fileStage	19	int
450	sourceSubmissionFileId	97	int
450	submissionFileId	105	int
450	fileId	57	int
450	submissionId	14	int
450	originalFileName	chapter2.pdf	string
450	username	dbarnes	string
451	fileStage	19	int
451	submissionFileId	105	int
451	fileId	57	int
451	submissionId	14	int
451	username	dbarnes	string
451	name	chapter2.pdf	string
452	fileStage	19	int
452	sourceSubmissionFileId	96	int
452	submissionFileId	106	int
452	fileId	56	int
452	submissionId	14	int
452	originalFileName	chapter1.pdf	string
452	username	dbarnes	string
453	fileStage	19	int
453	submissionFileId	106	int
453	fileId	56	int
453	submissionId	14	int
453	username	dbarnes	string
453	name	chapter1.pdf	string
454	fileStage	19	int
454	sourceSubmissionFileId	98	int
454	submissionFileId	107	int
454	fileId	58	int
454	submissionId	14	int
454	originalFileName	chapter3.pdf	string
454	username	dbarnes	string
455	fileStage	19	int
455	submissionFileId	107	int
455	fileId	58	int
455	submissionId	14	int
455	username	dbarnes	string
455	name	chapter3.pdf	string
456	reviewAssignmentId	19	int
456	reviewerName	Julie Janssen	string
456	submissionId	14	int
456	stageId	2	int
456	round	1	int
457	editorId	3	int
457	editorName	Daniel Barnes	string
457	submissionId	14	int
457	decision	3	int
458	reviewAssignmentId	20	int
458	reviewerName	Al Zacharia	string
458	submissionId	14	int
458	stageId	3	int
458	round	1	int
459	editorId	3	int
459	editorName	Daniel Barnes	string
459	submissionId	14	int
459	decision	2	int
460	name	Maria Fritz	string
460	username	mfritz	string
460	userGroupName	Copyeditor	string
461	editorId	3	int
461	editorName	Daniel Barnes	string
461	submissionId	14	int
461	decision	7	int
462	name	Graham Cox	string
462	username	gcox	string
462	userGroupName	Layout Editor	string
463	name	Sabine Kumar	string
463	username	skumar	string
463	userGroupName	Proofreader	string
464	formatName	PDF	string
465	fileStage	10	int
465	sourceSubmissionFileId	101	int
465	submissionFileId	108	int
465	fileId	61	int
465	submissionId	14	int
465	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
465	username	dbarnes	string
466	fileStage	10	int
466	submissionFileId	108	int
466	fileId	61	int
466	submissionId	14	int
466	username	dbarnes	string
466	name	The Canadian Nutrient File: Nutrient Val.pdf	string
467	sourceSubmissionFileId	100	int
467	submissionFileId	109	int
467	fileId	60	int
467	submissionId	14	int
467	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
467	username	dbarnes	string
468	fileStage	10	int
468	submissionFileId	109	int
468	fileId	60	int
468	submissionId	14	int
468	username	dbarnes	string
468	name	Segmentation of Vascular Ultrasound Imag.pdf	string
469	fileStage	10	int
469	sourceSubmissionFileId	99	int
469	submissionFileId	110	int
469	fileId	59	int
469	submissionId	14	int
469	originalFileName	chapter4.pdf	string
469	username	dbarnes	string
470	fileStage	10	int
470	submissionFileId	110	int
470	fileId	59	int
470	submissionId	14	int
470	username	dbarnes	string
470	name	chapter4.pdf	string
471	fileStage	10	int
471	sourceSubmissionFileId	98	int
471	submissionFileId	111	int
471	fileId	58	int
471	submissionId	14	int
471	originalFileName	chapter3.pdf	string
471	username	dbarnes	string
472	fileStage	10	int
472	submissionFileId	111	int
472	fileId	58	int
472	submissionId	14	int
472	username	dbarnes	string
472	name	chapter3.pdf	string
473	fileStage	10	int
473	sourceSubmissionFileId	97	int
473	submissionFileId	112	int
473	fileId	57	int
473	submissionId	14	int
473	originalFileName	chapter2.pdf	string
473	username	dbarnes	string
474	fileStage	10	int
474	submissionFileId	112	int
474	fileId	57	int
474	submissionId	14	int
474	username	dbarnes	string
474	name	chapter2.pdf	string
475	fileStage	10	int
475	sourceSubmissionFileId	96	int
475	submissionFileId	113	int
475	fileId	56	int
475	submissionId	14	int
475	originalFileName	chapter1.pdf	string
475	username	dbarnes	string
476	fileStage	10	int
476	submissionFileId	113	int
476	fileId	56	int
476	submissionId	14	int
476	username	dbarnes	string
476	name	chapter1.pdf	string
477	publicationFormatName	PDF	string
478	publicationFormatName	PDF	string
479	fileStage	10	int
479	sourceSubmissionFileId	96	int
479	submissionFileId	113	int
479	fileId	56	int
479	submissionId	14	int
479	originalFileName	chapter1.pdf	string
479	username	dbarnes	string
480	fileStage	10	int
480	sourceSubmissionFileId	96	int
480	submissionFileId	113	int
480	fileId	56	int
480	submissionId	14	int
480	username	dbarnes	string
480	originalFileName	chapter1.pdf	string
480	name	chapter1.pdf	string
481	file	chapter1.pdf	string
481	name	Daniel Barnes	string
481	username	dbarnes	string
482	fileStage	10	int
482	sourceSubmissionFileId	96	int
482	submissionFileId	113	int
482	fileId	56	int
482	submissionId	14	int
482	originalFileName	chapter1.pdf	string
482	username	dbarnes	string
483	fileStage	10	int
483	sourceSubmissionFileId	96	int
483	submissionFileId	113	int
483	fileId	56	int
483	submissionId	14	int
483	username	dbarnes	string
483	originalFileName	chapter1.pdf	string
483	name	chapter1.pdf	string
484	fileStage	10	int
484	sourceSubmissionFileId	97	int
484	submissionFileId	112	int
484	fileId	57	int
484	submissionId	14	int
484	originalFileName	chapter2.pdf	string
484	username	dbarnes	string
485	fileStage	10	int
485	sourceSubmissionFileId	97	int
485	submissionFileId	112	int
485	fileId	57	int
485	submissionId	14	int
485	username	dbarnes	string
485	originalFileName	chapter2.pdf	string
485	name	chapter2.pdf	string
486	file	chapter2.pdf	string
486	name	Daniel Barnes	string
486	username	dbarnes	string
487	fileStage	10	int
487	sourceSubmissionFileId	97	int
487	submissionFileId	112	int
487	fileId	57	int
487	submissionId	14	int
487	originalFileName	chapter2.pdf	string
487	username	dbarnes	string
488	fileStage	10	int
488	sourceSubmissionFileId	97	int
488	submissionFileId	112	int
488	fileId	57	int
488	submissionId	14	int
488	username	dbarnes	string
488	originalFileName	chapter2.pdf	string
488	name	chapter2.pdf	string
489	fileStage	10	int
489	sourceSubmissionFileId	98	int
489	submissionFileId	111	int
489	fileId	58	int
489	submissionId	14	int
489	originalFileName	chapter3.pdf	string
489	username	dbarnes	string
490	fileStage	10	int
490	sourceSubmissionFileId	98	int
490	submissionFileId	111	int
490	fileId	58	int
490	submissionId	14	int
490	username	dbarnes	string
490	originalFileName	chapter3.pdf	string
490	name	chapter3.pdf	string
491	file	chapter3.pdf	string
491	name	Daniel Barnes	string
491	username	dbarnes	string
492	fileStage	10	int
492	sourceSubmissionFileId	98	int
492	submissionFileId	111	int
492	fileId	58	int
492	submissionId	14	int
492	originalFileName	chapter3.pdf	string
492	username	dbarnes	string
493	fileStage	10	int
493	sourceSubmissionFileId	98	int
493	submissionFileId	111	int
493	fileId	58	int
493	submissionId	14	int
493	username	dbarnes	string
493	originalFileName	chapter3.pdf	string
493	name	chapter3.pdf	string
494	fileStage	10	int
494	sourceSubmissionFileId	99	int
494	submissionFileId	110	int
494	fileId	59	int
494	submissionId	14	int
494	originalFileName	chapter4.pdf	string
494	username	dbarnes	string
495	fileStage	10	int
495	sourceSubmissionFileId	99	int
495	submissionFileId	110	int
495	fileId	59	int
495	submissionId	14	int
495	username	dbarnes	string
495	originalFileName	chapter4.pdf	string
495	name	chapter4.pdf	string
496	file	chapter4.pdf	string
496	name	Daniel Barnes	string
496	username	dbarnes	string
497	fileStage	10	int
497	sourceSubmissionFileId	99	int
497	submissionFileId	110	int
497	fileId	59	int
497	submissionId	14	int
497	originalFileName	chapter4.pdf	string
497	username	dbarnes	string
498	fileStage	10	int
498	sourceSubmissionFileId	99	int
498	submissionFileId	110	int
498	fileId	59	int
498	submissionId	14	int
498	username	dbarnes	string
498	originalFileName	chapter4.pdf	string
498	name	chapter4.pdf	string
499	fileStage	10	int
499	sourceSubmissionFileId	100	int
499	submissionFileId	109	int
499	fileId	60	int
499	submissionId	14	int
499	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
499	username	dbarnes	string
500	fileStage	10	int
500	sourceSubmissionFileId	100	int
500	submissionFileId	109	int
500	fileId	60	int
500	submissionId	14	int
500	username	dbarnes	string
500	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
500	name	Segmentation of Vascular Ultrasound Imag.pdf	string
501	file	Segmentation of Vascular Ultrasound Imag.pdf	string
501	name	Daniel Barnes	string
501	username	dbarnes	string
502	fileStage	10	int
502	sourceSubmissionFileId	100	int
502	submissionFileId	109	int
502	fileId	60	int
502	submissionId	14	int
502	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
502	username	dbarnes	string
503	fileStage	10	int
503	sourceSubmissionFileId	100	int
503	submissionFileId	109	int
503	fileId	60	int
503	submissionId	14	int
503	username	dbarnes	string
503	originalFileName	Segmentation of Vascular Ultrasound Imag.pdf	string
503	name	Segmentation of Vascular Ultrasound Imag.pdf	string
504	fileStage	10	int
504	sourceSubmissionFileId	101	int
504	submissionFileId	108	int
504	fileId	61	int
504	submissionId	14	int
504	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
504	username	dbarnes	string
505	fileStage	10	int
505	sourceSubmissionFileId	101	int
505	submissionFileId	108	int
505	fileId	61	int
505	submissionId	14	int
505	username	dbarnes	string
505	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
505	name	The Canadian Nutrient File: Nutrient Val.pdf	string
506	file	The Canadian Nutrient File: Nutrient Val.pdf	string
506	name	Daniel Barnes	string
506	username	dbarnes	string
507	fileStage	10	int
507	sourceSubmissionFileId	101	int
507	submissionFileId	108	int
507	fileId	61	int
507	submissionId	14	int
507	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
507	username	dbarnes	string
508	fileStage	10	int
508	sourceSubmissionFileId	101	int
508	submissionFileId	108	int
508	fileId	61	int
508	submissionId	14	int
508	username	dbarnes	string
508	originalFileName	The Canadian Nutrient File: Nutrient Val.pdf	string
508	name	The Canadian Nutrient File: Nutrient Val.pdf	string
512	fileStage	2	int
512	sourceSubmissionFileId	\N	string
512	submissionFileId	114	int
512	fileId	62	int
512	submissionId	15	int
512	originalFileName	chapter1.pdf	string
512	username	mforan	string
513	fileStage	2	int
513	submissionFileId	114	int
513	fileId	62	int
513	submissionId	15	int
513	username	mforan	string
513	name	chapter1.pdf	string
514	fileStage	2	int
514	sourceSubmissionFileId	\N	string
514	submissionFileId	114	int
514	fileId	62	int
514	submissionId	15	int
514	originalFileName	chapter1.pdf	string
514	username	mforan	string
515	fileStage	2	int
515	sourceSubmissionFileId	\N	string
515	submissionFileId	114	int
515	fileId	62	int
515	submissionId	15	int
515	username	mforan	string
515	originalFileName	chapter1.pdf	string
515	name	chapter1.pdf	string
516	fileStage	2	int
516	sourceSubmissionFileId	\N	string
516	submissionFileId	115	int
516	fileId	63	int
516	submissionId	15	int
516	originalFileName	chapter2.pdf	string
516	username	mforan	string
517	fileStage	2	int
517	submissionFileId	115	int
517	fileId	63	int
517	submissionId	15	int
517	username	mforan	string
517	name	chapter2.pdf	string
518	fileStage	2	int
518	sourceSubmissionFileId	\N	string
518	submissionFileId	115	int
518	fileId	63	int
518	submissionId	15	int
518	originalFileName	chapter2.pdf	string
518	username	mforan	string
519	fileStage	2	int
519	sourceSubmissionFileId	\N	string
519	submissionFileId	115	int
519	fileId	63	int
519	submissionId	15	int
519	username	mforan	string
519	originalFileName	chapter2.pdf	string
519	name	chapter2.pdf	string
520	fileStage	2	int
520	sourceSubmissionFileId	\N	string
520	submissionFileId	116	int
520	fileId	64	int
520	submissionId	15	int
520	originalFileName	chapter3.pdf	string
520	username	mforan	string
521	fileStage	2	int
521	submissionFileId	116	int
521	fileId	64	int
521	submissionId	15	int
521	username	mforan	string
521	name	chapter3.pdf	string
522	fileStage	2	int
522	sourceSubmissionFileId	\N	string
522	submissionFileId	116	int
522	fileId	64	int
522	submissionId	15	int
522	originalFileName	chapter3.pdf	string
522	username	mforan	string
523	fileStage	2	int
523	sourceSubmissionFileId	\N	string
523	submissionFileId	116	int
523	fileId	64	int
523	submissionId	15	int
523	username	mforan	string
523	originalFileName	chapter3.pdf	string
523	name	chapter3.pdf	string
525	editorId	3	int
525	editorName	Daniel Barnes	string
525	submissionId	15	int
525	decision	18	int
526	fileStage	4	int
526	sourceSubmissionFileId	116	int
526	submissionFileId	117	int
526	fileId	64	int
526	submissionId	15	int
526	originalFileName	chapter3.pdf	string
526	username	dbarnes	string
527	fileStage	4	int
527	submissionFileId	117	int
527	fileId	64	int
527	submissionId	15	int
527	username	dbarnes	string
527	name	chapter3.pdf	string
528	fileStage	4	int
528	sourceSubmissionFileId	114	int
528	submissionFileId	118	int
528	fileId	62	int
528	submissionId	15	int
528	originalFileName	chapter1.pdf	string
528	username	dbarnes	string
529	fileStage	4	int
529	submissionFileId	118	int
529	fileId	62	int
529	submissionId	15	int
529	username	dbarnes	string
529	name	chapter1.pdf	string
530	fileStage	4	int
530	sourceSubmissionFileId	115	int
530	submissionFileId	119	int
530	fileId	63	int
530	submissionId	15	int
530	originalFileName	chapter2.pdf	string
530	username	dbarnes	string
531	fileStage	4	int
531	submissionFileId	119	int
531	fileId	63	int
531	submissionId	15	int
531	username	dbarnes	string
531	name	chapter2.pdf	string
534	fileStage	2	int
534	sourceSubmissionFileId	\N	string
534	submissionFileId	120	int
534	fileId	65	int
534	submissionId	16	int
534	originalFileName	foreward.pdf	string
534	username	mpower	string
535	fileStage	2	int
535	submissionFileId	120	int
535	fileId	65	int
535	submissionId	16	int
535	username	mpower	string
535	name	foreward.pdf	string
536	fileStage	2	int
536	sourceSubmissionFileId	\N	string
536	submissionFileId	120	int
536	fileId	65	int
536	submissionId	16	int
536	originalFileName	foreward.pdf	string
536	username	mpower	string
537	fileStage	2	int
537	sourceSubmissionFileId	\N	string
537	submissionFileId	120	int
537	fileId	65	int
537	submissionId	16	int
537	username	mpower	string
537	originalFileName	foreward.pdf	string
537	name	foreward.pdf	string
538	fileStage	2	int
538	sourceSubmissionFileId	\N	string
538	submissionFileId	121	int
538	fileId	66	int
538	submissionId	16	int
538	originalFileName	preface.pdf	string
538	username	mpower	string
539	fileStage	2	int
539	submissionFileId	121	int
539	fileId	66	int
539	submissionId	16	int
539	username	mpower	string
539	name	preface.pdf	string
540	fileStage	2	int
540	sourceSubmissionFileId	\N	string
540	submissionFileId	121	int
540	fileId	66	int
540	submissionId	16	int
540	originalFileName	preface.pdf	string
540	username	mpower	string
541	fileStage	2	int
541	sourceSubmissionFileId	\N	string
541	submissionFileId	121	int
541	fileId	66	int
541	submissionId	16	int
541	username	mpower	string
541	originalFileName	preface.pdf	string
541	name	preface.pdf	string
542	fileStage	2	int
542	sourceSubmissionFileId	\N	string
542	submissionFileId	122	int
542	fileId	67	int
542	submissionId	16	int
542	originalFileName	cases.pdf	string
542	username	mpower	string
543	fileStage	2	int
543	submissionFileId	122	int
543	fileId	67	int
543	submissionId	16	int
543	username	mpower	string
543	name	cases.pdf	string
544	fileStage	2	int
544	sourceSubmissionFileId	\N	string
544	submissionFileId	122	int
544	fileId	67	int
544	submissionId	16	int
544	originalFileName	cases.pdf	string
544	username	mpower	string
545	fileStage	2	int
545	sourceSubmissionFileId	\N	string
545	submissionFileId	122	int
545	fileId	67	int
545	submissionId	16	int
545	username	mpower	string
545	originalFileName	cases.pdf	string
545	name	cases.pdf	string
546	fileStage	2	int
546	sourceSubmissionFileId	\N	string
546	submissionFileId	123	int
546	fileId	68	int
546	submissionId	16	int
546	originalFileName	conclusion.pdf	string
546	username	mpower	string
547	fileStage	2	int
547	submissionFileId	123	int
547	fileId	68	int
547	submissionId	16	int
547	username	mpower	string
547	name	conclusion.pdf	string
548	fileStage	2	int
548	sourceSubmissionFileId	\N	string
548	submissionFileId	123	int
548	fileId	68	int
548	submissionId	16	int
548	originalFileName	conclusion.pdf	string
548	username	mpower	string
549	fileStage	2	int
549	sourceSubmissionFileId	\N	string
549	submissionFileId	123	int
549	fileId	68	int
549	submissionId	16	int
549	username	mpower	string
549	originalFileName	conclusion.pdf	string
549	name	conclusion.pdf	string
550	fileStage	2	int
550	sourceSubmissionFileId	\N	string
550	submissionFileId	124	int
550	fileId	69	int
550	submissionId	16	int
550	originalFileName	bibliography.pdf	string
550	username	mpower	string
551	fileStage	2	int
551	submissionFileId	124	int
551	fileId	69	int
551	submissionId	16	int
551	username	mpower	string
551	name	bibliography.pdf	string
552	fileStage	2	int
552	sourceSubmissionFileId	\N	string
552	submissionFileId	124	int
552	fileId	69	int
552	submissionId	16	int
552	originalFileName	bibliography.pdf	string
552	username	mpower	string
553	fileStage	2	int
553	sourceSubmissionFileId	\N	string
553	submissionFileId	124	int
553	fileId	69	int
553	submissionId	16	int
553	username	mpower	string
553	originalFileName	bibliography.pdf	string
553	name	bibliography.pdf	string
555	editorId	3	int
555	editorName	Daniel Barnes	string
555	submissionId	16	int
555	decision	18	int
556	fileStage	4	int
556	sourceSubmissionFileId	123	int
556	submissionFileId	125	int
556	fileId	68	int
556	submissionId	16	int
556	originalFileName	conclusion.pdf	string
556	username	dbarnes	string
557	fileStage	4	int
557	submissionFileId	125	int
557	fileId	68	int
557	submissionId	16	int
557	username	dbarnes	string
557	name	conclusion.pdf	string
558	fileStage	4	int
558	sourceSubmissionFileId	124	int
558	submissionFileId	126	int
558	fileId	69	int
558	submissionId	16	int
558	originalFileName	bibliography.pdf	string
558	username	dbarnes	string
559	fileStage	4	int
559	submissionFileId	126	int
559	fileId	69	int
559	submissionId	16	int
559	username	dbarnes	string
559	name	bibliography.pdf	string
560	fileStage	4	int
560	sourceSubmissionFileId	122	int
560	submissionFileId	127	int
560	fileId	67	int
560	submissionId	16	int
560	originalFileName	cases.pdf	string
560	username	dbarnes	string
561	fileStage	4	int
561	submissionFileId	127	int
561	fileId	67	int
561	submissionId	16	int
561	username	dbarnes	string
561	name	cases.pdf	string
562	fileStage	4	int
562	sourceSubmissionFileId	121	int
562	submissionFileId	128	int
562	fileId	66	int
562	submissionId	16	int
562	originalFileName	preface.pdf	string
562	username	dbarnes	string
563	fileStage	4	int
563	submissionFileId	128	int
563	fileId	66	int
563	submissionId	16	int
563	username	dbarnes	string
563	name	preface.pdf	string
564	fileStage	4	int
564	sourceSubmissionFileId	120	int
564	submissionFileId	129	int
564	fileId	65	int
564	submissionId	16	int
564	originalFileName	foreward.pdf	string
564	username	dbarnes	string
565	fileStage	4	int
565	submissionFileId	129	int
565	fileId	65	int
565	submissionId	16	int
565	username	dbarnes	string
565	name	foreward.pdf	string
566	reviewAssignmentId	21	int
566	reviewerName	Adela Gallego	string
566	submissionId	16	int
566	stageId	3	int
566	round	1	int
567	reviewAssignmentId	22	int
567	reviewerName	Al Zacharia	string
567	submissionId	16	int
567	stageId	3	int
567	round	1	int
568	reviewAssignmentId	23	int
568	reviewerName	Gonzalo Favio	string
568	submissionId	16	int
568	stageId	3	int
568	round	1	int
569	reviewAssignmentId	21	int
569	reviewerName	Adela Gallego	string
569	submissionId	16	int
569	round	1	int
570	reviewAssignmentId	21	int
570	reviewerName	Adela Gallego	string
570	submissionId	16	int
570	round	1	int
573	fileStage	2	int
573	sourceSubmissionFileId	\N	string
573	submissionFileId	130	int
573	fileId	70	int
573	submissionId	17	int
573	originalFileName	preface.pdf	string
573	username	msmith	string
574	fileStage	2	int
574	submissionFileId	130	int
574	fileId	70	int
574	submissionId	17	int
574	username	msmith	string
574	name	preface.pdf	string
575	fileStage	2	int
575	sourceSubmissionFileId	\N	string
575	submissionFileId	130	int
575	fileId	70	int
575	submissionId	17	int
575	originalFileName	preface.pdf	string
575	username	msmith	string
576	fileStage	2	int
576	sourceSubmissionFileId	\N	string
576	submissionFileId	130	int
576	fileId	70	int
576	submissionId	17	int
576	username	msmith	string
576	originalFileName	preface.pdf	string
576	name	preface.pdf	string
577	fileStage	2	int
577	sourceSubmissionFileId	\N	string
577	submissionFileId	131	int
577	fileId	71	int
577	submissionId	17	int
577	originalFileName	introduction.pdf	string
577	username	msmith	string
578	fileStage	2	int
578	submissionFileId	131	int
578	fileId	71	int
578	submissionId	17	int
578	username	msmith	string
578	name	introduction.pdf	string
579	fileStage	2	int
579	sourceSubmissionFileId	\N	string
579	submissionFileId	131	int
579	fileId	71	int
579	submissionId	17	int
579	originalFileName	introduction.pdf	string
579	username	msmith	string
580	fileStage	2	int
580	sourceSubmissionFileId	\N	string
580	submissionFileId	131	int
580	fileId	71	int
580	submissionId	17	int
580	username	msmith	string
580	originalFileName	introduction.pdf	string
580	name	introduction.pdf	string
581	fileStage	2	int
581	sourceSubmissionFileId	\N	string
581	submissionFileId	132	int
581	fileId	72	int
581	submissionId	17	int
581	originalFileName	chapter1.pdf	string
581	username	msmith	string
582	fileStage	2	int
582	submissionFileId	132	int
582	fileId	72	int
582	submissionId	17	int
582	username	msmith	string
582	name	chapter1.pdf	string
583	fileStage	2	int
583	sourceSubmissionFileId	\N	string
583	submissionFileId	132	int
583	fileId	72	int
583	submissionId	17	int
583	originalFileName	chapter1.pdf	string
583	username	msmith	string
584	fileStage	2	int
584	sourceSubmissionFileId	\N	string
584	submissionFileId	132	int
584	fileId	72	int
584	submissionId	17	int
584	username	msmith	string
584	originalFileName	chapter1.pdf	string
584	name	chapter1.pdf	string
585	fileStage	2	int
585	sourceSubmissionFileId	\N	string
585	submissionFileId	133	int
585	fileId	73	int
585	submissionId	17	int
585	originalFileName	chapter2.pdf	string
585	username	msmith	string
586	fileStage	2	int
586	submissionFileId	133	int
586	fileId	73	int
586	submissionId	17	int
586	username	msmith	string
586	name	chapter2.pdf	string
587	fileStage	2	int
587	sourceSubmissionFileId	\N	string
587	submissionFileId	133	int
587	fileId	73	int
587	submissionId	17	int
587	originalFileName	chapter2.pdf	string
587	username	msmith	string
588	fileStage	2	int
588	sourceSubmissionFileId	\N	string
588	submissionFileId	133	int
588	fileId	73	int
588	submissionId	17	int
588	username	msmith	string
588	originalFileName	chapter2.pdf	string
588	name	chapter2.pdf	string
589	fileStage	2	int
589	sourceSubmissionFileId	\N	string
589	submissionFileId	134	int
589	fileId	74	int
589	submissionId	17	int
589	originalFileName	chapter3.pdf	string
589	username	msmith	string
590	fileStage	2	int
590	submissionFileId	134	int
590	fileId	74	int
590	submissionId	17	int
590	username	msmith	string
590	name	chapter3.pdf	string
591	fileStage	2	int
591	sourceSubmissionFileId	\N	string
591	submissionFileId	134	int
591	fileId	74	int
591	submissionId	17	int
591	originalFileName	chapter3.pdf	string
591	username	msmith	string
592	fileStage	2	int
592	sourceSubmissionFileId	\N	string
592	submissionFileId	134	int
592	fileId	74	int
592	submissionId	17	int
592	username	msmith	string
592	originalFileName	chapter3.pdf	string
592	name	chapter3.pdf	string
593	fileStage	2	int
593	sourceSubmissionFileId	\N	string
593	submissionFileId	135	int
593	fileId	75	int
593	submissionId	17	int
593	originalFileName	chapter4.pdf	string
593	username	msmith	string
594	fileStage	2	int
594	submissionFileId	135	int
594	fileId	75	int
594	submissionId	17	int
594	username	msmith	string
594	name	chapter4.pdf	string
595	fileStage	2	int
595	sourceSubmissionFileId	\N	string
595	submissionFileId	135	int
595	fileId	75	int
595	submissionId	17	int
595	originalFileName	chapter4.pdf	string
595	username	msmith	string
596	fileStage	2	int
596	sourceSubmissionFileId	\N	string
596	submissionFileId	135	int
596	fileId	75	int
596	submissionId	17	int
596	username	msmith	string
596	originalFileName	chapter4.pdf	string
596	name	chapter4.pdf	string
598	editorId	3	int
598	editorName	Daniel Barnes	string
598	submissionId	17	int
598	decision	1	int
599	fileStage	19	int
599	sourceSubmissionFileId	135	int
599	submissionFileId	136	int
599	fileId	75	int
599	submissionId	17	int
599	originalFileName	chapter4.pdf	string
599	username	dbarnes	string
600	fileStage	19	int
600	submissionFileId	136	int
600	fileId	75	int
600	submissionId	17	int
600	username	dbarnes	string
600	name	chapter4.pdf	string
601	fileStage	19	int
601	sourceSubmissionFileId	134	int
601	submissionFileId	137	int
601	fileId	74	int
601	submissionId	17	int
601	originalFileName	chapter3.pdf	string
601	username	dbarnes	string
602	fileStage	19	int
602	submissionFileId	137	int
602	fileId	74	int
602	submissionId	17	int
602	username	dbarnes	string
602	name	chapter3.pdf	string
603	fileStage	19	int
603	sourceSubmissionFileId	133	int
603	submissionFileId	138	int
603	fileId	73	int
603	submissionId	17	int
603	originalFileName	chapter2.pdf	string
603	username	dbarnes	string
604	fileStage	19	int
604	submissionFileId	138	int
604	fileId	73	int
604	submissionId	17	int
604	username	dbarnes	string
604	name	chapter2.pdf	string
605	fileStage	19	int
605	sourceSubmissionFileId	132	int
605	submissionFileId	139	int
605	fileId	72	int
605	submissionId	17	int
605	originalFileName	chapter1.pdf	string
605	username	dbarnes	string
606	fileStage	19	int
606	submissionFileId	139	int
606	fileId	72	int
606	submissionId	17	int
606	username	dbarnes	string
606	name	chapter1.pdf	string
607	fileStage	19	int
607	sourceSubmissionFileId	131	int
607	submissionFileId	140	int
607	fileId	71	int
607	submissionId	17	int
607	originalFileName	introduction.pdf	string
607	username	dbarnes	string
608	fileStage	19	int
608	submissionFileId	140	int
608	fileId	71	int
608	submissionId	17	int
608	username	dbarnes	string
608	name	introduction.pdf	string
609	fileStage	19	int
609	sourceSubmissionFileId	130	int
609	submissionFileId	141	int
609	fileId	70	int
609	submissionId	17	int
609	originalFileName	preface.pdf	string
609	username	dbarnes	string
610	fileStage	19	int
610	submissionFileId	141	int
610	fileId	70	int
610	submissionId	17	int
610	username	dbarnes	string
610	name	preface.pdf	string
611	reviewAssignmentId	24	int
611	reviewerName	Julie Janssen	string
611	submissionId	17	int
611	stageId	2	int
611	round	1	int
612	reviewAssignmentId	25	int
612	reviewerName	Paul Hudson	string
612	submissionId	17	int
612	stageId	2	int
612	round	1	int
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.features (submission_id, assoc_type, assoc_id, seq) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.files (file_id, path, mimetype) FROM stdin;
1	presses/1/monographs/1/64078b491cf7a.pdf	application/pdf
2	presses/1/monographs/1/64078b4a667ef.pdf	application/pdf
3	presses/1/monographs/1/64078b4baf14f.pdf	application/pdf
4	presses/1/monographs/2/64078ba21c21e.pdf	application/pdf
5	presses/1/monographs/2/64078ba3919e0.pdf	application/pdf
6	presses/1/monographs/2/64078ba4d5e8b.pdf	application/pdf
7	presses/1/monographs/2/64078ba623524.pdf	application/pdf
9	presses/1/monographs/3/64078c5f22e77.pdf	application/pdf
10	presses/1/monographs/3/64078c604e2d8.pdf	application/pdf
11	presses/1/monographs/3/64078c6194626.pdf	application/pdf
12	presses/1/monographs/3/64078c62d0f9a.pdf	application/pdf
13	presses/1/monographs/3/64078c6419f5c.pdf	application/pdf
14	presses/1/monographs/4/64078c980a158.pdf	application/pdf
15	presses/1/monographs/4/64078c99369fb.pdf	application/pdf
16	presses/1/monographs/4/64078c9a68f7c.pdf	application/pdf
17	presses/1/monographs/4/64078c9ba1469.pdf	application/pdf
18	presses/1/monographs/5/64078d222290d.pdf	application/pdf
19	presses/1/monographs/5/64078d2355711.pdf	application/pdf
20	presses/1/monographs/5/64078d249857e.pdf	application/pdf
21	presses/1/monographs/5/64078d25ca603.pdf	application/pdf
22	presses/1/monographs/5/64078d270b7f9.pdf	application/pdf
23	presses/1/monographs/5/64078d284425b.pdf	application/pdf
24	presses/1/monographs/6/64078df6929b2.pdf	application/pdf
25	presses/1/monographs/6/64078df7b99f2.pdf	application/pdf
26	presses/1/monographs/6/64078df8e50cd.pdf	application/pdf
27	presses/1/monographs/6/64078dfa35ae9.pdf	application/pdf
28	presses/1/monographs/7/64078e6d91817.pdf	application/pdf
29	presses/1/monographs/7/64078e6ebeedd.pdf	application/pdf
30	presses/1/monographs/7/64078e6ff1636.pdf	application/pdf
31	presses/1/monographs/7/64078e7134d18.pdf	application/pdf
32	presses/1/monographs/7/64078e7294a38.pdf	application/pdf
33	presses/1/monographs/8/64078ed9ef88b.pdf	application/pdf
34	presses/1/monographs/9/64078ee8403c5.pdf	application/pdf
35	presses/1/monographs/9/64078ee97125f.pdf	application/pdf
36	presses/1/monographs/9/64078eeaa085e.pdf	application/pdf
37	presses/1/monographs/9/64078eebd5be6.pdf	application/pdf
38	presses/1/monographs/9/64078eed4164d.pdf	application/pdf
39	presses/1/monographs/10/64078f3b3cf16.pdf	application/pdf
40	presses/1/monographs/10/64078f3c69a9b.pdf	application/pdf
41	presses/1/monographs/10/64078f3d9fe94.pdf	application/pdf
42	presses/1/monographs/10/64078f3eddfa5.pdf	application/pdf
43	presses/1/monographs/10/64078f4051eeb.pdf	application/pdf
44	presses/1/monographs/10/64078f4192eee.pdf	application/pdf
45	presses/1/monographs/10/64078f42e2e9d.pdf	application/pdf
46	presses/1/monographs/10/64078f44410e9.pdf	application/pdf
47	presses/1/monographs/10/64078f4591e7c.pdf	application/pdf
48	presses/1/monographs/11/64078fa6b4c08.pdf	application/pdf
49	presses/1/monographs/11/64078fa7e6838.pdf	application/pdf
50	presses/1/monographs/12/64079026bc8e3.pdf	application/pdf
51	presses/1/monographs/12/64079027e2277.pdf	application/pdf
52	presses/1/monographs/12/6407902926251.pdf	application/pdf
53	presses/1/monographs/13/6407908a0ba27.pdf	application/pdf
54	presses/1/monographs/13/6407908b35443.pdf	application/pdf
55	presses/1/monographs/13/6407908c772e6.pdf	application/pdf
56	presses/1/monographs/14/64079125d1e1c.pdf	application/pdf
57	presses/1/monographs/14/640791270fe28.pdf	application/pdf
58	presses/1/monographs/14/64079128481e3.pdf	application/pdf
59	presses/1/monographs/14/640791297a7c0.pdf	application/pdf
60	presses/1/monographs/14/6407912ad7493.pdf	application/pdf
61	presses/1/monographs/14/6407912c106a4.pdf	application/pdf
62	presses/1/monographs/15/640791f65fce6.pdf	application/pdf
63	presses/1/monographs/15/640791f7916f4.pdf	application/pdf
64	presses/1/monographs/15/640791f8c6df2.pdf	application/pdf
65	presses/1/monographs/16/640792329179d.pdf	application/pdf
66	presses/1/monographs/16/64079233bfca4.pdf	application/pdf
67	presses/1/monographs/16/64079235061d6.pdf	application/pdf
68	presses/1/monographs/16/6407923635ea2.pdf	application/pdf
69	presses/1/monographs/16/6407923796e2e.pdf	application/pdf
70	presses/1/monographs/17/640792a976db1.pdf	application/pdf
71	presses/1/monographs/17/640792aaa6498.pdf	application/pdf
72	presses/1/monographs/17/640792abde92a.pdf	application/pdf
73	presses/1/monographs/17/640792ad2583d.pdf	application/pdf
74	presses/1/monographs/17/640792ae7763c.pdf	application/pdf
75	presses/1/monographs/17/640792afbb49f.pdf	application/pdf
\.


--
-- Name: files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.files_file_id_seq', 75, true);


--
-- Data for Name: filter_groups; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.filter_groups (filter_group_id, symbolic, display_name, description, input_type, output_type) FROM stdin;
1	publicationFormat=>dc11	plugins.metadata.dc11.publicationFormatAdapter.displayName	plugins.metadata.dc11.publicationFormatAdapter.description	class::classes.publicationFormat.PublicationFormat	metadata::APP\\plugins\\metadata\\dc11\\schema\\Dc11Schema(PUBLICATION_FORMAT)
2	user=>user-xml	plugins.importexport.users.displayName	plugins.importexport.users.description	class::lib.pkp.classes.user.User[]	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)
3	user-xml=>user	plugins.importexport.users.displayName	plugins.importexport.users.description	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)	class::classes.users.User[]
4	usergroup=>user-xml	plugins.importexport.users.displayName	plugins.importexport.users.description	class::lib.pkp.classes.security.UserGroup[]	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)
5	user-xml=>usergroup	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)	class::lib.pkp.classes.security.UserGroup[]
6	monographs=>onix30-xml	plugins.importexport.onix30.displayName	plugins.importexport.onix30.description	class::classes.submission.Submission[]	xml::schema(plugins/importexport/onix30/ONIX_BookProduct_3.0_reference.xsd)
7	monograph=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.submission.Submission[]	xml::schema(plugins/importexport/native/native.xsd)
8	native-xml=>monograph	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.submission.Submission[]
9	author=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.author.Author[]	xml::schema(plugins/importexport/native/native.xsd)
10	native-xml=>author	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.author.Author[]
11	publication-format=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.publicationFormat.PublicationFormat	xml::schema(plugins/importexport/native/native.xsd)
12	native-xml=>PublicationFormat	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.publicationFormat.PublicationFormat[]
13	SubmissionFile=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::lib.pkp.classes.submissionFile.SubmissionFile	xml::schema(plugins/importexport/native/native.xsd)
14	native-xml=>SubmissionFile	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::lib.pkp.classes.submissionFile.SubmissionFile[]
15	monograph=>onix30-xml	plugins.importexport.onix30.displayName	plugins.importexport.onix30.description	class::classes.submission.Submission	xml::schema(plugins/importexport/native/ONIX_BookProduct_3.0_reference_notstrict.xsd)
16	publication=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.publication.Publication	xml::schema(plugins/importexport/native/native.xsd)
17	native-xml=>Publication	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.publication.Publication[]
18	chapter=>native-xml	plugins.importexport.native.displayName	plugins.importexport.native.description	class::classes.monograph.Chapter[]	xml::schema(plugins/importexport/native/native.xsd)
19	native-xml=>chapter	plugins.importexport.native.displayName	plugins.importexport.native.description	xml::schema(plugins/importexport/native/native.xsd)	class::classes.monograph.Chapter[]
\.


--
-- Name: filter_groups_filter_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.filter_groups_filter_group_id_seq', 19, true);


--
-- Data for Name: filter_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.filter_settings (filter_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: filters; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.filters (filter_id, filter_group_id, context_id, display_name, class_name, is_template, parent_filter_id, seq) FROM stdin;
1	1	0	Extract metadata from a(n) PublicationFormat	APP\\plugins\\metadata\\dc11\\filter\\Dc11SchemaPublicationFormatAdapter	0	0	0
2	2	0	User XML user export	PKP\\plugins\\importexport\\users\\filter\\PKPUserUserXmlFilter	0	0	0
3	3	0	User XML user import	PKP\\plugins\\importexport\\users\\filter\\UserXmlPKPUserFilter	0	0	0
4	4	0	Native XML user group export	PKP\\plugins\\importexport\\users\\filter\\UserGroupNativeXmlFilter	0	0	0
5	5	0	Native XML user group import	PKP\\plugins\\importexport\\users\\filter\\NativeXmlUserGroupFilter	0	0	0
6	6	0	ONIX 3.0 XML monograph export	plugins.importexport.onix30.filter.MonographONIX30XmlFilter	0	0	0
7	7	0	Native XML submission export	APP\\plugins\\importexport\\native\\filter\\MonographNativeXmlFilter	0	0	0
8	8	0	Native XML submission import	APP\\plugins\\importexport\\native\\filter\\NativeXmlMonographFilter	0	0	0
9	9	0	Native XML author export	APP\\plugins\\importexport\\native\\filter\\AuthorNativeXmlFilter	0	0	0
10	10	0	Native XML author import	APP\\plugins\\importexport\\native\\filter\\NativeXmlAuthorFilter	0	0	0
11	11	0	Native XML representation export	APP\\plugins\\importexport\\native\\filter\\PublicationFormatNativeXmlFilter	0	0	0
12	12	0	Native XML representation import	APP\\plugins\\importexport\\native\\filter\\NativeXmlPublicationFormatFilter	0	0	0
13	14	0	Native XML submission file import	APP\\plugins\\importexport\\native\\filter\\NativeXmlMonographFileFilter	0	0	0
14	13	0	Native XML submission file export	PKP\\plugins\\importexport\\native\\filter\\SubmissionFileNativeXmlFilter	0	0	0
15	15	0	ONIX 3.0 XML monograph export	plugins.importexport.onix30.filter.MonographONIX30XmlFilter	0	0	0
16	16	0	Native XML Publication export	APP\\plugins\\importexport\\native\\filter\\PublicationNativeXmlFilter	0	0	0
17	17	0	Native XML publication import	APP\\plugins\\importexport\\native\\filter\\NativeXmlPublicationFilter	0	0	0
18	18	0	Native XML chapter export	APP\\plugins\\importexport\\native\\filter\\ChapterNativeXmlFilter	0	0	0
19	19	0	Native XML Chapter import	APP\\plugins\\importexport\\native\\filter\\NativeXmlChapterFilter	0	0	0
\.


--
-- Name: filters_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.filters_filter_id_seq', 19, true);


--
-- Data for Name: genre_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.genre_settings (genre_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	name	Appendix	string
1	fr_CA	name	Annexe	string
2	en	name	Bibliography	string
2	fr_CA	name	Bibliographie	string
3	en	name	Book Manuscript	string
3	fr_CA	name	Manuscrit de livre	string
4	en	name	Chapter Manuscript	string
4	fr_CA	name	Manuscrit de chapitre	string
5	en	name	Glossary	string
5	fr_CA	name	Glossaire	string
6	en	name	Index	string
6	fr_CA	name	Index	string
7	en	name	Preface	string
7	fr_CA	name	Préface	string
8	en	name	Prospectus	string
8	fr_CA	name	Prospectus	string
9	en	name	Table	string
9	fr_CA	name	Tableau	string
10	en	name	Figure	string
10	fr_CA	name	Figure	string
11	en	name	Photo	string
11	fr_CA	name	Photographie	string
12	en	name	Illustration	string
12	fr_CA	name	Illustration	string
14	en	name	Image	string
14	fr_CA	name	Image	string
15	en	name	HTML Stylesheet	string
15	fr_CA	name	Feuille de style HTML	string
13	en	name	Other	string
13	fr_CA	name	Autre	string
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.genres (genre_id, context_id, seq, enabled, category, dependent, supplementary, required, entry_key) FROM stdin;
1	1	0	1	1	0	1	0	APPENDIX
2	1	1	1	1	0	1	0	BIBLIOGRAPHY
3	1	2	1	1	0	0	1	MANUSCRIPT
4	1	3	1	1	0	0	0	CHAPTER
5	1	4	1	1	0	1	0	GLOSSARY
6	1	5	1	1	0	1	0	INDEX
7	1	6	1	1	0	1	0	PREFACE
8	1	7	1	3	0	1	0	PROSPECTUS
9	1	8	1	2	0	1	0	TABLE
10	1	9	1	2	0	1	0	FIGURE
11	1	10	1	2	0	1	0	PHOTO
12	1	11	1	2	0	1	0	ILLUSTRATION
14	1	13	1	2	1	0	0	IMAGE
15	1	14	1	1	1	0	0	STYLE
13	1	15	1	3	0	1	0	OTHER
\.


--
-- Name: genres_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.genres_genre_id_seq', 15, true);


--
-- Data for Name: identification_codes; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.identification_codes (identification_code_id, publication_format_id, code, value) FROM stdin;
1	1	02	951-98548-9-4
2	1	15	978-951-98548-9-2
\.


--
-- Name: identification_codes_identification_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.identification_codes_identification_code_id_seq', 2, true);


--
-- Data for Name: institution_ip; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.institution_ip (institution_ip_id, institution_id, ip_string, ip_start, ip_end) FROM stdin;
\.


--
-- Name: institution_ip_institution_ip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.institution_ip_institution_ip_id_seq', 1, false);


--
-- Data for Name: institution_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.institution_settings (institution_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: institutions; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.institutions (institution_id, context_id, ror, deleted_at) FROM stdin;
\.


--
-- Name: institutions_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.institutions_institution_id_seq', 1, false);


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
98a200dc-5d31-4845-ac50-2515fc7c51fa		0	0	0	[]	YTowOnt9	\N	1678215665	\N
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.jobs_id_seq', 4, true);


--
-- Data for Name: library_file_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.library_file_settings (file_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: library_files; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.library_files (file_id, context_id, file_name, original_file_name, file_type, file_size, type, date_uploaded, date_modified, submission_id, public_access) FROM stdin;
\.


--
-- Name: library_files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.library_files_file_id_seq', 1, false);


--
-- Data for Name: markets; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.markets (market_id, publication_format_id, countries_included, countries_excluded, regions_included, regions_excluded, market_date_role, market_date_format, market_date, price, discount, price_type_code, currency_code, tax_rate_code, tax_type_code, agent_id, supplier_id) FROM stdin;
\.


--
-- Name: markets_market_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.markets_market_id_seq', 1, false);


--
-- Data for Name: metrics_context; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_context (load_id, context_id, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_daily; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_counter_submission_daily (load_id, context_id, submission_id, date, metric_book_investigations, metric_book_investigations_unique, metric_book_requests, metric_book_requests_unique, metric_chapter_investigations, metric_chapter_investigations_unique, metric_chapter_requests, metric_chapter_requests_unique, metric_title_investigations_unique, metric_title_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_institution_daily; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_counter_submission_institution_daily (load_id, context_id, submission_id, institution_id, date, metric_book_investigations, metric_book_investigations_unique, metric_book_requests, metric_book_requests_unique, metric_chapter_investigations, metric_chapter_investigations_unique, metric_chapter_requests, metric_chapter_requests_unique, metric_title_investigations_unique, metric_title_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_institution_monthly; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_counter_submission_institution_monthly (context_id, submission_id, institution_id, month, metric_book_investigations, metric_book_investigations_unique, metric_book_requests, metric_book_requests_unique, metric_chapter_investigations, metric_chapter_investigations_unique, metric_chapter_requests, metric_chapter_requests_unique, metric_title_investigations_unique, metric_title_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_counter_submission_monthly; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_counter_submission_monthly (context_id, submission_id, month, metric_book_investigations, metric_book_investigations_unique, metric_book_requests, metric_book_requests_unique, metric_chapter_investigations, metric_chapter_investigations_unique, metric_chapter_requests, metric_chapter_requests_unique, metric_title_investigations_unique, metric_title_requests_unique) FROM stdin;
\.


--
-- Data for Name: metrics_series; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_series (load_id, context_id, series_id, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_submission; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_submission (load_id, context_id, submission_id, chapter_id, representation_id, submission_file_id, file_type, assoc_type, date, metric) FROM stdin;
\.


--
-- Data for Name: metrics_submission_geo_daily; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_submission_geo_daily (load_id, context_id, submission_id, country, region, city, date, metric, metric_unique) FROM stdin;
\.


--
-- Data for Name: metrics_submission_geo_monthly; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.metrics_submission_geo_monthly (context_id, submission_id, country, region, city, month, metric, metric_unique) FROM stdin;
\.


--
-- Name: navigation_menu_item_assignme_navigation_menu_item_assignme_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.navigation_menu_item_assignme_navigation_menu_item_assignme_seq', 22, true);


--
-- Data for Name: navigation_menu_item_assignment_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.navigation_menu_item_assignment_settings (navigation_menu_item_assignment_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: navigation_menu_item_assignments; Type: TABLE DATA; Schema: public; Owner: omp-ci
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
-- Data for Name: navigation_menu_item_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
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
15		titleLocaleKey	navigation.catalog	string
16		titleLocaleKey	manager.announcements	string
17		titleLocaleKey	navigation.about	string
18		titleLocaleKey	about.aboutContext	string
19		titleLocaleKey	about.submissions	string
20		titleLocaleKey	about.editorialTeam	string
21		titleLocaleKey	manager.setup.privacyStatement	string
22		titleLocaleKey	about.contact	string
23		titleLocaleKey	common.search	string
\.


--
-- Data for Name: navigation_menu_items; Type: TABLE DATA; Schema: public; Owner: omp-ci
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
15	1	\N	NMI_TYPE_CATALOG
16	1	\N	NMI_TYPE_ANNOUNCEMENTS
17	1	\N	NMI_TYPE_ABOUT
18	1	\N	NMI_TYPE_ABOUT
19	1	\N	NMI_TYPE_SUBMISSIONS
20	1	\N	NMI_TYPE_EDITORIAL_TEAM
21	1	\N	NMI_TYPE_PRIVACY
22	1	\N	NMI_TYPE_CONTACT
23	1	\N	NMI_TYPE_SEARCH
\.


--
-- Name: navigation_menu_items_navigation_menu_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.navigation_menu_items_navigation_menu_item_id_seq', 23, true);


--
-- Data for Name: navigation_menus; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.navigation_menus (navigation_menu_id, context_id, area_name, title) FROM stdin;
1	0	user	User Navigation Menu
2	1	user	User Navigation Menu
3	1	primary	Primary Navigation Menu
\.


--
-- Name: navigation_menus_navigation_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.navigation_menus_navigation_menu_id_seq', 3, true);


--
-- Data for Name: new_releases; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.new_releases (submission_id, assoc_type, assoc_id) FROM stdin;
\.


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.notes (note_id, assoc_type, assoc_id, user_id, date_created, date_modified, title, contents) FROM stdin;
1	1048586	1	6	2023-03-07 19:19:44	2023-03-07 19:19:44	Editor Recommendation	<p>Dear Daniel Barnes, David Buskins,</p><p>After considering the reviewers' feedback, I would like to make the following recommendation regarding the submission The Information Literacy User’s Guide.</p><p>My recommendation is: Accept Submission.</p><p>Please visit the submission's <a href="http://localhost/index.php/publicknowledge/workflow/access/6">editorial workflow</a> to act on this recommendation.</p><p>Please feel free to contact me with any questions.</p><p>Kind regards,</p><p>Minoti Inoue</p>
\.


--
-- Name: notes_note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.notes_note_id_seq', 1, true);


--
-- Data for Name: notification_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.notification_settings (notification_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: notification_subscription_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.notification_subscription_settings (setting_id, setting_name, setting_value, user_id, context, setting_type) FROM stdin;
1	blocked_emailed_notification	8	19	1	int
2	blocked_emailed_notification	8	20	1	int
3	blocked_emailed_notification	8	21	1	int
4	blocked_emailed_notification	8	22	1	int
5	blocked_emailed_notification	8	23	1	int
6	blocked_emailed_notification	8	24	1	int
7	blocked_emailed_notification	8	25	1	int
8	blocked_emailed_notification	8	26	1	int
9	blocked_emailed_notification	8	27	1	int
10	blocked_emailed_notification	8	28	1	int
11	blocked_emailed_notification	8	29	1	int
12	blocked_emailed_notification	8	30	1	int
13	blocked_emailed_notification	8	31	1	int
14	blocked_emailed_notification	8	32	1	int
15	blocked_emailed_notification	8	33	1	int
16	blocked_emailed_notification	8	34	1	int
\.


--
-- Name: notification_subscription_settings_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.notification_subscription_settings_setting_id_seq', 16, true);


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.notifications (notification_id, context_id, user_id, level, type, date_created, date_read, assoc_type, assoc_id) FROM stdin;
78	1	0	2	16777236	2023-03-07 19:13:14	2023-03-07 19:13:20	523	3
80	1	9	3	16777227	2023-03-07 19:13:26	\N	517	4
188	1	26	2	16777229	2023-03-07 19:23:18	\N	1048585	9
82	1	0	2	16777236	2023-03-07 19:13:32	2023-03-07 19:13:38	523	4
84	1	11	3	16777227	2023-03-07 19:13:44	\N	517	5
102	1	0	3	16777220	2023-03-07 19:15:36	\N	1048585	5
88	1	22	2	16777235	2023-03-07 19:14:09	\N	1048585	4
103	1	0	3	16777222	2023-03-07 19:15:36	\N	1048585	5
104	1	0	3	16777223	2023-03-07 19:15:36	\N	1048585	5
105	1	0	3	16777224	2023-03-07 19:15:36	\N	1048585	5
106	1	1	3	16777247	2023-03-07 19:15:36	\N	1048585	5
14	1	0	3	16777220	2023-03-07 19:07:12	\N	1048585	1
15	1	0	3	16777222	2023-03-07 19:07:12	\N	1048585	1
16	1	0	3	16777223	2023-03-07 19:07:12	\N	1048585	1
17	1	0	3	16777224	2023-03-07 19:07:12	\N	1048585	1
18	1	1	3	16777247	2023-03-07 19:07:12	\N	1048585	1
19	1	2	3	16777247	2023-03-07 19:07:12	\N	1048585	1
20	1	3	3	16777247	2023-03-07 19:07:12	\N	1048585	1
107	1	2	3	16777247	2023-03-07 19:15:36	\N	1048585	5
21	1	0	2	16777236	2023-03-07 19:07:26	2023-03-07 19:07:31	523	1
22	1	12	3	16777227	2023-03-07 19:07:36	\N	517	1
108	1	3	3	16777247	2023-03-07 19:15:36	\N	1048585	5
24	1	19	2	16777230	2023-03-07 19:07:42	\N	1048585	1
56	1	0	3	16777220	2023-03-07 19:12:09	\N	1048585	3
109	1	0	2	16777236	2023-03-07 19:15:54	2023-03-07 19:16:01	523	5
57	1	0	3	16777222	2023-03-07 19:12:09	\N	1048585	3
58	1	0	3	16777223	2023-03-07 19:12:09	\N	1048585	3
111	1	8	3	16777227	2023-03-07 19:16:07	\N	517	6
59	1	0	3	16777224	2023-03-07 19:12:09	\N	1048585	3
60	1	1	3	16777247	2023-03-07 19:12:09	\N	1048585	3
61	1	2	3	16777247	2023-03-07 19:12:09	\N	1048585	3
34	1	0	3	16777220	2023-03-07 19:10:17	\N	1048585	2
35	1	0	3	16777222	2023-03-07 19:10:17	\N	1048585	2
36	1	0	3	16777223	2023-03-07 19:10:17	\N	1048585	2
37	1	0	3	16777224	2023-03-07 19:10:17	\N	1048585	2
38	1	1	3	16777247	2023-03-07 19:10:18	\N	1048585	2
39	1	2	3	16777247	2023-03-07 19:10:18	\N	1048585	2
40	1	3	3	16777247	2023-03-07 19:10:18	\N	1048585	2
41	1	0	2	16777236	2023-03-07 19:10:46	2023-03-07 19:10:55	523	2
42	1	11	3	16777227	2023-03-07 19:11:02	\N	517	2
62	1	3	3	16777247	2023-03-07 19:12:09	\N	1048585	3
44	1	12	3	16777227	2023-03-07 19:11:12	\N	517	3
113	1	0	2	16777236	2023-03-07 19:16:14	2023-03-07 19:16:19	523	6
115	1	12	3	16777227	2023-03-07 19:16:26	\N	517	7
139	1	24	2	16777229	2023-03-07 19:19:04	\N	1048585	6
119	1	23	2	16777235	2023-03-07 19:16:53	\N	1048585	5
138	1	0	2	16777236	2023-03-07 19:19:04	2023-03-07 19:19:11	523	7
122	1	0	2	16777246	2023-03-07 19:17:38	2023-03-07 19:17:48	1048585	5
71	1	0	3	16777220	2023-03-07 19:12:58	\N	1048585	4
72	1	0	3	16777222	2023-03-07 19:12:58	\N	1048585	4
73	1	0	3	16777223	2023-03-07 19:12:58	\N	1048585	4
74	1	0	3	16777224	2023-03-07 19:12:58	\N	1048585	4
75	1	1	3	16777247	2023-03-07 19:12:58	\N	1048585	4
76	1	2	3	16777247	2023-03-07 19:12:58	\N	1048585	4
77	1	3	3	16777247	2023-03-07 19:12:58	\N	1048585	4
143	1	3	3	16777249	2023-03-07 19:19:44	\N	1048586	1
144	1	4	3	16777249	2023-03-07 19:19:44	\N	1048586	1
155	1	0	3	16777220	2023-03-07 19:20:59	\N	1048585	7
156	1	0	3	16777222	2023-03-07 19:20:59	\N	1048585	7
157	1	0	3	16777223	2023-03-07 19:20:59	\N	1048585	7
158	1	0	3	16777224	2023-03-07 19:20:59	\N	1048585	7
165	1	25	2	16777230	2023-03-07 19:21:36	\N	1048585	7
159	1	1	3	16777247	2023-03-07 19:20:59	\N	1048585	7
160	1	2	3	16777247	2023-03-07 19:20:59	\N	1048585	7
161	1	3	3	16777247	2023-03-07 19:20:59	\N	1048585	7
162	1	0	2	16777236	2023-03-07 19:21:17	2023-03-07 19:21:23	523	8
163	1	10	3	16777227	2023-03-07 19:21:29	\N	517	8
180	1	0	3	16777220	2023-03-07 19:23:01	\N	1048585	9
167	1	1	3	16777247	2023-03-07 19:22:03	\N	1048585	8
168	1	2	3	16777247	2023-03-07 19:22:03	\N	1048585	8
169	1	3	3	16777247	2023-03-07 19:22:03	\N	1048585	8
181	1	0	3	16777222	2023-03-07 19:23:01	\N	1048585	9
182	1	0	3	16777223	2023-03-07 19:23:01	\N	1048585	9
183	1	0	3	16777224	2023-03-07 19:23:01	\N	1048585	9
184	1	1	3	16777247	2023-03-07 19:23:01	\N	1048585	9
185	1	2	3	16777247	2023-03-07 19:23:01	\N	1048585	9
186	1	3	3	16777247	2023-03-07 19:23:01	\N	1048585	9
187	1	0	2	16777236	2023-03-07 19:23:18	2023-03-07 19:23:25	523	9
235	1	28	2	16777230	2023-03-07 19:27:16	\N	1048585	11
336	1	0	3	16777220	2023-03-07 19:36:59	\N	1048585	16
337	1	0	3	16777222	2023-03-07 19:36:59	\N	1048585	16
270	1	0	2	16777236	2023-03-07 19:29:56	2023-03-07 19:30:01	523	13
338	1	0	3	16777223	2023-03-07 19:36:59	\N	1048585	16
339	1	0	3	16777224	2023-03-07 19:36:59	\N	1048585	16
340	1	1	3	16777247	2023-03-07 19:36:59	\N	1048585	16
272	1	8	3	16777227	2023-03-07 19:30:07	\N	517	15
341	1	2	3	16777247	2023-03-07 19:36:59	\N	1048585	16
342	1	3	3	16777247	2023-03-07 19:36:59	\N	1048585	16
343	1	0	2	16777236	2023-03-07 19:37:19	2023-03-07 19:37:25	523	18
242	1	0	3	16777220	2023-03-07 19:28:01	\N	1048585	12
346	1	11	3	16777227	2023-03-07 19:37:39	\N	517	22
243	1	0	3	16777222	2023-03-07 19:28:01	\N	1048585	12
244	1	0	3	16777223	2023-03-07 19:28:01	\N	1048585	12
348	1	12	3	16777227	2023-03-07 19:37:47	\N	517	23
245	1	0	3	16777224	2023-03-07 19:28:01	\N	1048585	12
246	1	1	3	16777247	2023-03-07 19:28:01	\N	1048585	12
207	1	0	3	16777220	2023-03-07 19:25:11	\N	1048585	10
208	1	0	3	16777222	2023-03-07 19:25:11	\N	1048585	10
209	1	0	3	16777223	2023-03-07 19:25:11	\N	1048585	10
210	1	0	3	16777224	2023-03-07 19:25:11	\N	1048585	10
211	1	1	3	16777247	2023-03-07 19:25:11	\N	1048585	10
212	1	2	3	16777247	2023-03-07 19:25:11	\N	1048585	10
213	1	3	3	16777247	2023-03-07 19:25:11	\N	1048585	10
247	1	2	3	16777247	2023-03-07 19:28:01	\N	1048585	12
248	1	3	3	16777247	2023-03-07 19:28:01	\N	1048585	12
291	1	0	3	16777220	2023-03-07 19:32:27	\N	1048585	14
218	1	0	3	16777220	2023-03-07 19:25:41	\N	1048585	11
219	1	0	3	16777222	2023-03-07 19:25:41	\N	1048585	11
220	1	0	3	16777223	2023-03-07 19:25:41	\N	1048585	11
221	1	0	3	16777224	2023-03-07 19:25:41	\N	1048585	11
222	1	1	3	16777247	2023-03-07 19:25:41	\N	1048585	11
223	1	2	3	16777247	2023-03-07 19:25:41	\N	1048585	11
224	1	3	3	16777247	2023-03-07 19:25:41	\N	1048585	11
250	1	29	2	16777229	2023-03-07 19:28:19	\N	1048585	12
225	1	0	2	16777236	2023-03-07 19:25:56	2023-03-07 19:26:01	523	10
227	1	9	3	16777227	2023-03-07 19:26:06	\N	517	9
249	1	0	2	16777236	2023-03-07 19:28:18	2023-03-07 19:28:24	523	12
229	1	0	2	16777236	2023-03-07 19:26:11	2023-03-07 19:26:16	523	11
251	1	7	3	16777227	2023-03-07 19:28:30	\N	517	12
362	1	0	3	16777220	2023-03-07 19:39:18	\N	1048585	17
363	1	0	3	16777222	2023-03-07 19:39:18	\N	1048585	17
364	1	0	3	16777223	2023-03-07 19:39:18	\N	1048585	17
365	1	0	3	16777224	2023-03-07 19:39:18	\N	1048585	17
274	1	0	2	16777236	2023-03-07 19:30:13	2023-03-07 19:30:19	523	14
255	1	9	3	16777227	2023-03-07 19:28:45	\N	517	14
292	1	0	3	16777222	2023-03-07 19:32:27	\N	1048585	14
278	1	11	3	16777227	2023-03-07 19:30:32	\N	517	17
293	1	0	3	16777223	2023-03-07 19:32:27	\N	1048585	14
263	1	0	3	16777220	2023-03-07 19:29:39	\N	1048585	13
264	1	0	3	16777222	2023-03-07 19:29:39	\N	1048585	13
265	1	0	3	16777223	2023-03-07 19:29:39	\N	1048585	13
266	1	0	3	16777224	2023-03-07 19:29:39	\N	1048585	13
267	1	1	3	16777247	2023-03-07 19:29:39	\N	1048585	13
268	1	2	3	16777247	2023-03-07 19:29:39	\N	1048585	13
269	1	3	3	16777247	2023-03-07 19:29:39	\N	1048585	13
294	1	0	3	16777224	2023-03-07 19:32:27	\N	1048585	14
295	1	1	3	16777247	2023-03-07 19:32:27	\N	1048585	14
282	1	30	2	16777230	2023-03-07 19:31:31	\N	1048585	13
296	1	2	3	16777247	2023-03-07 19:32:27	\N	1048585	14
297	1	3	3	16777247	2023-03-07 19:32:27	\N	1048585	14
311	1	0	2	16777246	2023-03-07 19:35:03	\N	1048585	14
298	1	0	2	16777236	2023-03-07 19:32:46	2023-03-07 19:32:53	523	15
300	1	7	3	16777227	2023-03-07 19:32:59	\N	517	19
302	1	0	2	16777236	2023-03-07 19:33:05	2023-03-07 19:33:10	523	16
304	1	11	3	16777227	2023-03-07 19:33:17	\N	517	20
308	1	31	2	16777235	2023-03-07 19:33:43	\N	1048585	14
325	1	0	2	16777236	2023-03-07 19:35:59	2023-03-07 19:36:04	523	17
318	1	0	3	16777220	2023-03-07 19:35:41	\N	1048585	15
319	1	0	3	16777222	2023-03-07 19:35:41	\N	1048585	15
320	1	0	3	16777223	2023-03-07 19:35:41	\N	1048585	15
321	1	0	3	16777224	2023-03-07 19:35:41	\N	1048585	15
322	1	1	3	16777247	2023-03-07 19:35:41	\N	1048585	15
323	1	2	3	16777247	2023-03-07 19:35:41	\N	1048585	15
324	1	3	3	16777247	2023-03-07 19:35:41	\N	1048585	15
366	1	1	3	16777247	2023-03-07 19:39:18	\N	1048585	17
367	1	2	3	16777247	2023-03-07 19:39:18	\N	1048585	17
368	1	3	3	16777247	2023-03-07 19:39:18	\N	1048585	17
370	1	34	2	16777229	2023-03-07 19:39:39	\N	1048585	17
369	1	0	2	16777236	2023-03-07 19:39:39	2023-03-07 19:39:46	523	19
371	1	7	3	16777227	2023-03-07 19:39:52	\N	517	24
373	1	8	3	16777227	2023-03-07 19:40:00	\N	517	25
\.


--
-- Name: notifications_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.notifications_notification_id_seq', 374, true);


--
-- Data for Name: oai_resumption_tokens; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.oai_resumption_tokens (token, expire, record_offset, params) FROM stdin;
\.


--
-- Data for Name: plugin_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.plugin_settings (plugin_name, context_id, setting_name, setting_value, setting_type) FROM stdin;
usageeventplugin	0	enabled	1	bool
usageeventplugin	0	uniqueSiteId		string
acronplugin	0	enabled	1	bool
acronplugin	0	crontab	[{"className":"PKP\\\\task\\\\ReviewReminder","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\PublishSubmissions","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\StatisticsReport","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\RemoveUnvalidatedExpiredUsers","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\UpdateIPGeoDB","frequency":{"day":"10"},"args":[]},{"className":"APP\\\\tasks\\\\UsageStatsLoader","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\EditorialReminders","frequency":{"day":"1"},"args":[]},{"className":"PKP\\\\task\\\\ProcessQueueJobs","frequency":{"hour":24},"args":[]},{"className":"PKP\\\\task\\\\RemoveFailedJobs","frequency":{"day":"1"},"args":[]}]	object
defaultthemeplugin	0	enabled	1	bool
tinymceplugin	0	enabled	1	bool
developedbyblockplugin	0	enabled	0	bool
developedbyblockplugin	0	seq	0	int
developedbyblockplugin	0	context	1	int
languagetoggleblockplugin	0	enabled	1	bool
languagetoggleblockplugin	0	seq	4	int
languagetoggleblockplugin	0	context	1	int
tinymceplugin	1	enabled	1	bool
defaultthemeplugin	1	enabled	1	bool
browseblockplugin	1	enabled	1	bool
browseblockplugin	1	seq	1	int
browseblockplugin	1	context	1	int
browseblockplugin	1	browseNewReleases	1	bool
browseblockplugin	1	browseCategories	1	bool
browseblockplugin	1	browseSeries	1	bool
developedbyblockplugin	1	enabled	0	bool
developedbyblockplugin	1	seq	0	int
developedbyblockplugin	1	context	1	int
languagetoggleblockplugin	1	enabled	1	bool
languagetoggleblockplugin	1	seq	4	int
languagetoggleblockplugin	1	context	1	int
informationblockplugin	1	enabled	1	bool
informationblockplugin	1	seq	7	int
informationblockplugin	1	context	1	int
googlescholarplugin	1	enabled	1	bool
dublincoremetaplugin	1	enabled	1	bool
pdfjsviewerplugin	1	enabled	1	bool
webfeedplugin	1	enabled	1	bool
webfeedplugin	1	displayPage	homepage	string
webfeedplugin	1	displayItems	1	bool
htmlmonographfileplugin	1	enabled	1	bool
defaultthemeplugin	1	typography	notoSans	string
defaultthemeplugin	1	useHomepageImageAsHeader	false	string
defaultthemeplugin	1	baseColour	#1E6292	string
defaultthemeplugin	1	showCatalogSeriesListing	false	string
defaultthemeplugin	1	displayStats	none	string
\.


--
-- Data for Name: press_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.press_settings (press_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	contributorsHelp	<p>Add details for all of the contributors to this submission. Contributors added here will be sent an email confirmation of the submission, as well as a copy of all editorial decisions recorded against this submission.</p><p>If a contributor can not be contacted by email, because they must remain anonymous or do not have an email account, please do not enter a fake email address. You can add information about this contributor in a message to the editor at a later step in the submission process.</p>	\N
1	fr_CA	detailsHelp	##default.submission.step.details##	\N
1		enableDois	1	\N
1		doiSuffixType	default	\N
1	en	forTheEditorsHelp	<p>Please provide the following details in order to help our editorial team manage your submission.</p><p>When entering metadata, provide entries that you think would be most helpful to the person managing your submission. This information can be changed before publication.</p>	\N
1		itemsPerPage	25	\N
1		keywords	request	\N
1	en	librarianInformation	We encourage research librarians to list this press among their library's electronic press holdings. As well, this open source publishing system is suitable for libraries to host for their faculty members to use with presses they are involved in editing (see <a href="https://pkp.sfu.ca/omp">Open Monograph Press</a>).	\N
1	fr_CA	librarianInformation	Nous encourageons les bibliothécaires de recherche à ajouter cette presse à la liste électronique des ressources documentaires de la bibliothèque. De plus, ce système d'édition à libre accès convient à toutes les bibliothèques et permet aux membres des facultés de l'utiliser pour les presses auxquelles ils contribuent à titre de rédacteur en chef. (voir <a href="http://pkp.sfu.ca/omp">Open Monograph Press</a>).	\N
1		numWeeksPerReview	4	\N
1	en	openAccessPolicy	This press provides immediate open access to its content on the principle that making research freely available to the public supports a greater global exchange of knowledge.	\N
1	fr_CA	openAccessPolicy	Cette presse offre un accès libre immédiat à son contenu en partant du principe que la recherche doit être accessible au grand public, car cela favorise un meilleur échange des connaissances à l'échelle mondiale.	\N
1	en	privacyStatement	<p>The names and email addresses entered in this press site will be used exclusively for the stated purposes of this press and will not be made available for any other purpose or to any other party.</p>	\N
1	fr_CA	authorGuidelines	##default.contextSettings.authorGuidelines##	\N
1	en	authorInformation	Interested in submitting to this press? We recommend that you review the <a href="http://localhost/index.php/publicknowledge/about">About the Press</a> page for the press' section policies and <a href="http://localhost/index.php/publicknowledge/about/submissions#authorGuidelines">Author Guidelines</a>. Authors need to <a href="http://localhost/index.php/publicknowledge/user/register">register</a> with the press prior to submitting, or if already registered can simply <a href="http://localhost/index.php/index/login">log in</a> and begin the 5 step process.	\N
1	fr_CA	authorInformation	Vous souhaitez soumettre une contribution à cette presse ? Nous vous recommandons de lire la page\n <a href="http://localhost/index.php/publicknowledge/about">À propos de cette presse</a> pour connaitre ses règlements et la page\n <a href="http://localhost/index.php/publicknowledge/about/submissions#authorGuidelines">Lignes directrices à l'intention des auteurs-es</a>. Les auteurs-es doivent <a href="http://localhost/index.php/publicknowledge/user/register">s'inscrire</a> auprès de la presse avant d'envoyer une soumission. Si vous êtes déjà inscrit-e, il suffit simplement <a href="http://localhost/index.php/index/login">d'ouvrir une session</a> pour débuter la procédure en 5 étapes.	\N
1	en	beginSubmissionHelp	<p>Thank you for submitting to the Public Knowledge Press. You will be asked to upload files, identify co-authors, and provide information such as the title and abstract.<p><p>Please read our <a href="http://localhost/index.php/publicknowledge/about/submissions" target="_blank">Submission Guidelines</a> if you have not done so already. When filling out the forms, provide as many details as possible in order to help our editors evaluate your work.</p><p>Once you begin, you can save your submission and come back to it later. You will be able to review and correct any information before you submit.</p>	\N
1	fr_CA	beginSubmissionHelp	##default.submission.step.beforeYouBegin##	\N
1		contactEmail	rvaca@mailinator.com	\N
1		contactName	Ramiro Vaca	\N
1	fr_CA	contributorsHelp	##default.submission.step.contributors##	\N
1		country	IS	\N
1		defaultReviewMode	2	\N
1	en	description	<p>Public Knowledge Press is a publisher dedicated to the subject of public access to science.</p>	\N
1	fr_CA	description	<p>Le Press de Public Knowledge est une presse sur le thème de l'accès du public à la science.</p>	\N
1	en	detailsHelp	<p>Please provide the following details to help us manage your submission in our system.</p>	\N
1		emailSignature	<br><br>—<br><p>This is an automated message from <a href="http://localhost/index.php/publicknowledge">Public Knowledge Press</a>.</p>	\N
1		registrationAgency		\N
1		disableSubmissions	0	\N
1	en	name	Public Knowledge Press	\N
1	fr_CA	name	Press de la connaissance du public	\N
1		notifyAllAuthors	1	\N
1		numPageLinks	10	\N
1		numWeeksPerResponse	4	\N
1		editorialStatsEmail	1	\N
1	fr_CA	forTheEditorsHelp	##default.submission.step.forTheEditors##	\N
1	en	reviewHelp	<p>Review the information you have entered before you complete your submission. You can change any of the details displayed here by clicking the edit button at the top of each section.</p><p>Once you complete your submission, a member of our editorial team will be assigned to review it. Please ensure the details you have entered here are as accurate as possible.</p>	\N
1		doiCreationTime	copyEditCreationTime	\N
1		paymentPluginName	ManualPayment	\N
1		doiVersioning	0	\N
1	en	acronym	JPK	\N
1	fr_CA	reviewHelp	##default.submission.step.review##	\N
1		submissionAcknowledgement	allAuthors	\N
1	fr_CA	submissionChecklist	##default.contextSettings.checklist##	\N
1	en	submissionChecklist	<p>All submissions must meet the following requirements.</p><ul><li>This submission meets the requirements outlined in the <a href="http://localhost/index.php/publicknowledge/about/submissions">Author Guidelines</a>.</li><li>This submission has not been previously published, nor is it before another press for consideration.</li><li>All references have been checked for accuracy and completeness.</li><li>All tables and figures have been numbered and labeled.</li><li>Permission has been obtained to publish all photos, datasets and other material provided with this submission.</li></ul>	\N
1		submitWithCategories	0	\N
1		supportedFormLocales	["en","fr_CA"]	\N
1		supportedLocales	["en","fr_CA"]	\N
1		supportedSubmissionLocales	["en","fr_CA"]	\N
1		themePluginPath	default	\N
1		type	enable	\N
1	en	uploadFilesHelp	<p>Provide any files our editorial team may need to evaluate your submission. In addition to the main work, you may wish to submit data sets, conflict of interest statements, or other supplementary files if these will be helpful for our editors.</p>	\N
1	fr_CA	uploadFilesHelp	##default.submission.step.uploadFiles##	\N
1		enableGeoUsageStats	disabled	\N
1		enableInstitutionUsageStats	0	\N
1	fr_CA	privacyStatement	<p>Les noms et adresses courriel saisis sur ce site de presse seront utilisés exclusivement pour les fins convenues de cette presse. Ils ne seront pas utilisés pour d'autres fins ou transmis à une tierce partie.</p>	\N
1	fr_CA	readerInformation	Nous encourageons les lecteurs à s'abonner au service d'avis de publication de cette presse. Utilisez le lien <a href="http://localhost/index.php/publicknowledge/user/register">d'inscription</a> situé en haut de la page d'accueil de la presse. Cette inscription permettra au lecteur de recevoir la table des matières de chaque nouvelle monographie de cette presse par courriel. Cette liste permet également à la presse d'affirmer qu'elle compte un certain nombre de lecteurs. Consultez <a href="http://localhost/index.php/publicknowledge/about/submissions#privacyStatement">l'énoncé de confidentialité </a> de la presse, lequel stipule que les noms et adresses courriel de ses lecteurs ne seront pas utilisés à d'autres fins.	\N
1	en	readerInformation	We encourage readers to sign up for the publishing notification service for this press. Use the <a href="http://localhost/index.php/publicknowledge/user/register">Register</a> link at the top of the homepage for the press. This registration will result in the reader receiving the Table of Contents by email for each new monograph of the press. This list also allows the press to claim a certain level of support or readership. See the press <a href="http://localhost/index.php/publicknowledge/about/submissions#privacyStatement">Privacy Statement</a> which assures readers that their name and email address will not be used for other purposes.	\N
1		isSushiApiPublic	1	\N
1		coverThumbnailsMaxWidth	106	\N
1		coverThumbnailsMaxHeight	100	\N
1		enabledDoiTypes	["publication"]	\N
1	en	customHeaders	<meta name="pkp" content="Test metatag.">	\N
1		mailingAddress	123 456th Street\nBurnaby, British Columbia\nCanada	\N
1	en	searchDescription	Public Knowledge Press is a publisher dedicated to the subject of public access to science.	\N
1		supportEmail	rvaca@mailinator.com	\N
1	en	authorGuidelines	<p>Authors are invited to make a submission to this press. Those submissions considered to be a good fit will be sent for peer review before determining whether they will be accepted or rejected.</p><p>Before making a submission, authors are responsible for obtaining permission to publish any material included with the submission, such as photos, documents and datasets. All authors identified on the submission must consent to be identified as an author. Where appropriate, research should be approved by an appropriate ethics committee in accordance with the legal requirements of the study's country.</p><p>An editor may desk reject a submission if it does not meet minimum standards of quality. Before submitting, please ensure that the scope and outline of the book are structured and articulated properly. The title should be concise and the abstract should be able to stand on its own. This will increase the likelihood of reviewers agreeing to review the book. When you're satisfied that your submission meets this standard, please follow the checklist below to prepare your submission.</p>	\N
1		supportName	Ramiro Vaca	\N
\.


--
-- Data for Name: presses; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.presses (press_id, path, seq, primary_locale, enabled) FROM stdin;
1	publicknowledge	1	en	1
\.


--
-- Name: presses_press_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.presses_press_id_seq', 1, true);


--
-- Data for Name: publication_categories; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.publication_categories (publication_id, category_id) FROM stdin;
\.


--
-- Data for Name: publication_dates; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.publication_dates (publication_date_id, publication_format_id, role, date_format, date) FROM stdin;
\.


--
-- Name: publication_dates_publication_date_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.publication_dates_publication_date_id_seq', 1, false);


--
-- Data for Name: publication_format_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.publication_format_settings (publication_format_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	name	PDF	string
1	fr_CA	name		string
2	en	name	PDF	string
2	fr_CA	name		string
3	en	name	PDF	string
3	fr_CA	name		string
\.


--
-- Data for Name: publication_formats; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.publication_formats (publication_format_id, publication_id, submission_id, physical_format, entry_key, seq, file_size, front_matter, back_matter, height, height_unit_code, width, width_unit_code, thickness, thickness_unit_code, weight, weight_unit_code, product_composition_code, product_form_detail_code, country_manufacture_code, imprint, product_availability_code, technical_protection_code, returnable_indicator_code, remote_url, url_path, is_approved, is_available, doi_id) FROM stdin;
1	4	\N	0	DA	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	https://file-examples-com.github.io/uploads/2017/10/file-sample_150kB.pdf		0	0	\N
2	5	\N	0	DA	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N			1	1	\N
3	14	\N	0	DA	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N			1	1	\N
\.


--
-- Name: publication_formats_publication_format_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.publication_formats_publication_format_id_seq', 3, true);


--
-- Data for Name: publication_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.publication_settings (publication_id, locale, setting_name, setting_value) FROM stdin;
1	en	abstract	The ABCs of Human Survival examines the effect of militant nationalism and the lawlessness of powerful states on the well-being of individuals and local communities―and the essential role of global citizenship within that dynamic. Based on the analysis of world events, Dr. Arthur Clark presents militant nationalism as a pathological pattern of thinking that threatens our security, while emphasizing effective democracy and international law as indispensable frameworks for human protection.
1		categoryIds	[]
1	en	title	The ABCs of Human Survival: A Paradigm for Global Citizenship
2	en	abstract	<p>The West and Beyond explores the state of Western Canadian history, showcasing the research interests of a new generation of scholars while charting new directions for the future and stimulating further interrogation of our past. This dynamic collection encourages dialogue among generations of historians of the West, and among practitioners of diverse approaches to the past. It also reflects a broad range of disciplinary and professional boundaries, offering new ways to understand the West.</p>
2		categoryIds	[]
2	en	title	The West and Beyond: New Perspectives on an Imagined Region
2	fr_CA	title	
3	en	abstract	Workplace injuries are common, avoidable, and unacceptable. The Political Economy of Workplace Injury in Canada reveals how employers and governments engage in ineffective injury prevention efforts, intervening only when necessary to maintain the standard legitimacy. Dr. Bob Barnetson sheds light on this faulty system, highlighting the way in which employers create dangerous work environments yet pour billions of dollars into compensation and treatment. Examining this dynamic clarifies the way in which production costs are passed on to workers in the form of workplace injuries.
3		categoryIds	[]
3	en	title	The Political Economy of Workplace Injury in Canada
4	en	abstract	What does Canadian popular culture say about the construction and negotiation of Canadian national identity? This third volume of How Canadians Communicate describes the negotiation of popular culture across terrains where national identity is built by producers and audiences, government and industry, history and geography, ethnicities and citizenships.
4		categoryIds	[]
4	en	title	How Canadians Communicate: Contexts of Canadian Popular Culture
7	en	abstract	Accessible Elements informs science educators about current practices in online and distance education: distance-delivered methods for laboratory coursework, the requisite administrative and institutional aspects of online and distance teaching, and the relevant educational theory.
7		categoryIds	[]
7	en	title	Accessible Elements: Teaching Science Online and at a Distance
8	en	abstract	A Note From The Publisher
8		categoryIds	[]
8	en	title	Editorial
9	en	abstract	In recent years, the Internet and other network technologies have emerged as a central issue for development in Latin America and the Caribbean. They have shown their potential to increase productivity and economic competitiveness, to create new ways to deliver education and health services, and to be driving forces for the modernization of the provision of public services.
9		categoryIds	[]
9	en	title	Enabling Openness: The future of the information society in Latin America and the Caribbean
5	en	abstract	Canada and the United States. Two nations, one border, same continent. Anti-American sentiment in Canada is well documented, but what have Americans had to say about their northern neighbour? Allan examines how the American media has portrayed Canada, from Confederation to Obama’s election. By examining major events that have tested bilateral relations, Bomb Canada tracks the history of anti-Canadianism in the U.S. Informative, thought provoking and at times hilarious, this book reveals another layer of the complex relationship between Canada and the United States.
5		categoryIds	[]
5	en	copyrightHolder	Public Knowledge Press
5	fr_CA	copyrightHolder	Press de la connaissance du public
5		copyrightYear	2023
5	en	title	Bomb Canada and Other Unkind Remarks in the American Media
6	en	abstract	Good researchers have a host of tools at their disposal that make navigating today’s complex information ecosystem much more manageable. Gaining the knowledge, abilities, and self-reflection necessary to be a good researcher helps not only in academic settings, but is invaluable in any career, and throughout one’s life. The Information Literacy User’s Guide will start you on this route to success.
6		categoryIds	[]
6	en	title	The Information Literacy User’s Guide
10	en	abstract	While contemporaries and historians alike hailed the establishment of Buffalo National Park in Wainwright, Alberta as a wildlife saving effort, the political climate of the early 20th century worked against it. The Canadian Parks Branch was never sufficiently funded to operate BNP effectively or to remedy the crises the animals faced as a result. Cross-breeding experiments with bison and domestic cattle proved unfruitful. Attempts at commercializing the herd had no success. Ultimately, the Department of National Defence repurposed the park for military training and the bison disappeared once more.
10		categoryIds	[]
10	en	title	Lost Tracks: Buffalo National Park, 1909-1939
11	en	abstract	Dreamwork is a poetic exploration of the then and there, here and now, of landscapes and inscapes over time. It is part of a poetry series on dream and its relation to actuality. The poems explore past, present, and future in different places from Canada through New Jersey, New York and New England to England and Europe, part of the speaker’s journey. A typology of home and displacement, of natural beauty and industrial scars unfolds in the movement of the book.
11		categoryIds	[]
11	en	title	Dreamwork
12	en	abstract	Over the past two decades, projects supported by the International Development Research Centre (IDRC) have critically examined how information and communications technologies (ICTs) can be used to improve learning, empower the disenfranchised, generate income opportunities for the poor, and facilitate access to healthcare in Africa, Asia, Latin America and the Caribbean. Considering that most development institutions and governments are currently attempting to integrate ICTs into their practices, it is an opportune time to reflect on the research findings that have emerged from IDRC’s work and research in this area.
12		categoryIds	[]
12	en	title	Connecting ICTs to Development
13	en	abstract	This collection is for anyone interested in the use of mobile technology for various distance learning applications. Readers will discover how to design learning materials for delivery on mobile technology and become familiar with the best practices of other educators, trainers, and researchers in the field, as well as the most recent initiatives in mobile learning research. Businesses and governments can learn how to deliver timely information to staff using mobile devices. Professors can use this book as a textbook for courses on distance education, mobile learning, and educational technology.
13		categoryIds	[]
13	en	title	Mobile Learning: Transforming the Delivery of Education and Training
14	en	abstract	From Bricks to Brains introduces embodied cognitive science, and illustrates its foundational ideas through the construction and observation of LEGO Mindstorms robots. Discussing the characteristics that distinguish embodied cognitive science from classical cognitive science, From Bricks to Brains places a renewed emphasis on sensing and acting, the importance of embodiment, the exploration of distributed notions of control, and the development of theories by synthesizing simple systems and exploring their behaviour. Numerous examples are used to illustrate a key theme: the importance of an agent’s environment. Even simple agents, such as LEGO robots, are capable of exhibiting complex behaviour when they can sense and affect the world around them.
14		categoryIds	[]
14	en	copyrightHolder	Public Knowledge Press
14	fr_CA	copyrightHolder	Press de la connaissance du public
14		copyrightYear	2023
14	en	title	From Bricks to Brains: The Embodied Cognitive Science of LEGO Robots
15	en	abstract	A groundbreaking study of urban sprawl in Calgary after the Second World War. The interactions of land developers and the local government influenced how the pattern grew: developers met market demands and optimized profits by building houses as efficiently as possible, while the City had to consider wider planning constraints and infrastructure costs. Foran examines the complexity of their interactions from a historical perspective, why each party acted as it did, and where each can be criticized.
15		categoryIds	[]
15	en	title	Expansive Discourses: Urban Sprawl in Calgary, 1945-1978
16	en	abstract	Books and articles on instructional design in online learning abound but rarely do we get such a comprehensive picture of what instructional designers do, how they do it, and the problems they solve as their university changes. Power documents the emergence of an adapted instructional design model for transforming courses from single-mode to dual-mode instruction, making this designer’s log a unique contribution to the fi eld of online learning.
16		categoryIds	[]
16	en	title	A Designer's Log: Case Studies in Instructional Design
17	en	abstract	The emergence of open networked models made possible by digital technology has the potential to transform international development. Open network structures allow people to come together to share information, organize, and collaborate. Open development harnesses this power to create new organizational forms and improve people’s lives; it is not only an agenda for research and practice but also a statement about how to approach international development. In this volume, experts explore a variety of applications of openness, addressing challenges as well as opportunities.
17		categoryIds	[]
17	en	title	Open Development: Networked Innovations in International Development
\.


--
-- Data for Name: publications; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.publications (publication_id, date_published, last_modified, primary_contact_id, publication_date_type, publication_type, seq, series_id, series_position, submission_id, status, url_path, version, doi_id) FROM stdin;
1	\N	2023-03-07 19:06:45	1	pub	publication	0	1	\N	1	1	\N	1	\N
2	\N	2023-03-07 19:08:18	2	pub	publication	0	\N	\N	2	1	\N	1	\N
3	\N	2023-03-07 19:11:23	11	pub	publication	0	\N	\N	3	1	\N	1	\N
4	\N	2023-03-07 19:12:20	12	pub	publication	0	3	\N	4	1	\N	1	\N
5	2023-03-07	2023-03-07 19:18:00	16	pub	publication	0	\N	\N	5	3	\N	1	\N
6	\N	2023-03-07 19:18:11	17	pub	publication	0	1	\N	6	1	\N	1	\N
7	\N	2023-03-07 19:20:10	21	pub	publication	0	4	\N	7	1	\N	1	\N
8	\N	2023-03-07 19:21:58	\N	pub	publication	0	\N	\N	8	1	\N	1	\N
9	\N	2023-03-07 19:22:12	26	pub	publication	0	1	\N	9	1	\N	1	\N
10	\N	2023-03-07 19:23:35	31	pub	publication	0	\N	\N	10	1	\N	1	\N
11	\N	2023-03-07 19:25:23	32	pub	publication	0	\N	\N	11	1	\N	1	\N
12	\N	2023-03-07 19:27:31	33	pub	publication	0	\N	\N	12	1	\N	1	\N
13	\N	2023-03-07 19:29:10	41	pub	publication	0	\N	\N	13	1	\N	1	\N
14	2023-03-07	2023-03-07 19:35:03	45	pub	publication	0	5	\N	14	3	\N	1	\N
15	\N	2023-03-07 19:35:15	48	pub	publication	0	\N	\N	15	1	\N	1	\N
16	\N	2023-03-07 19:36:15	49	pub	publication	0	\N	\N	16	1	\N	1	\N
17	\N	2023-03-07 19:38:14	50	pub	publication	0	\N	\N	17	1	\N	1	\N
\.


--
-- Name: publications_publication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.publications_publication_id_seq', 17, true);


--
-- Data for Name: queries; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.queries (query_id, assoc_type, assoc_id, stage_id, seq, date_posted, date_modified, closed) FROM stdin;
1	1048585	6	2	1	\N	\N	0
\.


--
-- Name: queries_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.queries_query_id_seq', 1, true);


--
-- Data for Name: query_participants; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.query_participants (query_id, user_id) FROM stdin;
1	3
1	4
\.


--
-- Data for Name: queued_payments; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.queued_payments (queued_payment_id, date_created, date_modified, expiry_date, payment_data) FROM stdin;
\.


--
-- Name: queued_payments_queued_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.queued_payments_queued_payment_id_seq', 1, false);


--
-- Data for Name: representatives; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.representatives (representative_id, submission_id, role, representative_id_type, representative_id_value, name, phone, email, url, is_supplier) FROM stdin;
\.


--
-- Name: representatives_representative_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.representatives_representative_id_seq', 1, false);


--
-- Data for Name: review_assignments; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_assignments (review_id, submission_id, reviewer_id, competing_interests, recommendation, date_assigned, date_notified, date_confirmed, date_completed, date_acknowledged, date_due, date_response_due, last_modified, reminder_was_automatic, declined, cancelled, reviewer_file_id, date_rated, date_reminded, quality, review_round_id, stage_id, review_method, round, step, review_form_id, considered, request_resent) FROM stdin;
1	1	12	\N	\N	2023-03-07 19:07:36	2023-03-07 19:07:36	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:07:36	0	0	0	\N	\N	\N	\N	1	3	2	1	0	\N	0	0
2	2	11	\N	\N	2023-03-07 19:11:02	2023-03-07 19:11:02	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:11:02	0	0	0	\N	\N	\N	\N	2	3	1	1	0	\N	0	0
15	13	8	\N	\N	2023-03-07 19:30:07	2023-03-07 19:30:07	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:30:07	0	0	0	\N	\N	\N	\N	13	2	2	1	0	\N	0	0
3	2	12	\N	\N	2023-03-07 19:11:12	2023-03-07 19:11:12	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:11:12	0	0	0	\N	\N	\N	\N	2	3	2	1	0	\N	0	0
4	4	9	\N	\N	2023-03-07 19:13:26	2023-03-07 19:13:26	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:13:26	0	0	0	\N	\N	\N	\N	3	2	2	1	0	\N	0	0
21	16	10	\N	0	2023-03-07 19:37:31	2023-03-07 19:37:31	2023-03-07 19:37:57	2023-03-07 19:38:03	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:38:03	0	0	0	\N	\N	\N	\N	18	3	2	1	4	\N	0	0
5	4	11	\N	\N	2023-03-07 19:13:44	2023-03-07 19:13:44	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:13:44	0	0	0	\N	\N	\N	\N	4	3	2	1	0	\N	0	0
6	5	8	\N	\N	2023-03-07 19:16:07	2023-03-07 19:16:07	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:16:07	0	0	0	\N	\N	\N	\N	5	2	2	1	0	\N	0	0
7	5	12	\N	\N	2023-03-07 19:16:26	2023-03-07 19:16:26	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:16:26	0	0	0	\N	\N	\N	\N	6	3	2	1	0	\N	0	0
8	7	10	\N	\N	2023-03-07 19:21:29	2023-03-07 19:21:29	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:21:29	0	0	0	\N	\N	\N	\N	8	3	2	1	0	\N	0	0
17	13	11	\N	\N	2023-03-07 19:30:32	2023-03-07 19:30:32	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:30:32	0	0	0	\N	\N	\N	\N	14	3	2	1	0	\N	0	0
9	11	9	\N	\N	2023-03-07 19:26:06	2023-03-07 19:26:06	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:26:06	0	0	0	\N	\N	\N	\N	10	2	2	1	0	\N	0	0
24	17	7	\N	\N	2023-03-07 19:39:52	2023-03-07 19:39:52	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:39:52	0	0	0	\N	\N	\N	\N	19	2	2	1	0	\N	0	0
25	17	8	\N	\N	2023-03-07 19:40:00	2023-03-07 19:40:00	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:40:00	0	0	0	\N	\N	\N	\N	19	2	2	1	0	\N	0	0
16	13	10	\N	0	2023-03-07 19:30:24	2023-03-07 19:30:24	2023-03-07 19:30:50	2023-03-07 19:30:55	2023-03-07 19:31:31	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:31:31	0	0	0	\N	\N	\N	\N	14	3	2	1	4	\N	0	0
10	11	10	\N	0	2023-03-07 19:26:22	2023-03-07 19:26:22	2023-03-07 19:26:37	2023-03-07 19:26:43	2023-03-07 19:27:16	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:27:16	0	0	0	\N	\N	\N	\N	11	3	2	1	4	\N	0	0
11	11	12	\N	0	2023-03-07 19:26:29	2023-03-07 19:26:29	2023-03-07 19:26:50	2023-03-07 19:26:55	2023-03-07 19:27:16	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:27:16	0	0	0	\N	\N	\N	\N	11	3	2	1	4	\N	0	0
18	13	12	\N	0	2023-03-07 19:30:40	2023-03-07 19:30:40	2023-03-07 19:31:03	2023-03-07 19:31:08	2023-03-07 19:31:31	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:31:31	0	0	0	\N	\N	\N	\N	14	3	2	1	4	\N	0	0
12	12	7	\N	\N	2023-03-07 19:28:30	2023-03-07 19:28:30	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:28:30	0	0	0	\N	\N	\N	\N	12	2	2	1	0	\N	0	0
19	14	7	\N	\N	2023-03-07 19:32:59	2023-03-07 19:32:59	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:32:59	0	0	0	\N	\N	\N	\N	15	2	2	1	0	\N	0	0
14	12	9	\N	\N	2023-03-07 19:28:45	2023-03-07 19:28:45	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:28:45	0	0	0	\N	\N	\N	\N	12	2	2	1	0	\N	0	0
20	14	11	\N	\N	2023-03-07 19:33:17	2023-03-07 19:33:17	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:33:17	0	0	0	\N	\N	\N	\N	16	3	2	1	0	\N	0	0
13	12	8	\N	0	2023-03-07 19:28:38	2023-03-07 19:28:38	2023-03-07 19:28:54	2023-03-07 19:28:59	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:28:59	0	0	0	\N	\N	\N	\N	12	2	2	1	4	\N	0	0
22	16	11	\N	\N	2023-03-07 19:37:39	2023-03-07 19:37:39	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:37:39	0	0	0	\N	\N	\N	\N	18	3	2	1	0	\N	0	0
23	16	12	\N	\N	2023-03-07 19:37:47	2023-03-07 19:37:47	\N	\N	\N	2023-04-04 00:00:00	2023-04-04 00:00:00	2023-03-07 19:37:47	0	0	0	\N	\N	\N	\N	18	3	2	1	0	\N	0	0
\.


--
-- Name: review_assignments_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.review_assignments_review_id_seq', 25, true);


--
-- Data for Name: review_files; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_files (review_id, submission_file_id) FROM stdin;
1	6
1	5
1	4
2	15
2	14
2	13
2	12
3	15
3	14
3	13
3	12
4	28
4	27
4	26
4	25
6	37
6	38
6	39
6	40
6	35
6	36
8	55
8	56
8	57
8	58
8	59
9	83
9	82
12	89
12	88
12	87
13	89
13	88
13	87
14	89
14	88
14	87
15	95
15	94
15	93
19	106
19	105
19	107
19	104
19	103
19	102
21	129
21	128
21	127
21	125
21	126
22	129
22	128
22	127
22	125
22	126
23	129
23	128
23	127
23	125
23	126
24	141
24	140
24	139
24	138
24	137
24	136
25	141
25	140
25	139
25	138
25	137
25	136
\.


--
-- Data for Name: review_form_element_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_form_element_settings (review_form_element_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: review_form_elements; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_form_elements (review_form_element_id, review_form_id, seq, element_type, required, included) FROM stdin;
\.


--
-- Name: review_form_elements_review_form_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.review_form_elements_review_form_element_id_seq', 1, false);


--
-- Data for Name: review_form_responses; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_form_responses (review_form_element_id, review_id, response_type, response_value) FROM stdin;
\.


--
-- Data for Name: review_form_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_form_settings (review_form_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: review_forms; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_forms (review_form_id, assoc_type, assoc_id, seq, is_active) FROM stdin;
\.


--
-- Name: review_forms_review_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.review_forms_review_form_id_seq', 1, false);


--
-- Data for Name: review_round_files; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_round_files (submission_id, review_round_id, stage_id, submission_file_id) FROM stdin;
1	1	3	4
1	1	3	5
1	1	3	6
2	2	3	12
2	2	3	13
2	2	3	14
2	2	3	15
4	3	2	25
4	3	2	26
4	3	2	27
4	3	2	28
5	5	2	35
5	5	2	36
5	5	2	37
5	5	2	38
5	5	2	39
5	5	2	40
6	7	2	46
6	7	2	47
6	7	2	48
6	7	2	49
7	8	3	55
7	8	3	56
7	8	3	57
7	8	3	58
7	8	3	59
9	9	2	66
9	9	2	67
9	9	2	68
9	9	2	69
9	9	2	70
11	10	2	82
11	10	2	83
12	12	2	87
12	12	2	88
12	12	2	89
13	13	2	93
13	13	2	94
13	13	2	95
14	15	2	102
14	15	2	103
14	15	2	104
14	15	2	105
14	15	2	106
14	15	2	107
15	17	3	117
15	17	3	118
15	17	3	119
16	18	3	125
16	18	3	126
16	18	3	127
16	18	3	128
16	18	3	129
17	19	2	136
17	19	2	137
17	19	2	138
17	19	2	139
17	19	2	140
17	19	2	141
\.


--
-- Data for Name: review_rounds; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.review_rounds (review_round_id, submission_id, stage_id, round, review_revision, status) FROM stdin;
1	1	3	1	\N	4
16	14	3	1	\N	4
17	15	3	1	\N	6
2	2	3	1	\N	7
3	4	2	1	\N	4
4	4	3	1	\N	4
5	5	2	1	\N	4
18	16	3	1	\N	8
6	5	3	1	\N	4
7	6	2	1	\N	14
8	7	3	1	\N	4
9	9	2	1	\N	6
19	17	2	1	\N	7
10	11	2	1	\N	4
11	11	3	1	\N	4
12	12	2	1	\N	8
13	13	2	1	\N	4
14	13	3	1	\N	4
15	14	2	1	\N	4
\.


--
-- Name: review_rounds_review_round_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.review_rounds_review_round_id_seq', 19, true);


--
-- Data for Name: sales_rights; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.sales_rights (sales_rights_id, publication_format_id, type, row_setting, countries_included, countries_excluded, regions_included, regions_excluded) FROM stdin;
\.


--
-- Name: sales_rights_sales_rights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.sales_rights_sales_rights_id_seq', 1, false);


--
-- Data for Name: scheduled_tasks; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.scheduled_tasks (class_name, last_run) FROM stdin;
PKP\\task\\ReviewReminder	2023-03-07 19:01:05
PKP\\task\\PublishSubmissions	2023-03-07 19:01:05
PKP\\task\\StatisticsReport	2023-03-07 19:01:05
PKP\\task\\RemoveUnvalidatedExpiredUsers	2023-03-07 19:01:05
PKP\\task\\UpdateIPGeoDB	2023-03-07 19:01:05
APP\\tasks\\UsageStatsLoader	2023-03-07 19:01:06
PKP\\task\\EditorialReminders	2023-03-07 19:01:06
PKP\\task\\ProcessQueueJobs	2023-03-07 19:01:06
PKP\\task\\RemoveFailedJobs	2023-03-07 19:01:06
\.


--
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.series (series_id, press_id, review_form_id, seq, featured, editor_restricted, path, image, is_inactive) FROM stdin;
1	1	\N	0	0	0	lis	[]	0
2	1	\N	0	0	0	pe	[]	0
3	1	\N	0	0	0	his	[]	0
4	1	\N	0	0	0	ed	[]	0
5	1	\N	0	0	0	psy	[]	0
\.


--
-- Data for Name: series_categories; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.series_categories (series_id, category_id) FROM stdin;
\.


--
-- Name: series_series_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.series_series_id_seq', 5, true);


--
-- Data for Name: series_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.series_settings (series_id, locale, setting_name, setting_value) FROM stdin;
1	en	title	Library & Information Studies
1	fr_CA	title	
1	en	description	
1	fr_CA	description	
1		onlineIssn	
1	en	prefix	
1	fr_CA	prefix	
1		printIssn	
1		sortOption	title-ASC
1	en	subtitle	
1	fr_CA	subtitle	
2	en	title	Political Economy
2	fr_CA	title	
2	en	description	
2	fr_CA	description	
2		onlineIssn	
2	en	prefix	
2	fr_CA	prefix	
2		printIssn	
2		sortOption	title-ASC
2	en	subtitle	
2	fr_CA	subtitle	
3	en	title	History
3	fr_CA	title	
3	en	description	
3	fr_CA	description	
3		onlineIssn	
3	en	prefix	
3	fr_CA	prefix	
3		printIssn	
3		sortOption	title-ASC
3	en	subtitle	
3	fr_CA	subtitle	
4	en	title	Education
4	fr_CA	title	
4	en	description	
4	fr_CA	description	
4		onlineIssn	
4	en	prefix	
4	fr_CA	prefix	
4		printIssn	
4		sortOption	title-ASC
4	en	subtitle	
4	fr_CA	subtitle	
5	en	title	Psychology
5	fr_CA	title	
5	en	description	
5	fr_CA	description	
5		onlineIssn	
5	en	prefix	
5	fr_CA	prefix	
5		printIssn	
5		sortOption	title-ASC
5	en	subtitle	
5	fr_CA	subtitle	
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.sessions (session_id, user_id, ip_address, user_agent, created, last_used, remember, data, domain) FROM stdin;
5masvgqbqrcmu7mi3vh2b65vrd	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215764	1678215930	0	username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215929;s:5:"token";s:32:"6b2f2bbd0ba4435fe7c1cf94b6a66123";}	localhost
c56rl4h5sibit42sncdrm13hjh	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215665	1678215697	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215697;s:5:"token";s:32:"47c27308bac9cdca95953bfb300a55a0";}	localhost
om7b5krnr6tshs30i914mq43si	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215723	1678215741	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215741;s:5:"token";s:32:"384b79ca01f7295c73e1feaa1e39c023";}	localhost
cuh4rv4mp12kmgmm8gedrdp4s4	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215697	1678215720	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215720;s:5:"token";s:32:"d60928069648522ac41f76c50f814c9a";}	localhost
b4krc0al9mglkfko4qi6rr96lu	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215930	1678215946	0	username|s:5:"rvaca";csrf|a:2:{s:9:"timestamp";i:1678215945;s:5:"token";s:32:"92504853b74208eaad34410f8dd43553";}	localhost
fvb2l8dotm88opth7enqt1g09f	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215743	1678215752	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215752;s:5:"token";s:32:"9e0624c6d4b5531ca2e0bb8e9af9eb85";}	localhost
67r25vhfqa511ced0d0d5mcb38	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215753	1678215760	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215760;s:5:"token";s:32:"d7c450a8c4ceeb576de2700be893b0f4";}	localhost
94e9au9ohf8fppo0nvvr1hek8n	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215950	1678215972	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215972;s:5:"token";s:32:"9834226d670688ed68e43fcf43b9e0ee";}	localhost
t9fng5odeo0bd31d6mc1kuno2o	1	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215975	1678215996	0	userId|i:1;username|s:5:"admin";csrf|a:2:{s:9:"timestamp";i:1678215996;s:5:"token";s:32:"6d0498f2662f7a3b04bbc7a3cf5c1689";}	localhost
lin2pk6vbk2c4okkusgo5f1vfh	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216034	1678216073	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216073;s:5:"token";s:32:"6808f143b485e91b8f87f83a92f64676";}	localhost
lnjcaon5u9is49ugbqa1lipuh7	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678215999	1678216033	0	csrf|a:2:{s:9:"timestamp";i:1678216033;s:5:"token";s:32:"7d31a2a8596f950e3d2668caa82b4257";}username|s:6:"aclark";	localhost
9rdg39doh6a6tvv3dpldrngomb	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216228	1678216272	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216272;s:5:"token";s:32:"6e681a77509ed857dd85ece0a15a674a";}	localhost
qlartv6r2430udq2cgfog8h1s0	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216381	1678216469	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216468;s:5:"token";s:32:"99a2ed0585f47dd42372d3e440d2081e";}	localhost
eo9h94fsu5o5sf6nm76gt53v46	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216077	1678216227	0	csrf|a:2:{s:9:"timestamp";i:1678216227;s:5:"token";s:32:"a74688a67819b8ae3549e669ece5d656";}username|s:7:"afinkel";	localhost
50576d7dt8esg2pm0h4o885ckb	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216334	1678216380	0	csrf|a:2:{s:9:"timestamp";i:1678216380;s:5:"token";s:32:"c8f4d2f8637b477d1a906e1fbe774440";}username|s:6:"bbeaty";	localhost
ficqikn83mh37t33odc6kdncrv	21	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216277	1678216330	0	csrf|a:2:{s:9:"timestamp";i:1678216330;s:5:"token";s:32:"9ee40adc040122b056ddfacd77635899";}username|s:10:"bbarnetson";userId|i:21;	localhost
no0c5l5dfgcq4kk74cou41f07n	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216473	1678216538	0	csrf|a:2:{s:9:"timestamp";i:1678216537;s:5:"token";s:32:"1778cb0debc28d076eb7018dbe05ecfb";}username|s:6:"callan";	localhost
abu3kd2d80p1rboj0otj7lbvql	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216538	1678216659	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216659;s:5:"token";s:32:"81b47cf914f5ed0cf58257afd8c8d4cb";}	localhost
2j9momduii2gt5e2q6aim6po3l	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216661	1678216672	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216671;s:5:"token";s:32:"b416532e776c6fd53b1f2a84cce22805";}	localhost
55acmtnj84vbrcmrg8cts8sbgc	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216672	1678216682	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216682;s:5:"token";s:32:"8ba79813c935645b09c051bf61511ed9";}	localhost
27586c2sqf69aakd0s2dgsbm8s	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216685	1678216730	0	csrf|a:2:{s:9:"timestamp";i:1678216730;s:5:"token";s:32:"a2b34c882001052450c8f6b02a7201f1";}username|s:9:"dbernnard";	localhost
ckd7j5j6tfk1c2s2j4345hv7m0	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216770	1678216788	0	username|s:6:"minoue";csrf|a:2:{s:9:"timestamp";i:1678216788;s:5:"token";s:32:"fcf5b439d06b248c25def1699e4287f9";}	localhost
uu1tiosf0ii6eknnehu7dsv5i5	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216789	1678216800	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216800;s:5:"token";s:32:"56a496b10247c4edf965d2321bf61a18";}	localhost
fc9kfqsqftttrb1kagk27f5f7o	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216730	1678216769	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216769;s:5:"token";s:32:"a7dce0d8404377a8024e631a1619e64d";}	localhost
nem5fvvah164h1iikcger8lqc6	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216926	1678216983	0	csrf|a:2:{s:9:"timestamp";i:1678216982;s:5:"token";s:32:"5a37cf737d4904eed7f6ec5b5924e5ff";}username|s:7:"fperini";	localhost
rgnnckb0avqnmk7s8tn83gh7fr	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216983	1678217006	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217006;s:5:"token";s:32:"a6ec4c5f74984480a89acdb11f8eb0c5";}	localhost
460sotb5bv2qc5tinh9978ph5t	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217117	1678217142	0	csrf|a:2:{s:9:"timestamp";i:1678217142;s:5:"token";s:32:"bf4df225e95acd2c4ee92f4b7d461302";}username|s:10:"jlockehart";	localhost
80ca1jc88soudcntpqhvf5vtbu	27	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217009	1678217113	0	csrf|a:2:{s:9:"timestamp";i:1678217113;s:5:"token";s:32:"f5452c41b98f2002f6d1003a650cdc10";}username|s:7:"jbrower";userId|i:27;	localhost
dno7cids5cqhged6kci7in0mkn	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216862	1678216908	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216908;s:5:"token";s:32:"dfe57424ac5783161b9671c11bd611af";}	localhost
35lnedmq3l5comcgt4nlt40pks	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216912	1678216923	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678216923;s:5:"token";s:32:"25b2169eb699a408a3864ed1ae83603f";}	localhost
b1gttkacmkbk88b4e0ecrfjdva	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678216804	1678216861	0	csrf|a:2:{s:9:"timestamp";i:1678216861;s:5:"token";s:32:"48e1a47ae8c865dd92baef24c8e4c6c8";}username|s:10:"dkennepohl";	localhost
qviv4pt928u6ui26us1tkrg0e0	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217191	1678217204	0	username|s:8:"agallego";csrf|a:2:{s:9:"timestamp";i:1678217204;s:5:"token";s:32:"57bb9abc902a19d9ca4c974a92520dbf";}	localhost
oscufivutn34mcv0tj6o07fek9	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217143	1678217191	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217191;s:5:"token";s:32:"3bc10d30ac38c6c94c7b702644fe9bf6";}	localhost
80ped04eri6jgs9dprh9tivqa6	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217245	1678217283	0	csrf|a:2:{s:9:"timestamp";i:1678217283;s:5:"token";s:32:"7eacf191d69b9d9314001eb22045b7e4";}username|s:6:"lelder";	localhost
283d4blnii84i0tbi00rgpgnci	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217204	1678217216	0	username|s:6:"gfavio";csrf|a:2:{s:9:"timestamp";i:1678217216;s:5:"token";s:32:"faf1e976cda7a36bbe70d64a06f571bf";}	localhost
ciouuh7vj8eicj2uc5rle7dkgp	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217218	1678217242	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217242;s:5:"token";s:32:"dea61c87739088119dc1cba2befee1cb";}	localhost
9dsi0vrbbslid0nkjub7g5ltlg	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217284	1678217327	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217327;s:5:"token";s:32:"914cf9873818a532d2bd3b7c580c20f2";}	localhost
v9jrrhb3t1oq052tt18b14m2te	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217328	1678217340	0	username|s:7:"phudson";csrf|a:2:{s:9:"timestamp";i:1678217340;s:5:"token";s:32:"d8d7d13f54c902451574f05760316bda";}	localhost
kmlnbnqdkfl06a8n1j7cbj1rbd	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217381	1678217442	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217442;s:5:"token";s:32:"60d8023ca2147a720eb07f814a52b556";}	localhost
56676586v8i07rlc2l89e8c2no	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217344	1678217381	0	csrf|a:2:{s:9:"timestamp";i:1678217380;s:5:"token";s:32:"f7fceaed51eec6ba4da6ac789771006d";}username|s:5:"mally";	localhost
fgegi4vovludiha5486vto67dc	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217443	1678217456	0	username|s:8:"agallego";csrf|a:2:{s:9:"timestamp";i:1678217456;s:5:"token";s:32:"eb3dace47e42a111396db0eebab5db55";}	localhost
0le48tpj4bjge0m56vp9bliata	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217457	1678217469	0	username|s:6:"gfavio";csrf|a:2:{s:9:"timestamp";i:1678217469;s:5:"token";s:32:"22aa85882a6516875403d96535dcf443";}	localhost
2psl4isipvthrjbbbkvud2g33q	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217470	1678217497	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217497;s:5:"token";s:32:"e7288bf2bdada383710aea7436ef847a";}	localhost
k6gb6c7n4vd2g9cvf5khligp47	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217870	1678217884	0	username|s:8:"agallego";csrf|a:2:{s:9:"timestamp";i:1678217884;s:5:"token";s:32:"7dbb1a20450e8ae8054f81dfd9effa4d";}	localhost
t9rr9q3lru99njbli36m198pje	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217500	1678217549	0	csrf|a:2:{s:9:"timestamp";i:1678217548;s:5:"token";s:32:"e07e2d46b7b751a2164d479eaae111fb";}username|s:7:"mdawson";	localhost
pgcl1n88f9ba647og37m8ks2bi	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217821	1678217869	0	username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217869;s:5:"token";s:32:"a2c9af21a18f6e43590aebaeee0a688b";}	localhost
oqffjpu1vnmr0c4406a2i4ed5g	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217549	1678217705	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217705;s:5:"token";s:32:"8796c13a2af133be98c7829f649d48f9";}	localhost
dfq6spggtm197cpv4fljjd97q8	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217709	1678217743	0	csrf|a:2:{s:9:"timestamp";i:1678217743;s:5:"token";s:32:"09b9d1475a1fcd3726c9d8eedb8dbf13";}username|s:6:"mforan";	localhost
u03jh2i64nktrmghaljjpm4fss	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217769	1678217821	0	csrf|a:2:{s:9:"timestamp";i:1678217821;s:5:"token";s:32:"e0d8aae28fcc35cc5d6b4755165ef38c";}username|s:6:"mpower";	localhost
i3qvjri1ea6gs69hdh6uiijugo	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217743	1678217765	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678217765;s:5:"token";s:32:"1cc1523918d301349d0793777815f7db";}	localhost
cogfdt6i2nvp2t957a0i6ivdk3	3	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217960	1678218001	0	userId|i:3;username|s:7:"dbarnes";csrf|a:2:{s:9:"timestamp";i:1678218000;s:5:"token";s:32:"88aaada9366430a82baace8688063746";}	localhost
8lp0c7tulnp7qpdalab4i6iiei	\N	127.0.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/110.0.5481.100 Safari/537.36	1678217888	1678217960	0	csrf|a:2:{s:9:"timestamp";i:1678217959;s:5:"token";s:32:"bc5892bda638b55829849a085263f6a3";}username|s:6:"msmith";	localhost
\.


--
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.site (redirect, primary_locale, min_password_length, installed_locales, supported_locales, original_style_file_name) FROM stdin;
0	en	6	["en","fr_CA"]	["en","fr_CA"]	\N
\.


--
-- Data for Name: site_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.site_settings (setting_name, locale, setting_value) FROM stdin;
contactEmail	en	pkpadmin@mailinator.com
contactName	en	Open Monograph Press
contactName	fr_CA	Open Monograph Press
compressStatsLogs		0
enableGeoUsageStats		disabled
enableInstitutionUsageStats		0
keepDailyUsageStats		0
isSiteSushiPlatform		0
isSushiApiPublic		1
themePluginPath		default
\.


--
-- Data for Name: spotlight_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.spotlight_settings (spotlight_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: spotlights; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.spotlights (spotlight_id, assoc_type, assoc_id, press_id) FROM stdin;
\.


--
-- Name: spotlights_spotlight_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.spotlights_spotlight_id_seq', 1, false);


--
-- Data for Name: stage_assignments; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.stage_assignments (stage_assignment_id, submission_id, user_group_id, user_id, date_assigned, recommend_only, can_change_metadata) FROM stdin;
1	1	13	19	2023-03-07 19:07:12	0	0
2	1	6	14	2023-03-07 19:07:51	0	0
22	12	13	29	2023-03-07 19:28:02	0	0
3	2	13	20	2023-03-07 19:10:18	0	0
23	13	13	30	2023-03-07 19:29:39	0	0
4	3	13	21	2023-03-07 19:12:09	0	0
5	4	13	22	2023-03-07 19:12:59	0	0
6	4	6	13	2023-03-07 19:14:01	0	0
7	4	10	15	2023-03-07 19:14:20	0	0
24	14	13	31	2023-03-07 19:32:27	0	0
25	14	6	13	2023-03-07 19:33:35	0	0
26	14	10	15	2023-03-07 19:33:55	0	0
27	14	12	18	2023-03-07 19:34:02	0	0
8	5	13	23	2023-03-07 19:15:36	0	0
9	5	6	14	2023-03-07 19:16:45	0	0
10	5	10	16	2023-03-07 19:17:06	0	0
11	5	12	17	2023-03-07 19:17:13	0	0
12	6	13	24	2023-03-07 19:18:48	0	0
13	6	3	3	2023-03-07 19:19:15	0	1
14	6	5	4	2023-03-07 19:19:21	0	0
15	6	5	6	2023-03-07 19:19:27	1	0
28	15	13	32	2023-03-07 19:35:41	0	0
16	7	13	25	2023-03-07 19:21:00	0	0
17	7	6	13	2023-03-07 19:21:46	0	0
18	8	3	3	2023-03-07 19:21:58	0	1
29	16	13	33	2023-03-07 19:36:59	0	0
19	9	13	26	2023-03-07 19:23:01	0	0
30	17	13	34	2023-03-07 19:39:18	0	0
20	10	13	27	2023-03-07 19:25:12	0	0
21	11	13	28	2023-03-07 19:25:41	0	0
\.


--
-- Name: stage_assignments_stage_assignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.stage_assignments_stage_assignment_id_seq', 30, true);


--
-- Data for Name: static_page_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.static_page_settings (static_page_id, locale, setting_name, setting_value, setting_type) FROM stdin;
\.


--
-- Data for Name: static_pages; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.static_pages (static_page_id, path, context_id) FROM stdin;
\.


--
-- Name: static_pages_static_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.static_pages_static_page_id_seq', 1, false);


--
-- Data for Name: subeditor_submission_group; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.subeditor_submission_group (context_id, assoc_id, assoc_type, user_id, user_group_id) FROM stdin;
1	0	530	3	3
\.


--
-- Data for Name: submission_chapter_authors; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_chapter_authors (author_id, chapter_id, primary_contact, seq) FROM stdin;
1	1	0	0
49	61	0	0
1	2	0	0
1	3	0	0
49	62	0	0
5	4	0	0
6	5	0	0
49	63	0	0
7	6	0	0
49	64	0	0
8	7	0	0
9	7	0	1
11	8	0	0
49	65	0	0
11	9	0	0
11	10	0	0
51	66	0	0
11	11	0	0
11	12	0	0
12	13	0	0
50	67	0	0
13	14	0	0
52	67	0	1
14	15	0	0
15	16	0	0
16	17	0	0
50	68	0	0
16	18	0	0
52	68	0	1
16	19	0	0
16	20	0	0
16	21	0	0
53	69	0	0
16	22	0	0
54	69	0	1
17	23	0	0
18	24	0	0
19	25	0	0
55	70	0	0
20	26	0	0
56	70	0	1
21	27	0	0
22	28	0	0
57	71	0	0
23	29	0	0
24	30	0	0
25	31	0	0
26	32	0	0
27	33	0	0
28	34	0	0
29	35	0	0
30	36	0	0
31	37	0	0
31	38	0	0
31	39	0	0
31	40	0	0
31	41	0	0
31	42	0	0
31	43	0	0
31	44	0	0
31	45	0	0
32	46	0	0
32	47	0	0
35	48	0	0
36	48	0	1
37	49	0	0
38	49	0	1
39	50	0	0
40	50	0	1
42	51	0	0
43	52	0	0
44	53	0	0
45	54	0	0
46	55	0	0
47	56	0	0
45	57	0	0
48	58	0	0
48	59	0	0
48	60	0	0
\.


--
-- Data for Name: submission_chapter_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_chapter_settings (chapter_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	title	Choosing the Future	string
1	fr_CA	title		string
1	en	subtitle		string
1	fr_CA	subtitle		string
1	en	abstract		string
1	fr_CA	abstract		string
1		datePublished	\N	string
1		pages		string
1		isPageEnabled	\N	string
1		licenseUrl	\N	string
2	en	title	Axioms	string
2	fr_CA	title		string
2	en	subtitle		string
2	fr_CA	subtitle		string
2	en	abstract		string
2	fr_CA	abstract		string
2		datePublished	\N	string
2		pages		string
2		isPageEnabled	\N	string
2		licenseUrl	\N	string
3	en	title	Paradigm Shift	string
3	fr_CA	title		string
3	en	subtitle		string
3	fr_CA	subtitle		string
3	en	abstract		string
3	fr_CA	abstract		string
3		datePublished	\N	string
3		pages		string
3		isPageEnabled	\N	string
3		licenseUrl	\N	string
4	en	title	Critical History in Western Canada 1900–2000	string
4	fr_CA	title		string
4	en	subtitle		string
4	fr_CA	subtitle		string
4	en	abstract		string
4	fr_CA	abstract		string
4		datePublished	\N	string
4		pages		string
4		isPageEnabled	\N	string
4		licenseUrl		string
5	en	title	Vernacular Currents in Western Canadian Historiography: The Passion and Prose of Katherine Hughes, F.G. Roe, and Roy Ito	string
5	fr_CA	title		string
5	en	subtitle		string
5	fr_CA	subtitle		string
5	en	abstract		string
5	fr_CA	abstract		string
5		datePublished	\N	string
5		pages		string
5		isPageEnabled	\N	string
5		licenseUrl		string
6	en	title	Cree Intellectual Traditions in History	string
6	fr_CA	title		string
6	en	subtitle		string
6	fr_CA	subtitle		string
6	en	abstract		string
6	fr_CA	abstract		string
6		datePublished	\N	string
6		pages		string
6		isPageEnabled	\N	string
6		licenseUrl		string
7	en	title	Visualizing Space, Race, and History in the North: Photographic Narratives of the Athabasca-Mackenzie River Basin	string
7	fr_CA	title		string
7	en	subtitle		string
7	fr_CA	subtitle		string
7	en	abstract		string
7	fr_CA	abstract		string
7		datePublished	\N	string
7		pages		string
7		isPageEnabled	\N	string
7		licenseUrl		string
8	en	title	Introduction	string
8	fr_CA	title		string
8	en	subtitle		string
8	fr_CA	subtitle		string
8	en	abstract		string
8	fr_CA	abstract		string
8		datePublished	\N	string
8		pages		string
8		isPageEnabled	\N	string
8		licenseUrl	\N	string
9	en	title	Part One. Employment Relationships in Canada	string
9	fr_CA	title		string
9	en	subtitle		string
9	fr_CA	subtitle		string
9	en	abstract		string
9	fr_CA	abstract		string
9		datePublished	\N	string
9		pages		string
9		isPageEnabled	\N	string
9		licenseUrl	\N	string
10	en	title	Part Two. Preventing Workplace Injury	string
10	fr_CA	title		string
10	en	subtitle		string
10	fr_CA	subtitle		string
10	en	abstract		string
10	fr_CA	abstract		string
10		datePublished	\N	string
10		pages		string
10		isPageEnabled	\N	string
10		licenseUrl	\N	string
11	en	title	Part Three. Critique of OHS in Canada	string
11	fr_CA	title		string
11	en	subtitle		string
11	fr_CA	subtitle		string
11	en	abstract		string
11	fr_CA	abstract		string
11		datePublished	\N	string
11		pages		string
11		isPageEnabled	\N	string
11		licenseUrl	\N	string
12	en	title	Part Four. Political Economy of Preventing Workplace Injury	string
12	fr_CA	title		string
12	en	subtitle		string
12	fr_CA	subtitle		string
12	en	abstract		string
12	fr_CA	abstract		string
12		datePublished	\N	string
12		pages		string
12		isPageEnabled	\N	string
12		licenseUrl	\N	string
13	en	title	Introduction: Contexts of Popular Culture	string
13	fr_CA	title		string
13	en	subtitle		string
13	fr_CA	subtitle		string
13	en	abstract		string
13	fr_CA	abstract		string
13		datePublished	\N	string
13		pages		string
13		isPageEnabled	\N	string
13		licenseUrl	\N	string
14	en	title	Chapter 1. A Future for Media Studies: Cultural Labour, Cultural Relations, Cultural Politics	string
14	fr_CA	title		string
14	en	subtitle		string
14	fr_CA	subtitle		string
14	en	abstract		string
14	fr_CA	abstract		string
14		datePublished	\N	string
14		pages		string
14		isPageEnabled	\N	string
14		licenseUrl	\N	string
15	en	title	Chapter 2. Log On, Goof Off, and Look Up: Facebook and the Rhythms of Canadian Internet Use	string
15	fr_CA	title		string
15	en	subtitle		string
15	fr_CA	subtitle		string
15	en	abstract		string
15	fr_CA	abstract		string
15		datePublished	\N	string
15		pages		string
15		isPageEnabled	\N	string
15		licenseUrl	\N	string
16	en	title	Chapter 3. Hawkers and Public Space: Free Commuter Newspapers in Canada	string
16	fr_CA	title		string
16	en	subtitle		string
16	fr_CA	subtitle		string
16	en	abstract		string
16	fr_CA	abstract		string
16		datePublished	\N	string
16		pages		string
16		isPageEnabled	\N	string
16		licenseUrl	\N	string
17	en	title	Prologue	string
17	fr_CA	title		string
17	en	subtitle		string
17	fr_CA	subtitle		string
17	en	abstract		string
17	fr_CA	abstract		string
17		datePublished	\N	string
17		pages		string
17		isPageEnabled	\N	string
17		licenseUrl	\N	string
18	en	title	Chapter 1: The First Five Years: 1867-1872	string
18	fr_CA	title		string
18	en	subtitle		string
18	fr_CA	subtitle		string
18	en	abstract		string
18	fr_CA	abstract		string
18		datePublished	\N	string
18		pages		string
18		isPageEnabled	\N	string
18		licenseUrl	\N	string
19	en	title	Chapter 2: Free Trade or "Freedom": 1911	string
19	fr_CA	title		string
19	en	subtitle		string
19	fr_CA	subtitle		string
19	en	abstract		string
19	fr_CA	abstract		string
19		datePublished	\N	string
19		pages		string
19		isPageEnabled	\N	string
19		licenseUrl	\N	string
20	en	title	Chapter 3: Castro, Nukes & the Cold War: 1953-1968	string
20	fr_CA	title		string
20	en	subtitle		string
20	fr_CA	subtitle		string
20	en	abstract		string
20	fr_CA	abstract		string
20		datePublished	\N	string
20		pages		string
20		isPageEnabled	\N	string
20		licenseUrl	\N	string
21	en	title	Chapter 4: Enter the Intellect: 1968-1984	string
21	fr_CA	title		string
21	en	subtitle		string
21	fr_CA	subtitle		string
21	en	abstract		string
21	fr_CA	abstract		string
21		datePublished	\N	string
21		pages		string
21		isPageEnabled	\N	string
21		licenseUrl	\N	string
22	en	title	Epilogue	string
22	fr_CA	title		string
22	en	subtitle		string
22	fr_CA	subtitle		string
22	en	abstract		string
22	fr_CA	abstract		string
22		datePublished	\N	string
22		pages		string
22		isPageEnabled	\N	string
22		licenseUrl	\N	string
23	en	title	Identify: Understanding Your Information Need	string
23	fr_CA	title		string
23	en	subtitle		string
23	fr_CA	subtitle		string
23	en	abstract		string
23	fr_CA	abstract		string
23		datePublished	\N	string
23		pages		string
23		isPageEnabled	\N	string
23		licenseUrl	\N	string
24	fr_CA	title		string
24	en	subtitle		string
24	fr_CA	subtitle		string
24	en	abstract		string
24	fr_CA	abstract		string
24		datePublished	\N	string
24		pages		string
24		isPageEnabled	\N	string
24		licenseUrl	\N	string
36		licenseUrl	\N	string
24	en	title	Scope: Knowing What Is Available	string
25	en	title	Plan: Developing Research Strategies	string
25	fr_CA	title		string
25	en	subtitle		string
25	fr_CA	subtitle		string
25	en	abstract		string
25	fr_CA	abstract		string
25		datePublished	\N	string
25		pages		string
25		isPageEnabled	\N	string
25		licenseUrl	\N	string
26	en	title	Gather: Finding What You Need	string
26	fr_CA	title		string
26	en	subtitle		string
26	fr_CA	subtitle		string
26	en	abstract		string
26	fr_CA	abstract		string
26		datePublished	\N	string
26		pages		string
26		isPageEnabled	\N	string
26		licenseUrl	\N	string
27	en	title	Introduction	string
27	fr_CA	title		string
27	en	subtitle		string
27	fr_CA	subtitle		string
27	en	abstract		string
27	fr_CA	abstract		string
27		datePublished	\N	string
27		pages		string
27		isPageEnabled	\N	string
27		licenseUrl	\N	string
28	en	title	Chapter 1: Interactions Affording Distance Science Education	string
28	fr_CA	title		string
28	en	subtitle		string
28	fr_CA	subtitle		string
28	en	abstract		string
28	fr_CA	abstract		string
28		datePublished	\N	string
28		pages		string
28		isPageEnabled	\N	string
28		licenseUrl	\N	string
29	en	title	Chapter 2: Learning Science at a Distance: Instructional Dialogues and Resources	string
29	fr_CA	title		string
29	en	subtitle		string
29	fr_CA	subtitle		string
29	en	abstract		string
29	fr_CA	abstract		string
29		datePublished	\N	string
29		pages		string
29		isPageEnabled	\N	string
29		licenseUrl	\N	string
30	en	title	Chapter 3: Leadership Strategies for Coordinating Distance Education Instructional Development Teams	string
30	fr_CA	title		string
30	en	subtitle		string
30	fr_CA	subtitle		string
30	en	abstract		string
30	fr_CA	abstract		string
30		datePublished	\N	string
30		pages		string
30		isPageEnabled	\N	string
30		licenseUrl	\N	string
31	en	title	Chapter 4: Toward New Models of Flexible Education to Enhance Quality in Australian Higher Education	string
31	fr_CA	title		string
31	en	subtitle		string
31	fr_CA	subtitle		string
31	en	abstract		string
31	fr_CA	abstract		string
31		datePublished	\N	string
31		pages		string
31		isPageEnabled	\N	string
31		licenseUrl	\N	string
32	en	title	Internet, openness and the future of the information society in LAC	string
32	fr_CA	title		string
32	en	subtitle		string
32	fr_CA	subtitle		string
32	en	abstract		string
32	fr_CA	abstract		string
32		datePublished	\N	string
32		pages		string
32		isPageEnabled	\N	string
32		licenseUrl	\N	string
33	en	title	Imagining the Internet: Open, closed or in between?	string
33	fr_CA	title		string
33	en	subtitle		string
33	fr_CA	subtitle		string
33	en	abstract		string
33	fr_CA	abstract		string
33		datePublished	\N	string
33		pages		string
33		isPageEnabled	\N	string
33		licenseUrl	\N	string
34	en	title	The internet in LAC will remain free, public and open over the next 10 years	string
34	fr_CA	title		string
34	en	subtitle		string
34	fr_CA	subtitle		string
34	en	abstract		string
34	fr_CA	abstract		string
34		datePublished	\N	string
34		pages		string
34		isPageEnabled	\N	string
34		licenseUrl	\N	string
35	en	title	Free Internet?	string
35	fr_CA	title		string
35	en	subtitle		string
35	fr_CA	subtitle		string
35	en	abstract		string
35	fr_CA	abstract		string
35		datePublished	\N	string
35		pages		string
35		isPageEnabled	\N	string
35		licenseUrl	\N	string
36	fr_CA	title		string
36	en	subtitle		string
36	fr_CA	subtitle		string
36	en	abstract		string
36	fr_CA	abstract		string
36		datePublished	\N	string
36		pages		string
36	en	title	Risks and challenges for freedom of expression on the internet	string
36		isPageEnabled	\N	string
37	en	title	Introduction	string
37	fr_CA	title		string
37	en	subtitle		string
37	fr_CA	subtitle		string
37	en	abstract		string
37	fr_CA	abstract		string
37		datePublished	\N	string
37		pages		string
37		isPageEnabled	\N	string
37		licenseUrl	\N	string
38	en	title	CHAPTER ONE: Where the Buffalo Roamed	string
38	fr_CA	title		string
38	en	subtitle		string
38	fr_CA	subtitle		string
38	en	abstract		string
38	fr_CA	abstract		string
38		datePublished	\N	string
38		pages		string
38		isPageEnabled	\N	string
38		licenseUrl	\N	string
39	en	title	CHAPTER TWO: Bison Conservation and Buffalo National Park	string
39	fr_CA	title		string
39	en	subtitle		string
39	fr_CA	subtitle		string
39	en	abstract		string
39	fr_CA	abstract		string
39		datePublished	\N	string
39		pages		string
39		isPageEnabled	\N	string
39		licenseUrl	\N	string
40	en	title	CHAPTER THREE: A Well-Run Ranch	string
40	fr_CA	title		string
40	en	subtitle		string
40	fr_CA	subtitle		string
40	en	abstract		string
40	fr_CA	abstract		string
40		datePublished	\N	string
40		pages		string
40		isPageEnabled	\N	string
40		licenseUrl	\N	string
41	en	title	CHAPTER FOUR: Zookeepers and Animal Breeders	string
41	fr_CA	title		string
41	en	subtitle		string
41	fr_CA	subtitle		string
41	en	abstract		string
41	fr_CA	abstract		string
41		datePublished	\N	string
41		pages		string
41		isPageEnabled	\N	string
41		licenseUrl	\N	string
42	en	title	CHAPTER FIVE: "Evolving the Arctic Cow"	string
42	fr_CA	title		string
42	en	subtitle		string
42	fr_CA	subtitle		string
42	en	abstract		string
42	fr_CA	abstract		string
42		datePublished	\N	string
42		pages		string
42		isPageEnabled	\N	string
42		licenseUrl	\N	string
43	en	title	CONCLUSION: The Forgotten Park	string
43	fr_CA	title		string
43	en	subtitle		string
43	fr_CA	subtitle		string
43	en	abstract		string
43	fr_CA	abstract		string
43		datePublished	\N	string
43		pages		string
43		isPageEnabled	\N	string
43		licenseUrl	\N	string
44	en	title	Bibliography	string
44	fr_CA	title		string
44	en	subtitle		string
44	fr_CA	subtitle		string
44	en	abstract		string
44	fr_CA	abstract		string
44		datePublished	\N	string
44		pages		string
44		isPageEnabled	\N	string
44		licenseUrl	\N	string
45	en	title	Index	string
45	fr_CA	title		string
45	en	subtitle		string
45	fr_CA	subtitle		string
45	en	abstract		string
45	fr_CA	abstract		string
45		datePublished	\N	string
45		pages		string
45		isPageEnabled	\N	string
45		licenseUrl	\N	string
46	en	title	Introduction	string
46	fr_CA	title		string
46	en	subtitle		string
46	fr_CA	subtitle		string
46	en	abstract		string
46	fr_CA	abstract		string
46		datePublished	\N	string
46		pages		string
46		isPageEnabled	\N	string
46		licenseUrl	\N	string
47	en	title	Poems	string
47	fr_CA	title		string
47	en	subtitle		string
47	fr_CA	subtitle		string
47	en	abstract		string
47	fr_CA	abstract		string
47		datePublished	\N	string
47		pages		string
47		isPageEnabled	\N	string
47		licenseUrl	\N	string
48	en	title	Catalyzing Access through Social and Technical Innovation	string
48	fr_CA	title		string
48	en	subtitle		string
48	fr_CA	subtitle		string
48	en	abstract		string
48	fr_CA	abstract		string
48		datePublished	\N	string
48		pages		string
48		isPageEnabled	\N	string
48		licenseUrl	\N	string
49	en	title	Catalyzing Access via Telecommunications Policy	string
49	fr_CA	title		string
49	en	subtitle		string
49	fr_CA	subtitle		string
49	en	abstract		string
49	fr_CA	abstract		string
49		datePublished	\N	string
49		pages		string
49		isPageEnabled	\N	string
49		licenseUrl	\N	string
50	en	title	Access to Knowledge as a New Paradigm for Research on ICTs and Intellectual Property	string
50	fr_CA	title		string
50	en	subtitle		string
50	fr_CA	subtitle		string
50	en	abstract		string
50	fr_CA	abstract		string
50		datePublished	\N	string
50		pages		string
50		isPageEnabled	\N	string
50		licenseUrl	\N	string
51	en	title	Current State of Mobile Learning	string
51	fr_CA	title		string
51	en	subtitle		string
51	fr_CA	subtitle		string
51	en	abstract		string
51	fr_CA	abstract		string
51		datePublished	\N	string
51		pages		string
51		isPageEnabled	\N	string
51		licenseUrl	\N	string
52	en	title	A Model for Framing Mobile Learning	string
52	fr_CA	title		string
52	en	subtitle		string
52	fr_CA	subtitle		string
52	en	abstract		string
52	fr_CA	abstract		string
52		datePublished	\N	string
52		pages		string
52		isPageEnabled	\N	string
52		licenseUrl	\N	string
53	en	title	Mobile Distance Learning with PDAs: Development and Testing of Pedagogical and System Solutions Supporting Mobile Distance Learners	string
53	fr_CA	title		string
53	en	subtitle		string
53	fr_CA	subtitle		string
53	en	abstract		string
53	fr_CA	abstract		string
53		datePublished	\N	string
53		pages		string
53		isPageEnabled	\N	string
53		licenseUrl	\N	string
54	en	title	Chapter 1: Mind Control—Internal or External?	string
54	fr_CA	title		string
54	en	subtitle		string
54	fr_CA	subtitle		string
54	en	abstract		string
54	fr_CA	abstract		string
54		datePublished	\N	string
54		pages		string
54		isPageEnabled	\N	string
54		licenseUrl	\N	string
55	en	title	Chapter 2: Classical Music and the Classical Mind	string
55	fr_CA	title		string
55	en	subtitle		string
55	fr_CA	subtitle		string
55	en	abstract		string
55	fr_CA	abstract		string
55		datePublished	\N	string
55		pages		string
55		isPageEnabled	\N	string
55		licenseUrl	\N	string
56	en	title	Chapter 3: Situated Cognition and Bricolage	string
56	fr_CA	title		string
56	en	subtitle		string
56	fr_CA	subtitle		string
56	en	abstract		string
56	fr_CA	abstract		string
56		datePublished	\N	string
56		pages		string
56		isPageEnabled	\N	string
56		licenseUrl	\N	string
57	en	title	Chapter 4: Braitenberg’s Vehicle 2	string
57	fr_CA	title		string
57	en	subtitle		string
57	fr_CA	subtitle		string
57	en	abstract		string
57	fr_CA	abstract		string
57		datePublished	\N	string
57		pages		string
57		isPageEnabled	\N	string
57		licenseUrl	\N	string
58	en	title	Setting the Stage	string
58	fr_CA	title		string
58	en	subtitle		string
58	fr_CA	subtitle		string
58	en	abstract		string
58	fr_CA	abstract		string
58		datePublished	\N	string
58		pages		string
58		isPageEnabled	\N	string
58		licenseUrl	\N	string
59	en	title	Going It Alone, 1945-1954	string
59	fr_CA	title		string
59	en	subtitle		string
59	fr_CA	subtitle		string
59	en	abstract		string
59	fr_CA	abstract		string
59		datePublished	\N	string
59		pages		string
59		isPageEnabled	\N	string
59		licenseUrl	\N	string
60	fr_CA	title		string
60	en	subtitle		string
60	fr_CA	subtitle		string
60	en	abstract		string
60	fr_CA	abstract		string
60		datePublished	\N	string
60		pages		string
60		isPageEnabled	\N	string
60		licenseUrl	\N	string
60	en	title	Establishing the Pattern, 1955-1962	string
61	en	title	Foreward	string
61	fr_CA	title		string
61	en	subtitle		string
61	fr_CA	subtitle		string
61	en	abstract		string
61	fr_CA	abstract		string
61		datePublished	\N	string
61		pages		string
61		isPageEnabled	\N	string
61		licenseUrl	\N	string
62	en	title	Preface	string
62	fr_CA	title		string
62	en	subtitle		string
62	fr_CA	subtitle		string
62	en	abstract		string
62	fr_CA	abstract		string
62		datePublished	\N	string
62		pages		string
62		isPageEnabled	\N	string
62		licenseUrl	\N	string
63	en	title	The Case Studies	string
63	fr_CA	title		string
63	en	subtitle		string
63	fr_CA	subtitle		string
63	en	abstract		string
63	fr_CA	abstract		string
63		datePublished	\N	string
63		pages		string
63		isPageEnabled	\N	string
63		licenseUrl	\N	string
64	en	title	Conclusion	string
64	fr_CA	title		string
64	en	subtitle		string
64	fr_CA	subtitle		string
64	en	abstract		string
64	fr_CA	abstract		string
64		datePublished	\N	string
64		pages		string
64		isPageEnabled	\N	string
64		licenseUrl	\N	string
65	en	title	Bibliography	string
65	fr_CA	title		string
65	en	subtitle		string
65	fr_CA	subtitle		string
65	en	abstract		string
65	fr_CA	abstract		string
65		datePublished	\N	string
65		pages		string
65		isPageEnabled	\N	string
65		licenseUrl	\N	string
66	en	title	Preface	string
66	fr_CA	title		string
66	en	subtitle		string
66	fr_CA	subtitle		string
66	en	abstract		string
66	fr_CA	abstract		string
66		datePublished	\N	string
66		pages		string
66		isPageEnabled	\N	string
66		licenseUrl	\N	string
67	en	title	Introduction	string
67	fr_CA	title		string
67	en	subtitle		string
67	fr_CA	subtitle		string
67	en	abstract		string
67	fr_CA	abstract		string
67		datePublished	\N	string
67		pages		string
67		isPageEnabled	\N	string
67		licenseUrl	\N	string
68	en	title	The Emergence of Open Development in a Network Society	string
68	fr_CA	title		string
68	en	subtitle		string
68	fr_CA	subtitle		string
68	en	abstract		string
68	fr_CA	abstract		string
68		datePublished	\N	string
68		pages		string
68		isPageEnabled	\N	string
68		licenseUrl	\N	string
69	en	title	Enacting Openness in ICT4D Research	string
69	fr_CA	title		string
69	en	subtitle		string
69	fr_CA	subtitle		string
69	en	abstract		string
69	fr_CA	abstract		string
69		datePublished	\N	string
69		pages		string
69		isPageEnabled	\N	string
69		licenseUrl	\N	string
70	en	title	Transparency and Development: Ethical Consumption through Web 2.0 and the Internet of Things	string
70	fr_CA	title		string
70	en	subtitle		string
70	fr_CA	subtitle		string
70	en	abstract		string
70	fr_CA	abstract		string
70		datePublished	\N	string
70		pages		string
70		isPageEnabled	\N	string
70		licenseUrl	\N	string
71	en	title	Open Educational Resources: Opportunities and Challenges for the Developing World	string
71	fr_CA	title		string
71	en	subtitle		string
71	fr_CA	subtitle		string
71	en	abstract		string
71	fr_CA	abstract		string
71		datePublished	\N	string
71		pages		string
71		isPageEnabled	\N	string
71		licenseUrl	\N	string
\.


--
-- Data for Name: submission_chapters; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_chapters (chapter_id, primary_contact_id, publication_id, seq, source_chapter_id, doi_id) FROM stdin;
1	\N	1	1	1	\N
2	\N	1	2	2	\N
3	\N	1	3	3	\N
13	\N	4	1	13	\N
14	\N	4	2	14	\N
15	\N	4	3	15	\N
16	\N	4	4	16	\N
4	\N	2	1	4	\N
5	\N	2	2	5	\N
6	\N	2	3	6	\N
7	\N	2	4	7	\N
51	\N	13	1	51	\N
52	\N	13	2	52	\N
61	\N	16	1	61	\N
53	\N	13	3	53	\N
27	\N	7	1	27	\N
28	\N	7	2	28	\N
29	\N	7	3	29	\N
30	\N	7	4	30	\N
31	\N	7	5	31	\N
8	\N	3	1	8	\N
9	\N	3	2	9	\N
10	\N	3	3	10	\N
11	\N	3	4	11	\N
62	\N	16	2	62	\N
12	\N	3	5	12	\N
63	\N	16	3	63	\N
64	\N	16	4	64	\N
65	\N	16	5	65	\N
17	\N	5	1	17	\N
18	\N	5	2	18	\N
19	\N	5	3	19	\N
20	\N	5	4	20	\N
21	\N	5	5	21	\N
22	\N	5	6	22	\N
54	\N	14	1	54	\N
55	\N	14	2	55	\N
23	\N	6	1	23	\N
24	\N	6	2	24	\N
25	\N	6	3	25	\N
32	\N	9	1	32	\N
26	\N	6	4	26	\N
33	\N	9	2	33	\N
34	\N	9	3	34	\N
35	\N	9	4	35	\N
56	\N	14	3	56	\N
36	\N	9	5	36	\N
57	\N	14	4	57	\N
37	\N	10	1	37	\N
38	\N	10	2	38	\N
39	\N	10	3	39	\N
40	\N	10	4	40	\N
41	\N	10	5	41	\N
42	\N	10	6	42	\N
43	\N	10	7	43	\N
44	\N	10	8	44	\N
45	\N	10	9	45	\N
58	\N	15	1	58	\N
59	\N	15	2	59	\N
46	\N	11	1	46	\N
47	\N	11	2	47	\N
60	\N	15	3	60	\N
48	\N	12	1	48	\N
49	\N	12	2	49	\N
50	\N	12	3	50	\N
66	\N	17	1	66	\N
67	\N	17	2	67	\N
68	\N	17	3	68	\N
69	\N	17	4	69	\N
70	\N	17	5	70	\N
71	\N	17	6	71	\N
\.


--
-- Name: submission_chapters_chapter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.submission_chapters_chapter_id_seq', 71, true);


--
-- Data for Name: submission_comments; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_comments (comment_id, comment_type, role_id, submission_id, assoc_id, author_id, comment_title, comments, date_posted, date_modified, viewable) FROM stdin;
1	1	4096	11	10	10		<p>I recommend that the author revise this submission.</p>	2023-03-07 19:26:43	\N	1
2	1	4096	11	11	12		<p>I recommend that the author resubmit this submission.</p>	2023-03-07 19:26:55	\N	1
3	1	4096	12	13	8		<p>I recommend declining this submission.</p>	2023-03-07 19:28:59	\N	1
4	1	4096	13	16	10		<p>I recommend requiring revisions.</p>	2023-03-07 19:30:55	\N	1
5	1	4096	13	18	12		<p>I recommend resubmitting.</p>	2023-03-07 19:31:08	\N	1
6	1	4096	16	21	10		<p>I recommend that the author revise this submission.</p>	2023-03-07 19:38:03	\N	1
\.


--
-- Name: submission_comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.submission_comments_comment_id_seq', 6, true);


--
-- Data for Name: submission_file_revisions; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_file_revisions (revision_id, submission_file_id, file_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	4	3
5	5	1
6	6	2
7	7	4
8	8	5
9	9	6
10	10	7
12	12	7
13	13	6
14	14	5
15	15	4
16	16	9
17	17	10
18	18	11
19	19	12
20	20	13
21	21	14
22	22	15
23	23	16
24	24	17
25	25	17
26	26	16
27	27	15
28	28	14
29	29	18
30	30	19
31	31	20
32	32	21
33	33	22
34	34	23
35	35	23
36	36	21
37	37	22
38	38	20
39	39	19
40	40	18
41	41	23
42	42	24
43	43	25
44	44	26
45	45	27
46	46	27
47	47	26
48	48	25
49	49	24
50	50	28
51	51	29
52	52	30
53	53	31
54	54	32
55	55	32
56	56	30
57	57	31
58	58	29
59	59	28
60	60	33
61	61	34
62	62	35
63	63	36
64	64	37
65	65	38
66	66	37
67	67	38
68	68	36
69	69	35
70	70	34
71	71	39
72	72	40
73	73	41
74	74	42
75	75	43
76	76	44
77	77	45
78	78	46
79	79	47
80	80	48
81	81	49
82	82	48
83	83	49
84	84	50
85	85	51
86	86	52
87	87	52
88	88	51
89	89	50
90	90	53
91	91	54
92	92	55
93	93	55
94	94	54
95	95	53
96	96	56
97	97	57
98	98	58
99	99	59
100	100	60
101	101	61
102	102	61
103	103	60
104	104	59
105	105	57
106	106	56
107	107	58
108	108	61
109	109	60
110	110	59
111	111	58
112	112	57
113	113	56
114	114	62
115	115	63
116	116	64
117	117	64
118	118	62
119	119	63
120	120	65
121	121	66
122	122	67
123	123	68
124	124	69
125	125	68
126	126	69
127	127	67
128	128	66
129	129	65
130	130	70
131	131	71
132	132	72
133	133	73
134	134	74
135	135	75
136	136	75
137	137	74
138	138	73
139	139	72
140	140	71
141	141	70
\.


--
-- Name: submission_file_revisions_revision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.submission_file_revisions_revision_id_seq', 141, true);


--
-- Data for Name: submission_file_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_file_settings (submission_file_id, locale, setting_name, setting_value, setting_type) FROM stdin;
1	en	name	chapter1.pdf	string
2	en	name	chapter2.pdf	string
3	en	name	chapter3.pdf	string
1		chapterId	1	string
2		chapterId	2	string
3		chapterId	3	string
4	en	name	chapter3.pdf	string
4		chapterId	3	string
5	en	name	chapter1.pdf	string
5		chapterId	1	string
6	en	name	chapter2.pdf	string
6		chapterId	2	string
7	en	name	chapter1.pdf	string
8	en	name	chapter2.pdf	string
9	en	name	chapter3.pdf	string
10	en	name	chapter4.pdf	string
44	en	name	chapter3.pdf	string
7		chapterId	4	string
8		chapterId	5	string
9		chapterId	6	string
10		chapterId	7	string
12	en	name	chapter4.pdf	string
12		chapterId	7	string
13	en	name	chapter3.pdf	string
13		chapterId	6	string
14	en	name	chapter2.pdf	string
14		chapterId	5	string
15	en	name	chapter1.pdf	string
15		chapterId	4	string
16	en	name	chapter1.pdf	string
17	en	name	chapter2.pdf	string
18	en	name	chapter3.pdf	string
19	en	name	chapter4.pdf	string
20	en	name	chapter5.pdf	string
16		chapterId	8	string
17		chapterId	9	string
18		chapterId	10	string
19		chapterId	11	string
20		chapterId	12	string
21	en	name	chapter1.pdf	string
22	en	name	chapter2.pdf	string
23	en	name	chapter3.pdf	string
24	en	name	intro.pdf	string
24		chapterId	13	string
21		chapterId	14	string
22		chapterId	15	string
23		chapterId	16	string
25	en	name	intro.pdf	string
25		chapterId	13	string
26	en	name	chapter3.pdf	string
26		chapterId	16	string
27	en	name	chapter2.pdf	string
27		chapterId	15	string
28	en	name	chapter1.pdf	string
28		chapterId	14	string
29	en	name	prologue.pdf	string
30	en	name	chapter1.pdf	string
31	en	name	chapter2.pdf	string
32	en	name	chapter3.pdf	string
33	en	name	chapter4.pdf	string
34	en	name	epilogue.pdf	string
29		chapterId	17	string
30		chapterId	18	string
31		chapterId	19	string
32		chapterId	20	string
33		chapterId	21	string
34		chapterId	22	string
35	en	name	epilogue.pdf	string
35		chapterId	22	string
36	en	name	chapter3.pdf	string
36		chapterId	20	string
37	en	name	chapter4.pdf	string
37		chapterId	21	string
38	en	name	chapter2.pdf	string
38		chapterId	19	string
39	en	name	chapter1.pdf	string
39		chapterId	18	string
40	en	name	prologue.pdf	string
40		chapterId	17	string
45	en	name	chapter4.pdf	string
41	en	name	epilogue.pdf	string
41		chapterId	22	string
42	en	name	chapter1.pdf	string
43	en	name	chapter2.pdf	string
42		chapterId	23	string
43		chapterId	24	string
44		chapterId	25	string
45		chapterId	26	string
46	en	name	chapter4.pdf	string
46		chapterId	26	string
47	en	name	chapter3.pdf	string
47		chapterId	25	string
48	en	name	chapter2.pdf	string
48		chapterId	24	string
49	en	name	chapter1.pdf	string
49		chapterId	23	string
50	en	name	intro.pdf	string
51	en	name	chapter1.pdf	string
52	en	name	chapter2.pdf	string
53	en	name	chapter3.pdf	string
54	en	name	chapter4.pdf	string
50		chapterId	27	string
51		chapterId	28	string
52		chapterId	29	string
53		chapterId	30	string
54		chapterId	31	string
55	en	name	chapter4.pdf	string
55		chapterId	31	string
56	en	name	chapter2.pdf	string
56		chapterId	29	string
57	en	name	chapter3.pdf	string
57		chapterId	30	string
58	en	name	chapter1.pdf	string
58		chapterId	28	string
59	en	name	intro.pdf	string
59		chapterId	27	string
60	en	name	note.pdf	string
61	en	name	chapter1.pdf	string
62	en	name	chapter2.pdf	string
63	en	name	chapter3.pdf	string
64	en	name	chapter4.pdf	string
65	en	name	chapter5.pdf	string
61		chapterId	32	string
62		chapterId	33	string
63		chapterId	34	string
64		chapterId	35	string
65		chapterId	36	string
66	en	name	chapter4.pdf	string
66		chapterId	35	string
67	en	name	chapter5.pdf	string
67		chapterId	36	string
68	en	name	chapter3.pdf	string
68		chapterId	34	string
69	en	name	chapter2.pdf	string
69		chapterId	33	string
70	en	name	chapter1.pdf	string
70		chapterId	32	string
71	en	name	intro.pdf	string
72	en	name	chapter1.pdf	string
73	en	name	chapter2.pdf	string
74	en	name	chapter3.pdf	string
75	en	name	chapter4.pdf	string
76	en	name	chapter5.pdf	string
77	en	name	conclusion.pdf	string
78	en	name	bibliography.pdf	string
79	en	name	index.pdf	string
71		chapterId	37	string
72		chapterId	38	string
73		chapterId	39	string
74		chapterId	40	string
75		chapterId	41	string
76		chapterId	42	string
77		chapterId	43	string
78		chapterId	44	string
79		chapterId	45	string
80	en	name	intro.pdf	string
81	en	name	poems.pdf	string
80		chapterId	46	string
81		chapterId	47	string
82	en	name	intro.pdf	string
82		chapterId	46	string
83	en	name	poems.pdf	string
83		chapterId	47	string
84	en	name	chapter1.pdf	string
85	en	name	chapter2.pdf	string
86	en	name	chapter3.pdf	string
84		chapterId	48	string
85		chapterId	49	string
86		chapterId	50	string
87	en	name	chapter3.pdf	string
87		chapterId	50	string
88	en	name	chapter2.pdf	string
88		chapterId	49	string
89	en	name	chapter1.pdf	string
89		chapterId	48	string
90	en	name	chapter1.pdf	string
91	en	name	chapter2.pdf	string
92	en	name	chapter3.pdf	string
90		chapterId	51	string
91		chapterId	52	string
92		chapterId	53	string
93	en	name	chapter3.pdf	string
93		chapterId	53	string
94	en	name	chapter2.pdf	string
94		chapterId	52	string
95	en	name	chapter1.pdf	string
95		chapterId	51	string
96	en	name	chapter1.pdf	string
97	en	name	chapter2.pdf	string
98	en	name	chapter3.pdf	string
99	en	name	chapter4.pdf	string
100	en	name	Segmentation of Vascular Ultrasound Imag.pdf	string
101	en	name	The Canadian Nutrient File: Nutrient Val.pdf	string
96		chapterId	54	string
97		chapterId	55	string
98		chapterId	56	string
99		chapterId	57	string
102	en	name	The Canadian Nutrient File: Nutrient Val.pdf	string
103	en	name	Segmentation of Vascular Ultrasound Imag.pdf	string
104	en	name	chapter4.pdf	string
104		chapterId	57	string
105	en	name	chapter2.pdf	string
105		chapterId	55	string
106	en	name	chapter1.pdf	string
106		chapterId	54	string
107	en	name	chapter3.pdf	string
107		chapterId	56	string
108	en	name	The Canadian Nutrient File: Nutrient Val.pdf	string
113	en	name	chapter1.pdf	string
113		chapterId	54	string
114	en	name	chapter1.pdf	string
112	en	name	chapter2.pdf	string
112		chapterId	55	string
115	en	name	chapter2.pdf	string
111	en	name	chapter3.pdf	string
111		chapterId	56	string
116	en	name	chapter3.pdf	string
110	en	name	chapter4.pdf	string
110		chapterId	57	string
114		chapterId	58	string
109	en	name	Segmentation of Vascular Ultrasound Imag.pdf	string
115		chapterId	59	string
116		chapterId	60	string
117	en	name	chapter3.pdf	string
117		chapterId	60	string
118	en	name	chapter1.pdf	string
118		chapterId	58	string
119	en	name	chapter2.pdf	string
119		chapterId	59	string
120	en	name	foreward.pdf	string
121	en	name	preface.pdf	string
122	en	name	cases.pdf	string
123	en	name	conclusion.pdf	string
124	en	name	bibliography.pdf	string
120		chapterId	61	string
121		chapterId	62	string
122		chapterId	63	string
123		chapterId	64	string
124		chapterId	65	string
125	en	name	conclusion.pdf	string
125		chapterId	64	string
126	en	name	bibliography.pdf	string
126		chapterId	65	string
127	en	name	cases.pdf	string
127		chapterId	63	string
128	en	name	preface.pdf	string
128		chapterId	62	string
129	en	name	foreward.pdf	string
129		chapterId	61	string
130	en	name	preface.pdf	string
131	en	name	introduction.pdf	string
132	en	name	chapter1.pdf	string
133	en	name	chapter2.pdf	string
134	en	name	chapter3.pdf	string
135	en	name	chapter4.pdf	string
130		chapterId	66	string
131		chapterId	67	string
132		chapterId	68	string
133		chapterId	69	string
134		chapterId	70	string
135		chapterId	71	string
136	en	name	chapter4.pdf	string
136		chapterId	71	string
137	en	name	chapter3.pdf	string
137		chapterId	70	string
138	en	name	chapter2.pdf	string
138		chapterId	69	string
139	en	name	chapter1.pdf	string
139		chapterId	68	string
140	en	name	introduction.pdf	string
140		chapterId	67	string
141	en	name	preface.pdf	string
141		chapterId	66	string
\.


--
-- Data for Name: submission_files; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_files (submission_file_id, submission_id, file_id, source_submission_file_id, genre_id, file_stage, direct_sales_price, sales_type, viewable, created_at, updated_at, uploader_user_id, assoc_type, assoc_id, doi_id) FROM stdin;
1	1	1	\N	3	2	\N	\N	\N	2023-03-07 19:06:49	2023-03-07 19:06:49	19	\N	\N	\N
2	1	2	\N	3	2	\N	\N	\N	2023-03-07 19:06:50	2023-03-07 19:06:50	19	\N	\N	\N
3	1	3	\N	3	2	\N	\N	\N	2023-03-07 19:06:51	2023-03-07 19:06:52	19	\N	\N	\N
4	1	3	3	3	4	\N	\N	\N	2023-03-07 19:07:26	2023-03-07 19:07:26	19	523	1	\N
5	1	1	1	3	4	\N	\N	\N	2023-03-07 19:07:26	2023-03-07 19:07:26	19	523	1	\N
6	1	2	2	3	4	\N	\N	\N	2023-03-07 19:07:26	2023-03-07 19:07:26	19	523	1	\N
7	2	4	\N	3	2	\N	\N	\N	2023-03-07 19:08:18	2023-03-07 19:08:18	20	\N	\N	\N
8	2	5	\N	3	2	\N	\N	\N	2023-03-07 19:08:19	2023-03-07 19:08:20	20	\N	\N	\N
9	2	6	\N	3	2	\N	\N	\N	2023-03-07 19:08:20	2023-03-07 19:08:21	20	\N	\N	\N
10	2	7	\N	3	2	\N	\N	\N	2023-03-07 19:08:22	2023-03-07 19:08:22	20	\N	\N	\N
12	2	7	10	3	4	\N	\N	\N	2023-03-07 19:10:47	2023-03-07 19:10:47	20	523	2	\N
13	2	6	9	3	4	\N	\N	\N	2023-03-07 19:10:47	2023-03-07 19:10:47	20	523	2	\N
14	2	5	8	3	4	\N	\N	\N	2023-03-07 19:10:47	2023-03-07 19:10:47	20	523	2	\N
15	2	4	7	3	4	\N	\N	\N	2023-03-07 19:10:48	2023-03-07 19:10:48	20	523	2	\N
16	3	9	\N	3	2	\N	\N	\N	2023-03-07 19:11:27	2023-03-07 19:11:27	21	\N	\N	\N
17	3	10	\N	3	2	\N	\N	\N	2023-03-07 19:11:28	2023-03-07 19:11:28	21	\N	\N	\N
18	3	11	\N	3	2	\N	\N	\N	2023-03-07 19:11:29	2023-03-07 19:11:30	21	\N	\N	\N
19	3	12	\N	3	2	\N	\N	\N	2023-03-07 19:11:30	2023-03-07 19:11:31	21	\N	\N	\N
20	3	13	\N	3	2	\N	\N	\N	2023-03-07 19:11:32	2023-03-07 19:11:32	21	\N	\N	\N
21	4	14	\N	3	2	\N	\N	\N	2023-03-07 19:12:24	2023-03-07 19:12:24	22	\N	\N	\N
22	4	15	\N	3	2	\N	\N	\N	2023-03-07 19:12:25	2023-03-07 19:12:25	22	\N	\N	\N
23	4	16	\N	3	2	\N	\N	\N	2023-03-07 19:12:26	2023-03-07 19:12:26	22	\N	\N	\N
24	4	17	\N	3	2	\N	\N	\N	2023-03-07 19:12:27	2023-03-07 19:12:28	22	\N	\N	\N
25	4	17	24	3	19	\N	\N	\N	2023-03-07 19:13:15	2023-03-07 19:13:15	22	523	3	\N
26	4	16	23	3	19	\N	\N	\N	2023-03-07 19:13:15	2023-03-07 19:13:15	22	523	3	\N
27	4	15	22	3	19	\N	\N	\N	2023-03-07 19:13:15	2023-03-07 19:13:15	22	523	3	\N
28	4	14	21	3	19	\N	\N	\N	2023-03-07 19:13:15	2023-03-07 19:13:15	22	523	3	\N
29	5	18	\N	3	2	\N	\N	\N	2023-03-07 19:14:42	2023-03-07 19:14:42	23	\N	\N	\N
30	5	19	\N	3	2	\N	\N	\N	2023-03-07 19:14:43	2023-03-07 19:14:43	23	\N	\N	\N
31	5	20	\N	3	2	\N	\N	\N	2023-03-07 19:14:44	2023-03-07 19:14:45	23	\N	\N	\N
32	5	21	\N	3	2	\N	\N	\N	2023-03-07 19:14:45	2023-03-07 19:14:46	23	\N	\N	\N
33	5	22	\N	3	2	\N	\N	\N	2023-03-07 19:14:47	2023-03-07 19:14:47	23	\N	\N	\N
34	5	23	\N	3	2	\N	\N	\N	2023-03-07 19:14:48	2023-03-07 19:14:48	23	\N	\N	\N
35	5	23	34	3	19	\N	\N	\N	2023-03-07 19:15:54	2023-03-07 19:15:54	23	523	5	\N
36	5	21	32	3	19	\N	\N	\N	2023-03-07 19:15:54	2023-03-07 19:15:54	23	523	5	\N
37	5	22	33	3	19	\N	\N	\N	2023-03-07 19:15:55	2023-03-07 19:15:55	23	523	5	\N
38	5	20	31	3	19	\N	\N	\N	2023-03-07 19:15:55	2023-03-07 19:15:55	23	523	5	\N
39	5	19	30	3	19	\N	\N	\N	2023-03-07 19:15:55	2023-03-07 19:15:55	23	523	5	\N
40	5	18	29	3	19	\N	\N	\N	2023-03-07 19:15:55	2023-03-07 19:15:55	23	523	5	\N
44	6	26	\N	3	2	\N	\N	\N	2023-03-07 19:18:16	2023-03-07 19:18:17	24	\N	\N	\N
41	5	23	34	3	10	0	openAccess	1	2023-03-07 19:17:24	2023-03-07 19:17:35	23	521	2	\N
42	6	24	\N	3	2	\N	\N	\N	2023-03-07 19:18:14	2023-03-07 19:18:14	24	\N	\N	\N
43	6	25	\N	3	2	\N	\N	\N	2023-03-07 19:18:15	2023-03-07 19:18:16	24	\N	\N	\N
45	6	27	\N	3	2	\N	\N	\N	2023-03-07 19:18:18	2023-03-07 19:18:18	24	\N	\N	\N
46	6	27	45	3	19	\N	\N	\N	2023-03-07 19:19:04	2023-03-07 19:19:04	24	523	7	\N
47	6	26	44	3	19	\N	\N	\N	2023-03-07 19:19:04	2023-03-07 19:19:04	24	523	7	\N
48	6	25	43	3	19	\N	\N	\N	2023-03-07 19:19:05	2023-03-07 19:19:05	24	523	7	\N
49	6	24	42	3	19	\N	\N	\N	2023-03-07 19:19:05	2023-03-07 19:19:05	24	523	7	\N
50	7	28	\N	3	2	\N	\N	\N	2023-03-07 19:20:13	2023-03-07 19:20:13	25	\N	\N	\N
51	7	29	\N	3	2	\N	\N	\N	2023-03-07 19:20:14	2023-03-07 19:20:15	25	\N	\N	\N
52	7	30	\N	3	2	\N	\N	\N	2023-03-07 19:20:16	2023-03-07 19:20:16	25	\N	\N	\N
53	7	31	\N	3	2	\N	\N	\N	2023-03-07 19:20:17	2023-03-07 19:20:17	25	\N	\N	\N
54	7	32	\N	3	2	\N	\N	\N	2023-03-07 19:20:18	2023-03-07 19:20:19	25	\N	\N	\N
55	7	32	54	3	4	\N	\N	\N	2023-03-07 19:21:18	2023-03-07 19:21:18	25	523	8	\N
56	7	30	52	3	4	\N	\N	\N	2023-03-07 19:21:18	2023-03-07 19:21:18	25	523	8	\N
57	7	31	53	3	4	\N	\N	\N	2023-03-07 19:21:18	2023-03-07 19:21:18	25	523	8	\N
58	7	29	51	3	4	\N	\N	\N	2023-03-07 19:21:18	2023-03-07 19:21:18	25	523	8	\N
59	7	28	50	3	4	\N	\N	\N	2023-03-07 19:21:18	2023-03-07 19:21:18	25	523	8	\N
60	8	33	\N	3	2	\N	\N	\N	2023-03-07 19:22:02	2023-03-07 19:22:02	3	\N	\N	\N
61	9	34	\N	3	2	\N	\N	\N	2023-03-07 19:22:16	2023-03-07 19:22:16	26	\N	\N	\N
62	9	35	\N	3	2	\N	\N	\N	2023-03-07 19:22:17	2023-03-07 19:22:17	26	\N	\N	\N
63	9	36	\N	3	2	\N	\N	\N	2023-03-07 19:22:18	2023-03-07 19:22:19	26	\N	\N	\N
64	9	37	\N	3	2	\N	\N	\N	2023-03-07 19:22:19	2023-03-07 19:22:20	26	\N	\N	\N
65	9	38	\N	3	2	\N	\N	\N	2023-03-07 19:22:21	2023-03-07 19:22:21	26	\N	\N	\N
66	9	37	64	3	19	\N	\N	\N	2023-03-07 19:23:19	2023-03-07 19:23:19	26	523	9	\N
67	9	38	65	3	19	\N	\N	\N	2023-03-07 19:23:19	2023-03-07 19:23:19	26	523	9	\N
68	9	36	63	3	19	\N	\N	\N	2023-03-07 19:23:19	2023-03-07 19:23:19	26	523	9	\N
69	9	35	62	3	19	\N	\N	\N	2023-03-07 19:23:19	2023-03-07 19:23:19	26	523	9	\N
70	9	34	61	3	19	\N	\N	\N	2023-03-07 19:23:19	2023-03-07 19:23:19	26	523	9	\N
71	10	39	\N	3	2	\N	\N	\N	2023-03-07 19:23:39	2023-03-07 19:23:39	27	\N	\N	\N
72	10	40	\N	3	2	\N	\N	\N	2023-03-07 19:23:40	2023-03-07 19:23:40	27	\N	\N	\N
73	10	41	\N	3	2	\N	\N	\N	2023-03-07 19:23:41	2023-03-07 19:23:42	27	\N	\N	\N
114	15	62	\N	3	2	\N	\N	\N	2023-03-07 19:35:18	2023-03-07 19:35:18	32	\N	\N	\N
74	10	42	\N	3	2	\N	\N	\N	2023-03-07 19:23:42	2023-03-07 19:23:43	27	\N	\N	\N
115	15	63	\N	3	2	\N	\N	\N	2023-03-07 19:35:19	2023-03-07 19:35:20	32	\N	\N	\N
75	10	43	\N	3	2	\N	\N	\N	2023-03-07 19:23:44	2023-03-07 19:23:44	27	\N	\N	\N
116	15	64	\N	3	2	\N	\N	\N	2023-03-07 19:35:20	2023-03-07 19:35:21	32	\N	\N	\N
76	10	44	\N	3	2	\N	\N	\N	2023-03-07 19:23:45	2023-03-07 19:23:46	27	\N	\N	\N
117	15	64	116	3	4	\N	\N	\N	2023-03-07 19:35:59	2023-03-07 19:35:59	32	523	17	\N
77	10	45	\N	3	2	\N	\N	\N	2023-03-07 19:23:46	2023-03-07 19:23:47	27	\N	\N	\N
118	15	62	114	3	4	\N	\N	\N	2023-03-07 19:35:59	2023-03-07 19:35:59	32	523	17	\N
78	10	46	\N	3	2	\N	\N	\N	2023-03-07 19:23:48	2023-03-07 19:23:48	27	\N	\N	\N
119	15	63	115	3	4	\N	\N	\N	2023-03-07 19:35:59	2023-03-07 19:35:59	32	523	17	\N
79	10	47	\N	3	2	\N	\N	\N	2023-03-07 19:23:49	2023-03-07 19:23:50	27	\N	\N	\N
120	16	65	\N	3	2	\N	\N	\N	2023-03-07 19:36:18	2023-03-07 19:36:18	33	\N	\N	\N
80	11	48	\N	3	2	\N	\N	\N	2023-03-07 19:25:26	2023-03-07 19:25:27	28	\N	\N	\N
121	16	66	\N	3	2	\N	\N	\N	2023-03-07 19:36:19	2023-03-07 19:36:20	33	\N	\N	\N
81	11	49	\N	3	2	\N	\N	\N	2023-03-07 19:25:27	2023-03-07 19:25:28	28	\N	\N	\N
82	11	48	80	3	19	\N	\N	\N	2023-03-07 19:25:56	2023-03-07 19:25:56	28	523	10	\N
83	11	49	81	3	19	\N	\N	\N	2023-03-07 19:25:57	2023-03-07 19:25:57	28	523	10	\N
122	16	67	\N	3	2	\N	\N	\N	2023-03-07 19:36:21	2023-03-07 19:36:21	33	\N	\N	\N
84	12	50	\N	3	2	\N	\N	\N	2023-03-07 19:27:34	2023-03-07 19:27:35	29	\N	\N	\N
123	16	68	\N	3	2	\N	\N	\N	2023-03-07 19:36:22	2023-03-07 19:36:22	33	\N	\N	\N
85	12	51	\N	3	2	\N	\N	\N	2023-03-07 19:27:35	2023-03-07 19:27:36	29	\N	\N	\N
124	16	69	\N	3	2	\N	\N	\N	2023-03-07 19:36:23	2023-03-07 19:36:24	33	\N	\N	\N
86	12	52	\N	3	2	\N	\N	\N	2023-03-07 19:27:37	2023-03-07 19:27:37	29	\N	\N	\N
87	12	52	86	3	19	\N	\N	\N	2023-03-07 19:28:19	2023-03-07 19:28:19	29	523	12	\N
88	12	51	85	3	19	\N	\N	\N	2023-03-07 19:28:19	2023-03-07 19:28:19	29	523	12	\N
89	12	50	84	3	19	\N	\N	\N	2023-03-07 19:28:19	2023-03-07 19:28:19	29	523	12	\N
125	16	68	123	3	4	\N	\N	\N	2023-03-07 19:37:19	2023-03-07 19:37:19	33	523	18	\N
90	13	53	\N	3	2	\N	\N	\N	2023-03-07 19:29:14	2023-03-07 19:29:14	30	\N	\N	\N
126	16	69	124	3	4	\N	\N	\N	2023-03-07 19:37:19	2023-03-07 19:37:19	33	523	18	\N
91	13	54	\N	3	2	\N	\N	\N	2023-03-07 19:29:15	2023-03-07 19:29:15	30	\N	\N	\N
127	16	67	122	3	4	\N	\N	\N	2023-03-07 19:37:19	2023-03-07 19:37:19	33	523	18	\N
92	13	55	\N	3	2	\N	\N	\N	2023-03-07 19:29:16	2023-03-07 19:29:16	30	\N	\N	\N
93	13	55	92	3	19	\N	\N	\N	2023-03-07 19:29:56	2023-03-07 19:29:56	30	523	13	\N
94	13	54	91	3	19	\N	\N	\N	2023-03-07 19:29:56	2023-03-07 19:29:56	30	523	13	\N
95	13	53	90	3	19	\N	\N	\N	2023-03-07 19:29:56	2023-03-07 19:29:56	30	523	13	\N
128	16	66	121	3	4	\N	\N	\N	2023-03-07 19:37:20	2023-03-07 19:37:20	33	523	18	\N
96	14	56	\N	3	2	\N	\N	\N	2023-03-07 19:31:49	2023-03-07 19:31:50	31	\N	\N	\N
129	16	65	120	3	4	\N	\N	\N	2023-03-07 19:37:20	2023-03-07 19:37:20	33	523	18	\N
97	14	57	\N	3	2	\N	\N	\N	2023-03-07 19:31:51	2023-03-07 19:31:51	31	\N	\N	\N
130	17	70	\N	3	2	\N	\N	\N	2023-03-07 19:38:17	2023-03-07 19:38:17	34	\N	\N	\N
98	14	58	\N	3	2	\N	\N	\N	2023-03-07 19:31:52	2023-03-07 19:31:52	31	\N	\N	\N
131	17	71	\N	3	2	\N	\N	\N	2023-03-07 19:38:18	2023-03-07 19:38:19	34	\N	\N	\N
99	14	59	\N	3	2	\N	\N	\N	2023-03-07 19:31:53	2023-03-07 19:31:54	31	\N	\N	\N
132	17	72	\N	3	2	\N	\N	\N	2023-03-07 19:38:19	2023-03-07 19:38:20	34	\N	\N	\N
100	14	60	\N	13	2	\N	\N	\N	2023-03-07 19:31:54	2023-03-07 19:31:55	31	\N	\N	\N
133	17	73	\N	3	2	\N	\N	\N	2023-03-07 19:38:21	2023-03-07 19:38:21	34	\N	\N	\N
101	14	61	\N	9	2	\N	\N	\N	2023-03-07 19:31:56	2023-03-07 19:31:56	31	\N	\N	\N
102	14	61	101	9	19	\N	\N	\N	2023-03-07 19:32:47	2023-03-07 19:32:47	31	523	15	\N
103	14	60	100	13	19	\N	\N	\N	2023-03-07 19:32:47	2023-03-07 19:32:47	31	523	15	\N
104	14	59	99	3	19	\N	\N	\N	2023-03-07 19:32:47	2023-03-07 19:32:47	31	523	15	\N
105	14	57	97	3	19	\N	\N	\N	2023-03-07 19:32:47	2023-03-07 19:32:47	31	523	15	\N
106	14	56	96	3	19	\N	\N	\N	2023-03-07 19:32:47	2023-03-07 19:32:47	31	523	15	\N
107	14	58	98	3	19	\N	\N	\N	2023-03-07 19:32:47	2023-03-07 19:32:47	31	523	15	\N
110	14	59	99	3	10	0	openAccess	1	2023-03-07 19:34:16	2023-03-07 19:34:47	31	521	3	\N
113	14	56	96	3	10	0	openAccess	1	2023-03-07 19:34:16	2023-03-07 19:34:28	31	521	3	\N
134	17	74	\N	3	2	\N	\N	\N	2023-03-07 19:38:22	2023-03-07 19:38:22	34	\N	\N	\N
112	14	57	97	3	10	0	openAccess	1	2023-03-07 19:34:16	2023-03-07 19:34:34	31	521	3	\N
109	14	60	100	13	10	0	openAccess	1	2023-03-07 19:34:16	2023-03-07 19:34:53	31	521	3	\N
111	14	58	98	3	10	0	openAccess	1	2023-03-07 19:34:16	2023-03-07 19:34:41	31	521	3	\N
135	17	75	\N	3	2	\N	\N	\N	2023-03-07 19:38:23	2023-03-07 19:38:24	34	\N	\N	\N
136	17	75	135	3	19	\N	\N	\N	2023-03-07 19:39:39	2023-03-07 19:39:39	34	523	19	\N
108	14	61	101	9	10	0	openAccess	1	2023-03-07 19:34:16	2023-03-07 19:35:00	31	521	3	\N
137	17	74	134	3	19	\N	\N	\N	2023-03-07 19:39:40	2023-03-07 19:39:40	34	523	19	\N
138	17	73	133	3	19	\N	\N	\N	2023-03-07 19:39:40	2023-03-07 19:39:40	34	523	19	\N
139	17	72	132	3	19	\N	\N	\N	2023-03-07 19:39:40	2023-03-07 19:39:40	34	523	19	\N
140	17	71	131	3	19	\N	\N	\N	2023-03-07 19:39:40	2023-03-07 19:39:40	34	523	19	\N
141	17	70	130	3	19	\N	\N	\N	2023-03-07 19:39:40	2023-03-07 19:39:40	34	523	19	\N
\.


--
-- Name: submission_files_submission_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.submission_files_submission_file_id_seq', 141, true);


--
-- Data for Name: submission_search_keyword_list; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_search_keyword_list (keyword_id, keyword_text) FROM stdin;
1	chantal
2	allan
3	university
4	southern
5	california
6	bomb
7	canada
8	unkind
9	remarks
10	american
11	media
12	united
13	states
14	nations
15	border
16	continent
17	anti-american
18	sentiment
19	documented
20	americans
21	northern
22	neighbour
23	examines
24	portrayed
25	confederation
26	obama’s
27	election
28	examining
29	major
30	events
31	tested
32	bilateral
33	relations
34	tracks
35	history
36	anti-canadianism
37	informative
38	thought
39	provoking
40	times
41	hilarious
42	book
43	reveals
44	layer
45	complex
46	relationship
47	canadian
48	studies
49	communication
50	cultural
51	political
52	international
53	michael
54	dawson
55	alberta
56	brian
57	dupuis
58	athabasca
59	wilson
60	calgary
61	bricks
62	brains
63	embodied
64	cognitive
65	science
66	lego
67	robots
68	introduces
69	illustrates
70	foundational
71	ideas
72	construction
73	observation
74	mindstorms
75	discussing
76	characteristics
77	distinguish
78	classical
79	places
80	renewed
81	emphasis
82	sensing
83	acting
84	importance
85	embodiment
86	exploration
87	distributed
88	notions
89	control
90	development
91	theories
92	synthesizing
93	simple
94	systems
95	exploring
96	behaviour
97	numerous
98	examples
99	illustrate
100	key
101	theme
102	agent’s
103	environment
104	agents
105	capable
106	exhibiting
107	sense
108	affect
109	world
110	psychology
\.


--
-- Name: submission_search_keyword_list_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.submission_search_keyword_list_keyword_id_seq', 110, true);


--
-- Data for Name: submission_search_object_keywords; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_search_object_keywords (object_id, keyword_id, pos) FROM stdin;
17	53	0
17	54	1
17	3	2
17	55	3
17	56	4
17	57	5
17	58	6
17	3	7
17	53	8
17	59	9
17	3	10
17	60	11
18	61	0
18	62	1
18	63	2
18	64	3
18	65	4
18	66	5
18	67	6
19	61	0
19	62	1
19	68	2
19	63	3
19	64	4
19	65	5
19	69	6
19	70	7
19	71	8
19	72	9
19	73	10
19	66	11
19	74	12
19	67	13
19	75	14
19	76	15
19	77	16
19	63	17
19	64	18
19	65	19
19	78	20
19	64	21
19	65	22
19	61	23
19	62	24
19	79	25
19	80	26
19	81	27
19	82	28
19	83	29
19	84	30
19	85	31
19	86	32
19	87	33
19	88	34
19	89	35
19	90	36
19	91	37
19	92	38
19	93	39
19	94	40
19	95	41
19	96	42
19	97	43
19	98	44
19	99	45
19	100	46
19	101	47
19	84	48
19	102	49
19	103	50
19	93	51
19	104	52
19	66	53
19	67	54
19	105	55
19	106	56
19	45	57
19	96	58
19	107	59
19	108	60
19	109	61
21	110	0
9	1	0
9	2	1
9	3	2
9	4	3
9	5	4
10	6	0
10	7	1
10	8	2
10	9	3
10	10	4
10	11	5
11	7	0
11	12	1
11	13	2
11	14	3
11	15	4
11	16	5
11	17	6
11	18	7
11	7	8
11	19	9
11	20	10
11	21	11
11	22	12
11	2	13
11	23	14
11	10	15
11	11	16
11	24	17
11	7	18
11	25	19
11	26	20
11	27	21
11	28	22
11	29	23
11	30	24
11	31	25
11	32	26
11	33	27
11	6	28
11	7	29
11	34	30
11	35	31
11	36	32
11	37	33
11	38	34
11	39	35
11	40	36
11	41	37
11	42	38
11	43	39
11	44	40
11	45	41
11	46	42
11	7	43
11	12	44
11	13	45
13	47	0
13	48	1
13	49	2
13	50	3
13	48	4
13	51	5
13	52	6
13	48	7
\.


--
-- Data for Name: submission_search_objects; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_search_objects (object_id, submission_id, type, assoc_id) FROM stdin;
9	5	1	0
10	5	2	0
11	5	4	0
12	5	16	0
13	5	17	0
14	5	8	0
15	5	32	0
16	5	64	0
17	14	1	0
18	14	2	0
19	14	4	0
20	14	16	0
21	14	17	0
22	14	8	0
23	14	32	0
24	14	64	0
\.


--
-- Name: submission_search_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.submission_search_objects_object_id_seq', 24, true);


--
-- Data for Name: submission_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submission_settings (submission_id, locale, setting_name, setting_value) FROM stdin;
\.


--
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.submissions (submission_id, context_id, current_publication_id, date_last_activity, date_submitted, last_modified, stage_id, locale, status, submission_progress, work_type) FROM stdin;
10	1	10	2023-03-07 19:25:11	2023-03-07 19:25:11	2023-03-07 19:25:11	1	en	1		0
7	1	7	2023-03-07 19:21:46	2023-03-07 19:20:59	2023-03-07 19:20:59	4	en	1		0
8	1	8	2023-03-07 19:22:03	2023-03-07 19:22:03	2023-03-07 19:22:03	1	en	1		0
1	1	1	2023-03-07 19:07:51	2023-03-07 19:07:12	2023-03-07 19:07:12	4	en	1		0
5	1	5	2023-03-07 19:18:00	2023-03-07 19:15:36	2023-03-07 19:15:36	5	en	3		0
16	1	16	2023-03-07 19:38:03	2023-03-07 19:36:59	2023-03-07 19:36:59	3	en	1		0
4	1	4	2023-03-07 19:14:28	2023-03-07 19:12:58	2023-03-07 19:12:58	5	en	1		0
11	1	11	2023-03-07 19:27:16	2023-03-07 19:25:41	2023-03-07 19:25:41	4	en	1		0
13	1	13	2023-03-07 19:31:31	2023-03-07 19:29:39	2023-03-07 19:29:39	4	en	1		0
2	1	2	2023-03-07 19:11:12	2023-03-07 19:10:17	2023-03-07 19:10:17	3	en	1		1
14	1	14	2023-03-07 19:35:03	2023-03-07 19:32:27	2023-03-07 19:32:27	5	en	3		0
9	1	9	2023-03-07 19:23:19	2023-03-07 19:23:01	2023-03-07 19:23:01	2	en	1		0
6	1	6	2023-03-07 19:19:44	2023-03-07 19:18:48	2023-03-07 19:18:48	2	en	1		0
3	1	3	2023-03-07 19:12:09	2023-03-07 19:12:09	2023-03-07 19:12:09	1	en	1		0
12	1	12	2023-03-07 19:28:59	2023-03-07 19:28:01	2023-03-07 19:28:01	2	en	1		0
15	1	15	2023-03-07 19:35:59	2023-03-07 19:35:41	2023-03-07 19:35:41	3	en	1		0
17	1	17	2023-03-07 19:40:00	2023-03-07 19:39:18	2023-03-07 19:39:18	2	en	1		0
\.


--
-- Name: submissions_submission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.submissions_submission_id_seq', 17, true);


--
-- Data for Name: temporary_files; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.temporary_files (file_id, user_id, file_name, file_type, file_size, original_file_name, date_uploaded) FROM stdin;
\.


--
-- Name: temporary_files_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.temporary_files_file_id_seq', 1, false);


--
-- Data for Name: usage_stats_institution_temporary_records; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.usage_stats_institution_temporary_records (load_id, line_number, institution_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_total_temporary_records; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.usage_stats_total_temporary_records (date, ip, user_agent, line_number, canonical_url, series_id, context_id, submission_id, chapter_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_item_investigations_temporary_records; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.usage_stats_unique_item_investigations_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, chapter_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_item_requests_temporary_records; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.usage_stats_unique_item_requests_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, chapter_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_title_investigations_temporary_records; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.usage_stats_unique_title_investigations_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, chapter_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: usage_stats_unique_title_requests_temporary_records; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.usage_stats_unique_title_requests_temporary_records (date, ip, user_agent, line_number, context_id, submission_id, chapter_id, representation_id, submission_file_id, assoc_type, file_type, country, region, city, load_id) FROM stdin;
\.


--
-- Data for Name: user_group_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.user_group_settings (user_group_id, locale, setting_name, setting_value) FROM stdin;
1	en	name	Site Admin
1	fr_CA	name	Administrateur-trice du site
17	en	abbrev	IR
17		abbrevLocaleKey	default.groups.abbrev.internalReviewer
17	fr_CA	name	Évaluateur-trice interne
17	en	name	Internal Reviewer
8	en	abbrev	FC
14	fr_CA	name	Rédacteur/Rédactrice en chef du volume
9	fr_CA	abbrev	Indx
15	en	name	Chapter Author
15		nameLocaleKey	default.groups.name.chapterAuthor
11		nameLocaleKey	default.groups.name.marketing
11	fr_CA	abbrev	CVM
14	fr_CA	abbrev	RV
2		nameLocaleKey	default.groups.name.manager
3	en	name	Press editor
16	en	name	Translator
16		nameLocaleKey	default.groups.name.translator
4		nameLocaleKey	default.groups.name.productionEditor
4		abbrevLocaleKey	default.groups.abbrev.productionEditor
12	fr_CA	abbrev	CorEp
12	fr_CA	name	Correcteur-trice d'épreuves
9	en	abbrev	IND
18	en	name	External Reviewer
11	en	abbrev	MS
11	fr_CA	name	Coordonnateur-trice des ventes et du marketing
11	en	name	Marketing and sales coordinator
2	fr_CA	abbrev	MP
2	fr_CA	name	Gestionnaire de la presse
3		abbrevLocaleKey	default.groups.abbrev.editor
16	fr_CA	abbrev	Trad
16	en	abbrev	Trans
16		abbrevLocaleKey	default.groups.abbrev.translator
4	en	abbrev	ProdE
12	en	name	Proofreader
5	en	name	Series editor
6	en	abbrev	CE
2		abbrevLocaleKey	default.groups.abbrev.manager
3		nameLocaleKey	default.groups.name.editor
4	fr_CA	name	Directeur-trice de production
12		nameLocaleKey	default.groups.name.proofreader
12		abbrevLocaleKey	default.groups.abbrev.proofreader
8	en	name	Funding coordinator
14	en	abbrev	VE
5	fr_CA	abbrev	RS
5	en	abbrev	AcqE
6	fr_CA	name	Réviseur-e
14		abbrevLocaleKey	default.groups.abbrev.volumeEditor
9	fr_CA	name	Indexeur-e
9	en	name	Indexer
10		nameLocaleKey	default.groups.name.layoutEditor
6	en	name	Copyeditor
15	fr_CA	abbrev	AC
15	en	abbrev	CA
15	fr_CA	name	Auteur du chapitre
9		nameLocaleKey	default.groups.name.indexer
15		abbrevLocaleKey	default.groups.abbrev.chapterAuthor
9		abbrevLocaleKey	default.groups.abbrev.indexer
18	fr_CA	abbrev	EvEx
5		nameLocaleKey	default.groups.name.sectionEditor
6		nameLocaleKey	default.groups.name.copyeditor
6		abbrevLocaleKey	default.groups.abbrev.copyeditor
18	en	abbrev	ER
16	fr_CA	name	Traducteur-trice
4	fr_CA	abbrev	DirProd
13	fr_CA	abbrev	AU
13	fr_CA	name	Auteur-e
13		abbrevLocaleKey	default.groups.abbrev.author
7	fr_CA	abbrev	Design
10		abbrevLocaleKey	default.groups.abbrev.layoutEditor
13	en	name	Author
11		abbrevLocaleKey	default.groups.abbrev.marketing
19	en	abbrev	Read
4	en	name	Production editor
7	en	name	Designer
5		abbrevLocaleKey	default.groups.abbrev.sectionEditor
7		nameLocaleKey	default.groups.name.designer
7		abbrevLocaleKey	default.groups.abbrev.designer
17	fr_CA	abbrev	EvalInt
12	en	abbrev	PR
6	fr_CA	abbrev	RÉV
8		nameLocaleKey	default.groups.name.funding
14	en	name	Volume editor
5	fr_CA	name	Rédacteur/Rédactrice en chef de la série
13	en	abbrev	AU
13		nameLocaleKey	default.groups.name.author
7	en	abbrev	Design
7	fr_CA	name	Designer
17		nameLocaleKey	default.groups.name.internalReviewer
14		nameLocaleKey	default.groups.name.volumeEditor
8	fr_CA	name	Coordonnateur-trice du financement
8		abbrevLocaleKey	default.groups.abbrev.funding
2	en	name	Press manager
8	fr_CA	abbrev	CF
18	fr_CA	name	Évaluateur-trice externe
10	en	abbrev	LE
10	fr_CA	name	Responsable de la mise en page
10	en	name	Layout Editor
18		abbrevLocaleKey	default.groups.abbrev.externalReviewer
10	fr_CA	abbrev	RespMP
2	en	abbrev	PM
19		abbrevLocaleKey	default.groups.abbrev.reader
3	fr_CA	abbrev	RP
3	en	abbrev	PE
18		nameLocaleKey	default.groups.name.externalReviewer
19	fr_CA	abbrev	Lect
19	en	name	Reader
19	fr_CA	name	Lecteur-trice
19		nameLocaleKey	default.groups.name.reader
3	fr_CA	name	Rédacteur/Rédactrice en chef de la presse
14		recommendOnly	0
\.


--
-- Data for Name: user_group_stage; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.user_group_stage (context_id, user_group_id, stage_id) FROM stdin;
1	3	1
1	3	2
1	3	3
1	3	4
1	3	5
1	4	4
1	4	5
1	5	1
1	5	2
1	5	3
1	5	4
1	5	5
1	6	4
1	7	5
1	8	1
1	8	2
1	8	3
1	9	5
1	10	5
1	11	4
1	12	5
1	13	1
1	13	2
1	13	3
1	13	4
1	13	5
1	15	4
1	15	5
1	16	1
1	16	2
1	16	3
1	16	4
1	16	5
1	17	2
1	18	3
1	14	1
1	14	2
1	14	3
1	14	4
1	14	5
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.user_groups (user_group_id, context_id, role_id, is_default, show_title, permit_self_registration, permit_metadata_edit) FROM stdin;
1	0	1	1	1	0	0
2	1	16	1	1	0	1
19	1	1048576	1	1	1	0
3	1	16	1	1	0	1
16	1	65536	1	1	0	0
4	1	16	1	1	0	1
12	1	4097	1	1	0	0
5	1	17	1	1	0	1
6	1	4097	1	1	0	0
13	1	65536	1	1	1	0
7	1	4097	1	1	0	0
17	1	4096	1	1	0	0
8	1	4097	1	1	0	0
9	1	4097	1	1	0	0
18	1	4096	1	1	1	0
10	1	4097	1	1	0	0
15	1	65536	1	1	1	0
11	1	4097	1	1	0	0
14	1	65536	1	1	1	0
\.


--
-- Name: user_groups_user_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.user_groups_user_group_id_seq', 19, true);


--
-- Data for Name: user_interests; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.user_interests (user_id, controlled_vocab_entry_id) FROM stdin;
\.


--
-- Data for Name: user_settings; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.user_settings (user_id, locale, setting_name, setting_value) FROM stdin;
11	en	affiliation	KNUST
11	fr_CA	affiliation	
11	en	biography	
11	fr_CA	biography	
11	en	familyName	Zacharia
11	fr_CA	familyName	
11	en	givenName	Al
11	fr_CA	givenName	
11		orcid	
11	en	preferredPublicName	
3	en	familyName	Barnes
1	en	familyName	admin
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
7	en	affiliation	Utrecht University
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
9	en	affiliation	University of Manitoba
9	fr_CA	affiliation	
9	en	biography	
9	fr_CA	biography	
9	en	familyName	McCrae
9	fr_CA	familyName	
9	en	givenName	Aisla
9	fr_CA	givenName	
9		orcid	
9	en	preferredPublicName	
9	fr_CA	preferredPublicName	
9	en	signature	
9	fr_CA	signature	
11	fr_CA	preferredPublicName	
11	en	signature	
11	fr_CA	signature	
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
1	en	givenName	admin
2	fr_CA	affiliation	
2	en	biography	
3	en	preferredPublicName	
3	fr_CA	preferredPublicName	
3	en	signature	
3	fr_CA	biography	
3	fr_CA	familyName	
6	en	affiliation	Kyoto University
8	en	affiliation	McGill University
3	en	givenName	Daniel
10	en	biography	
10	en	affiliation	State University of New York
3	en	biography	
6	fr_CA	affiliation	
6	en	biography	
6	fr_CA	biography	
6	en	familyName	Inoue
6	fr_CA	familyName	
6	en	givenName	Minoti
6	fr_CA	givenName	
6		orcid	
6	en	preferredPublicName	
6	en	signature	
6	fr_CA	signature	
10	fr_CA	affiliation	
10	fr_CA	biography	
10	en	familyName	Gallego
10	fr_CA	familyName	
10	en	givenName	Adela
10	fr_CA	givenName	
10		orcid	
10	en	preferredPublicName	
10	fr_CA	preferredPublicName	
10	en	signature	
10	fr_CA	signature	
3	fr_CA	affiliation	
12	en	affiliation	Madrid
12	fr_CA	affiliation	
12	en	biography	
12	en	familyName	Favio
3	fr_CA	givenName	
3	fr_CA	signature	
8	fr_CA	affiliation	
8	en	biography	
8	fr_CA	biography	
8	en	familyName	Hudson
8	fr_CA	familyName	
8	en	givenName	Paul
8	fr_CA	givenName	
8		orcid	
8	en	preferredPublicName	
8	en	signature	
8	fr_CA	signature	
3		orcid	
13	en	affiliation	Ghent University
13	fr_CA	affiliation	
13	en	biography	
13	fr_CA	biography	
13	en	familyName	Fritz
13	fr_CA	familyName	
13	en	givenName	Maria
13	fr_CA	givenName	
13		orcid	
13	en	preferredPublicName	
13	fr_CA	preferredPublicName	
13	en	signature	
13	fr_CA	signature	
14	en	affiliation	Universidad de Chile
14	fr_CA	affiliation	
14	en	biography	
14	fr_CA	biography	
14	en	familyName	Vogt
14	fr_CA	familyName	
14	en	givenName	Sarah
14	fr_CA	givenName	
14		orcid	
14	en	preferredPublicName	
14	fr_CA	preferredPublicName	
14	en	signature	
14	fr_CA	signature	
15	en	affiliation	Duke University
15	fr_CA	affiliation	
15	en	biography	
15	fr_CA	biography	
15	en	familyName	Cox
15	fr_CA	familyName	
15	en	givenName	Graham
15	fr_CA	givenName	
15		orcid	
15	en	preferredPublicName	
15	fr_CA	preferredPublicName	
15	en	signature	
15	fr_CA	signature	
16	en	affiliation	University of Cape Town
16	fr_CA	affiliation	
16	en	biography	
16	fr_CA	biography	
16	en	familyName	Hellier
16	fr_CA	familyName	
16	en	givenName	Stephen
16	fr_CA	givenName	
16		orcid	
16	en	preferredPublicName	
16	fr_CA	preferredPublicName	
16	en	signature	
16	fr_CA	signature	
17	en	affiliation	Imperial College London
17	fr_CA	affiliation	
17	en	biography	
17	fr_CA	biography	
17	en	familyName	Turner
17	fr_CA	familyName	
17	en	givenName	Catherine
17	fr_CA	givenName	
17		orcid	
17	en	preferredPublicName	
17	fr_CA	preferredPublicName	
17	en	signature	
17	fr_CA	signature	
18	en	affiliation	National University of Singapore
18	fr_CA	affiliation	
18	en	biography	
18	fr_CA	biography	
18	en	familyName	Kumar
18	fr_CA	familyName	
18	en	givenName	Sabine
18	fr_CA	givenName	
18		orcid	
18	en	preferredPublicName	
18	fr_CA	preferredPublicName	
18	en	signature	
18	fr_CA	signature	
23	en	affiliation	University of Southern California
2	en	affiliation	Universidad Nacional Autónoma de México
19	en	affiliation	University of Calgary
19	en	familyName	Clark
19	en	givenName	Arthur
20	en	affiliation	Athabasca University
20	en	familyName	Finkel
20	en	givenName	Alvin
23	en	familyName	Allan
21	en	affiliation	Athabasca University
21	en	familyName	Barnetson
21	en	givenName	Bob
22	en	affiliation	University of British Columbia
22	en	familyName	Beaty
22	en	givenName	Bart
25	en	affiliation	Athabasca University
23	en	givenName	Chantal
25	en	familyName	Kennepohl
25	en	givenName	Dietmar
26	en	familyName	Perini
24	en	affiliation	SUNY
24	en	familyName	Bernnard
24	en	givenName	Deborah
27	en	affiliation	Buffalo National Park Foundation
6	fr_CA	preferredPublicName	
26	en	givenName	Fernando
26	en	affiliation	University of Sussex
27	en	familyName	Brower
27	en	givenName	Jennifer
28	en	affiliation	University of Alberta
28	en	familyName	Locke Hart
28	en	givenName	Jonathan
12	en	givenName	Gonzalo
12	fr_CA	givenName	
12		orcid	
12	en	preferredPublicName	
12	fr_CA	preferredPublicName	
12	en	signature	
12	fr_CA	signature	
3	en	affiliation	University of Melbourne
8	fr_CA	preferredPublicName	
29	en	affiliation	International Development Research Centre
29	en	familyName	Elder
29	en	givenName	Laurent
12	fr_CA	biography	
30	en	affiliation	Athabasca University
30	en	familyName	Ally
30	en	givenName	Mohamed
12	fr_CA	familyName	
31	en	affiliation	University of Alberta
31	en	familyName	Dawson
31	en	givenName	Michael
32	en	affiliation	University of Calgary
32	en	familyName	Foran
32	en	givenName	Max
33	en	affiliation	London School of Economics
33	en	familyName	Power
33	en	givenName	Michael
34	en	affiliation	International Development Research Centre
34	en	familyName	Smith
34	en	givenName	Matthew
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.user_user_groups (user_group_id, user_id) FROM stdin;
1	1
2	1
2	2
3	3
5	4
5	5
5	6
17	7
17	8
17	9
18	10
18	11
18	12
6	13
6	14
10	15
10	16
12	17
12	18
19	19
13	19
19	20
13	20
19	21
13	21
19	22
13	22
19	23
13	23
19	24
13	24
19	25
13	25
19	26
13	26
19	27
13	27
19	28
13	28
19	29
13	29
19	30
13	30
19	31
13	31
19	32
13	32
19	33
13	33
19	34
13	34
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.users (user_id, username, password, email, url, phone, mailing_address, billing_address, country, locales, gossip, date_last_email, date_registered, date_validated, date_last_login, must_change_password, auth_id, auth_str, disabled, disabled_reason, inline_help) FROM stdin;
24	dbernnard	$2y$10$EMxyJ7fyfdNgTdUOVuiBl.IwiyLafzk.Omrgcw1i/iFa6Ri3WAIwG	dbernnard@mailinator.com	\N	\N	\N	\N	US	[]	\N	\N	2023-03-07 19:18:07	\N	2023-03-07 19:18:07	\N	\N	\N	0	\N	1
29	lelder	$2y$10$2.2zBUYf9BF0PtXAK0t9MOpAz8/TsQQltX8SYWtBd/idDlxyTqfmu	lelder@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:27:27	\N	2023-03-07 19:27:28	\N	\N	\N	0	\N	1
6	minoue	$2y$10$UZv5.GLjcgCUE.kaQ7Z6AeZwKxfx10Pg4MkWGsTWC/KrcY6YqG3Nu	minoue@mailinator.com				\N	JP	[]	\N	\N	2023-03-07 19:03:22	\N	2023-03-07 19:19:30	0	\N	\N	0	\N	1
4	dbuskins	$2y$10$7EqUaPzEiCs7wDX52x7YdeCNT6JV7La4xIPcC3d3lKx21WNAGuAjO	dbuskins@mailinator.com				\N	US	[]	\N	\N	2023-03-07 19:03:07	\N	\N	0	\N	\N	0	\N	1
5	sberardo	$2y$10$BOywj10tQuxsOZAm35ULg.ihqTlKNhLZuDrWYDIdjaiVJJQ6c9vEy	sberardo@mailinator.com				\N	CA	[]	\N	\N	2023-03-07 19:03:14	\N	\N	0	\N	\N	0	\N	1
7	jjanssen	$2y$10$HA7fVvM8.fB/1Ex8Ht0GceFzN/lcuYmcuQgw8QjIGX5ug5JX1b5OW	jjanssen@mailinator.com				\N	NL	[]	\N	\N	2023-03-07 19:03:30	\N	\N	0	\N	\N	0	\N	1
9	amccrae	$2y$10$ObhaSCb7m9GfsAqzIiVHlOKVVCU2s6/lcZ.y0q9.dPwhlER7cLdOi	amccrae@mailinator.com				\N	CA	[]	\N	\N	2023-03-07 19:03:47	\N	\N	0	\N	\N	0	\N	1
11	alzacharia	$2y$10$4Hbys3g0O3U9P.QVnaXPFe1BFgo4XHnUoC4v1t97eJ6Gz3etsbP0.	alzacharia@mailinator.com				\N	GH	[]	\N	\N	2023-03-07 19:04:05	\N	\N	0	\N	\N	0	\N	1
13	mfritz	$2y$10$qj.9ew2jI5YxyGgzKErx7Ok7JXSyhXx1e8/hmmaZEQVCi1mbedI6u	mfritz@mailinator.com				\N	BE	[]	\N	\N	2023-03-07 19:04:26	\N	\N	0	\N	\N	0	\N	1
14	svogt	$2y$10$lapNAt8RlET6l1FoWjK/fu5YUkIFDjW2.serT0md6oYbDNhMahfJy	svogt@mailinator.com				\N	CL	[]	\N	\N	2023-03-07 19:04:37	\N	\N	0	\N	\N	0	\N	1
15	gcox	$2y$10$nf0ZKcgqp.pAYdDvSJP59eFo4wnOjh/d4K1RQ/c4W7GiBXjQlN6hy	gcox@mailinator.com				\N	US	[]	\N	\N	2023-03-07 19:04:48	\N	\N	0	\N	\N	0	\N	1
16	shellier	$2y$10$uwhlFyxhNq7AbcPmfhkvTeSkLgi54u9zZAP94LjLJiDfca5DwAmce	shellier@mailinator.com				\N	ZA	[]	\N	\N	2023-03-07 19:05:00	\N	\N	0	\N	\N	0	\N	1
17	cturner	$2y$10$WjzQ4/FKWfplTn8LMINRIOTWV9xRX.J8Jm4.au9W9M4A.h.C5Sy6W	cturner@mailinator.com				\N	GB	[]	\N	\N	2023-03-07 19:05:13	\N	\N	0	\N	\N	0	\N	1
18	skumar	$2y$10$h6zQfP8OXRkRsnbkzc24buMhtrusAENWi4FBU6zGk9ENDr.EiZENG	skumar@mailinator.com				\N	SG	[]	\N	\N	2023-03-07 19:05:26	\N	\N	0	\N	\N	0	\N	1
25	dkennepohl	$2y$10$Ug0A6E4T2sQQHbxuStAMheh.C8cW3TH4xsjOQsvVXWJKC2eD1RboC	dkennepohl@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:20:06	\N	2023-03-07 19:20:06	\N	\N	\N	0	\N	1
8	phudson	$2y$10$2pSG12vCiDw504nIA0CYa.pE9wkEWqJ70nyUHVDuh9ypteyqwysnq	phudson@mailinator.com				\N	CA	[]	\N	\N	2023-03-07 19:03:38	\N	2023-03-07 19:28:48	0	\N	\N	0	\N	1
2	rvaca	$2y$10$POuXBtFt0eq7EWeUd7ahN.iMOHF3PRInJK..TDa2IH.8pjjt1a3Ae	rvaca@mailinator.com				\N	MX	[]	\N	\N	2023-03-07 19:02:54	\N	2023-03-07 19:05:42	0	\N	\N	0	\N	1
1	admin	$2y$10$ghHXiDsrXoyGutDni8LCUeiCD5jSgt.dRRL7pnknFF5xYSxf2n0fO	pkpadmin@mailinator.com	\N	\N	\N	\N	\N	[]	\N	\N	2023-03-07 19:00:59	\N	2023-03-07 19:06:15	\N	\N	\N	0	\N	1
19	aclark	$2y$10$TlTN9U4YaI9P4YpDLGyLV.Xdw.kg9Ilxyw26wTTof49z18/viyEJm	aclark@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:06:41	\N	2023-03-07 19:06:42	\N	\N	\N	0	\N	1
20	afinkel	$2y$10$peuQRC6lr42rhYvTosFeru54yk7RfrMa1tgjfpn02R2i9m8IwiSPK	afinkel@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:07:59	\N	2023-03-07 19:07:59	\N	\N	\N	0	\N	1
26	fperini	$2y$10$Xl6pPczRuDcaerN35NhIce2XbTnk7fWvwCDlR7kkzrLWMYhQ3Wj3G	fperini@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:22:09	\N	2023-03-07 19:22:09	\N	\N	\N	0	\N	1
21	bbarnetson	$2y$10$ll9P3C5mV19/qIo4p8d/QeK2svkyxP4w7Ttfrs7cfblHsq4hcuBpK	bbarnetson@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:11:20	\N	2023-03-07 19:11:20	\N	\N	\N	0	\N	1
22	bbeaty	$2y$10$u4vefUagbY/t1aN/LprFve6rCslvJZwYIy.OEFRFMq4Ys.UE8HFQG	bbeaty@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:12:17	\N	2023-03-07 19:12:17	\N	\N	\N	0	\N	1
30	mally	$2y$10$CRoUWpOgqDWfMvXTH7O.HujjG2HLZgtrWhm59hQQAvC..ajrjk37y	mally@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:29:07	\N	2023-03-07 19:29:07	\N	\N	\N	0	\N	1
23	callan	$2y$10$Dy899QVF0duSCAkfcK8ZtOcLlxHgR.WJv39q4mr9yK8ginLjEtoQ.	callan@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:14:35	\N	2023-03-07 19:14:35	\N	\N	\N	0	\N	1
27	jbrower	$2y$10$y9c5YccdGBM9idRENbbCyeuGskL2iM9AnHTqqYRZJwSbYdWhIY7Wu	jbrower@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:23:32	\N	2023-03-07 19:23:32	\N	\N	\N	0	\N	1
33	mpower	$2y$10$bvqSumqfKeHAkEk7dV1RYuaCZ.c7qBK3svnV.pjmRHLb2PEfopARC	mpower@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:36:11	\N	2023-03-07 19:36:11	\N	\N	\N	0	\N	1
28	jlockehart	$2y$10$Hx5ZRmnKsDRZTgPd.aAQPeNmaQHwf/uoH2mCsSZkuwWRoEIAyEM32	jlockehart@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:25:19	\N	2023-03-07 19:25:19	\N	\N	\N	0	\N	1
10	agallego	$2y$10$BDw/Amuu2MlyhduTm2ICLutLACB79H2WqYOKL59Gi8F.IQApCSGtK	agallego@mailinator.com				\N	US	[]	\N	\N	2023-03-07 19:03:56	\N	2023-03-07 19:37:50	0	\N	\N	0	\N	1
12	gfavio	$2y$10$Z8xaaMOhO1qA7J49w.3O9O8.x.tlUpyfUGSo78vv0VhqjVJ59r5hW	gfavio@mailinator.com				\N	ES	[]	\N	\N	2023-03-07 19:04:15	\N	2023-03-07 19:30:57	0	\N	\N	0	\N	1
34	msmith	$2y$10$TykBU6y6gi0PGcrXMLhe4OmHGhcE700aYTlTTEgR51UfZD3PPok/K	msmith@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:38:10	\N	2023-03-07 19:38:10	\N	\N	\N	0	\N	1
31	mdawson	$2y$10$jzEvKZaCKollvG63rAw6tu4WCbvkm5uTZEsFmt9b2YXZ47DhEjMJi	mdawson@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:31:43	\N	2023-03-07 19:31:43	\N	\N	\N	0	\N	1
3	dbarnes	$2y$10$1mlPiUnYShAzk/0NOMwl2uuTdBeM0FrwcV/Eh7cOXAuFXRDP6EzY2	dbarnes@mailinator.com				\N	AU	[]	\N	\N	2023-03-07 19:03:00	\N	2023-03-07 19:39:20	0	\N	\N	0	\N	1
32	mforan	$2y$10$syLFKLVbdumRBaIfREk41upWOCm7cDe2VPdUcyWJ.8Ih567baNNau	mforan@mailinator.com	\N	\N	\N	\N	CA	[]	\N	\N	2023-03-07 19:35:11	\N	2023-03-07 19:35:11	\N	\N	\N	0	\N	1
\.


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: omp-ci
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: omp-ci
--

COPY public.versions (major, minor, revision, build, date_installed, current, product_type, product, product_class_name, lazy_load, sitewide) FROM stdin;
1	0	0	0	2023-03-07 19:00:59	1	plugins.metadata	dc11		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.pubIds	urn	\\APP\\plugins\\pubIds\\urn\\URNPubIdPlugin	0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.blocks	browse	\\APP\\plugins\\blocks\\browse\\BrowseBlockPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.blocks	developedBy	DevelopedByBlockPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.blocks	makeSubmission	MakeSubmissionBlockPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.blocks	languageToggle	LanguageToggleBlockPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.blocks	information	InformationBlockPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	usageEvent		0	1
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	googleScholar	GoogleScholarPlugin	1	0
1	3	0	0	2023-03-07 19:00:59	1	plugins.generic	acron	AcronPlugin	1	1
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	dublinCoreMeta	DublinCoreMetaPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	pdfJsViewer	PdfJsViewerPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	tinymce	TinyMCEPlugin	1	0
1	2	0	0	2023-03-07 19:00:59	1	plugins.generic	customBlockManager	CustomBlockManagerPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	webFeed	WebFeedPlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	htmlMonographFile	HtmlMonographFilePlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.generic	googleAnalytics	GoogleAnalyticsPlugin	1	0
1	2	0	0	2023-03-07 19:00:59	1	plugins.generic	staticPages	StaticPagesPlugin	1	0
0	1	0	0	2023-03-07 19:00:59	1	plugins.generic	citationStyleLanguage	CitationStyleLanguagePlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.themes	default	DefaultThemePlugin	1	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.importexport	users		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.importexport	onix30		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.importexport	csv		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.importexport	native		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.oaiMetadataFormats	dc		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.paymethod	manual		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.paymethod	paypal		0	0
2	0	0	0	2023-03-07 19:00:59	1	plugins.reports	reviewReport		0	0
1	0	0	0	2023-03-07 19:00:59	1	plugins.reports	monographReport		0	0
3	4	0	0	2023-03-07 19:00:58	1	core	omp		0	1
\.


--
-- Name: access_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_pkey PRIMARY KEY (access_key_id);


--
-- Name: announcement_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcement_settings
    ADD CONSTRAINT announcement_settings_pkey UNIQUE (announcement_id, locale, setting_name);


--
-- Name: announcement_type_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcement_type_settings
    ADD CONSTRAINT announcement_type_settings_pkey UNIQUE (type_id, locale, setting_name);


--
-- Name: announcement_types_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcement_types
    ADD CONSTRAINT announcement_types_pkey PRIMARY KEY (type_id);


--
-- Name: announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (announcement_id);


--
-- Name: author_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.author_settings
    ADD CONSTRAINT author_settings_pkey UNIQUE (author_id, locale, setting_name);


--
-- Name: authors_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- Name: c_v_e_s_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocab_entry_settings
    ADD CONSTRAINT c_v_e_s_pkey UNIQUE (controlled_vocab_entry_id, locale, setting_name);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- Name: category_path; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT category_path UNIQUE (context_id, path);


--
-- Name: category_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.category_settings
    ADD CONSTRAINT category_settings_pkey UNIQUE (category_id, locale, setting_name);


--
-- Name: chapter_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapter_authors
    ADD CONSTRAINT chapter_authors_pkey UNIQUE (author_id, chapter_id);


--
-- Name: citation_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.citation_settings
    ADD CONSTRAINT citation_settings_pkey UNIQUE (citation_id, locale, setting_name);


--
-- Name: citations_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_pkey PRIMARY KEY (citation_id);


--
-- Name: citations_publication_seq; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_publication_seq UNIQUE (publication_id, seq);


--
-- Name: completed_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.completed_payments
    ADD CONSTRAINT completed_payments_pkey PRIMARY KEY (completed_payment_id);


--
-- Name: controlled_vocab_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries
    ADD CONSTRAINT controlled_vocab_entries_pkey PRIMARY KEY (controlled_vocab_entry_id);


--
-- Name: controlled_vocab_symbolic; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocabs
    ADD CONSTRAINT controlled_vocab_symbolic UNIQUE (symbolic, assoc_type, assoc_id);


--
-- Name: controlled_vocabs_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocabs
    ADD CONSTRAINT controlled_vocabs_pkey PRIMARY KEY (controlled_vocab_id);


--
-- Name: data_object_tombstone_oai_set_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects
    ADD CONSTRAINT data_object_tombstone_oai_set_objects_pkey PRIMARY KEY (object_id);


--
-- Name: data_object_tombstone_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.data_object_tombstone_settings
    ADD CONSTRAINT data_object_tombstone_settings_pkey UNIQUE (tombstone_id, locale, setting_name);


--
-- Name: data_object_tombstones_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.data_object_tombstones
    ADD CONSTRAINT data_object_tombstones_pkey PRIMARY KEY (tombstone_id);


--
-- Name: doi_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.doi_settings
    ADD CONSTRAINT doi_settings_pkey UNIQUE (doi_id, locale, setting_name);


--
-- Name: dois_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.dois
    ADD CONSTRAINT dois_pkey PRIMARY KEY (doi_id);


--
-- Name: edit_decisions_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_pkey PRIMARY KEY (edit_decision_id);


--
-- Name: email_log_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_log
    ADD CONSTRAINT email_log_pkey PRIMARY KEY (log_id);


--
-- Name: email_log_user_id; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_user_id UNIQUE (email_log_id, user_id);


--
-- Name: email_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_templates_settings
    ADD CONSTRAINT email_settings_pkey UNIQUE (email_id, locale, setting_name);


--
-- Name: email_templates_default_data_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_templates_default_data
    ADD CONSTRAINT email_templates_default_data_pkey UNIQUE (email_key, locale);


--
-- Name: email_templates_email_key; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_email_key UNIQUE (email_key, context_id);


--
-- Name: email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (email_id);


--
-- Name: event_log_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.event_log
    ADD CONSTRAINT event_log_pkey PRIMARY KEY (log_id);


--
-- Name: event_log_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.event_log_settings
    ADD CONSTRAINT event_log_settings_pkey UNIQUE (log_id, setting_name);


--
-- Name: failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: files_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (file_id);


--
-- Name: filter_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filter_groups
    ADD CONSTRAINT filter_groups_pkey PRIMARY KEY (filter_group_id);


--
-- Name: filter_groups_symbolic; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filter_groups
    ADD CONSTRAINT filter_groups_symbolic UNIQUE (symbolic);


--
-- Name: filter_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filter_settings
    ADD CONSTRAINT filter_settings_pkey UNIQUE (filter_id, locale, setting_name);


--
-- Name: filters_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_pkey PRIMARY KEY (filter_id);


--
-- Name: genre_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.genre_settings
    ADD CONSTRAINT genre_settings_pkey UNIQUE (genre_id, locale, setting_name);


--
-- Name: genres_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- Name: identification_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.identification_codes
    ADD CONSTRAINT identification_codes_pkey PRIMARY KEY (identification_code_id);


--
-- Name: institution_ip_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institution_ip
    ADD CONSTRAINT institution_ip_pkey PRIMARY KEY (institution_ip_id);


--
-- Name: institution_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institution_settings
    ADD CONSTRAINT institution_settings_pkey UNIQUE (institution_id, locale, setting_name);


--
-- Name: institutions_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_pkey PRIMARY KEY (institution_id);


--
-- Name: job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: library_file_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.library_file_settings
    ADD CONSTRAINT library_file_settings_pkey UNIQUE (file_id, locale, setting_name);


--
-- Name: library_files_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_pkey PRIMARY KEY (file_id);


--
-- Name: markets_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.markets
    ADD CONSTRAINT markets_pkey PRIMARY KEY (market_id);


--
-- Name: msd_uc_load_id_context_id_submission_id_date; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_uc_load_id_context_id_submission_id_date UNIQUE (load_id, context_id, submission_id, date);


--
-- Name: msgd_uc_load_context_submission_c_r_c_date; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_uc_load_context_submission_c_r_c_date UNIQUE (load_id, context_id, submission_id, country, region, city, date);


--
-- Name: msgm_uc_context_submission_c_r_c_month; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_uc_context_submission_c_r_c_month UNIQUE (context_id, submission_id, country, region, city, month);


--
-- Name: msid_uc_load_id_context_id_submission_id_institution_id_date; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_uc_load_id_context_id_submission_id_institution_id_date UNIQUE (load_id, context_id, submission_id, institution_id, date);


--
-- Name: msim_uc_context_id_submission_id_institution_id_month; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_uc_context_id_submission_id_institution_id_month UNIQUE (context_id, submission_id, institution_id, month);


--
-- Name: msm_uc_context_id_submission_id_month; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_uc_context_id_submission_id_month UNIQUE (context_id, submission_id, month);


--
-- Name: navigation_menu_item_assignment_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignment_settings
    ADD CONSTRAINT navigation_menu_item_assignment_settings_pkey UNIQUE (navigation_menu_item_assignment_id, locale, setting_name);


--
-- Name: navigation_menu_item_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_pkey PRIMARY KEY (navigation_menu_item_assignment_id);


--
-- Name: navigation_menu_item_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_settings
    ADD CONSTRAINT navigation_menu_item_settings_pkey UNIQUE (navigation_menu_item_id, locale, setting_name);


--
-- Name: navigation_menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_items
    ADD CONSTRAINT navigation_menu_items_pkey PRIMARY KEY (navigation_menu_item_id);


--
-- Name: navigation_menus_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menus
    ADD CONSTRAINT navigation_menus_pkey PRIMARY KEY (navigation_menu_id);


--
-- Name: new_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.new_releases
    ADD CONSTRAINT new_releases_pkey UNIQUE (assoc_type, assoc_id, submission_id);


--
-- Name: notes_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (note_id);


--
-- Name: notification_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_pkey UNIQUE (notification_id, locale, setting_name);


--
-- Name: notification_subscription_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_pkey PRIMARY KEY (setting_id);


--
-- Name: notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id);


--
-- Name: oai_resumption_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.oai_resumption_tokens
    ADD CONSTRAINT oai_resumption_tokens_pkey UNIQUE (token);


--
-- Name: plugin_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.plugin_settings
    ADD CONSTRAINT plugin_settings_pkey UNIQUE (plugin_name, context_id, setting_name);


--
-- Name: press_features_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT press_features_pkey UNIQUE (assoc_type, assoc_id, submission_id);


--
-- Name: press_path; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.presses
    ADD CONSTRAINT press_path UNIQUE (path);


--
-- Name: press_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.press_settings
    ADD CONSTRAINT press_settings_pkey UNIQUE (press_id, locale, setting_name);


--
-- Name: presses_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.presses
    ADD CONSTRAINT presses_pkey PRIMARY KEY (press_id);


--
-- Name: publication_categories_id; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_id UNIQUE (publication_id, category_id);


--
-- Name: publication_dates_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_dates
    ADD CONSTRAINT publication_dates_pkey PRIMARY KEY (publication_date_id);


--
-- Name: publication_format_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_format_settings
    ADD CONSTRAINT publication_format_settings_pkey UNIQUE (publication_format_id, locale, setting_name);


--
-- Name: publication_formats_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_formats
    ADD CONSTRAINT publication_formats_pkey PRIMARY KEY (publication_format_id);


--
-- Name: publication_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_settings
    ADD CONSTRAINT publication_settings_pkey UNIQUE (publication_id, locale, setting_name);


--
-- Name: publications_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (publication_id);


--
-- Name: queries_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.queries
    ADD CONSTRAINT queries_pkey PRIMARY KEY (query_id);


--
-- Name: query_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_pkey UNIQUE (query_id, user_id);


--
-- Name: queued_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.queued_payments
    ADD CONSTRAINT queued_payments_pkey PRIMARY KEY (queued_payment_id);


--
-- Name: representatives_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.representatives
    ADD CONSTRAINT representatives_pkey PRIMARY KEY (representative_id);


--
-- Name: review_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_pkey PRIMARY KEY (review_id);


--
-- Name: review_files_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_pkey UNIQUE (review_id, submission_file_id);


--
-- Name: review_form_element_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_element_settings
    ADD CONSTRAINT review_form_element_settings_pkey UNIQUE (review_form_element_id, locale, setting_name);


--
-- Name: review_form_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_elements
    ADD CONSTRAINT review_form_elements_pkey PRIMARY KEY (review_form_element_id);


--
-- Name: review_form_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_settings
    ADD CONSTRAINT review_form_settings_pkey UNIQUE (review_form_id, locale, setting_name);


--
-- Name: review_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_forms
    ADD CONSTRAINT review_forms_pkey PRIMARY KEY (review_form_id);


--
-- Name: review_round_files_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_pkey UNIQUE (submission_id, review_round_id, submission_file_id);


--
-- Name: review_rounds_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_rounds
    ADD CONSTRAINT review_rounds_pkey PRIMARY KEY (review_round_id);


--
-- Name: review_rounds_submission_id_stage_id_round_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_rounds
    ADD CONSTRAINT review_rounds_submission_id_stage_id_round_pkey UNIQUE (submission_id, stage_id, round);


--
-- Name: sales_rights_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.sales_rights
    ADD CONSTRAINT sales_rights_pkey PRIMARY KEY (sales_rights_id);


--
-- Name: scheduled_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.scheduled_tasks
    ADD CONSTRAINT scheduled_tasks_pkey UNIQUE (class_name);


--
-- Name: section_editors_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT section_editors_pkey UNIQUE (context_id, assoc_id, assoc_type, user_id);


--
-- Name: series_categories_id; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series_categories
    ADD CONSTRAINT series_categories_id UNIQUE (series_id, category_id);


--
-- Name: series_path; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_path UNIQUE (press_id, path);


--
-- Name: series_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (series_id);


--
-- Name: series_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series_settings
    ADD CONSTRAINT series_settings_pkey UNIQUE (series_id, locale, setting_name);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey UNIQUE (session_id);


--
-- Name: site_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.site_settings
    ADD CONSTRAINT site_settings_pkey UNIQUE (setting_name, locale);


--
-- Name: spotlight_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.spotlight_settings
    ADD CONSTRAINT spotlight_settings_pkey UNIQUE (spotlight_id, locale, setting_name);


--
-- Name: spotlights_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.spotlights
    ADD CONSTRAINT spotlights_pkey PRIMARY KEY (spotlight_id);


--
-- Name: stage_assignment; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignment UNIQUE (submission_id, user_group_id, user_id);


--
-- Name: stage_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_pkey PRIMARY KEY (stage_assignment_id);


--
-- Name: static_page_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.static_page_settings
    ADD CONSTRAINT static_page_settings_pkey UNIQUE (static_page_id, locale, setting_name);


--
-- Name: static_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.static_pages
    ADD CONSTRAINT static_pages_pkey PRIMARY KEY (static_page_id);


--
-- Name: submission_chapter_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapter_settings
    ADD CONSTRAINT submission_chapter_settings_pkey UNIQUE (chapter_id, locale, setting_name);


--
-- Name: submission_chapters_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapters
    ADD CONSTRAINT submission_chapters_pkey PRIMARY KEY (chapter_id);


--
-- Name: submission_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_pkey PRIMARY KEY (comment_id);


--
-- Name: submission_file_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_pkey PRIMARY KEY (revision_id);


--
-- Name: submission_file_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_file_settings
    ADD CONSTRAINT submission_file_settings_pkey UNIQUE (submission_file_id, locale, setting_name);


--
-- Name: submission_files_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_pkey PRIMARY KEY (submission_file_id);


--
-- Name: submission_search_keyword_list_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list
    ADD CONSTRAINT submission_search_keyword_list_pkey PRIMARY KEY (keyword_id);


--
-- Name: submission_search_keyword_text; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_keyword_list
    ADD CONSTRAINT submission_search_keyword_text UNIQUE (keyword_text);


--
-- Name: submission_search_object_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_pkey UNIQUE (object_id, pos);


--
-- Name: submission_search_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_objects
    ADD CONSTRAINT submission_search_objects_pkey PRIMARY KEY (object_id);


--
-- Name: submission_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_settings
    ADD CONSTRAINT submission_settings_pkey UNIQUE (submission_id, locale, setting_name);


--
-- Name: submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (submission_id);


--
-- Name: temporary_files_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.temporary_files
    ADD CONSTRAINT temporary_files_pkey PRIMARY KEY (file_id);


--
-- Name: u_e_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT u_e_pkey UNIQUE (user_id, controlled_vocab_entry_id);


--
-- Name: user_group_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_group_settings
    ADD CONSTRAINT user_group_settings_pkey UNIQUE (user_group_id, locale, setting_name);


--
-- Name: user_group_stage_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_pkey UNIQUE (context_id, user_group_id, stage_id);


--
-- Name: user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (user_group_id);


--
-- Name: user_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_pkey UNIQUE (user_id, locale, setting_name);


--
-- Name: user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey UNIQUE (user_group_id, user_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: usi_load_id_line_number_institution_id; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_institution_temporary_records
    ADD CONSTRAINT usi_load_id_line_number_institution_id UNIQUE (load_id, line_number, institution_id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.versions
    ADD CONSTRAINT versions_pkey UNIQUE (product_type, product, major, minor, revision, build);


--
-- Name: access_keys_hash; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX access_keys_hash ON public.access_keys USING btree (key_hash, user_id, context);


--
-- Name: access_keys_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX access_keys_user_id ON public.access_keys USING btree (user_id);


--
-- Name: announcement_settings_announcement_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX announcement_settings_announcement_id ON public.announcement_settings USING btree (announcement_id);


--
-- Name: announcement_type_settings_type_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX announcement_type_settings_type_id ON public.announcement_type_settings USING btree (type_id);


--
-- Name: announcement_types_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX announcement_types_context_id ON public.announcement_types USING btree (context_id);


--
-- Name: announcements_assoc; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX announcements_assoc ON public.announcements USING btree (assoc_type, assoc_id);


--
-- Name: announcements_type_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX announcements_type_id ON public.announcements USING btree (type_id);


--
-- Name: author_settings_author_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX author_settings_author_id ON public.author_settings USING btree (author_id);


--
-- Name: authors_user_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX authors_user_group_id ON public.authors USING btree (user_group_id);


--
-- Name: c_v_e_s_entry_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX c_v_e_s_entry_id ON public.controlled_vocab_entry_settings USING btree (controlled_vocab_entry_id);


--
-- Name: category_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX category_context_id ON public.categories USING btree (context_id);


--
-- Name: category_context_parent_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX category_context_parent_id ON public.categories USING btree (context_id, parent_id);


--
-- Name: category_parent_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX category_parent_id ON public.categories USING btree (parent_id);


--
-- Name: category_settings_category_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX category_settings_category_id ON public.category_settings USING btree (category_id);


--
-- Name: chapters_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX chapters_chapter_id ON public.submission_chapters USING btree (chapter_id);


--
-- Name: citation_settings_citation_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX citation_settings_citation_id ON public.citation_settings USING btree (citation_id);


--
-- Name: citations_publication; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX citations_publication ON public.citations USING btree (publication_id);


--
-- Name: completed_payments_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX completed_payments_context_id ON public.completed_payments USING btree (context_id);


--
-- Name: completed_payments_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX completed_payments_user_id ON public.completed_payments USING btree (user_id);


--
-- Name: controlled_vocab_entries_controlled_vocab_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX controlled_vocab_entries_controlled_vocab_id ON public.controlled_vocab_entries USING btree (controlled_vocab_id);


--
-- Name: controlled_vocab_entries_cv_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX controlled_vocab_entries_cv_id ON public.controlled_vocab_entries USING btree (controlled_vocab_id, seq);


--
-- Name: data_object_tombstone_oai_set_objects_tombstone_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX data_object_tombstone_oai_set_objects_tombstone_id ON public.data_object_tombstone_oai_set_objects USING btree (tombstone_id);


--
-- Name: data_object_tombstone_settings_tombstone_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX data_object_tombstone_settings_tombstone_id ON public.data_object_tombstone_settings USING btree (tombstone_id);


--
-- Name: data_object_tombstones_data_object_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX data_object_tombstones_data_object_id ON public.data_object_tombstones USING btree (data_object_id);


--
-- Name: doi_settings_doi_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX doi_settings_doi_id ON public.doi_settings USING btree (doi_id);


--
-- Name: dois_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX dois_context_id ON public.dois USING btree (context_id);


--
-- Name: edit_decisions_editor_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX edit_decisions_editor_id ON public.edit_decisions USING btree (editor_id);


--
-- Name: edit_decisions_review_round_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX edit_decisions_review_round_id ON public.edit_decisions USING btree (review_round_id);


--
-- Name: edit_decisions_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX edit_decisions_submission_id ON public.edit_decisions USING btree (submission_id);


--
-- Name: email_log_assoc; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX email_log_assoc ON public.email_log USING btree (assoc_type, assoc_id);


--
-- Name: email_log_users_email_log_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX email_log_users_email_log_id ON public.email_log_users USING btree (email_log_id);


--
-- Name: email_log_users_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX email_log_users_user_id ON public.email_log_users USING btree (user_id);


--
-- Name: email_templates_alternate_to; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX email_templates_alternate_to ON public.email_templates USING btree (alternate_to);


--
-- Name: email_templates_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX email_templates_context_id ON public.email_templates USING btree (context_id);


--
-- Name: email_templates_settings_email_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX email_templates_settings_email_id ON public.email_templates_settings USING btree (email_id);


--
-- Name: event_log_assoc; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX event_log_assoc ON public.event_log USING btree (assoc_type, assoc_id);


--
-- Name: event_log_settings_log_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX event_log_settings_log_id ON public.event_log_settings USING btree (log_id);


--
-- Name: event_log_settings_name_value; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX event_log_settings_name_value ON public.event_log_settings USING btree (setting_name, setting_value) WHERE ((setting_name)::text = ANY ((ARRAY['fileId'::character varying, 'submissionId'::character varying])::text[]));


--
-- Name: event_log_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX event_log_user_id ON public.event_log USING btree (user_id);


--
-- Name: features_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX features_submission_id ON public.features USING btree (submission_id);


--
-- Name: filter_settings_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX filter_settings_id ON public.filter_settings USING btree (filter_id);


--
-- Name: filters_filter_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX filters_filter_group_id ON public.filters USING btree (filter_group_id);


--
-- Name: format_markets_pkey; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX format_markets_pkey ON public.markets USING btree (market_id, publication_format_id);


--
-- Name: format_publication_dates_pkey; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX format_publication_dates_pkey ON public.publication_dates USING btree (publication_date_id, publication_format_id, role);


--
-- Name: format_representatives_pkey; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX format_representatives_pkey ON public.representatives USING btree (representative_id, submission_id);


--
-- Name: format_sales_rights_pkey; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX format_sales_rights_pkey ON public.sales_rights USING btree (sales_rights_id, publication_format_id);


--
-- Name: genre_settings_genre_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX genre_settings_genre_id ON public.genre_settings USING btree (genre_id);


--
-- Name: genres_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX genres_context_id ON public.genres USING btree (context_id);


--
-- Name: identification_codes_key; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX identification_codes_key ON public.identification_codes USING btree (identification_code_id, publication_format_id, code);


--
-- Name: identification_codes_publication_format_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX identification_codes_publication_format_id ON public.identification_codes USING btree (publication_format_id);


--
-- Name: institution_ip_end; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX institution_ip_end ON public.institution_ip USING btree (ip_end);


--
-- Name: institution_ip_institution_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX institution_ip_institution_id ON public.institution_ip USING btree (institution_id);


--
-- Name: institution_ip_start; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX institution_ip_start ON public.institution_ip USING btree (ip_start);


--
-- Name: institution_settings_institution_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX institution_settings_institution_id ON public.institution_settings USING btree (institution_id);


--
-- Name: institutions_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX institutions_context_id ON public.institutions USING btree (context_id);


--
-- Name: jobs_queue_reserved_at_index; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX jobs_queue_reserved_at_index ON public.jobs USING btree (queue, reserved_at);


--
-- Name: library_file_settings_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX library_file_settings_file_id ON public.library_file_settings USING btree (file_id);


--
-- Name: library_files_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX library_files_context_id ON public.library_files USING btree (context_id);


--
-- Name: library_files_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX library_files_submission_id ON public.library_files USING btree (submission_id);


--
-- Name: markets_publication_format_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX markets_publication_format_id ON public.markets USING btree (publication_format_id);


--
-- Name: metrics_context_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_context_context_id ON public.metrics_context USING btree (context_id);


--
-- Name: metrics_context_load_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_context_load_id ON public.metrics_context USING btree (load_id);


--
-- Name: metrics_counter_submission_daily_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_counter_submission_daily_context_id ON public.metrics_counter_submission_daily USING btree (context_id);


--
-- Name: metrics_counter_submission_daily_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_counter_submission_daily_submission_id ON public.metrics_counter_submission_daily USING btree (submission_id);


--
-- Name: metrics_counter_submission_monthly_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_counter_submission_monthly_context_id ON public.metrics_counter_submission_monthly USING btree (context_id);


--
-- Name: metrics_counter_submission_monthly_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_counter_submission_monthly_submission_id ON public.metrics_counter_submission_monthly USING btree (submission_id);


--
-- Name: metrics_series_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_series_context_id ON public.metrics_series USING btree (context_id);


--
-- Name: metrics_series_context_id_series_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_series_context_id_series_id ON public.metrics_series USING btree (context_id, series_id);


--
-- Name: metrics_series_load_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_series_load_id ON public.metrics_series USING btree (load_id);


--
-- Name: metrics_series_series_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_series_series_id ON public.metrics_series USING btree (series_id);


--
-- Name: metrics_submission_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_chapter_id ON public.metrics_submission USING btree (chapter_id);


--
-- Name: metrics_submission_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_context_id ON public.metrics_submission USING btree (context_id);


--
-- Name: metrics_submission_geo_daily_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_geo_daily_context_id ON public.metrics_submission_geo_daily USING btree (context_id);


--
-- Name: metrics_submission_geo_daily_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_geo_daily_submission_id ON public.metrics_submission_geo_daily USING btree (submission_id);


--
-- Name: metrics_submission_geo_monthly_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_geo_monthly_context_id ON public.metrics_submission_geo_monthly USING btree (context_id);


--
-- Name: metrics_submission_geo_monthly_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_geo_monthly_submission_id ON public.metrics_submission_geo_monthly USING btree (submission_id);


--
-- Name: metrics_submission_representation_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_representation_id ON public.metrics_submission USING btree (representation_id);


--
-- Name: metrics_submission_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_submission_file_id ON public.metrics_submission USING btree (submission_file_id);


--
-- Name: metrics_submission_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX metrics_submission_submission_id ON public.metrics_submission USING btree (submission_id);


--
-- Name: ms_context_id_submission_id_assoc_type_file_type; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ms_context_id_submission_id_assoc_type_file_type ON public.metrics_submission USING btree (context_id, submission_id, assoc_type, file_type);


--
-- Name: ms_load_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ms_load_id ON public.metrics_submission USING btree (load_id);


--
-- Name: msd_context_id_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msd_context_id_submission_id ON public.metrics_counter_submission_daily USING btree (context_id, submission_id);


--
-- Name: msd_load_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msd_load_id ON public.metrics_counter_submission_daily USING btree (load_id);


--
-- Name: msgd_context_id_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msgd_context_id_submission_id ON public.metrics_submission_geo_daily USING btree (context_id, submission_id);


--
-- Name: msgd_load_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msgd_load_id ON public.metrics_submission_geo_daily USING btree (load_id);


--
-- Name: msgm_context_id_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msgm_context_id_submission_id ON public.metrics_submission_geo_monthly USING btree (context_id, submission_id);


--
-- Name: msid_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msid_context_id ON public.metrics_counter_submission_institution_daily USING btree (context_id);


--
-- Name: msid_context_id_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msid_context_id_submission_id ON public.metrics_counter_submission_institution_daily USING btree (context_id, submission_id);


--
-- Name: msid_institution_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msid_institution_id ON public.metrics_counter_submission_institution_daily USING btree (institution_id);


--
-- Name: msid_load_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msid_load_id ON public.metrics_counter_submission_institution_daily USING btree (load_id);


--
-- Name: msid_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msid_submission_id ON public.metrics_counter_submission_institution_daily USING btree (submission_id);


--
-- Name: msim_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msim_context_id ON public.metrics_counter_submission_institution_monthly USING btree (context_id);


--
-- Name: msim_context_id_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msim_context_id_submission_id ON public.metrics_counter_submission_institution_monthly USING btree (context_id, submission_id);


--
-- Name: msim_institution_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msim_institution_id ON public.metrics_counter_submission_institution_monthly USING btree (institution_id);


--
-- Name: msim_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msim_submission_id ON public.metrics_counter_submission_institution_monthly USING btree (submission_id);


--
-- Name: msm_context_id_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX msm_context_id_submission_id ON public.metrics_counter_submission_monthly USING btree (context_id, submission_id);


--
-- Name: navigation_menu_item_assignment_settings_n_m_i_a_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX navigation_menu_item_assignment_settings_n_m_i_a_id ON public.navigation_menu_item_assignment_settings USING btree (navigation_menu_item_assignment_id);


--
-- Name: navigation_menu_item_assignments_navigation_menu_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX navigation_menu_item_assignments_navigation_menu_id ON public.navigation_menu_item_assignments USING btree (navigation_menu_id);


--
-- Name: navigation_menu_item_assignments_navigation_menu_item_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX navigation_menu_item_assignments_navigation_menu_item_id ON public.navigation_menu_item_assignments USING btree (navigation_menu_item_id);


--
-- Name: navigation_menu_item_settings_navigation_menu_item_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX navigation_menu_item_settings_navigation_menu_item_id ON public.navigation_menu_item_settings USING btree (navigation_menu_item_id);


--
-- Name: new_releases_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX new_releases_submission_id ON public.new_releases USING btree (submission_id);


--
-- Name: notes_assoc; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notes_assoc ON public.notes USING btree (assoc_type, assoc_id);


--
-- Name: notes_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notes_user_id ON public.notes USING btree (user_id);


--
-- Name: notification_settings_notification_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notification_settings_notification_id ON public.notification_settings USING btree (notification_id);


--
-- Name: notification_subscription_settings_context; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notification_subscription_settings_context ON public.notification_subscription_settings USING btree (context);


--
-- Name: notification_subscription_settings_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notification_subscription_settings_user_id ON public.notification_subscription_settings USING btree (user_id);


--
-- Name: notifications_assoc; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notifications_assoc ON public.notifications USING btree (assoc_type, assoc_id);


--
-- Name: notifications_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notifications_context_id ON public.notifications USING btree (context_id, level);


--
-- Name: notifications_context_id_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notifications_context_id_user_id ON public.notifications USING btree (context_id, user_id, level);


--
-- Name: notifications_user_id_level; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX notifications_user_id_level ON public.notifications USING btree (user_id, level);


--
-- Name: plugin_settings_plugin_name; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX plugin_settings_plugin_name ON public.plugin_settings USING btree (plugin_name);


--
-- Name: press_settings_press_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX press_settings_press_id ON public.press_settings USING btree (press_id);


--
-- Name: publication_categories_category_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_categories_category_id ON public.publication_categories USING btree (category_id);


--
-- Name: publication_categories_publication_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_categories_publication_id ON public.publication_categories USING btree (publication_id);


--
-- Name: publication_dates_publication_format_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_dates_publication_format_id ON public.publication_dates USING btree (publication_format_id);


--
-- Name: publication_format_id_key; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_format_id_key ON public.publication_format_settings USING btree (publication_format_id);


--
-- Name: publication_format_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_format_submission_id ON public.publication_formats USING btree (submission_id);


--
-- Name: publication_formats_doi_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_formats_doi_id ON public.publication_formats USING btree (doi_id);


--
-- Name: publication_formats_publication_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_formats_publication_id ON public.publication_formats USING btree (publication_id);


--
-- Name: publication_settings_name_value; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publication_settings_name_value ON public.publication_settings USING btree (setting_name, setting_value) WHERE ((setting_name)::text = ANY ((ARRAY['indexingState'::character varying, 'medra::registeredDoi'::character varying, 'datacite::registeredDoi'::character varying, 'pub-id::publisher-id'::character varying])::text[]));


--
-- Name: publications_doi_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publications_doi_id ON public.publications USING btree (doi_id);


--
-- Name: publications_primary_contact_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publications_primary_contact_id ON public.publications USING btree (primary_contact_id);


--
-- Name: publications_section_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publications_section_id ON public.publications USING btree (series_id);


--
-- Name: publications_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX publications_submission_id ON public.publications USING btree (submission_id);


--
-- Name: queries_assoc_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX queries_assoc_id ON public.queries USING btree (assoc_type, assoc_id);


--
-- Name: query_participants_query_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX query_participants_query_id ON public.query_participants USING btree (query_id);


--
-- Name: query_participants_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX query_participants_user_id ON public.query_participants USING btree (user_id);


--
-- Name: representatives_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX representatives_submission_id ON public.representatives USING btree (submission_id);


--
-- Name: review_assignment_reviewer_round; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_assignment_reviewer_round ON public.review_assignments USING btree (review_round_id, reviewer_id);


--
-- Name: review_assignments_form_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_assignments_form_id ON public.review_assignments USING btree (review_form_id);


--
-- Name: review_assignments_reviewer_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_assignments_reviewer_id ON public.review_assignments USING btree (reviewer_id);


--
-- Name: review_assignments_reviewer_review; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_assignments_reviewer_review ON public.review_assignments USING btree (reviewer_id, review_id);


--
-- Name: review_assignments_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_assignments_submission_id ON public.review_assignments USING btree (submission_id);


--
-- Name: review_files_review_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_files_review_id ON public.review_files USING btree (review_id);


--
-- Name: review_files_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_files_submission_file_id ON public.review_files USING btree (submission_file_id);


--
-- Name: review_form_element_settings_review_form_element_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_form_element_settings_review_form_element_id ON public.review_form_element_settings USING btree (review_form_element_id);


--
-- Name: review_form_elements_review_form_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_form_elements_review_form_id ON public.review_form_elements USING btree (review_form_id);


--
-- Name: review_form_responses_pkey; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_form_responses_pkey ON public.review_form_responses USING btree (review_form_element_id, review_id);


--
-- Name: review_form_responses_review_form_element_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_form_responses_review_form_element_id ON public.review_form_responses USING btree (review_form_element_id);


--
-- Name: review_form_responses_review_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_form_responses_review_id ON public.review_form_responses USING btree (review_id);


--
-- Name: review_form_settings_review_form_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_form_settings_review_form_id ON public.review_form_settings USING btree (review_form_id);


--
-- Name: review_round_files_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_round_files_submission_file_id ON public.review_round_files USING btree (submission_file_id);


--
-- Name: review_round_files_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_round_files_submission_id ON public.review_round_files USING btree (submission_id);


--
-- Name: review_rounds_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX review_rounds_submission_id ON public.review_rounds USING btree (submission_id);


--
-- Name: sales_rights_publication_format_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX sales_rights_publication_format_id ON public.sales_rights USING btree (publication_format_id);


--
-- Name: series_categories_category_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX series_categories_category_id ON public.series_categories USING btree (category_id);


--
-- Name: series_categories_series_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX series_categories_series_id ON public.series_categories USING btree (series_id);


--
-- Name: series_press_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX series_press_id ON public.series USING btree (press_id);


--
-- Name: series_review_form_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX series_review_form_id ON public.series USING btree (review_form_id);


--
-- Name: series_settings_series_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX series_settings_series_id ON public.series_settings USING btree (series_id);


--
-- Name: sessions_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX sessions_user_id ON public.sessions USING btree (user_id);


--
-- Name: spotlight_settings_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX spotlight_settings_id ON public.spotlight_settings USING btree (spotlight_id);


--
-- Name: spotlights_assoc; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX spotlights_assoc ON public.spotlights USING btree (assoc_type, assoc_id);


--
-- Name: spotlights_press_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX spotlights_press_id ON public.spotlights USING btree (press_id);


--
-- Name: stage_assignments_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX stage_assignments_submission_id ON public.stage_assignments USING btree (submission_id);


--
-- Name: stage_assignments_user_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX stage_assignments_user_group_id ON public.stage_assignments USING btree (user_group_id);


--
-- Name: stage_assignments_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX stage_assignments_user_id ON public.stage_assignments USING btree (user_id);


--
-- Name: static_page_settings_static_page_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX static_page_settings_static_page_id ON public.static_page_settings USING btree (static_page_id);


--
-- Name: subeditor_submission_group_assoc_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX subeditor_submission_group_assoc_id ON public.subeditor_submission_group USING btree (assoc_id, assoc_type);


--
-- Name: subeditor_submission_group_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX subeditor_submission_group_context_id ON public.subeditor_submission_group USING btree (context_id);


--
-- Name: subeditor_submission_group_user_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX subeditor_submission_group_user_group_id ON public.subeditor_submission_group USING btree (user_group_id);


--
-- Name: subeditor_submission_group_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX subeditor_submission_group_user_id ON public.subeditor_submission_group USING btree (user_id);


--
-- Name: submission_chapter_authors_author_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_chapter_authors_author_id ON public.submission_chapter_authors USING btree (author_id);


--
-- Name: submission_chapter_authors_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_chapter_authors_chapter_id ON public.submission_chapter_authors USING btree (chapter_id);


--
-- Name: submission_chapter_settings_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_chapter_settings_chapter_id ON public.submission_chapter_settings USING btree (chapter_id);


--
-- Name: submission_chapters_primary_contact_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_chapters_primary_contact_id ON public.submission_chapters USING btree (primary_contact_id);


--
-- Name: submission_chapters_publication_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_chapters_publication_id ON public.submission_chapters USING btree (publication_id);


--
-- Name: submission_chapters_source_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_chapters_source_chapter_id ON public.submission_chapters USING btree (source_chapter_id);


--
-- Name: submission_comments_author_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_comments_author_id ON public.submission_comments USING btree (author_id);


--
-- Name: submission_comments_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_comments_submission_id ON public.submission_comments USING btree (submission_id);


--
-- Name: submission_file_revisions_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_file_revisions_file_id ON public.submission_file_revisions USING btree (file_id);


--
-- Name: submission_file_revisions_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_file_revisions_submission_file_id ON public.submission_file_revisions USING btree (submission_file_id);


--
-- Name: submission_file_settings_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_file_settings_submission_file_id ON public.submission_file_settings USING btree (submission_file_id);


--
-- Name: submission_files_doi_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_files_doi_id ON public.submission_files USING btree (doi_id);


--
-- Name: submission_files_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_files_file_id ON public.submission_files USING btree (file_id);


--
-- Name: submission_files_genre_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_files_genre_id ON public.submission_files USING btree (genre_id);


--
-- Name: submission_files_source_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_files_source_submission_file_id ON public.submission_files USING btree (source_submission_file_id);


--
-- Name: submission_files_stage_assoc; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_files_stage_assoc ON public.submission_files USING btree (file_stage, assoc_type, assoc_id);


--
-- Name: submission_files_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_files_submission_id ON public.submission_files USING btree (submission_id);


--
-- Name: submission_files_uploader_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_files_uploader_user_id ON public.submission_files USING btree (uploader_user_id);


--
-- Name: submission_search_object_keywords_keyword_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_search_object_keywords_keyword_id ON public.submission_search_object_keywords USING btree (keyword_id);


--
-- Name: submission_search_object_keywords_object_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_search_object_keywords_object_id ON public.submission_search_object_keywords USING btree (object_id);


--
-- Name: submission_search_objects_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_search_objects_submission_id ON public.submission_search_objects USING btree (submission_id);


--
-- Name: submission_settings_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submission_settings_submission_id ON public.submission_settings USING btree (submission_id);


--
-- Name: submissions_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX submissions_context_id ON public.submissions USING btree (context_id);


--
-- Name: temporary_files_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX temporary_files_user_id ON public.temporary_files USING btree (user_id);


--
-- Name: user_group_settings_user_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_group_settings_user_group_id ON public.user_group_settings USING btree (user_group_id);


--
-- Name: user_group_stage_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_group_stage_context_id ON public.user_group_stage USING btree (context_id);


--
-- Name: user_group_stage_stage_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_group_stage_stage_id ON public.user_group_stage USING btree (stage_id);


--
-- Name: user_group_stage_user_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_group_stage_user_group_id ON public.user_group_stage USING btree (user_group_id);


--
-- Name: user_groups_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_groups_context_id ON public.user_groups USING btree (context_id);


--
-- Name: user_groups_role_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_groups_role_id ON public.user_groups USING btree (role_id);


--
-- Name: user_groups_user_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_groups_user_group_id ON public.user_groups USING btree (user_group_id);


--
-- Name: user_interests_controlled_vocab_entry_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_interests_controlled_vocab_entry_id ON public.user_interests USING btree (controlled_vocab_entry_id);


--
-- Name: user_interests_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_interests_user_id ON public.user_interests USING btree (user_id);


--
-- Name: user_settings_locale_setting_name_index; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_settings_locale_setting_name_index ON public.user_settings USING btree (setting_name, locale);


--
-- Name: user_settings_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_settings_user_id ON public.user_settings USING btree (user_id);


--
-- Name: user_user_groups_user_group_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_user_groups_user_group_id ON public.user_user_groups USING btree (user_group_id);


--
-- Name: user_user_groups_user_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX user_user_groups_user_id ON public.user_user_groups USING btree (user_id);


--
-- Name: users_email; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE UNIQUE INDEX users_email ON public.users USING btree (lower((email)::text));


--
-- Name: users_username; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE UNIQUE INDEX users_username ON public.users USING btree (lower((username)::text));


--
-- Name: usi_institution_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usi_institution_id ON public.usage_stats_institution_temporary_records USING btree (institution_id);


--
-- Name: usii_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usii_chapter_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (chapter_id);


--
-- Name: usii_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usii_context_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (context_id);


--
-- Name: usii_representation_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usii_representation_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (representation_id);


--
-- Name: usii_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usii_submission_file_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (submission_file_id);


--
-- Name: usii_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usii_submission_id ON public.usage_stats_unique_item_investigations_temporary_records USING btree (submission_id);


--
-- Name: usir_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usir_chapter_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (chapter_id);


--
-- Name: usir_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usir_context_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (context_id);


--
-- Name: usir_representation_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usir_representation_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (representation_id);


--
-- Name: usir_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usir_submission_file_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (submission_file_id);


--
-- Name: usir_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usir_submission_id ON public.usage_stats_unique_item_requests_temporary_records USING btree (submission_id);


--
-- Name: ust_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ust_chapter_id ON public.usage_stats_total_temporary_records USING btree (chapter_id);


--
-- Name: ust_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ust_context_id ON public.usage_stats_total_temporary_records USING btree (context_id);


--
-- Name: ust_representation_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ust_representation_id ON public.usage_stats_total_temporary_records USING btree (representation_id);


--
-- Name: ust_series_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ust_series_id ON public.usage_stats_total_temporary_records USING btree (series_id);


--
-- Name: ust_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ust_submission_file_id ON public.usage_stats_total_temporary_records USING btree (submission_file_id);


--
-- Name: ust_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ust_submission_id ON public.usage_stats_total_temporary_records USING btree (submission_id);


--
-- Name: usti_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usti_chapter_id ON public.usage_stats_unique_title_investigations_temporary_records USING btree (chapter_id);


--
-- Name: usti_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usti_context_id ON public.usage_stats_unique_title_investigations_temporary_records USING btree (context_id);


--
-- Name: usti_representation_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usti_representation_id ON public.usage_stats_unique_title_investigations_temporary_records USING btree (representation_id);


--
-- Name: usti_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usti_submission_file_id ON public.usage_stats_unique_title_investigations_temporary_records USING btree (submission_file_id);


--
-- Name: usti_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX usti_submission_id ON public.usage_stats_unique_title_investigations_temporary_records USING btree (submission_id);


--
-- Name: ustr_chapter_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ustr_chapter_id ON public.usage_stats_unique_title_requests_temporary_records USING btree (chapter_id);


--
-- Name: ustr_context_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ustr_context_id ON public.usage_stats_unique_title_requests_temporary_records USING btree (context_id);


--
-- Name: ustr_representation_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ustr_representation_id ON public.usage_stats_unique_title_requests_temporary_records USING btree (representation_id);


--
-- Name: ustr_submission_file_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ustr_submission_file_id ON public.usage_stats_unique_title_requests_temporary_records USING btree (submission_file_id);


--
-- Name: ustr_submission_id; Type: INDEX; Schema: public; Owner: omp-ci
--

CREATE INDEX ustr_submission_id ON public.usage_stats_unique_title_requests_temporary_records USING btree (submission_id);


--
-- Name: access_keys_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.access_keys
    ADD CONSTRAINT access_keys_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: announcement_settings_announcement_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcement_settings
    ADD CONSTRAINT announcement_settings_announcement_id_foreign FOREIGN KEY (announcement_id) REFERENCES public.announcements(announcement_id) ON DELETE CASCADE;


--
-- Name: announcement_type_settings_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcement_type_settings
    ADD CONSTRAINT announcement_type_settings_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.announcement_types(type_id) ON DELETE CASCADE;


--
-- Name: announcement_types_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcement_types
    ADD CONSTRAINT announcement_types_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: announcements_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.announcement_types(type_id) ON DELETE SET NULL;


--
-- Name: assignment_settings_navigation_menu_item_assignment_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignment_settings
    ADD CONSTRAINT assignment_settings_navigation_menu_item_assignment_id FOREIGN KEY (navigation_menu_item_assignment_id) REFERENCES public.navigation_menu_item_assignments(navigation_menu_item_assignment_id) ON DELETE CASCADE;


--
-- Name: author_settings_author_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.author_settings
    ADD CONSTRAINT author_settings_author_id FOREIGN KEY (author_id) REFERENCES public.authors(author_id) ON DELETE CASCADE;


--
-- Name: authors_publication_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_publication_id_foreign FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: authors_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: c_v_e_s_entry_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocab_entry_settings
    ADD CONSTRAINT c_v_e_s_entry_id FOREIGN KEY (controlled_vocab_entry_id) REFERENCES public.controlled_vocab_entries(controlled_vocab_entry_id) ON DELETE CASCADE;


--
-- Name: categories_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: categories_parent_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_foreign FOREIGN KEY (parent_id) REFERENCES public.categories(category_id) ON DELETE SET NULL;


--
-- Name: category_settings_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.category_settings
    ADD CONSTRAINT category_settings_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON DELETE CASCADE;


--
-- Name: citation_settings_citation_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.citation_settings
    ADD CONSTRAINT citation_settings_citation_id FOREIGN KEY (citation_id) REFERENCES public.citations(citation_id) ON DELETE CASCADE;


--
-- Name: citations_publication; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.citations
    ADD CONSTRAINT citations_publication FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: completed_payments_context_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.completed_payments
    ADD CONSTRAINT completed_payments_context_id FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: completed_payments_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.completed_payments
    ADD CONSTRAINT completed_payments_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE SET NULL;


--
-- Name: controlled_vocab_entries_controlled_vocab_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.controlled_vocab_entries
    ADD CONSTRAINT controlled_vocab_entries_controlled_vocab_id_foreign FOREIGN KEY (controlled_vocab_id) REFERENCES public.controlled_vocabs(controlled_vocab_id) ON DELETE CASCADE;


--
-- Name: data_object_tombstone_oai_set_objects_tombstone_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.data_object_tombstone_oai_set_objects
    ADD CONSTRAINT data_object_tombstone_oai_set_objects_tombstone_id FOREIGN KEY (tombstone_id) REFERENCES public.data_object_tombstones(tombstone_id) ON DELETE CASCADE;


--
-- Name: data_object_tombstone_settings_tombstone_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.data_object_tombstone_settings
    ADD CONSTRAINT data_object_tombstone_settings_tombstone_id FOREIGN KEY (tombstone_id) REFERENCES public.data_object_tombstones(tombstone_id) ON DELETE CASCADE;


--
-- Name: doi_settings_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.doi_settings
    ADD CONSTRAINT doi_settings_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE CASCADE;


--
-- Name: dois_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.dois
    ADD CONSTRAINT dois_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_editor_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_editor_id FOREIGN KEY (editor_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_review_round_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_review_round_id_foreign FOREIGN KEY (review_round_id) REFERENCES public.review_rounds(review_round_id) ON DELETE CASCADE;


--
-- Name: edit_decisions_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.edit_decisions
    ADD CONSTRAINT edit_decisions_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: email_log_users_email_log_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_users_email_log_id_foreign FOREIGN KEY (email_log_id) REFERENCES public.email_log(log_id) ON DELETE CASCADE;


--
-- Name: email_log_users_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_log_users
    ADD CONSTRAINT email_log_users_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: email_templates_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: email_templates_settings_email_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.email_templates_settings
    ADD CONSTRAINT email_templates_settings_email_id FOREIGN KEY (email_id) REFERENCES public.email_templates(email_id) ON DELETE CASCADE;


--
-- Name: event_log_settings_log_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.event_log_settings
    ADD CONSTRAINT event_log_settings_log_id FOREIGN KEY (log_id) REFERENCES public.event_log(log_id) ON DELETE CASCADE;


--
-- Name: event_log_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.event_log
    ADD CONSTRAINT event_log_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: features_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: filter_settings_filter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filter_settings
    ADD CONSTRAINT filter_settings_filter_id_foreign FOREIGN KEY (filter_id) REFERENCES public.filters(filter_id) ON DELETE CASCADE;


--
-- Name: filters_filter_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.filters
    ADD CONSTRAINT filters_filter_group_id_foreign FOREIGN KEY (filter_group_id) REFERENCES public.filter_groups(filter_group_id) ON DELETE CASCADE;


--
-- Name: genre_settings_genre_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.genre_settings
    ADD CONSTRAINT genre_settings_genre_id_foreign FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) ON DELETE CASCADE;


--
-- Name: genres_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: identification_codes_publication_format_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.identification_codes
    ADD CONSTRAINT identification_codes_publication_format_id FOREIGN KEY (publication_format_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: institution_ip_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institution_ip
    ADD CONSTRAINT institution_ip_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: institution_settings_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institution_settings
    ADD CONSTRAINT institution_settings_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: institutions_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.institutions
    ADD CONSTRAINT institutions_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: library_file_settings_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.library_file_settings
    ADD CONSTRAINT library_file_settings_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.library_files(file_id) ON DELETE CASCADE;


--
-- Name: library_files_context_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_context_id FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: library_files_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.library_files
    ADD CONSTRAINT library_files_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: markets_publication_format_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.markets
    ADD CONSTRAINT markets_publication_format_id FOREIGN KEY (publication_format_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: metrics_context_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_context
    ADD CONSTRAINT metrics_context_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: metrics_series_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_series
    ADD CONSTRAINT metrics_series_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: metrics_series_series_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_series
    ADD CONSTRAINT metrics_series_series_id_foreign FOREIGN KEY (series_id) REFERENCES public.series(series_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: metrics_submission_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission
    ADD CONSTRAINT metrics_submission_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msd_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: msd_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_daily
    ADD CONSTRAINT msd_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msgd_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: msgd_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_daily
    ADD CONSTRAINT msgd_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msgm_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: msgm_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_submission_geo_monthly
    ADD CONSTRAINT msgm_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msid_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: msid_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: msid_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_daily
    ADD CONSTRAINT msid_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msim_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: msim_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: msim_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_institution_monthly
    ADD CONSTRAINT msim_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: msm_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: msm_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.metrics_counter_submission_monthly
    ADD CONSTRAINT msm_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_assignments_navigation_menu_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_navigation_menu_id_foreign FOREIGN KEY (navigation_menu_id) REFERENCES public.navigation_menus(navigation_menu_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_assignments_navigation_menu_item_id_foreig; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_assignments
    ADD CONSTRAINT navigation_menu_item_assignments_navigation_menu_item_id_foreig FOREIGN KEY (navigation_menu_item_id) REFERENCES public.navigation_menu_items(navigation_menu_item_id) ON DELETE CASCADE;


--
-- Name: navigation_menu_item_settings_navigation_menu_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.navigation_menu_item_settings
    ADD CONSTRAINT navigation_menu_item_settings_navigation_menu_id FOREIGN KEY (navigation_menu_item_id) REFERENCES public.navigation_menu_items(navigation_menu_item_id) ON DELETE CASCADE;


--
-- Name: new_releases_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.new_releases
    ADD CONSTRAINT new_releases_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: notes_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: notification_settings_notification_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_notification_id_foreign FOREIGN KEY (notification_id) REFERENCES public.notifications(notification_id) ON DELETE CASCADE;


--
-- Name: notification_subscription_settings_context_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_context_foreign FOREIGN KEY (context) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: notification_subscription_settings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.notification_subscription_settings
    ADD CONSTRAINT notification_subscription_settings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: press_settings_press_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.press_settings
    ADD CONSTRAINT press_settings_press_id_foreign FOREIGN KEY (press_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: publication_categories_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_category_id_foreign FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON DELETE CASCADE;


--
-- Name: publication_categories_publication_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_categories
    ADD CONSTRAINT publication_categories_publication_id_foreign FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publication_dates_publication_format_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_dates
    ADD CONSTRAINT publication_dates_publication_format_id FOREIGN KEY (publication_format_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: publication_format_settings_publication_format_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_format_settings
    ADD CONSTRAINT publication_format_settings_publication_format_id FOREIGN KEY (publication_format_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: publication_formats_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_formats
    ADD CONSTRAINT publication_formats_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: publication_formats_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_formats
    ADD CONSTRAINT publication_formats_publication_id FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publication_settings_publication_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publication_settings
    ADD CONSTRAINT publication_settings_publication_id_foreign FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: publications_author_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_author_id FOREIGN KEY (primary_contact_id) REFERENCES public.authors(author_id) ON DELETE SET NULL;


--
-- Name: publications_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: publications_series_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_series_id FOREIGN KEY (series_id) REFERENCES public.series(series_id) ON DELETE CASCADE;


--
-- Name: publications_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.publications
    ADD CONSTRAINT publications_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: query_participants_query_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_query_id_foreign FOREIGN KEY (query_id) REFERENCES public.queries(query_id) ON DELETE CASCADE;


--
-- Name: query_participants_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.query_participants
    ADD CONSTRAINT query_participants_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: representatives_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.representatives
    ADD CONSTRAINT representatives_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: review_assignments_review_form_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_review_form_id_foreign FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id);


--
-- Name: review_assignments_review_round_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_review_round_id_foreign FOREIGN KEY (review_round_id) REFERENCES public.review_rounds(review_round_id);


--
-- Name: review_assignments_reviewer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_reviewer_id_foreign FOREIGN KEY (reviewer_id) REFERENCES public.users(user_id);


--
-- Name: review_assignments_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_assignments
    ADD CONSTRAINT review_assignments_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id);


--
-- Name: review_files_review_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_review_id_foreign FOREIGN KEY (review_id) REFERENCES public.review_assignments(review_id) ON DELETE CASCADE;


--
-- Name: review_files_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_files
    ADD CONSTRAINT review_files_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: review_form_element_settings_review_form_element_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_element_settings
    ADD CONSTRAINT review_form_element_settings_review_form_element_id FOREIGN KEY (review_form_element_id) REFERENCES public.review_form_elements(review_form_element_id) ON DELETE CASCADE;


--
-- Name: review_form_elements_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_elements
    ADD CONSTRAINT review_form_elements_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE CASCADE;


--
-- Name: review_form_responses_review_form_element_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_responses
    ADD CONSTRAINT review_form_responses_review_form_element_id_foreign FOREIGN KEY (review_form_element_id) REFERENCES public.review_form_elements(review_form_element_id) ON DELETE CASCADE;


--
-- Name: review_form_responses_review_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_responses
    ADD CONSTRAINT review_form_responses_review_id_foreign FOREIGN KEY (review_id) REFERENCES public.review_assignments(review_id) ON DELETE CASCADE;


--
-- Name: review_form_settings_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_form_settings
    ADD CONSTRAINT review_form_settings_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE CASCADE;


--
-- Name: review_round_files_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: review_round_files_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.review_round_files
    ADD CONSTRAINT review_round_files_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: sales_rights_publication_format_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.sales_rights
    ADD CONSTRAINT sales_rights_publication_format_id FOREIGN KEY (publication_format_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: section_editors_context_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT section_editors_context_id FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: series_categories_category_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series_categories
    ADD CONSTRAINT series_categories_category_id FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON DELETE CASCADE;


--
-- Name: series_categories_series_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series_categories
    ADD CONSTRAINT series_categories_series_id FOREIGN KEY (series_id) REFERENCES public.series(series_id) ON DELETE CASCADE;


--
-- Name: series_press_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_press_id FOREIGN KEY (press_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: series_review_form_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_review_form_id FOREIGN KEY (review_form_id) REFERENCES public.review_forms(review_form_id) ON DELETE SET NULL;


--
-- Name: series_settings_series_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.series_settings
    ADD CONSTRAINT series_settings_series_id FOREIGN KEY (series_id) REFERENCES public.series(series_id) ON DELETE CASCADE;


--
-- Name: sessions_user_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: spotlight_settings_spotlight_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.spotlight_settings
    ADD CONSTRAINT spotlight_settings_spotlight_id_foreign FOREIGN KEY (spotlight_id) REFERENCES public.spotlights(spotlight_id);


--
-- Name: spotlights_press_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.spotlights
    ADD CONSTRAINT spotlights_press_id_foreign FOREIGN KEY (press_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_user_group_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_user_group_id FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: stage_assignments_user_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.stage_assignments
    ADD CONSTRAINT stage_assignments_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: subeditor_submission_group_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT subeditor_submission_group_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: subeditor_submission_group_user_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.subeditor_submission_group
    ADD CONSTRAINT subeditor_submission_group_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: submission_chapter_authors_author_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapter_authors
    ADD CONSTRAINT submission_chapter_authors_author_id_foreign FOREIGN KEY (author_id) REFERENCES public.authors(author_id) ON DELETE CASCADE;


--
-- Name: submission_chapter_authors_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapter_authors
    ADD CONSTRAINT submission_chapter_authors_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: submission_chapter_settings_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapter_settings
    ADD CONSTRAINT submission_chapter_settings_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: submission_chapters_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapters
    ADD CONSTRAINT submission_chapters_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: submission_chapters_primary_contact_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapters
    ADD CONSTRAINT submission_chapters_primary_contact_id_foreign FOREIGN KEY (primary_contact_id) REFERENCES public.authors(author_id) ON DELETE SET NULL;


--
-- Name: submission_chapters_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapters
    ADD CONSTRAINT submission_chapters_publication_id FOREIGN KEY (publication_id) REFERENCES public.publications(publication_id) ON DELETE CASCADE;


--
-- Name: submission_chapters_source_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_chapters
    ADD CONSTRAINT submission_chapters_source_chapter_id_foreign FOREIGN KEY (source_chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE SET NULL;


--
-- Name: submission_comments_author_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_author_id_foreign FOREIGN KEY (author_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: submission_comments_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_comments
    ADD CONSTRAINT submission_comments_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_file_revisions_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.files(file_id) ON DELETE CASCADE;


--
-- Name: submission_file_revisions_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_file_revisions
    ADD CONSTRAINT submission_file_revisions_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_file_settings_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_file_settings
    ADD CONSTRAINT submission_file_settings_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_files_doi_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_doi_id_foreign FOREIGN KEY (doi_id) REFERENCES public.dois(doi_id) ON DELETE SET NULL;


--
-- Name: submission_files_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_file_id_foreign FOREIGN KEY (file_id) REFERENCES public.files(file_id) ON DELETE CASCADE;


--
-- Name: submission_files_genre_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_genre_id_foreign FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) ON DELETE SET NULL;


--
-- Name: submission_files_source_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_source_submission_file_id_foreign FOREIGN KEY (source_submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: submission_files_submission_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_submission_id FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_files_uploader_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_files
    ADD CONSTRAINT submission_files_uploader_user_id_foreign FOREIGN KEY (uploader_user_id) REFERENCES public.users(user_id) ON DELETE SET NULL;


--
-- Name: submission_search_object_keywords_keyword_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_keyword_id FOREIGN KEY (keyword_id) REFERENCES public.submission_search_keyword_list(keyword_id) ON DELETE CASCADE;


--
-- Name: submission_search_object_keywords_object_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_object_keywords
    ADD CONSTRAINT submission_search_object_keywords_object_id_foreign FOREIGN KEY (object_id) REFERENCES public.submission_search_objects(object_id) ON DELETE CASCADE;


--
-- Name: submission_search_object_submission; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_search_objects
    ADD CONSTRAINT submission_search_object_submission FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submission_settings_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submission_settings
    ADD CONSTRAINT submission_settings_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: submissions_context_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_context_id FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: submissions_publication_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_publication_id FOREIGN KEY (current_publication_id) REFERENCES public.publications(publication_id) ON DELETE SET NULL;


--
-- Name: temporary_files_user_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.temporary_files
    ADD CONSTRAINT temporary_files_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_group_settings_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_group_settings
    ADD CONSTRAINT user_group_settings_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_group_stage_context_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_context_id FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: user_group_stage_user_group_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_group_stage
    ADD CONSTRAINT user_group_stage_user_group_id FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_interests_controlled_vocab_entry_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_controlled_vocab_entry_id_foreign FOREIGN KEY (controlled_vocab_entry_id) REFERENCES public.controlled_vocab_entries(controlled_vocab_entry_id) ON DELETE CASCADE;


--
-- Name: user_interests_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_settings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_settings
    ADD CONSTRAINT user_settings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: user_user_groups_user_group_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_group_id_foreign FOREIGN KEY (user_group_id) REFERENCES public.user_groups(user_group_id) ON DELETE CASCADE;


--
-- Name: user_user_groups_user_id; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: usi_institution_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_institution_temporary_records
    ADD CONSTRAINT usi_institution_id_foreign FOREIGN KEY (institution_id) REFERENCES public.institutions(institution_id) ON DELETE CASCADE;


--
-- Name: usii_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: usii_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: usii_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: usii_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: usii_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_investigations_temporary_records
    ADD CONSTRAINT usii_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: usir_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: usir_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: usir_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: usir_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: usir_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_item_requests_temporary_records
    ADD CONSTRAINT usir_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: ust_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: ust_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: ust_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: ust_series_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_series_id_foreign FOREIGN KEY (series_id) REFERENCES public.series(series_id) ON DELETE CASCADE;


--
-- Name: ust_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: ust_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_total_temporary_records
    ADD CONSTRAINT ust_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: usti_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records
    ADD CONSTRAINT usti_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: usti_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records
    ADD CONSTRAINT usti_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: usti_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records
    ADD CONSTRAINT usti_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: usti_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records
    ADD CONSTRAINT usti_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: usti_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_investigations_temporary_records
    ADD CONSTRAINT usti_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


--
-- Name: ustr_chapter_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records
    ADD CONSTRAINT ustr_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.submission_chapters(chapter_id) ON DELETE CASCADE;


--
-- Name: ustr_context_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records
    ADD CONSTRAINT ustr_context_id_foreign FOREIGN KEY (context_id) REFERENCES public.presses(press_id) ON DELETE CASCADE;


--
-- Name: ustr_representation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records
    ADD CONSTRAINT ustr_representation_id_foreign FOREIGN KEY (representation_id) REFERENCES public.publication_formats(publication_format_id) ON DELETE CASCADE;


--
-- Name: ustr_submission_file_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records
    ADD CONSTRAINT ustr_submission_file_id_foreign FOREIGN KEY (submission_file_id) REFERENCES public.submission_files(submission_file_id) ON DELETE CASCADE;


--
-- Name: ustr_submission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: omp-ci
--

ALTER TABLE ONLY public.usage_stats_unique_title_requests_temporary_records
    ADD CONSTRAINT ustr_submission_id_foreign FOREIGN KEY (submission_id) REFERENCES public.submissions(submission_id) ON DELETE CASCADE;


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

