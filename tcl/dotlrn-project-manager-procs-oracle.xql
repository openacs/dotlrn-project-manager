<?xml version="1.0"?>

<queryset>
<rdbms><type>oracle</type><version>8.1.6</version></rdbms>

<fullquery name="dotlrn_project_manager::clone.call_project_manager_clone">
  <querytext>
    begin
      project_manager.clone ( 
        old_package_id => :old_package_id,
        new_package_id => :new_package_id
      );
    end;
  </querytext>
</fullquery>


</queryset>

