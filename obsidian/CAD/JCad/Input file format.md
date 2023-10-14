# Input file format


On the first line is a positive number N representing the number of shapes that are going to be draw.

On the next N lines there will be the shapes and their descriptions as it follows:

- [[JCad/CANVAS]] height width color transparency

- [[LINE]] start position x start position y end position x end position y color transparency

- [[SQUARE]] upper-left corner x upper-left corner y dimension upper-left corner x upper-left corner y

- [[RECTANGLE]] upper-left corner x upper-left corner y height width color transparency

- [[CIRCLE]] center position x center position y radius color transparency

The [[CAD/JCad/CANVAS]] (background) must be the first shape draw on every input file.

![[JCad/color]]
