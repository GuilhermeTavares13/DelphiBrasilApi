unit UDelphiBrasilApi;

interface

uses System.Classes, DMDelphiBrasilApi;

procedure register;

type
  TDelphiBrasilApi = class(TComponent)
    private
    public
    published
  end;

implementation

procedure register;
begin
  RegisterComponents('DelphiBrasilApi',[TDelphiBrasilApi]);
end;

end.
