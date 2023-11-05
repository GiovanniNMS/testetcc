<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="styles.css" rel="stylesheet">
<script>
	const tipoCirurgiaPorLocaldoCorpo ={
			joelho:["Artroscopia","Substitui��o de Articula��o","lca","lcl","lcp","Menisco"],
			quadril:["Artroscopia","Substitui��o de Articula��o"],
			ombro:["Artroscopia", "Substitui��o de Articula��o", "manguito rotador"],
			tornozelo:["Artroscopia", "Substitui��o de Articula��o", "tend�o de aquiles"]
	};
	
	function mostrarTipoCirurgia() {
	    const localCorpoSelect = document.getElementById("localCorpo").value;
	    const tipoCirurgiaSelect = document.getElementById("tipoCirurgia");
	    tipoCirurgiaSelect.innerHTML = ""; // Limpa as op��es atuais

	    const tipoCirurgias = tipoCirurgiaPorLocaldoCorpo[localCorpoSelect];
	    if (tipoCirurgias) {
	        tipoCirurgias.forEach(tipoCirurgia => {
	            const option = document.createElement("option");
	            option.value = tipoCirurgia;
	            option.text = tipoCirurgia;
	            option.name = tipoCirurgia;	
	            tipoCirurgiaSelect.appendChild(option);
	        });
	    }
	}

</script>
</head>
<body>
	<%@page
		import="tabelas.AgendamentosCirurgias, dao.AgendamentosCirurgiasDao, java.text.SimpleDateFormat, java.sql.Date"%>
	
	<header>
            <a href="index.jsp" ><img src="./img/home.svg" alt="home" class="btn-home" title="Tela Inicial"/></a>
        </header>     
        <h1 class="itens-header">SGPO - SISTEMA DE GEST�O DE PR�TESES ORTOP�DICAS</h1>
        
        <h2>Novo Agendamento</h2>
	<form action="gatilhoNovoAgendamento.jsp" method="post">

		<table style="background-color: transparent">
			<tr>
				<td>Local Corpo:</td>
				<td> <select class="selctNovoAgendamento" id="localCorpo" onchange="mostrarTipoCirurgia()" name="localCorpo" required="required">
						<option value="" selected disabled></option>
						<option value="joelho">Joelho</option>
						<option value="quadril">Quadril</option>
						<option value="ombro">Ombro</option>
						<option value="tornozelo">Tornozelo</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>Tipo Cirurgia:</td>
				<td>
					<select class="selctNovoAgendamento" id="tipoCirurgia"></select>
				</td>
			</tr>
			<!--  <tr>
				<td>Tipo Cirurgia:</td>
				<td> <select id="tipoCirurgia" name="tipoCirurgia"
					 required="required">
						<option value="" selected disabled></option>
						<option value="Artroscopia">Artroscopia</option>
						<option value="Substitui��o de Articula��o">Substitui��o
							de Articula��o</option>
						<option value="manguito rotador">Manguito Rotador</option>
						<option value="tend�o de aquiles">Tend�o de Aquiles</option>
						<option value="lca">LCA</option>
						<option value="lcl">LCL</option>
						<option value="lcp">LCP</option>
						<option value="Menisco">Menisco</option>
				</select>
				</td>
			</tr>-->
			<tr>
				<td>Data e hora:</td>
				<td>
					<input name="dataHoraString" type="datetime-local" required="required" >
				</td>
			</tr>
			<tr>
				<td>Status:</td>	
				<td><select class="selctNovoAgendamento" name="statusAgendamento"
					 required="required">
						<option value="" selected disabled></option>
						<option value="pre_agendada">Pr� Agendada</option>
						<option value="agendada">Agendada</option>
				</select>
				</td>
			</tr>
			<tr>
				<td><input onclick="" class="btn-enviar" type="submit"
					value="Agendar"></td>
		</table>

	</form>



</body>
</html>