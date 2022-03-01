# Exercise-04c-Levels

Exercise for MSCH-C220

A demonstration of this exercise is available at [https://youtu.be/psRW-I77QKw](https://youtu.be/psRW-I77QKw)

This exercise is designed to continue our creation of a 2D Platformer, by laying out three levels using Godot's TileMap node.

Fork this repository. When that process has completed, make sure that the top of the repository reads [your username]/Exercise-04c-Levels. *Edit the LICENSE and replace BL-MSCH-C220-S22 with your full name.* Commit your changes.

Clone the repository to a Local Path on your computer.

Open Godot. Import the project.godot file and open the "Levels" project.

This project consists of three levels (res://Levels/Level1.tscn, Level2.tscn, Level3.tscn), each of which has three TileMap nodes: Background, Platform, and Foreground. Using the provided asset: res://Assets/Tiles.png, create level-specific tilemaps for each of these scenes.

The goal is to allow the player to move from the blue Spawn portal on the left of the level to the orange Exit portal at the right of the level.

Anything in the Background tilemap will appear behind the player, and anything in the Foreground tilemap will appear in front of the player. Neither of these tilemaps will cause a collision (i.e., they are just for decoration).

To begin, select one of the TileMap nodes (Background, Platform, or Foreground), and in the Inspector Panel, select Tile Set->New TileSet. Then Edit the resulting TileSet. This will open a panel at the bottom of the window. Drag Tiles.png from the Assets folder in the FileSystem panel to the left box of the TileSet editor. Select the resulting Tiles.png tileset.

You should now see the tileset with an appropriate grid superimposed on it. You will need to create individual 2x2 tiles for each of the assets you will use in this level (for each of the tilesets). I will demonstrate this in more detail in class. Create Region and Collision shapes (using the polygon tool) for each tile.

Then, close the editor and begin to lay our your level. This is a code-free way to express yourself creatively. I would recommend using the pencil and paintbucket tools in the toolbar. When you are done, make sure the player can traverse your level to the exit.

Repeat for the other two levels. Use the brown and red tiles for level 1, green and yellow for level 2, and blue and white tiles for level 3 (to make them visually distinct).

Quit Godot. In GitHub desktop, add a summary message, commit your changes and push them back to GitHub. If you return to and refresh your GitHub repository page, you should now see your updated files with the time when they were changed.

Now edit the README.md file. When you have finished editing, commit your changes, and then turn in the URL of the main repository page (https://github.com/[username]/Exercise-04c-Levels) on Canvas.

The final state of the file should be as follows (replacing the "Created by" information with your name):
```
# Exercise-04c-Levels

Exercise for MSCH-C220

The third exercise for the 2D Platformer project, exploring the TileMap node.


## Implementation

Built using Godot 3.4.2

The player sprite adapted from [MV Platformer Male](https://opengameart.org/content/mv-platformer-male-32x64) by MoikMellah. CC0 Licensed.

The terrain spritemap is from the [Abstract Platformer package](https://kenney.nl/assets/abstract-platformer) available at Kenney.nl.


## References

None


## Future Development

None


## Created by 

Jason Francis
```