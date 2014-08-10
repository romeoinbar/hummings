<h2 class="element-invisible">Main Menu</h2>
<ul id="menu" >
  <li class="node"> <a href="#">Site</a>
    <ul>
      <li class="separator"><span></span></li>
      <li><a class="icon-16-config" href="{$url_setting}">Global Configuration</a></li>
      <li class="separator"><span></span></li>
      <li><a class="icon-16-config" href="{$url_media}">Media Manager</a></li>
      <li class="separator"><span></span></li>
      <li><a class="icon-16-config" href="{$url_smtp}">SMTP Configuration</a></li>
      <li class="separator"><span></span></li>
      <li><a class="icon-16-logout" href="{$url_logout}">Logout</a></li>
    </ul>
  </li>
	<li class="node">
    <a href="{$url_menu}">Menu</a>
   </li>
  <li class="node"> <a href="#">Users</a>
    <ul>
      <li class="node"> <a class="icon-16-user" href="{$url_user}">User Manager</a></li>
      <li ><a href="{$url_eshop_user}">Eshop Users</a></li>
      <li class="separator"><span></span></li>
      <li ><a href="{$url_newsletter_user}">PDPC Records</a></li>
      <li ><a href="{$url_rss_category}">RSS Category</a></li>
      <li ><a href="{$url_rss_content}">RSS Content</a></li>
    </ul>
  </li>
   <li class="node">
    <a href="#">Campaigns</a>
     <ul id="menu-com-users-users" class="menu-component">
          <!--<li><a class="icon-16-preview" href="{$url_campaign}">Campaigns manager</a></li>-->
          <li class="node"> <a class="icon-16-user" href="#">Newsletters</a>
        <ul id="menu-com-users-users" class="menu-component">
          <li> <a href="{$url_user_group}">User Groups</a></li>
          <li> <a href="{$url_newsletter}">Newsletter</a></li>
          <li> <a href="{$url_newsletter_history}">History</a></li>
          <li> <a href="{$url_export_newsletter}">Export Newsletter Users</a></li>
     			<li> <a href="{$url_import_newsletter}">Import Newsletter Users</a></li>
        </ul></li>
          <li><a class="icon-16-stats" href="{$url_tracking}">Tracking</a></li>         
     </ul>
   </li>
  <li class="node">
      <a href="#">Content</a>
      <ul>
        <li class="node">
            <li><a class="icon-16-article" href="{$url_article}">Articles manager</a></li>   
            <li class="separator"><span></span></li>    
         	<li><a class="icon-16-category" href="{$url_category_article}">Category manager</a></li>
        	<li class="separator"><span></span></li>
            <li><a class="icon-16-banners" href="{$url_banner}">Banners</a></li>
            <li class="separator"><span></span></li>
             <li><a class="icon-16-banners" href="{$url_photos}">Photo of the moment</a></li>
            <li class="separator"><span></span></li>
            <li><a class="icon-16-media" href="{$url_video}">Video Blogs</a></li>
      </ul>
   </li>
  <li class="node"> <a href="#">Products</a>
    <ul>
      <li> <a href="{$url_product_category}">Product Category</a></li>
      <li > <a href="{$url_product_by_category}">Product</a> </li>
      <li class="separator"><span></span></li>
      <li> <a href="{$url_import_product}">Import Product</a></li>
      <li class="separator"><span></span></li>
      <li> <a href="{$url_export_product}">Export Product</a></li>
      <li class="separator"><span></span></li>
      <li > <a href="{$url_rating_product}">Rating Product</a> </li>      
    </ul>
  </li>
  <li class="node"> <a href="{$url_delivery}">Delivery</a> </li>
  <li class="node"> <a href="{$url_orders}">Orders</a> 
    <ul>
      <li> <a href="{$url_import_order}">Import Orders</a></li>
      <li class="separator"><span></span></li>
      <li> <a href="{$url_export_order}">Export Orders</a></li>
      <li> <a href="{$url_export_order_delivery}" target="_blank">Export Order Delivery</a></li>
      <li> <a href="{$url_export_order_item}" target="_blank">Export Order Item</a></li>            
      
    </ul>
  </li>
  <li class="node"> <a href="{$url_coupon}">Coupon Code</a> </li>
  <li class="node"> <a href="#">Reports</a>
      <ul>
       <li > <a href="{$url_report_visitor}">Visitors</a> </li>   
       <li > <a href="{$url_bounced_emails}">Bounced Emails</a> </li>  
      </ul>
  </li>
  <li class="node"> <a href="{$url_message}">Sample Message</a> </li>  
</ul>
</div>