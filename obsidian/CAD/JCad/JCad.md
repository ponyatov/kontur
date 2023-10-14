# JCad
## simplyfied version of [[CAD/CAD]] written in [[Java/Java]]

https://github.com/andreia-oca/JCad

## files

- [[JCAD/fileio]]
- [[JCAD/utils]]
- [[JCAD/factory]]
- [[JCAD/visitor]]
- [[JCAD/tests]]
- [[JCAD/shapes]]
- [[JCAD/Main.java]]

```
lib/JCad
    FileIO.jar
    fileio/
        interfaces
        interfaces/IReader.class
        interfaces/IWriter.class
        implementations
        implementations/FileReader.class
        implementations/FileWriter.class
        FileSystem.class
    utils/
        Coordinates.java
        DrawFunctions.java
        ColorUtils.java
    factory/
        ShapeFactory.java
        ShapeType.java
    visitor/
        Drawable.java
        Draw.java
        Drawer.java
    tests/
        checker.sh
        input/
            input.in
        ref/
            cat.png
    shapes/
        Canvas.java
        Polygon.java
        Line.java
        Diamond.java
        Rectangle.java
        Circle.java
        Square.java
        Triangle.java
    LICENSE.md
    README.md
    Makefile
    Main.java
```


### [[Input file format]]
