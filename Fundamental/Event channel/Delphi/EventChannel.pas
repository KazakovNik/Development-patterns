unit EventChannel;

interface

uses
  SysUtils, Classes, Generics.Collections;

type
  TMessageEvent = reference to procedure(const Message: string);

  TEventChannel = class(TObject)
  strict private
    FSubscribers: TList<TMessageEvent>;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Subscribe(const EventHandler: TMessageEvent);
    procedure Unsubscribe(const EventHandler: TMessageEvent);
    procedure Publish(const Msg: string);
  end;

implementation

constructor TEventChannel.Create;
begin
  inherited Create;
  FSubscribers := TList<TMessageEvent>.Create;
end;

destructor TEventChannel.Destroy;
begin
  FreeAndNil(FSubscribers);
  inherited Destroy;
end;

procedure TEventChannel.Subscribe(const EventHandler: TMessageEvent);
begin
  if not Assigned(EventHandler) then
    Exit;
  FSubscribers.Add(EventHandler);
end;

procedure TEventChannel.Unsubscribe(const EventHandler: TMessageEvent);
var
  i: Integer;
begin
  i := FSubscribers.IndexOf(EventHandler);
  if i > -1 then
    FSubscribers.Delete(i);
end;

procedure TEventChannel.Publish(const Msg: string);
var
  Handler: TMessageEvent;
begin
  for Handler in FSubscribers do
    Handler(Msg);
end;

end.
