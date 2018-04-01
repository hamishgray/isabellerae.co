
<div class="box-inner">
	
	<% if ThumbnailImage %>
	
		<a href="$Link">
			<h3>$Title</h3>
		</a>
		
		<div class="box-content">
			<h6 class="nm">
				<% include EntryMeta %>
			</h6>
		</div>
	
	<% else %>
	
		<a href="$Link">
			<h3>$Title</h3>
			<h6>
				<% include EntryMeta %>
			</h6>
			<hr>
			<% if CustomSummary %>
				$CustomSummary
			<% else %>
				<p>$Content.LimitCharacters(160)</p>
			<% end_if %>
		</a>
	
	<% end_if %>

</div>
