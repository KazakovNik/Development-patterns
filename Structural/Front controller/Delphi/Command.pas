unit Command;

interface

type
  // Интерфейс для команд-обработчиков
  ICommand = interface
    procedure Execute;
  end;

implementation

end.
