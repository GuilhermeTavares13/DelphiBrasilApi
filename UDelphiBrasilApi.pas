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
    function Banks() : String; overload;
    function Banks(Code : Integer) : String; overload;
  published
  end;

implementation

{ TDelphiBrasilApi }

procedure register;
begin
  RegisterComponents('DelphiBrasilApi',[TDelphiBrasilApi]);
end;

function TDelphiBrasilApi.Banks: String;
begin
  DataModuleBrasilApi.RESTClient1.BaseURL := BRASIL_API_URL + 'v1/';
  DataModuleBrasilApi.RESTRequest1.Resource := 'banks.json';
  DataModuleBrasilApi.RESTRequest1.Params[0].Value := 'banks';
  DataModuleBrasilApi.RESTRequest1.Execute;
  Result := DataModuleBrasilApi.RESTResponse1.JSONValue.ToString;
end;

function TDelphiBrasilApi.Banks(Code: Integer): String;
begin
  DataModuleBrasilApi.RESTClient1.BaseURL := BRASIL_API_URL + 'v1/' + IntToStr(code);
  DataModuleBrasilApi.RESTRequest1.Resource := 'banks.json';
  DataModuleBrasilApi.RESTRequest1.Params[0].Value := 'banks';
  DataModuleBrasilApi.RESTRequest1.Execute;
  Result := DataModuleBrasilApi.RESTResponse1.JSONValue.ToString;
end;

end.
