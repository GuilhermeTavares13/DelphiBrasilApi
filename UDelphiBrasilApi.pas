unit UDelphiBrasilApi;

interface

uses System.Classes, DMDelphiBrasilApi, System.SysUtils, System.JSON;

procedure register;

Const
  BRASIL_API_URL = 'https://brasilapi.com.br/api/';

type
  TDelphiBrasilApi = class(TComponent)
  private
  public
    function Banks(Code : Integer) : TJSONValue;
  published
  end;

implementation

{ TDelphiBrasilApi }

procedure register;
begin
  RegisterComponents('DelphiBrasilApi',[TDelphiBrasilApi]);
end;

{ TDelphiBrasilApi }

function TDelphiBrasilApi.Banks(Code: Integer): TJSONValue;
begin
  DataModuleBrasilApi.RESTClient1.BaseURL := BRASIL_API_URL;
end;

end.
