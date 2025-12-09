unit Handler;

interface

type
  IHandler = interface
    procedure Handle(request: string);
    function SetNext(handler: IHandler): IHandler;
  end;

implementation

end.
