object DataModuleBrasilApi: TDataModuleBrasilApi
  Height = 608
  Width = 793
  PixelsPerInch = 120
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 408
    Top = 288
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Name = 'pattern'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 488
    Top = 368
  end
  object RESTResponse1: TRESTResponse
    Left = 480
    Top = 464
  end
end
