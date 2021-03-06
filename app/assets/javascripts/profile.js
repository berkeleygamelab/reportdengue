function reflectChangeInName() {
	// for (var i = 0; i < length; i++) {
	// 	var child = $("#display_select").children()[i];
	// 	var id = $(child).attr("id");
		
	// }

	// alert($("#firstmiddlelast").html());
	$("#firstmiddlelast").html($("#user_first_name").val() + " " + $("#user_middle_name").val() + " " + $("#user_last_name").val());
	$("#firstlast").html($("#user_first_name").val() + " " + $("#user_last_name").val());
	$("#first").html($("#user_first_name").val());
	$("#nickname").html($("#user_nickname").val());
	$("#firstlastnickname").html($("#user_first_name").val() + " " + $("#user_last_name").val() + " (" + $("#user_nickname").val() + ")"); 
}

$(document).ready(function() {
	$(document).tooltip();

	$("#user_first_name").keyup(function() {
		reflectChangeInName();
	});
	$("#user_middle_name").keyup(function() {

		reflectChangeInName();
		if ($("#user_middle_name").val() == "") {
			$("#firstmiddlelast").hide();
		}
	});
	$("#user_last_name").keyup(function() {
		reflectChangeInName();
	});
	$("#user_nickname").keyup(function() {
		reflectChangeInName();

		if ($("#user_nickname").val() == "") {
			$("#nickname").hide();
			$("#firstlastnickname").hide();
		}
	});

	$("#user_gender_true").click(function() {
		if ($("#role_title").html() == "Configurações de coordenadora") {
			$("#role_title").html("Configurações de coordenador");
		} else if ($("#role_title").html() == "Configurações de verificadora") {
			$("#role_title").html("Configurações de verificador");
		} else if ($("#role_title").html() == "Configurações de moradora") {
			$("#role_title").html("Configurações de morador");
		}
	});

	$("#user_gender_false").click(function() {
		if ($("#role_title").html() == "Configurações de coordenador") {
			$("#role_title").html("Configurações de coordenadora");
		} else if ($("#role_title").html() == "Configurações de verificador") {
			$("#role_title").html("Configurações de verificadora");
		} else if ($("#role_title").html() == "Configurações de morador") {
			$("#role_title").html("Configurações de moradora");
		}
	});
	

	$("select#role").change(function() {
		if($("select#role").val() == "lojista") {
			$("h1#configuration").html("Configurações do estabelecimento");
			$("label#house_name").html("Nome do estabelecimento");
			$("label#house_picture").html("Logo digital");
			$("input#house_name").attr("placeholder", "");
			$("input#house_name").attr("maxlength", "");
			// $("input#phone_number").attr("disabled", true);
			// $("input#confirmation").attr("disabled", true);
			$("#house_inputs input").prop("disabled", false);
			$("label.commercial").show();
			$("input.commercial").show();
			$("#house_inputs").show();
			$("#visitor_desc").hide();

		} else if ($("select#role").val() == "verificador") {
			$("h1#configuration").html("Configurações da organização");
			$("label#house_name").html("Nome da organização (máximo 16 caracteres)");
			$("label#house_picture").html("Foto da organização");
			$("input#house_name").attr("placeholder", "");
			$("input#house_name").attr("maxlength", 16);
			$("#house_inputs input").prop("disabled", false);
			$("label.commercial").hide();
			$("input.commercial").hide();
			$("#house_inputs").show();
			$("#visitor_desc").hide();
		} else {
			$("h1#configuration").html("Apresentação pessoal");
			$("label#house_name").html("Nome da casa (máximo 16 caracteres)");
			$("label#house_picture").html("Foto da casa");
			$("input#house_name").attr("placeholder", "ex. Maria Santos ou Maria e Paulo");
			$("input#house_name").attr("maxlength", 16);
			// $("input#phone_number").attr("disabled", false);
			// $("input#confirmation").attr("disabled", false);
			$("#house_inputs input").prop("disabled", true);
			$("label.commercial").hide();
			$("input.commercial").hide();
			$("#house_inputs").hide();
			$("#visitor_desc").show();
		}
	});



});