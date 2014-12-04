<%inherit file="/base.mako"/>
<%!
from urlparse import urlparse
%>
<%def name="title()">
Code Highlighter
</%def>

<script type="application/x-javascript">
function submit_form() {
  language = dijit.byId('language').value;
  style = dijit.byId('style').value;
  
  // ${request.current_route_url()}
  // ${urlparse(request.current_route_url()).path}
  url = "${urlparse(request.current_route_url()).path.rstrip('/')}" + "/" + language + "/" + style;
  
  var myform = document.myform;
  myform.action = url;
  
  myform.submit();
}
</script>

<div class="well" style="text-align: center">
  <h1>Code Highlighter</h1>
</div>

<form action="" method="POST" role="form" name="myform" id="myform">

<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
    <label for="language">Language: </label>
    <select data-dojo-type="dijit/form/FilteringSelect" id="language" name="language">
      <option value=""></option>
      %for lang in lexers:
        <option>${lang}</option>
      %endfor
    </select>
  </div>
  
  <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
    <label for="style">Style: </label>
    <select data-dojo-type="dijit/form/FilteringSelect" id="style" name="style">
      <option value=""></option>
      %for style in styles:
        <option>${style}</option>
      %endfor
    </select>
  </div>
  
  <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="text-align: center;">
    <button type="button" class="btn btn-sm btn-primary" onclick="submit_form();">Highlight code</button>
  </div>
</div>

<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
  <label for="code">Code: </label><br />
  <textarea data-dojo-type="dijit/form/Textarea" id="code" name="code" style="height: 300px;" rows="20"></textarea>
  </div>
</div>
<br />
<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center;">
    <button type="button" class="btn btn-lg btn-primary" onclick="submit_form();">Highlight code</button>
  </div>
</div>
</form>
