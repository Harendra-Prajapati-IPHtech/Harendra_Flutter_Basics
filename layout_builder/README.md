# layout_builder

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Good evening,
 @Lekha Mishra ma'am , @Veena mandhan ma'am, 
Please find my today task .
1. LayoutBuilder.
## Layout widgets

## Single child

- Align—Aligns- 
    a child within itself. It takes a double value between -1 and 1, for both the vertical and horizontal alignment.

- AspectRatio—
    Attempts to size the child to a specific aspect ratio.

- ConstrainedBox—
    Imposes size constraints on its child, offering control over the minimum or maximum size.

- CustomSingleChildLayout—
    Uses a delegate function to position a single child. The delegate can determine the layout constraints and positioning for the child.
    
- Expanded and Flexible—
    Allows a child of a Row or Column to shrink or grow to fill any available space.

- FractionallySizedBox—
    Sizes its child to a fraction of the available space.

- LayoutBuilder—
    Builds a widget that can reflow itself based on its parents size.

- SingleChildScrollView—
    Adds scrolling to a single child. Often used with a Row or Column.

### Multichild

- Column, Row, and Flex—Lays out children in a single horizontal or vertical run. Both Column and Row extend the Flex widget.

- CustomMultiChildLayout—Uses a delegate function to position multiple children during the layout phase.

- Flow—Similar to CustomMultiChildLayout, but more efficient because it’s performed during the paint phase rather than the layout phase.

- ListView, GridView, and CustomScrollView—Provides scrollable lists of children.

- Stack—Layers and positions multiple children relative to the edges of the Stack. Functions similarly to position-fixed in CSS.

- Table—Uses a classic table layout algorithm for its children, combining multiple rows and columns.

- Wrap—Displays its children in multiple horizontal or vertical runs.

