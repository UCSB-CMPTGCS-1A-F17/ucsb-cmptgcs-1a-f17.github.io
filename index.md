---
title: CS56, Fall 2016, pconrad
---

# {{site.course}}, {{site.quarter}}


<div id="info" data-role="collapsible" data-collapsed="false">
<h2>Course Information</h2>
<ul>
{% for item in site.info %}
<li><a href="{{item.url}}"  data-ajax="false">{{item.title }}</a></li>
{% endfor %}
</ul>
</div>

<div data-role="collapsible" data-collapsed="false">
<h2 id="lectures">Lectures:</h2>
<table id="hwk_table" class="asn_table">
{% for asn in site.lectures %}

<tr>
  <td class="asn_num"  ><a href="{{asn.url}}" data-ajax="false">lecture {{ asn.topic }}</a></td>
  <td class="asn_desc" >{{ asn.desc }}</td>
</tr>

{% endfor %}
</table>

</div>

<div data-role="collapsible" data-collapsed="false">
<h2 id="homework">Homework:</h2>
{% include hwk_table.html %}
</div>

<div data-role="collapsible" data-collapsed="false">
<h2 id="labs">Labs:</h2>
{% include lab_table.html %}
</div>

<div data-role="collapsible" data-collapsed="false">
<h2 id="exams">Exams</h2>
{%include exam_table.html %}
</div>
