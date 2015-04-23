This repository is full of Processing files, that each demonstrate something cool that you can do with the Processing language.

Sometimes, in a sub-directory, the files don't run together. Perhaps one is an animated version and one is not. If you download the whole sub-directory and just hit run after you open it up in Processing, it should work, because I've commented one out so none of these files will conflict.

I encourage you to play around with the code, but know that you are likely to get that error, so if two files in a sub-directory appear to be pretty different, and one doesn't refer to the other at all (and vice versa), run just one at a time.

(Processing runs a sub-directory at a time, so you'll have to comment out a file and uncomment out another if they're within the same window (or sub-directory, same thing).


If you have tips I would love to hear them; I'm sure there are a lot of people who know way more than I do about Processing, and I'd love to learn something. Pull requests welcome.


Now, I'll give an overview of what each of the files runs, so that you don't have to just go by the names to pick which ones to download first.

* - if a star is by it be sure to run the whole sub-directory it's in at once. I've tried to minimize this issue.


Arches dir - easy 

	StillArches - shows arcs coming out of points, looks like a fountain

	AnimatedArches - "animated" version

BasicShapes dir - super easy

	Bubbles - circles randomly popping onto the console

	HalfLego - really basic program, good one to download first.

	bluePoints - just shows how to use points in Processing

Interactive - intermediate

	Press_enter - shows how to make an action listener of sorts for the enter key.
	
	Twirl - looks like a weight, reacts to x and y mouse position

	standard deviation... - a lowercase sigma that follows the mouse with a lag. Bit of a statistics joke...

PerlinNoise - intermediate. Everything in here uses some kind of a noise function.
	PerlinLine and FastPerlinLie - a line that looks something like a broken scanner.

	RainStatic and StereoEllipse - explore the effects of a noise function on a circle that changes in size.

	Noisy_sun - expands on the idea in RainStatic, and has kind of a 70's disco / southwester feel...haha
	WARNING: Don't run this program if you get seizures, it has a strobe-like effect. The same warning applied to noise_pops.

	noise_pops - lollipop-resembling shapes that pop up randomly on the screen, and pretty quickly too. Also has a strobe-like effect.


MoreComplicated - intermediate

	Circle of Apollonius - shows the geometrical idea of the circle of Apollonius. The program looks really simple, but the math behind it is slightly more difficult. PS - hit enter.

	Globe - shows a globe, that you can spin with the mouse. This is made by wrapping a mercater projection around a sphere. The 2 more difficult files in this subdir weren't written by me. Props to whoever wrote them.

	chaos - this is a cool graphic. When you click the mouse, the circle in the middle "explodes" into a network of other circles, then when you click again, it implodes and explodes again. Hard to explain, check it out.


Random - ...

	Shuffling Arrays - this program was for my own purposes, I just needed to figure out an efficient way to shuffle an array without writing my own function. I'm putting it on github in case someone stumbles upon this and it helps them.
	



I hope you enjoy. Processing is an awesome tool.
