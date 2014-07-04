<div id="content">

  <div class="pagetitle icon-48-article">

    <h2>Tracking</h2></div>

{if $arr_camps}  

{foreach from=$arr_camps item=arr_camp}    

  <table width="100%" border="0" cellpadding="5" cellspacing="0">

    <tr>

      <td width="270"><strong>Campaign's ID</strong></td>

      <td>: #{$arr_camp.camp->mailid}</td>

    </tr> 

    <tr>

      <td width="250"><strong>Date of campagin</strong></td>

      <td>: {$arr_camp.date}</td>

    </tr>  

    <tr>

      <td width="250"><strong>Subject</strong></td>

      <td>: {$arr_camp.camp->subject}</td>

    </tr>   

    <tr>

      <td width="250"><strong>Received</strong></td>

      <td>: {$arr_camp.received_count} </td>

    </tr>

    <tr>

      <td width="250"><strong>Delivered</strong></td>

      <td>: {$arr_camp.delivered_count} </td>

    </tr>    

    <tr>

      <td width="250"><strong>Bounced</strong></td>

      <td>: {$arr_camp.bounced_count} &nbsp;&nbsp;&nbsp;<input type="button" onclick="window.location='{$arr_camp.link_export}';" value="Export emails" /></td>

    </tr>         

    <tr>

      <td width="250"><strong>Status</strong></td>

      <td>: {$arr_camp.camp->status}</td>

    </tr>

  </table>

  <p>&nbsp;</p>

{/foreach}               

{else}

  <table width="500" border="0" cellpadding="5" cellspacing="0">

    <tr>

      <td width="270"><strong>Campaign's ID</strong></td>

      <td>: #{$camp->mailid}</td>

    </tr> 

    <tr>

      <td width="250"><strong>Date of campagin</strong></td>

      <td>: {$camp->created}</td>

    </tr>  

    <tr>

      <td width="250"><strong>Subject</strong></td>

      <td>: {$camp->subject}</td>

    </tr>   

    <tr>

      <td width="250"><strong>Number of emails sent/ Total emails in group</strong></td>

      <td>: {$camp->countemail} </td>

    </tr>   

    <tr>

      <td width="250"><strong>Status</strong></td>

      <td>: {$camp->status}</td>

    </tr>

  </table>

{/if}  

  <br />

  <table width="500" border="0" cellspacing="0" cellpadding="0">

    <tr>

      <td width="150"><strong>Date</strong></td>

      <td><strong>Open</strong></td>

      <td><strong>Click through</strong></td>

    </tr>

     {foreach from=$rows item=row}

    <tr>

      <td width="150">{$row->date_added}</td>

      <td>{$row->count1}</td>

      <td>{$row->count2}</td>

    </tr>

    {/foreach}

    <tr>

      <td align="right">&nbsp;</td>

      <td>&nbsp;</td>

      <td>&nbsp;</td>

    </tr>

    <tr>

      <td align="right"><strong>Total:</strong></td>

      <td>{$t1_count1}</td>

      <td>{$t1_count2}</td>

    </tr>

  </table>

</div>