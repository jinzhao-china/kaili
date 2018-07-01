unit Unit_GlobalFunctions;

interface

uses ActiveX, Windows, Sysutils;

type
  SingleArray = array of single;

  TRowData = class
  private
    fComObj : IUnknown;
  public
    constructor Create(ComObj : IUnknown); overload;
    property ComObj : IUnknown read fComObj write fComObj;
  end;


function SingleArrayToSafeArray(Value : SingleArray) : PSafeArray;
procedure SafeArrayToSingleArray(Value : PSafeArray ;var Return : SingleArray; DestroyArray : Boolean = true);

implementation

constructor TRowData.Create(ComObj : IUnknown);
begin
  fComObj := ComObj;
end;

function SingleArrayToSafeArray(Value : SingleArray) : PSafeArray;
var
  ArrayData   : Pointer;
begin
  Result := SafeArrayCreateVector( VT_R4, 0, Length(Value));
  if SafeArrayAccessData( Result , ArrayData ) = S_OK then begin
    CopyMemory(ArrayData,Value,Length(Value) * SizeOf(Value));
    SafeArrayUnAccessData(Result);
  end else begin
    SafeArrayDestroy(Result);
    raise exception.Create('SAFEARRAY CREATE FAILURE');
  end;
end;

procedure SafeArrayToSingleArray(Value : PSafeArray ;var Return : SingleArray; DestroyArray : Boolean = true);
var
  Result : HResult;
  ArrayBounds : TSafeArrayBound;
  ArrayData   : Pointer;
begin
  Result := SafeArrayAccessData(Value, ArrayData);
  case Result of
    S_OK : begin
      ArrayBounds := Value.rgsabound[0];
      SetLength(Return,ArrayBounds.cElements);
      CopyMemory(Return,ArrayData,ArrayBounds.cElements * Value.cbElements);
      SafeArrayUnAccessData(Value);
      if DestroyArray then SafeArrayDestroy(Value);
    end;
    else raise exception.Create('SAFEARRAY READ FAILURE ' + inttostr(Result));
  end;
end;

end.
