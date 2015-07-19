{$head}
<script type="text/javascript" src="{$image_path}resources/min/?f=template/js/jquery-1.7.js,template/js/custom.js,template/js/alertbox.js,template/js/jquery.cycle.all.js,template/js/jquery.easing.1.3.js,template/js/video.bg.js"></script>
	<body>
		<!--[if lte IE 8]>
			<style type="text/css">
				body {
					background-image:url(images/bg.jpg);
					background-position:top center;
				}
			</style>
		<![endif]-->
		<section id="wrapper">
			{$modals}
            
            <div id="header">
            	
                <div class="top_container">
                
                	<div class="login_box_top">
                    	<div class="actions_cont">
                        
                        	{if $isOnline}
                            	<div class="account_info">
                                	
                                    <!-- Avatar -->
                                    	<div class="avatar_top">
                                            <img src="{$CI->user->getAvatar()}" width="50" height="50"/>
                                            <span></span>
                                        </div>
                                    <!-- Avatar . End -->
                                    
                                    <!-- Welcome & VP/DP -->
                                	<div class="left">
                                    
                                        <p>Welcome back, <span>{$CI->user->getUsername()}</span>!</p>
                                        <div class="vpdp">
                                        
                                        	<div class="vp">
                                           		<img src="{$url}application/images/icons/lightning.png" align="absmiddle" width="12" height="12" /> VP
                                                <span>{$CI->user->getVp()}</span>
                                            </div>
                                            <div class="dp">
                                           		<img src="{$url}application/images/icons/coins.png" align="absmiddle" width="12" height="12"  /> DP
                                                <span>{$CI->user->getDp()}</span>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!-- Welcome & VP/DP . End-->
                                    	<div class="right">
                                        	<a href="{$url}ucp" class="nice_button">User panel</a>
                                            <a href="{$url}vote" class="nice_button">Vote</a>
											<a href="{$url}logout" class="nice_button">Log out</a>
                                        </div>
                                    <!-- Account Panel & Logout -->
                                    
                                </div>
                            {else}
                            	<div class="login_form_top">
                                    {form_open('login')}
                                            <input type="text" name="login_username" id="login_username" value="" placeholder="Username">
                                            <input type="password" name="login_password" id="login_password" value="" placeholder="Password">
                                            <input type="submit" name="login_submit" value="Login">
											
                                    </form>
                            	</div>
                            {/if}
                            
                        </div>
                    </div>
                <a id="server_logo" href="./" title="{$serverName}"><p>{$serverName}</p></a>
                    <div class="top_menu">
                        <ul id="top_menu">
                            {foreach from=$menu_top item=menu_1}
                                <li><a {$menu_1.link}>{$menu_1.name}</a></li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
                
                {if $isOnline}
                		<a href="{$url}vote" id="vote_banner"><p>Vote for us</p></a>
                    {else}
                    	<a href="{$url}register" id="register_banner"><p>Create Account</p></a>
                    {/if}
                <!-- TextSlider -->
			<script type="text/javascript">
				$(function() {
					$("#IndexTextFader img").css({
						opacity: 0
					});
					setTimeout(function() {
						$("#IndexTextFader").cycle({
						random: 1,
						delay: -6000
					});
					$("#IndexTextFader img").css({
						opacity: 0
					});
					}, 1000);
				}); 
			</script>
			<div class="ForumsTextFader" id="IndexTextFader">
				<img src="{$image_path}1.png" style="opacity:0;"/>
				<img src="{$image_path}2.png" style="opacity:0;"/>
				<img src="{$image_path}3.png" style="opacity:0;"/>
				<img src="{$image_path}1.png" style="opacity:0;"/>
				<img src="{$image_path}2.png" style="opacity:0;"/>
			</div>
			<!-- TextSlider.End -->
				<div class="statusblock">
					
					</div>
					
                
				
                <!--<div class="accp_register">
                    {if $isOnline}
                        <a href="./ucp" id="accp_button"><h1>Account Panel</h1></a>
                        {else}
                        <a href="./register" id="register_button"><h1>Register</h1></a> 
                    {/if}
                </div>-->
                
                <!--{$serverName}-->
           	
					</div>
					
			<div id="main">
            
                
				<aside id="left">
				<div class="wrap">
                
                <h1 class="status2">Realm Status</h1>
        <section class="status">
            <section id="update_status" style="display: block;">
                <div class="realm">
                    <div class="realm_online"></div>


                    		
                    		
                    		

                    <div class="realm_bar">
                        <div class="realm_bar_fill" style="width:0%"></div>
                    </div>
                    


                    			

                    			
                </div>
                
                <div id="realmlist">

                    

                </div>
            </section>
            <script type="text/javascript">


                	var Status = {
		statusField: $("#update_status"),
		
		/**
		 * Refresh the realm status
		 */
		update: function()
		{
			$.get(Config.URL + "sidebox_status/status_refresh", function(data)
			{
				Status.statusField.fadeOut(300, function()
				{
					Status.statusField.html(data);
					Status.statusField.fadeIn(300);
				})
			});
		}
	}

	Status.update();

            </script>
      </div>
                	
                    
                    <article>
						<ul id="left_menu">
							{foreach from=$menu_side item=menu_2}
								<li><a {$menu_2.link}><img src="{$image_path}bullet.png">{$menu_2.name}</a><p></p></li>
							{/foreach}
                            <li class="bot_shadow"></li>
						</ul>
					</article>                   
                   	
                    {foreach from=$sideboxes item=sidebox}
						<article class="sidebox">
							<h1 class="top"><p>{$sidebox.name}</p></h1>
							<section class="body">
								{$sidebox.data}
							</section>
						</article>
					{/foreach}
                    
				</aside>

				<aside id="right">
						
					{$page}
				</aside>

				<div class="clear"></div>
			</div>
			<footer>
            	
			</footer>
		</section>
	</body>
</html>