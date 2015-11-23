set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>13038846609249200481
,p_default_application_id=>83629
,p_default_owner=>'IDONTEVENKNOW'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 83629 - Rest_mobile
--
-- Application Export:
--   Application:     83629
--   Name:            Rest_mobile
--   Date and Time:   17:06 Monday November 23, 2015
--   Exported By:     DINH_HUYNH
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                      4
--     Items:                   11
--     Processes:                1
--     Regions:                  5
--     Buttons:                  4
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Web Services:           1
--     Navigation:
--       Lists:                  1
--       Breadcrumbs:            1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 3
--         Region:              14
--         Label:                3
--         List:                 5
--         Popup LOV:            1
--         Calendar:             1
--         Button:               2
--         Report:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,83629)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'IDONTEVENKNOW')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Rest_mobile')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_83629')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'F45CDDB1D595D9274FFD604B6F5DE719C6D2B419CA20F7BABBD76BC7842D3B52'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(18262131365045143754)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Rest_mobile'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'DINH_HUYNH'
,p_last_upd_yyyymmddhh24miss=>'20151123133945'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18261472535197143711)
,p_name=>'Mobile Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18262132249520143763)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18268122364027186631)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Page'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18268279195966373583)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Chart'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18261472243159143710)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18261472318093143711)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18261472488177143711)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(18262131206412143753)
,p_icon_sequence=>200
,p_icon_subtext=>'Log Out'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Log Out'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(18262131493203143756)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18261472671689143711)
,p_theme_id=>51
,p_name=>'Dialog'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-dialog="true" data-role="page" data-close-btn="right" aria-label="#TITLE#" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
' <div data-role="header" class="ui-header ui-bar-c">',
'  <h1>#TITLE#</h1>',
' </div>',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#THEME_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>4
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_width=>'92.5%'
,p_dialog_max_width=>'500px'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3944623128197965030
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18261472713932143714)
,p_theme_id=>51
,p_name=>'Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <meta name="apple-mobile-web-app-capable" content="yes">',
'  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a" data-url="#REQUESTED_URL#" class="ui-responsive-panel" >',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'',
'<div data-role="panel" id="menupanel"  class="jqm-navmenu-panel" data-position="left" data-display="overlay">',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</div>    ',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div>',
'',
'#REGION_POSITION_08#',
'',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" style="margin-bottom:20px;" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS# apex-grid-debug">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773948923360905623
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18261472870873143714)
,p_page_template_id=>wwv_flow_api.id(18261472713932143714)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18261472944011143715)
,p_page_template_id=>wwv_flow_api.id(18261472713932143714)
,p_name=>'Header Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(18261473054737143715)
,p_page_template_id=>wwv_flow_api.id(18261472713932143714)
,p_name=>'Footer Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18261473543262143716)
,p_theme_id=>51
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#    ',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773982230016967788
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18261475998267143727)
,p_template_name=>'Icon Button'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3769112915850328396
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_preset_template_options=>'ui-btn-icon-notext'
,p_theme_id=>51
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18262130165284143731)
,p_template_name=>'Standard Button'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3773985424233098554
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_theme_id=>51
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261473630874143717)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" data-type="horizontal" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Horizontal)'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986716277171983
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261473739775143719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Vertical)'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986516015153022
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261473813514143719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" #REGION_CSS_CLASSES# #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Closed)'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3802613893727675064
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261473901409143719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Open)'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773989519618239167
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474088112143719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773995014648303985
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474125471143719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Displays at Bottom of Page)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773960018627216969
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474282259143719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956337432111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474319044143719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fullscreen)'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773955815682111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474493071143720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#PAGE_TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fixed)'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773957032569111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474508339143720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956714688111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474699685143720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-role="panel" id="#REGION_STATIC_ID#" data-position="right" data-display="overlay" class="#REGION_CSS_CLASSES#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'</div>  '))
,p_page_plug_template_name=>'Panel'
,p_theme_id=>51
,p_theme_class_id=>2
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4376395493293226388
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474759982143720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#PREVIOUS#',
'#NEXT#    ',
'</div>'))
,p_page_plug_template_name=>'Plain (No Title)'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773970912843347834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474875062143720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ui-collapsible #REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'  <h3 class="ui-collapsible-heading ui-btn ui-corner-top ui-btn-up-a">',
'    <span class="ui-btn-inner ui-corner-top ui-corner-bottom">',
'      <span lass="ui-btn-text">#TITLE#</span>',
'    </span>',
'  </h3>',
'  <div class="ui-collapsible-content ui-body-c ui-corner-bottom">',
'    #BODY#',
'    #SUB_REGIONS#',
'    #EDIT#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region (With Title Bar)'
,p_theme_id=>51
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774008426020553267
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18261474991983143720)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774032731297886006
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18261475191234143723)
,p_list_template_current=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_name=>'Button Control Group'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="navgroup">',
'   <div data-role="controlgroup" data-type="horizontal">'))
,p_list_template_after_rows=>'</div></div>'
,p_reference_id=>4142824253118274072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18261475219746143725)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3776865227797444118
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18261475377520143725)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View (Inset)'
,p_theme_id=>51
,p_theme_class_id=>10
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="true">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-inset="true">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3935648678734663305
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18261475457107143725)
,p_list_template_current=>'<li><a href="#LINK#" class="ui-btn-active" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>51
,p_theme_class_id=>11
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-role="navbar">',
'  <ul>',
''))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div><!-- /navbar -->'))
,p_reference_id=>3773961435821288174
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18261475554008143726)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Menu'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.jqm-navmenu-panel .ui-listview > li .ui-collapsible-heading {',
'    margin: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible.ui-li-static {',
'    border: medium none !important;',
'    padding: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible + li > .ui-btn, .jqm-navmenu-panel .ui-collapsible + .ui-collapsible > .ui-collapsible-heading > .ui-btn, .jqm-navmenu-panel .ui-panel-inner > .ui-listview > li.ui-first-child .ui-btn {',
'    border-top: medium none !important;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn {',
'    color: #999;',
'    padding-left: 1.5em;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn.ui-btn-active {',
'    color: #fff;',
'}',
'.jqm-navmenu-panel .ui-btn:after {',
'    opacity: 0.4;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav {',
'    display: none;',
'    left: 12px;',
'    position: absolute;',
'    top: 178px;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav ul li:first-child a {',
'    border-top: medium none;',
'}',
'',
''))
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-role="listview" data-theme="b">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    <ul data-role="listview" data-theme="b">',
'        #SUB_LISTS#',
'    </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    #SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_reference_id=>5052261073199403386
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18261475034572143720)
,p_row_template_name=>'Standard Report'
,p_row_template1=>'<div class="list-view-cell" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_VALUE#</div>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<ul data-role="listview">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<li data-role="list-divider">'
,p_column_heading_template=>'<div class="list-view-cell" id="#COLUMN_HEADER_NAME#" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_HEADER#</div>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3938915966414985025
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18261475034572143720)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18261475660475143726)
,p_template_name=>'No Label (For Screenreaders)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-hide-label" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>13
,p_reference_id=>3774000536044404829
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18261475791238143727)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>3
,p_reference_id=>3773999522622381968
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18261475803638143727)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'<span class="a-Icon icon-asterisk"></span></label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3773952434061913595
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(18262130567554143736)
,p_popup_icon=>'#IMAGE_PREFIX#list.gif'
,p_popup_icon_attr=>'width=13 height=13 alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css>',
'#THEME_CSS#',
'</head>'))
,p_page_body_attr=>'bgcolor=white OnLoad=first_field()'
,p_before_field_text=>' '
,p_page_heading_text=>'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-fami'
||'ly:arial; background-color:#ffffff;} </style>'
,p_page_footer_text=>'</center></td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next'
,p_prev_button_text=>'Previous'
,p_after_field_text=>'</div><br />'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW#'
,p_result_rows_per_pg=>10
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3773970616521339369
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(18262130456353143731)
,p_cal_template_name=>'Basic Calendar'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th scope="colgroup" class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
''))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageinit", function() {',
'',
'    // Initialize calendar data as list view as soon as that section has been refreshed',
'    // Use Swipe Left and Right to go to the next or previous month',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'                .find( "[data-role=''listview'']")',
'                .listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    // Load calendar data of date if it''s tapped',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "tap", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery(".apex-calendar-today-has-data")',
'            .addClass(''apex-calendar-has-data'')',
'            .removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" )',
'            .addClass("m-Day")',
'            .removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'    // New calendar entries can be added with tab and hold',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "taphold", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'',
'    // Get the data of the current day as soon as the page gets displayed',
'    apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageshow", function() {',
'        var lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery( ".m-Today", apex.gPageContext$ )',
'            .addClass( "m-Day" )',
'            .removeClass( "m-Today" );',
'        apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'            .find( "td[data-date=#CURRENT_DATE#]" )',
'            .addClass( "m-Today" );',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", "#CURRENT_DATE#", {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'});',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="m-WeekCalendar">',
'	<tr>',
'        <th scope="colgroup" class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL#" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="a">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="a">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3894606461977238251
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(18262131024708143743)
,p_theme_id=>51
,p_theme_name=>'Mobile'
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_navigation_type=>'L'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>3773947624214896911
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(18261472713932143714)
,p_default_dialog_template=>wwv_flow_api.id(18261472671689143711)
,p_error_template=>wwv_flow_api.id(18261472713932143714)
,p_printer_friendly_template=>wwv_flow_api.id(18261472713932143714)
,p_login_template=>wwv_flow_api.id(18261472713932143714)
,p_default_button_template=>wwv_flow_api.id(18262130165284143731)
,p_default_region_template=>wwv_flow_api.id(18261474759982143720)
,p_default_chart_template=>wwv_flow_api.id(18261474759982143720)
,p_default_form_template=>wwv_flow_api.id(18261474759982143720)
,p_default_reportr_template=>wwv_flow_api.id(18261474991983143720)
,p_default_tabform_template=>wwv_flow_api.id(18261474759982143720)
,p_default_wizard_template=>wwv_flow_api.id(18261474759982143720)
,p_default_irr_template=>wwv_flow_api.id(18261474759982143720)
,p_default_report_template=>wwv_flow_api.id(18261475034572143720)
,p_default_label_template=>wwv_flow_api.id(18261475791238143727)
,p_default_calendar_template=>wwv_flow_api.id(18262130456353143731)
,p_default_list_template=>wwv_flow_api.id(18261475377520143725)
,p_default_nav_list_template=>wwv_flow_api.id(18261475219746143725)
,p_default_top_nav_list_temp=>wwv_flow_api.id(18261475219746143725)
,p_default_side_nav_list_temp=>wwv_flow_api.id(18261475554008143726)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(18261473630874143717)
,p_default_dialogr_template=>wwv_flow_api.id(18261474759982143720)
,p_default_option_label=>wwv_flow_api.id(18261475791238143727)
,p_default_header_template=>wwv_flow_api.id(18261474493071143720)
,p_default_footer_template=>wwv_flow_api.id(18261474282259143719)
,p_default_required_label=>wwv_flow_api.id(18261475803638143727)
,p_default_page_transition=>'SLIDE'
,p_default_popup_transition=>'POP'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(51),'#IMAGE_PREFIX#themes/theme_51/')
,p_css_file_urls=>'#THEME_IMAGES#css/5_0.css'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18262130622453143738)
,p_theme_id=>51
,p_name=>'Blue'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/blue/theme_style_blue.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/blue/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537230577370
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18262130752439143738)
,p_theme_id=>51
,p_name=>'Dark'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/dark/theme_style_dark.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/dark/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3806542953350945495
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18262130809713143738)
,p_theme_id=>51
,p_name=>'Default'
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_51/css/default/theme_style_default.css'
,p_is_current=>true
,p_theme_roller_read_only=>false
,p_reference_id=>3768671220784242708
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(18262130966242143738)
,p_theme_id=>51
,p_name=>'Red'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/red/theme_style_red.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/red/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537227576001
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18261473118063143716)
,p_theme_id=>51
,p_name=>'MENU_PANEL_OPTIONS'
,p_display_name=>'Menu Panel Options'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'The relationship of the menu panel to the page contents. Can either push the page over ("reveal"), re-flow the content to fit the panel content as a column ("push"), or sit over the content ("overlay").'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18261476045239143728)
,p_theme_id=>51
,p_name=>'ICON_BUTTON'
,p_display_name=>'Icon Button'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(18261476531890143728)
,p_theme_id=>51
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261473289872143716)
,p_theme_id=>51
,p_name=>'OVERLAY'
,p_display_name=>'Overlay'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(18261472713932143714)
,p_css_classes=>'overlay'
,p_group_id=>wwv_flow_api.id(18261473118063143716)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261473357308143716)
,p_theme_id=>51
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(18261472713932143714)
,p_css_classes=>'push'
,p_group_id=>wwv_flow_api.id(18261473118063143716)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261473433677143716)
,p_theme_id=>51
,p_name=>'REVEAL'
,p_display_name=>'Reveal'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(18261472713932143714)
,p_css_classes=>'reveal'
,p_group_id=>wwv_flow_api.id(18261473118063143716)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476133163143728)
,p_theme_id=>51
,p_name=>'ICON_ACTION'
,p_display_name=>'Action'
,p_display_sequence=>100
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-action'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476257198143728)
,p_theme_id=>51
,p_name=>'ICON_ALERT'
,p_display_name=>'Alert'
,p_display_sequence=>110
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-alert'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476319750143728)
,p_theme_id=>51
,p_name=>'ICON_BACK'
,p_display_name=>'Back'
,p_display_sequence=>120
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-back'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476457042143728)
,p_theme_id=>51
,p_name=>'ICON_BARS'
,p_display_name=>'Bars'
,p_display_sequence=>130
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-bars'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476671135143728)
,p_theme_id=>51
,p_name=>'ICON_BOTTOM'
,p_display_name=>'Bottom'
,p_display_sequence=>50
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-btn-icon-bottom'
,p_group_id=>wwv_flow_api.id(18261476531890143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476746450143728)
,p_theme_id=>51
,p_name=>'ICON_BULLETS'
,p_display_name=>'Bullets'
,p_display_sequence=>140
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-bullets'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476828689143729)
,p_theme_id=>51
,p_name=>'ICON_CALENDAR'
,p_display_name=>'Calendar'
,p_display_sequence=>150
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-calendar'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261476972701143729)
,p_theme_id=>51
,p_name=>'ICON_CARAT_DOWN'
,p_display_name=>'Down'
,p_display_sequence=>160
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-carat-d'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477011367143729)
,p_theme_id=>51
,p_name=>'ICON_CARAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>170
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-carat-l'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477182051143729)
,p_theme_id=>51
,p_name=>'ICON_CARAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>180
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-carat-r'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477213569143729)
,p_theme_id=>51
,p_name=>'ICON_CARAT_UP'
,p_display_name=>'Up'
,p_display_sequence=>190
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-carat-u'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477322301143729)
,p_theme_id=>51
,p_name=>'ICON_CHECK'
,p_display_name=>'Check'
,p_display_sequence=>210
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-check'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477477260143729)
,p_theme_id=>51
,p_name=>'ICON_CLOCK'
,p_display_name=>'Clock'
,p_display_sequence=>240
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-clock'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477538981143729)
,p_theme_id=>51
,p_name=>'ICON_CLOUD'
,p_display_name=>'Cloud'
,p_display_sequence=>220
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-cloud'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477609644143729)
,p_theme_id=>51
,p_name=>'ICON_COMMENT'
,p_display_name=>'Comment'
,p_display_sequence=>230
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-comment'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477764091143729)
,p_theme_id=>51
,p_name=>'ICON_DELETE'
,p_display_name=>'Delete'
,p_display_sequence=>200
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-delete'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477849507143729)
,p_theme_id=>51
,p_name=>'ICON_EDIT'
,p_display_name=>'Edit'
,p_display_sequence=>250
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-edit'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18261477927525143729)
,p_theme_id=>51
,p_name=>'ICON_GEAR'
,p_display_name=>'Gear'
,p_display_sequence=>260
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-gear'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128020723143729)
,p_theme_id=>51
,p_name=>'ICON_GRID'
,p_display_name=>'Grid'
,p_display_sequence=>270
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-grid'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128173851143730)
,p_theme_id=>51
,p_name=>'ICON_HOME'
,p_display_name=>'Home'
,p_display_sequence=>280
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-home'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128233494143730)
,p_theme_id=>51
,p_name=>'ICON_INFO'
,p_display_name=>'Info'
,p_display_sequence=>290
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-info'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128341701143730)
,p_theme_id=>51
,p_name=>'ICON_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-btn-icon-left'
,p_group_id=>wwv_flow_api.id(18261476531890143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128417322143730)
,p_theme_id=>51
,p_name=>'ICON_LOCATION'
,p_display_name=>'Location'
,p_display_sequence=>300
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-location'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128585460143730)
,p_theme_id=>51
,p_name=>'ICON_LOCK'
,p_display_name=>'Lock'
,p_display_sequence=>310
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-lock'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128612297143730)
,p_theme_id=>51
,p_name=>'ICON_MAIL'
,p_display_name=>'Mail'
,p_display_sequence=>320
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-mail'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128784920143730)
,p_theme_id=>51
,p_name=>'ICON_MINUS'
,p_display_name=>'Minus'
,p_display_sequence=>330
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-minus'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128899369143730)
,p_theme_id=>51
,p_name=>'ICON_PHONE'
,p_display_name=>'Phone'
,p_display_sequence=>340
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-phone'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262128922555143730)
,p_theme_id=>51
,p_name=>'ICON_PLUS'
,p_display_name=>'Plus'
,p_display_sequence=>350
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-plus'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129072120143730)
,p_theme_id=>51
,p_name=>'ICON_POWER'
,p_display_name=>'Power'
,p_display_sequence=>360
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-power'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129119469143730)
,p_theme_id=>51
,p_name=>'ICON_REFRESH'
,p_display_name=>'Refresh'
,p_display_sequence=>370
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-refresh'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129281918143730)
,p_theme_id=>51
,p_name=>'ICON_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>40
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-btn-icon-right'
,p_group_id=>wwv_flow_api.id(18261476531890143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129304724143730)
,p_theme_id=>51
,p_name=>'ICON_SEARCH'
,p_display_name=>'Search'
,p_display_sequence=>380
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-search'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129481040143730)
,p_theme_id=>51
,p_name=>'ICON_STAR'
,p_display_name=>'Star'
,p_display_sequence=>390
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-star'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129519717143730)
,p_theme_id=>51
,p_name=>'ICON_TAG'
,p_display_name=>'Tag'
,p_display_sequence=>400
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-tag'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129647860143730)
,p_theme_id=>51
,p_name=>'ICON_TOP'
,p_display_name=>'Top'
,p_display_sequence=>30
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-btn-icon-top'
,p_group_id=>wwv_flow_api.id(18261476531890143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129796609143731)
,p_theme_id=>51
,p_name=>'ICON_USER'
,p_display_name=>'User'
,p_display_sequence=>410
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-icon-user'
,p_group_id=>wwv_flow_api.id(18261476045239143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129873983143731)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>5
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262129901686143731)
,p_theme_id=>51
,p_name=>'NO_TEXT'
,p_display_name=>'No Text'
,p_display_sequence=>60
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-btn-icon-notext'
,p_group_id=>wwv_flow_api.id(18261476531890143728)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262130038211143731)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262130275243143731)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(18262130165284143731)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(18262130346900143731)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(18262130165284143731)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(18262131365045143754)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(18262131165836143750)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'Mobile'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>51
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(18261472535197143711)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(18261475554008143726)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'NAVBAR'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(18262131165836143750)
,p_name=>'Global Page - Mobile'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Mobile'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20151123124151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18262131765474143758)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18261474493071143720)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Header'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18262132016503143759)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18261474282259143719)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18262131982432143759)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18262131765474143758)
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18262130165284143731)
,p_button_image_alt=>'Log Out'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18262131824407143758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18262131765474143758)
,p_button_name=>'MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:ui-btn-icon-notext:ui-icon-bars'
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_button_image_alt=>'Menu'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_cattributes=>' data-direction="reverse"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18262132100214143759)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18262131824407143758)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18262132100214143759)
,p_event_id=>wwv_flow_api.id(18262132100214143759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.mobile.activePage.find(''#menupanel'').panel("open");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(18262131165836143750)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20151123124152'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(18262131165836143750)
,p_name=>'RestfulReL'
,p_page_mode=>'NORMAL'
,p_step_title=>'RestfulReL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DINH_HUYNH'
,p_last_upd_yyyymmddhh24miss=>'20151123124901'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18268122789207186632)
,p_plug_name=>'doREST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18261474759982143720)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18268131082450186649)
,p_name=>'Results'
,p_template=>wwv_flow_api.id(18261474991983143720)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select clob001 from apex_collections ',
'where collection_name = ''P2_DOREST_RESULTS'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(18261475034572143720)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18268131677530186654)
,p_query_column_id=>1
,p_column_alias=>'CLOB001'
,p_column_display_sequence=>1
,p_column_heading=>'Clob001'
,p_report_column_width=>100
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18268123118592186634)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18262130165284143731)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18268123553089186635)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268124370864186639)
,p_name=>'P2_DB'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'Db'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268125127858186642)
,p_name=>'P2_USER'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'User'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268125993404186643)
,p_name=>'P2_PASS'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'Pass'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268126720868186644)
,p_name=>'P2_MODE'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'Mode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268127513834186645)
,p_name=>'P2_MODEL'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268128332763186646)
,p_name=>'P2_RETURNDIMENSIONS'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'Returndimensions'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268129148097186646)
,p_name=>'P2_RETURNFOR'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'Returnfor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268129945912186647)
,p_name=>'P2_QUERY'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(18268122789207186632)
,p_prompt=>'Query'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18268123942436186636)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_WEB_SERVICE'
,p_process_name=>'Web Service Request'
,p_process_sql_clob=>'18264482295387150633:18264482481404150634'
,p_attribute_01=>wwv_flow_api.id(18264482481404150634)
,p_attribute_02=>'COLLECTION'
,p_attribute_03=>'P2_DOREST_RESULTS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(18262131165836143750)
,p_name=>'Movie''s Total Gross by Genre and Distributor'
,p_page_mode=>'NORMAL'
,p_step_title=>'Movie''s Total Gross by Genre and Distributor'
,p_step_sub_title=>'Chart'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DINH_HUYNH'
,p_last_upd_yyyymmddhh24miss=>'20151123133945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18268279529947373585)
,p_plug_name=>'Total Gross of Movies by Genre and Distributor'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18261474759982143720)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(18268279821256373586)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'chart'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_18268279821256373586'
,p_display_attr=>':H:N:V:X::N:::Y:Circle:::N:::Default:::S'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME:Y:Y:::::Y:N'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_label_font=>'Tahoma:10:#000000'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(18268280219661373589)
,p_chart_id=>wwv_flow_api.id(18268279821256373586)
,p_series_seq=>10
,p_series_name=>'Total Gross of Movies by Genre and Distributor'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL LINK,',
'       genre LABEL,',
'       total_gross VALUE',
'FROM   movie',
'Where distributor_distributor_id',
' = :P3_DISTRIBUTORS'))
,p_series_type=>'Marker'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17142900105688543527)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18268279529947373585)
,p_button_name=>'Select'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:ui-btn-icon-notext'
,p_button_template_id=>wwv_flow_api.id(18261475998267143727)
,p_button_image_alt=>'Select'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>3
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17142900063192543526)
,p_name=>'P3_DISTRIBUTORS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18268279529947373585)
,p_prompt=>'Distributors'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name, distributor_id',
'from distributor'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(18261475791238143727)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17142900206578543528)
,p_name=>'P3_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18268279529947373585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17142900375245543529)
,p_name=>'P3_NEW_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18268279529947373585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/shared_components/logic/webservices/restfulrel
begin
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(18264482295387150633)
,p_name=>'RestfulReL'
,p_url=>'129.152.144.84:5001/rest/native/'
,p_action=>'REST'
,p_static_parm_04=>'GET'
,p_static_parm_05=>'json'
,p_static_parm_10=>'nvp'
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(18264482481404150634)
,p_ws_id=>wwv_flow_api.id(18264482295387150633)
,p_name=>'doREST'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18264482791513150638)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'query'
,p_input_or_output=>'I'
,p_parm_type=>'string'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268130398005186647)
,p_parameter_id=>wwv_flow_api.id(18264482791513150638)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_QUERY'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18264483089887150639)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'json'
,p_input_or_output=>'O'
,p_parm_type=>'json'
,p_type_is_xsd=>'N'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18267885847723161223)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'DB'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268124745027186641)
,p_parameter_id=>wwv_flow_api.id(18267885847723161223)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_DB'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18267886131739161223)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'USER'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268125577559186643)
,p_parameter_id=>wwv_flow_api.id(18267886131739161223)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_USER'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18267886405132161224)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'PASS'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268126382593186644)
,p_parameter_id=>wwv_flow_api.id(18267886405132161224)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_PASS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18267886778932161224)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'MODE'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268127163892186644)
,p_parameter_id=>wwv_flow_api.id(18267886778932161224)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODE'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18267887038268161224)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'MODEL'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268127964294186645)
,p_parameter_id=>wwv_flow_api.id(18267887038268161224)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_MODEL'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18267887389030161224)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'returnDimensions'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268128736987186646)
,p_parameter_id=>wwv_flow_api.id(18267887389030161224)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNDIMENSIONS'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(18267887644796161224)
,p_ws_opers_id=>wwv_flow_api.id(18264482481404150634)
,p_name=>'returnFor'
,p_input_or_output=>'H'
,p_type_is_xsd=>'Y'
);
wwv_flow_api.create_ws_process_parms_map(
 p_id=>wwv_flow_api.id(18268129582773186647)
,p_parameter_id=>wwv_flow_api.id(18267887644796161224)
,p_process_id=>wwv_flow_api.id(18268123942436186636)
,p_map_type=>'ITEM'
,p_parm_value=>'P2_RETURNFOR'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
