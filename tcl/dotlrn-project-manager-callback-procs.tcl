# packages/dotlrn-project-manager/tcl/dotlrn-project-manager-callback-procs.tcl

ad_library {
    
    Callback procs for Project manager dotlrn applet
    
    @author Timo Hentschel (timo@timohentschel.de)
    @creation-date 2005-12-18
    @arch-tag: 200d82ba-f8e7-4f19-9740-39117474766f
    @cvs-id $Id: 
}

ad_proc -public -callback dotlrn_project_manager::new_community {
    {-community_id:required}
    {-package_id:required}
} {
}
