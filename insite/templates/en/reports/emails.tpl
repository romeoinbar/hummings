{literal}
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
    <h2>Manager: EMAILS</h2>
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
      <div class="actionbar-list">
        
        <div class="clr"></div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
  
  <!-- Beginning of Actual Content -->
  <div id="element-box">
    <p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
    <form name="frmAdmin" action="{$action}" method="post">
      <fieldset id="filter-bar">
        <legend class="element-invisible">Filter:</legend>
        <div class="filter-search">
          <label class="filter-search-lbl" for="filter_search">Filter:</label>
          Start Date(dd-mm-yyyy): <input type="text" name="time_start" value="{$time_start|escape}"  title="Search in time_start." />
          End Date(dd-mm-yyyy): <input type="text" name="time_end" value="{$time_end|escape}"  title="Search in time_end." />
          <button type="submit">Search</button>
        </div>
      </fieldset>
      <div class="clr"> </div>
      <table class="adminlist">
        <thead>
          <tr>
            <th class="checkmark-col"> <!--<input type="checkbox" name="checkall-toggle" value="" title="Check All"  onclick="checkAll(this);"  />-->
            </th>
            <th class="width-20"> <a href="#">Date</a> </th>
            <th class="width-60"> <a href="#" >From Email</a> </th>
            <th class="width-60"> <a href="#" >To Email</a> </th>
            <th class="width-20"> <a href="#" >Notice</a> </th>
          </tr>
        </thead>
        <tbody>
        
        {if $summaries}  
        {foreach from=$summaries item=summary}
          <tr {if $summary.row} class="row1" {else} class="row0" {/if}>
          <td class="center"></td>
          <td class="center">{$summary.time_started}</td>
          <td class="center">{$summary.mail_from}</td>
          <td class="center">{$summary.rcpt_to}</td>
          <td class="center">{$summary.resp_msg}</td>
        </tr>
        {/foreach}               
        {else}
        {/if}
          </tbody>
        
      </table>
      <div class="limit">{$paging}</div>
      <input type="hidden" value="{$total}" name="total"  />
      <input type="hidden" value="" name="task"  />
    </form>
    <div class="clr"></div>
  </div>
  <!-- end of element-box -->
  
  <noscript>
  Warning! JavaScript must be enabled for proper operation of the Administrator backend.
  </noscript>
  <div class="clr"></div>
</div>
<!-- end of content --> 
