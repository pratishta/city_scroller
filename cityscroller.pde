noStroke();

class Building {
	float r, g, b, x, y, w, h, s;
	Building (float red, float green, float blue, float xax, float yax, float wid, float hei, float speed) {
		r = red;
		g = green;
		b = blue;
		x = xax;
		y = yax;
		w = wid;
		h = hei
		s = speed;
	}

	void buildingAppear() {
		fill(r, g, b);
        rect(x, y, w, h);
	}

	void buildingMove(s) {
		if (x < width) {
            x += s;
        }
        else {
            x = -100;
        }
	}
}

class Layer {
	float r, g, b, bh, ry, rh, s;
	Layer (float red, float green, float blue, float bhei, float ryax, float rhei, float speed) {
		r = red;
		g = green;
		b = blue;
		bh = bhei;
		ry = ryax;
		rh = rhei;
		s = speed;
	}

	// int randNumBldgs = random(1, 50);
	// int[] bldgsList = new int[randNumBldgs];

	// int i = 0;
	// while (i < randNumBldgs) {
		//Building b1 = new Building(r, g, b, random(0, width), height-random(1, bhei), random(10, 60), 500, s);
	// 	append(bldgsList, b1);
	// 	i++;
	// }

	// void layerAppear(ry) {
	// 	fill(r, g, b);
 //        rect(0, ry, width, 500);
 //        for (int i = 0; i < randNumBldgs; i++) {
 //            bldgsList[i].buildingAppear();
 //        }
	// }

	// void layerMove(s) {
	// 	for (int i = 0; i < randNumBldgs; i++) {
 //            bldgsList[i].buildingMove(s);
 //        }
	// }
}

// Layer layer1 = new Layer (255, 79, 138, 150, 100, height-random(50, 100), 2.5);
// Layer layer1Ground = height-random(50, 100);

// Layer layer2 = new Layer (200, 46, 98, 300, 100, height-random(50, 100), 1.5);
// Layer layer2Ground = height-random(100, 150);

// Layer layer3 = new Layer (140, 30, 70, 400, 100, height-random(50, 100), 1);
// Layer layer3Ground = height-random(150, 200);

Building b1 = new Building(134, 205, 224, random(0, width), height-random(1, height), random(10, 60), 500, 5);

void draw() {
	b1.buildingAppear();
	b1.buildingMove(2);
	fill(0, 100, 100);
	rect(1000, 500, 100, 100);
}

size(screen.width, screen.height);
background(0, 0, 0);
noStroke();
