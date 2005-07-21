ad_library {
    Procedures for registering implementations for the
    dotlrn nwes-aggregator package. 
    
    @creation-date 8 May 2003
    @author Simon Carstensen (simon@collaboraid.biz)
    @cvs-id $Id$
}

namespace eval dotlrn_project_manager {}

ad_proc -private dotlrn_project_manager::install {} {
    dotLRN Project Manager package install proc
} {
    register_portal_datasource_impl
}

ad_proc -private dotlrn_project_manager::uninstall {} {
    dotLRN Project Manager package uninstall proc
} {
    unregister_portal_datasource_impl
}

ad_proc -private dotlrn_project_manager::register_portal_datasource_impl {} {
    Register the service contract implementation for the dotlrn_applet service contract
} {
    set spec {
        name "dotlrn_project_manager"
	contract_name "dotlrn_applet"
	owner "dotlrn-weblogger"
        aliases {
	    GetPrettyName dotlrn_project_manager::get_pretty_name
	    AddApplet dotlrn_project_manager::add_applet
	    RemoveApplet dotlrn_project_manager::remove_applet
	    AddAppletToCommunity dotlrn_project_manager::add_applet_to_community
	    RemoveAppletFromCommunity dotlrn_project_manager::remove_applet_from_community
	    AddUser dotlrn_project_manager::add_user
	    RemoveUser dotlrn_project_manager::remove_user
	    AddUserToCommunity dotlrn_project_manager::add_user_to_community
	    RemoveUserFromCommunity dotlrn_project_manager::remove_user_from_community
	    AddPortlet dotlrn_project_manager::add_portlet
	    RemovePortlet dotlrn_project_manager::remove_portlet
	    Clone dotlrn_project_manager::clone
	    ChangeEventHandler dotlrn_project_manager::change_event_handler
        }
    }
    
    acs_sc::impl::new_from_spec -spec $spec
}

ad_proc -private dotlrn_project_manager::unregister_portal_datasource_impl {} {
    Unregister service contract implementations
} {
    acs_sc::impl::delete \
        -contract_name "dotlrn_applet" \
        -impl_name "dotlrn_project_manager"
}
