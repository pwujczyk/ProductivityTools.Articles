clear
function GetPosts()
{
	$posts=$null
	$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("user:FhIwtEKNCRF7")))
	$header = @{
		Authorization=("Basic {0}" -f $base64AuthInfo)
	}
	$posts=Invoke-RestMethod -Method GET -Uri http://35.180.201.220/wp-json/wp/v2/posts?per_page=100 -ContentType "application/json"  -Headers $header
	foreach($p in $posts)
	{
		Write-Host $p.title.Rendered
		Write-Host $p.content.rendered
	}
}
GetPosts

function Post()
{

	$response=$null
	$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("user:FhIwtEKNCRF7")))
	$header = @{
		Authorization=("Basic {0}" -f $base64AuthInfo)
	}

	$params = @{
	    title = "NewPost4"
	    content = "Post published with API" 	
	    status = 'publish'
	    }
	$params1=$params|ConvertTo-Json
	$newPostAddress="http://35.180.201.220/wp-json/wp/v2/posts/"
	#$updatePostAddress="http://35.180.201.220/wp-json/wp/v2/posts/$postid"
	$response=Invoke-RestMethod -Method post -Uri $newPostAddress -ContentType "application/json"  -Headers $header -Body $params1
	Write-Host $response
}

#Post