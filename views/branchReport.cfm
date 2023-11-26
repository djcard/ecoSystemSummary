<cfoutput>
	<table class="table table-striped table-bordered">
		<thead>
			<th>Site</th><th>Branch</th><th>URL</th>
		</thead>
<cfset getModuleSettings( 'ecoSystemSummary' ).sites.each(function(item){
	var branchData = fileExists(expandpath(item.folder & ".git/HEAD")) ?  fileRead(expandpath(item.folder & ".git/HEAD")) : "";
	var linker = item.keyExists("url") ? '<a href="#item.url#" target="_blank">#item.url#</a>' : "";
	writeOutput("<tr><td>#item.label#</td><td>#branchData.replaceNoCase('ref: refs/heads/','')#</td><td>#linker#</td></tr>");
}) />
	</table>
</cfoutput>