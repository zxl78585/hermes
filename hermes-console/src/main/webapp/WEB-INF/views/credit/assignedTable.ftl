<table id="table" class="table table-striped table-hover">
	<thead>
		              <tr>
                        <th class="align-center">债权人编号</th>
                        <th class="align-center">债权人名称</th>
                        <th class="align-center">债权编号</th>
                        <th class="align-center">产品名称</th>
                        <th class="align-center">发售价格</th>
                        <th class="align-center">年利率</th>
                        <th class="align-center">期限</th>
                        <th class="align-center">转让日期</th>
                        <th class="align-center">到期日期</th>
                        <th class="align-center">还款方式</th>
                        <th class="align-center">状态</th>
                        <th class="align-center">投标管理</th>
                        <th class="align-center">操作</th>
                    </tr>
	</thead>
		<#if assignedList.numberOfElements == 0>
		<tr>
			<td colspan="13" class="align-center"><@messages key="common.table.empty" /></td>
		</tr>
		<#else>
		<#list assignedList.content as l>
			 <tr>
			   <td class="align-center">${(l.creditor.creditorNo)!''}</td>
               <td class="align-center">${(l.creditor.creditorName)!''}</td>  
               <td class="align-center">${l.crediteCode!''}</td> 
               <td class="align-center">${l.purpose!''}</td> 
               <td class="align-center">${l.amount!''}</td> 
               <td class="align-center">${l.rate!''}</td> 
               <td class="align-center">${l.period!''}</td>
               <td class="align-center">????</td>
               <td class="align-center">${l.deadTime!''}</td> 
               <td class="align-center">${l.payType}</td> 
               <td class="align-center">${l.statusName}</td>
               <td class="align-center">
                         <a href="#" data-url="${app}/credit/detail/${l.id}" data-target="main">投标明细</a>
                </td>
               <td class="align-center">
                         <a href="#" data-url="${app}/credit/detail/${l.id}" data-target="main">查看回款详情</a>
               </td>    
             </tr>
		</#list>
		</#if>
	<tbody>
</table>

<ul class="pagination" data-number="${(assignedList.number)!''}" data-total-pages="${(assignedList.totalPages)!''}"></ul>

<script type="text/javascript">
<!--
jQuery(function($) {
	$('#table a').link();
	$('.pagination').pagination({
		handler: function(elem) {
			$('#page').val(elem.data().page);
			$('#searchForm').trigger('submit');
		}
	});
});
//-->
</script>