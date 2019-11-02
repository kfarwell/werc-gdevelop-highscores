<table>
  <thead>
    <th></th>
    <th>Name</th>
    <th>Score</th>
  </thead>
  <tbody>
% i=1
% for(score in `{/usr/bin/sort -gr $sitedir/_werc/scores | sed 10q}) {
    <tr>
      <td>%($i%)</td>
      <td>%(`{echo $score | sed 's/.*,//'}%)</td>
      <td>%(`{echo $score | sed 's/,.*//'}%)</td>
    </tr>
% i=`{echo $i | awk '{print $1 + 1}'}
% }
  </tbody>
</table>
