{literal}
<style>
form {
	margin: 0;
	padding: 0;
}
</style>
<style>
/**
 * CSS Document for media manager thumbnail view
 * @version $Id: medialist-thumbs.css 14401 2010-01-26 14:10:00Z louis $
 * @package Joomla
 * @copyright Copyright (C) 2005 - 2010 Open Source Matters. All rights reserved.
 * @license GNU/GPL, see LICENSE.php
 * Joomla! is free software and parts of it may contain or be derived from the
 * GNU General Public License or other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

div.imgOutline {
	float: left;
	border: 1px;

	border-right: 1px solid #f0f0f0;
	border-bottom: 1px solid #ccc;
	width:90px; }

div.imgTotal { }

div.imgBorder {
	height: 72px;
	vertical-align: middle;
	width: 88px;
	overflow: hidden;
}

div.imgBorder a {
	height: 72px;
	width: 88px;
	display: block;
}

div.imgBorder a:hover {
	height: 72px;
	width: 88px;
	background-color: #f0f0f0;
	color : #FF6600;
}

.imgBorderHover {
	background: #FFFFCC;
	cursor: hand;
}

div.controls {
	text-align: center;
	height: 20px;
	line-height: 20px;
	background: #f9fcf9;
	border-top: 1px solid #ddd;
}

div.controls input {
	vertical-align: middle;
}

div.controls img {
	vertical-align: middle;
}

div.controls:hover {
	display: block;
}

div.imginfoBorder {
	background: #f9f9f9;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	width: 88px;
	height: 15px;
	vertical-align: middle;
	text-align: center;
	overflow: hidden;
}

div.imgBorder a {
	cursor: pointer;
}

.buttonHover {
	border: 1px solid;
	border-color: ButtonHighlight ButtonShadow ButtonShadow ButtonHighlight;
	cursor: hand;
	background: #FFFFCC;
}

.buttonOut {
	border: 0px;
}

.imgCaption {
	font-size: 9pt;
	text-align: center;
}

.dirField {
	font-size: 9pt;
	width:110px;
}

div.image {
	padding-top: 10px;
}

</style>

{/literal}
<!-- Content Area -->
<div id="content">

  <!-- Component Title -->
    <div class="pagetitle icon-48-config"><h2>Images List</h2></div>

  <!-- System Messages -->
		
<div id="system-message-container">
{if $msg}
<dl id="system-message">
<dt class="message">Message</dt>
<dd class="message message">
	<ul>
		<li>{$msg}</li>
	</ul>
</dd>
</dl>
{/if}
</div>
<div id="no-submenu"></div>
<div class="actionbar-box">
  <div class="module">
  <h3>Toolbar</h3>
  <div class="actionbar-list" id="actionbar">
    <ul>
    <li id="actionbar-popup-new">
    <a class="modal" href="#" onClick="window.location.href='{$link_create}'" >
    <span class="icon-32-new">
    </span>
    New
    </a>
    </li>
    <li id="actionbar-popup-new">
    <a class="modal" href="#" onClick="window.location.href='{$link_home}'" >
    <span class="icon-32-publish">
    </span>
    Home
    </a>
    </li>         
  </ul>
  <div class="clr"></div>
  </div>		</div>

  <div class="clr"></div>
</div>
		<!-- Beginning of Actual Content -->
		<div id="element-box">
			<p id="skiptargetholder"><a id="skiptarget" class="skip" tabindex="-1"></a></p>
<form name="frmAdmin" action="{$action}" method="post">
	<div class="manager">
  {if $folders}  
  {foreach from=$folders item=folder}
		<div class="imgOutline">
			<div class="imgTotal">
				<div align="center" class="imgBorder">
					<a href="{$folder->link}">
						<img src="{$php5WebPath}/images/folder.png" alt="Folder" width="80" height="80" border="0" /></a>
				</div>
			</div>
			<div class="controls">
							<a class="delete-item" target="_top" href="#" rel="banners :: 5"><img src="{$php5WebPath}/images/remove.png" alt="Delete" width="16" height="16" border="0" /></a>
				<input type="checkbox" name="rm[]" value="banners" />
						</div>
			<div class="imginfoBorder">
				<a href="#" target="folderframe">{$folder->name}</a>
			</div>
		</div>
  {/foreach}
  {/if}
  {if $images}  
  {foreach from=$images item=image}
    <div class="imgOutline">
      <div class="imgTotal">
        <div class="imgBorder center">
          <a class="img-preview" href="#" title="{$image->name}" style="display: block; width: 100%; height: 100%">
            <img src="{$image->link}" alt="{$image->name}" width="60" height="14" />					</a>
        </div>
      </div>
      <div class="controls">
              <a class="delete-item" href="#" rel="{$image->name}"><img src="{$php5WebPath}/images/remove.png" alt="Delete" width="16" height="16" /></a>
        <input type="checkbox" name="rm[]" value="{$image->name}" />
            </div>
      <div class="imginfoBorder">
        <a href="{$image->link}" title="{$image->name}" class="preview">{$image->name}...</a>
      </div>
    </div>
  {/foreach}
  {/if}  
  </div>
  <input type="hidden" value="{$total}" name="total"  />
  <input type="hidden" value="update" name="task"  />
  <input type="hidden" value="{$config_seo}" name="old_config_seo"  />
</form>
			<div class="clr"></div>
		</div><!-- end of element-box -->
    
		<noscript>
			Warning! JavaScript must be enabled for proper operation of the Administrator backend.		</noscript>

		<div class="clr"></div>

	</div><!-- end of content -->

