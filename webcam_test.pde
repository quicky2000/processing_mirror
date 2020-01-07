//    This file is part of processing_mirror
//    Copyright (C) 2020  Julien Thevenon ( julien_thevenon at yahoo.fr )
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>
//

// Step 1. Import the video library.
import processing.video.*;

//Step 2. Declare a capture object.
Capture video;

// Step 5. Read from the camera when a new image is available!
void captureEvent(Capture video) {
  video.read();
}

void setup() {
  size(640, 480);
  System.out.println(Capture.list()[0]);
  System.out.println("Before step 3");
  // Step 3. Initialize Capture object.
//  video = new Capture(this, 640, 480, Capture.list()[0],"toto");
  video = new Capture(this, width, height, Capture.list()[0]);
  System.out.println("Before step 4");
  // Step 4. Start the capturing process.
  video.start();
}

// Step 6. Display the image.
void draw() {
image(video, 0, 0);
}
