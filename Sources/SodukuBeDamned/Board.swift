public struct Box {
    public typealias Space = Int
    public var space1: Space
    public var space2: Space
    public var space3: Space
    public var space4: Space
    public var space5: Space
    public var space6: Space
    public var space7: Space
    public var space8: Space
    public var space9: Space
    
    public init(space1: Space = 0, space2: Space = 0, space3: Space = 0, space4: Space = 0, space5: Space = 0, space6: Space = 0, space7: Space = 0, space8: Space = 0, space9: Space = 0) {
        self.space1 = space1
        self.space2 = space2
        self.space3 = space3
        self.space4 = space4
        self.space5 = space5
        self.space6 = space6
        self.space7 = space7
        self.space8 = space8
        self.space9 = space9
    }
    
    var spaces: [Space] {
        return [space1, space2, space3, space4, space5, space6, space7, space8, space9]
    }
}

public struct Board {
    public var box1 = Box()
    public var box2 = Box()
    public var box3 = Box()
    public var box4 = Box()
    public var box5 = Box()
    public var box6 = Box()
    public var box7 = Box()
    public var box8 = Box()
    public var box9 = Box()
    
    let initialState: [Box]
    
    // initialze with a given board state
    public init(givenBox1: Box, givenBox2: Box, givenBox3: Box, givenBox4: Box, givenBox5: Box, givenBox6: Box, givenBox7: Box, givenBox8: Box, givenBox9: Box) {
        self.box1 = givenBox1
        self.box2 = givenBox2
        self.box3 = givenBox3
        self.box4 = givenBox4
        self.box5 = givenBox5
        self.box6 = givenBox6
        self.box7 = givenBox7
        self.box8 = givenBox8
        self.box9 = givenBox9
        
        self.initialState = [givenBox1, givenBox2, givenBox3, givenBox4, givenBox5, givenBox6, givenBox7, givenBox8, givenBox9]
    }
    
    var boxes: [Box] {
        return [box1, box2, box3, box4, box5, box6, box7, box8, box9]
    }
    
    public subscript(box rowIndex: Int) -> Box {
        guard rowIndex >= 0 && rowIndex < 10 else {
            return Box()
        }
        
        return boxes[rowIndex]
    }
}

public extension Board {
    enum Boxes: Int {
        case noBox = 0
        case box1 = 1
        case box2, box3, box4, box5, box6, box7, box8, box9
    }
    
    enum Rows: Int {
        case noRow = 0
        case row1 = 1
        case row2, row3, row4, row5, row6, row7, row8, row9
    }
    
    enum Cols: Int {
        case noCol = 0
        case col1 = 1
        case col2, col3, col4, col5, col6, col7, col8, col9
    }
    
    // reset to inital state; used when an invalid state is found elsewhere
    
    
}
