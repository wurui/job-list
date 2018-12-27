<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.job-list">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-job-list" ox-mod="job-list">
        	<ul>
	            <xsl:for-each select="data/info-recruit/i">
	            	<li>
	            		<p>
	            			<a href="{LINK/detail}">
		            			<em class="title">
			            			<xsl:value-of select="title"/>
			            		</em>
			            		<span class="salary">
		            				<xsl:value-of select="salary-min"/>
		            				-
		            				<xsl:value-of select="salary-max"/><small>元/月</small>
		            			</span>
	            			</a>
	            		</p>
	            		<p class="listinfo">
	            			<em class="time">
	            				<xsl:value-of select="createtime/y"/>-<xsl:value-of select="createtime/M"/>-<xsl:value-of select="createtime/d"/>
	            			</em>
	            			<span>
	            				<i class="icon-loc"></i><xsl:value-of select="location"/>
	            			</span>
	            			<span>
	            				<i class="icon-time"></i><xsl:value-of select="requirement/workage"/>年经验
	            			</span>
	            			<span>
	            				<i class="icon-degree"></i><xsl:value-of select="requirement/degree"/>
	            			</span>
	            		</p>
	            	</li>
	            </xsl:for-each>
	        </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
