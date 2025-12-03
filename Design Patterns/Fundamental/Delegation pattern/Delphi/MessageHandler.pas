unit MessageHandler;

interface

type
  IMessageHandler = interface
    ['{4916242E-AEF3-405B-ABDC-D5F6F5C294AF}']
    procedure HandleMessage(const Msg: string);
  end;

implementation

end.
