  {literal}
  <script>
  var myusers = new Array();

  function checkAll(chk)
  {
    frm = document.frmAdmin;
    total = frm.usertotal.value;				 
    if(chk.checked) {
     for(i = 0; i < total; i++) {
       id = document.getElementById('chkUser' + i);
       id.checked = true;
     }		
    } else {
     for(i = 0; i < total; i++) {
       id = document.getElementById('chkUser' + i);
       id.checked = false;
     }		
    }
  }
  function addUsers(o)
  {
		frm = document.frmAdmin;
		if(o.checked) {
			$.get(frm.urlloaduser.value, { task: 'add', type_id:frm.type_id.value, id:o.value },
			 function(data){
				 
			 });			
		} else {
			$.get(frm.urlloaduser.value, { task: 'remove', type_id:frm.type_id.value, id:o.value },
			 function(data){
				 
			 });			
		}
		return;
    var v, i, j, frm;
    frm = document.frmAdmin;
    v = o.value;
    if(o.checked) {
      myusers[myusers.length] = v ;
    } else {
      var tmp = new Array();
      j=0;
      for(i=0;i<myusers.length;i++) {
        if(myusers[i] != v) {
          tmp[j] = myusers[i];
          j++;
        }
      }
      myusers = new Array();
      for(i=0;i<tmp.length;i++) {
        myusers[i] = tmp[i];
      }		
    }
    var st;
    st = '';
    for(i=0;i<myusers.length;i++) {
      st = st + myusers[i] + ';';
    }
    //frm.list_id.value = st;	
  
  }
  ////////////viewProduct
  function viewUsers(p)
  {
    var frm, btn;
    frm = document.frmAdmin;
    $("#loadUsers").html('<h1>Loading...</h1>');
    $.get(frm.urlloaduser.value, { p: p, type_id:frm.type_id.value, email:frm.s_email.value },
     function(data){
       $("#loadUsers").html(data);
     });	
    
    return false;	
  }
  </script>
  <style>
  form {
    margin: 0;
    padding: 0;
  }
  </style>
  {/literal}
  
  <!-- Content Area -->
  
  <div id="content"> 
    
    <!-- Component Title -->
    <div class="pagetitle icon-48-module">
      <h2>Manager: EDIT GROUP</h2>
    </div>
    
    <!-- System Messages -->
    
    <div id="system-message-container"> {if $msg}
      <dl id="system-message">
        <dt class="message">Message</dt>
        <dd class="message message">
          <ul>
            <li>{$msg}</li>
          </ul>
        </dd>
      </dl>
      {/if} </div>
    
    <!-- Sub Menu Navigation -->
    <div class="subheader">
      <h3 class="element-invisible">Sub Menu</h3>
      <div id="no-submenu"></div>
    </div>
    
    <!-- Toolbar Icon Buttons -->
    <div class="actionbar-box">
      <div class="module">
        <h3>Toolbar</h3>
        <div class="actionbar-list" id="actionbar">
          <ul>
            <li id="actionbar-apply"> <a href="#" onclick="javascript:frmAdmin.submit();" class="actionbar"> <span class="icon-32-apply"> </span> Save </a> </li>
            <li id="actionbar-cancel"> <a href="{$link_return}" class="actionbar"> <span class="icon-32-cancel"> </span> Close </a> </li>
            <li id="actionbar-popup-new">
              <a class="modal" href="#" onClick="window.location.href='{$link_import}'" >
              <span class="icon-32-new">
              </span>
              Import
              </a>
            </li>
            <li id="actionbar-popup-new">
              <a class="modal" href="#" onClick="window.location.href='{$link_export}'" >
              <span class="icon-32-new">
              </span>
              Export
              </a>
            </li>            
            
          </ul>
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
    
    <!-- Beginning of Actual Content -->
    <div id="element-box">
      <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
      <form name="frmAdmin" action="{$action}" method="post">
      <table class="admintable">
        <tr>
          <td width="30%" >Name:</td>
          <td ><input type="text" name="name" maxlength="100" value="{$name|escape}" size="30"></td>
        </tr>
        <tr>
          <td>Published:</td>
          <td ><input type="radio" id="publish1" name="publish" value="1" {if $status}checked="checked"{/if} /><label for="publish1">Yes</label><input type="radio" id="publish0" name="publish" value="0" {if !$status}checked="checked"{/if} /><label for="publish0">No</label></td>
        </tr>
  
      </table>

      {literal}
        <style>
          ul.uluser {
          }
          
          ul.uluser li {
            float:left;
            width:30%;
          }
        </style>
      {/literal}    
      <table class="admintable" width="100%" >
        <tr>
          <td colspan="2">
          <div class="filter-search">
            <label class="filter-search-lbl" for="filter_search">Email:</label>
            <input type="text" name="s_email" value="{$s_email|escape}"  title="email" />
            <button type="button" onclick="javascript:viewUsers(0);">Search</button>
          </div>          
          <fieldset class="adminform" width="100%" id="textfieldset">          
            <legend>List users</legend>
              <div id="loadUsers"></div>                  
          </fieldset></td>
        </tr>
        <input type="hidden" value="{$urlloaduser}" name="urlloaduser" />
        
        <input type="hidden" value="{$type_id}" name="type_id" />
      </table>

      </form>
      <div class="clr"></div>
    </div>
    <!-- end of element-box -->
    
    <noscript>
    Warning! JavaScript must be enabled for proper operation of the Administrator backend.
    </noscript>
    <div class="clr"></div>
  </div>
  {literal}
  <script>
    viewUsers(0);
  </script>
  {/literal}
  <!-- end of content -->