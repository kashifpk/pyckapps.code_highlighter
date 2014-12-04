<%inherit file="/base.mako"/>

<%def name="title()">
Code Highlighter
</%def>

<div class="well" style="text-align: center">
  <h1>Code Highlighter</h1>
</div>

<form action="" method="POST" role="form">

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
    <button type="submit" class="btn btn-sm btn-primary">Highlight code</button>
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
    <button type="submit" class="btn btn-lg btn-primary">Highlight code</button>
  </div>
</div>
</form>