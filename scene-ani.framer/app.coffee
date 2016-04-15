bubble = new Layer
	y: 210
	width: 1200
	height: 2000
	backgroundColor: "rgba(0,0,0,0)"
	image: "images/slide_list_view_02_01.png"

images = [
	"slide_list_view_02_01.png",
	"slide_list_view_02_02.png",
	"slide_list_view_02_03.png",
	"slide_list_view_02_04.png",
	"slide_list_view_02_05.png"
	"slide_list_view_02_06.png",
	"slide_list_view_02_07.png",
	"slide_list_view_02_08.png",
	"slide_list_view_02_09.png"
	"slide_list_view_02_10.png",
	"slide_list_view_02_11.png",
	"slide_list_view_02_12.png",
	"slide_list_view_02_13.png"	,
	"slide_list_view_02_13.png"	
	]	

ball = new Layer
	x: 0
	y: 235 * 4
	width: 100 * 4
	height: 100 * 4
	image: "images/slide_btn_bg2.png"

ball.states.add
	init:
		x: 0
		
contstraint = new Layer
	y: 235 * 4
	x: 0
	width: 1440 / 2
	backgroundColor: "transparent"

ball.draggable.enabled = true
ball.draggable.vertical = false
ball.draggable.constraints = contstraint


ball.onDragEnd (event, layer) ->
	ball.states.switch "init"
	bubble.image = "images/" + images[0]

ball.onDragMove (event, layer) ->
	#print event.offset.x
	#print images[Utils.round(event.offset.x / 30)]
	bubble.image = "images/" + images[Utils.round(event.offset.x / 20)]

		

