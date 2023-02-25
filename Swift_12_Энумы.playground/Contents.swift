//Lesson 12. Энумы

/*
 1. Создать энум с шахматными фигурами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур
 */

enum Figure: String {
    case Pawn, Rook, Knight, Bishop, Queen, King
}

enum Color: String {
    case White = "Белый", Black = "Черный"
}
enum Vertical: String {
    case A, B, C, D, E, F, G, H
}

enum Horisontal: Int {
 case one, two, three, four, five, six, seven, eight
}

var whiteKing = (Figure.King, Color.White, Vertical.B, Horisontal.six)
var blackKing = (Figure.King, Color.Black, Vertical.A, Horisontal.eight)
var whiteBishop1 = (Figure.Bishop, Color.White, Vertical.D, Horisontal.five)
var whiteBishop2 = (Figure.Bishop, Color.White, Vertical.E, Horisontal.five)

typealias Figures = (Figure, Color, Vertical, Horisontal)

var figuresArray = [whiteKing, blackKing, whiteBishop1, whiteBishop2]

/*
 2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.
 */

func PrintFigure (figure: Figures) {
    print("\(figure.1) \(figure.0) in \(figure.2)\(figure.3.rawValue)\n")
}

PrintFigure(figure: blackKing)

func PrintFigures (figures: [Figures]) {
    for figure in figures {
        print("\(figure.1) \(figure.0) in \(figure.2)\(figure.3.rawValue)")
    }
}

PrintFigures(figures: figuresArray)

/*
 3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
 */




/*
 4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.
 */



/*
 5. Следите чтобы ваш код был красивым!
 */


enum ChessColor: String {
    case  white, black
}
enum ChessLetter: String {
    case a , b, c, d, e, f, g, h
}

enum ChessDigit: Int {
 case one = 1 , two, three, four, five, six, seven, eight
}

enum ChessType: String {
    case rook, knight, bishop, pawn, king, queen
    
}
typealias ChessFigure = (ChessType,ChessColor, ChessLetter, ChessDigit)


var whiteKing2: ChessFigure = (ChessType.king, ChessColor.white, ChessLetter.b, ChessDigit.one)
var whiteRook1: ChessFigure = (ChessType.rook, ChessColor.white, ChessLetter.d, ChessDigit.seven)
var whiteRook2: ChessFigure = (ChessType.rook, ChessColor.white, ChessLetter.e, ChessDigit.eight)
var blackKing2: ChessFigure = (ChessType.king, ChessColor.black, ChessLetter.f, ChessDigit.eight)

let figureArray = [whiteKing2, whiteRook1, whiteRook2, blackKing2]

/*
 2
 */


func descriptionFigures(figureArray array: [ChessFigure]) {
    for figure in array {
        print(figure.0, figure.1, figure.2, figure.3.rawValue)
    }
}

descriptionFigures(figureArray: figureArray)
