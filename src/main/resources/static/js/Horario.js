$(document).ready(function() {
	var arrDias = new Array();
	var arrHoras = new Array();
	var _dtHorario;
	var _dtDetHorario;

	_dtDetHorario = $('#tbDetHorario').dataTable({
		"bProcessing": true,
		"sAutoWidth": false,
		"bDestroy": true,
		"sPaginationType": false, // full_numbers
		"iDisplayStart ": 10,
		"iDisplayLength": 10,
		"bPaginate": false, //hide pagination
		"bFilter": false, //hide Search bar
		"bInfo": false // hide showing entri
	});

	$('#addRow').on('click', function(e) {
		//Validar que se ingrese Horainicio y HoraFin
		var isValidDeta = true;
		isValidDeta = _validateHoraDet();

		if (!isValidDeta) {
			return false;
		}

		$('#DivDias input[type=checkbox]').each(function(index) {
			var item = 0;
			var chkValue = $(this).val();
			if ($(this).is(":checked")) {
				if (arrDias.indexOf(chkValue) === -1) {
					$(this).prop('disabled', true);
					item = index + 1;
					arrDias.push(chkValue);
					arrHoras.push(index + "-" + $("#timeIngreso").val() + "-" + $("#timeSalida").val());
					newRow = true;
					var aiNew = _dtDetHorario.fnAddData([item, chkValue, $("#timeIngreso").val(), $("#timeSalida").val(), '', '']);
					var nRow = _dtDetHorario.fnGetNodes(aiNew[0]);
					saveRow(_dtDetHorario, nRow);
				}
			}
		});
	});

	var _validateHoraDet = function() {

		var isValidDet = true;
		var validationmessageDet = "";

		if ($("#timeIngreso").val() === "" || $("#timeIngreso").val() === "0:00") {
			validationmessageDet = validationmessageDet + "<br />" + "Debe ingresar Hora Ingreso.";
			isValidDet = false;
		}

		if ($("#timeSalida").val() === "" || $("#timeSalida").val() === "0:00") {
			validationmessageDet = validationmessageDet + "<br />" + "Debe ingresar Hora Salida.";
			isValidDet = false;
		}

		if (!isValidDet) {
			toastr.warning(validationmessageDet);
		}
		return isValidDet;
	}

	function saveRow(_dtDetHorario, nRow) {
		var aData = _dtDetHorario.fnGetData(nRow);
		var jqTds = $('>td', nRow);
		jqTds[0].innerHTML = '<input type="text" class="form-control" value="' + aData[0] + '">';
		jqTds[1].innerHTML = '<input type="text" class="form-control" value="' + aData[1] + '">';
		jqTds[2].innerHTML = '<input type="text" class="form-control" value="' + aData[2] + '">';
		jqTds[3].innerHTML = '<input type="text" class="form-control" value="' + aData[3] + '">';
		editRow(_dtDetHorario, nRow);
	}

	function editRow(_dtDetHorario, nRow) {
		var jqInputs = $('input', nRow);
		_dtDetHorario.fnUpdate(jqInputs[0].value, nRow, 0, false);
		_dtDetHorario.fnUpdate(jqInputs[1].value, nRow, 1, false);
		_dtDetHorario.fnUpdate(jqInputs[2].value, nRow, 2, false);
		_dtDetHorario.fnUpdate(jqInputs[3].value, nRow, 3, false);
		_dtDetHorario.fnUpdate('<a class="delete-row fa fa-trash fa-lg" href=""></a>', nRow, 4, false);
		_dtDetHorario.fnDraw();
	}

	$('#tbDetHorario').on('click', '.delete-row', function(e) {
		e.preventDefault();

		var nRow = $(this).parents('tr')[0];
		var dia = nRow.getElementsByClassName("sorting_1")[0].innerHTML;
		var nomDia = null;
		var index = $(this).parents('tr').index();

		_dtDetHorario.fnDeleteRow(nRow);

		if (dia === "1") {
			nomDia = "Lunes";
			$("#chkLunes").prop("checked", false);
			$("#chkLunes").prop("disabled", false);
		}
		if (dia === "2") {
			nomDia = "Martes";
			$("#chkMartes").prop("checked", false);
			$("#chkMartes").prop("disabled", false);
		}
		if (dia === "3") {
			nomDia = "Miercoles";
			$("#chkMiercoles").prop("checked", false);
			$("#chkMiercoles").prop("disabled", false);
		}
		if (dia === "4") {
			nomDia = "Jueves";
			$("#chkJueves").prop("checked", false);
			$("#chkJueves").prop("disabled", false);
		}
		if (dia === "5") {
			nomDia = "Viernes";
			$("#chkViernes").prop("checked", false);
			$("#chkViernes").prop("disabled", false);
		}
		if (dia === "6") {
			nomDia = "Sabado";
			$("#chkSabado").prop("checked", false);
			$("#chkSabado").prop("disabled", false);
		}
		if (dia === "7") {
			nomDia = "Domingo";
			$("#chkDomingo").prop("checked", false);
			$("#chkDomingo").prop("disabled", false);
		}
		removeItemFromArr(nomDia);
		arrHoras.splice(index, 1);
	});

	function removeItemFromArr(item) {
		var i = arrDias.indexOf(item);

		if (i !== -1) {
			arrDias.splice(i, 1);
		}
	}
});