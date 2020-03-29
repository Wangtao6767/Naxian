$(document).ready(function(){
							
	$("#select1 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectA").remove();
		} else {
			var copyThisA = $(this).clone();
			if ($("#selectA").length > 0) {
				$("#selectA a").html($(this).text());
			} else {
                $(".select-result dl").append(copyThisA.attr("id", "selectA"));
                $("#selectA").click( function () {
                    console.log("aaa");
                    $(this).remove();
                    $("#select1 .select-all").addClass("selected").siblings().removeClass("selected");
                });
                
			}
		}
	});
	$("#select2 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectB").remove();
		} else {
			var copyThisB = $(this).clone();
			if ($("#selectB").length > 0) {
				$("#selectB a").html($(this).text());
			} else {
                $(".select-result dl").append(copyThisB.attr("id", "selectB"));
                $("#selectB").click( function () {
                    console.log("aaa");
                    $(this).remove();
                    $("#select2 .select-all").addClass("selected").siblings().removeClass("selected");
                });
			}
		}
	});
	
	$("#select3 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectC").remove();
		} else {
			var copyThisC = $(this).clone();
			if ($("#selectC").length > 0) {
				$("#selectC a").html($(this).text());
			} else {
                $(".select-result dl").append(copyThisC.attr("id", "selectC"));
                $("#selectC").click( function () {
                    console.log("aaa");
                    $(this).remove();
                    $("#select3 .select-all").addClass("selected").siblings().removeClass("selected");
                });
			}
		}
	});



    $("#select4 dd").click(function () {
        $(this).addClass("selected").siblings().removeClass("selected");
        if ($(this).hasClass("select-all")) {
            $("#selectD").remove();
        } else {
            var copyThisD = $(this).clone();
            if ($("#selectD").length > 0) {
                $("#selectC a").html($(this).text());
            } else {
                $(".select-result dl").append(copyThisD.attr("id", "selectD"));
                $("#selectD").click( function () {
                    console.log("aaa");
                    $(this).remove();
                    $("#select4 .select-all").addClass("selected").siblings().removeClass("selected");
                });
            }
        }
    });



    $("#select5 dd").click(function () {
        $(this).addClass("selected").siblings().removeClass("selected");
        if ($(this).hasClass("select-all")) {
            $("#selectE").remove();
        } else {
            var copyThisE = $(this).clone();
            if ($("#selectE").length > 0) {
                $("#selectC a").html($(this).text());
            } else {
                $(".select-result dl").append(copyThisE.attr("id", "selectE"));
                $("#selectE").click( function () {
                    console.log("aaa");
                    $(this).remove();
                    $("#select5 .select-all").addClass("selected").siblings().removeClass("selected");
                });
            }
        }
    });



    $("#select6 dd").click(function () {
        $(this).addClass("selected").siblings().removeClass("selected");
        if ($(this).hasClass("select-all")) {
            $("#selectF").remove();
        } else {
            var copyThisF = $(this).clone();
            if ($("#selectF").length > 0) {
                $("#selectC a").html($(this).text());
            } else {
                $(".select-result dl").append(copyThisF.attr("id", "selectF"));
                $("#selectF").click( function () {
                    console.log("aaa");
                    $(this).remove();
                    $("#select6 .select-all").addClass("selected").siblings().removeClass("selected");
                });
            }
        }
    });


    $("#select7 dd").click(function () {
        $(this).addClass("selected").siblings().removeClass("selected");
        if ($(this).hasClass("select-all")) {
            $("#selectG").remove();
        } else {
            var copyThisG = $(this).clone();
            if ($("#selectG").length > 0) {
                $("#selectG a").html($(this).text());
            } else {
                $(".select-result dl").append(copyThisG.attr("id", "selectG"));
                $("#selectG").click( function () {
                    console.log("aaa");
                    $(this).remove();
                    $("#select7 .select-all").addClass("selected").siblings().removeClass("selected");
                });
            }
        }
    });

    $(".select dd").on("click", function () {
        if ($(".select-result dd").length > 1) {
            $(".select-no").hide();
        } else {
            $(".select-no").show();
        }
    });
	
});