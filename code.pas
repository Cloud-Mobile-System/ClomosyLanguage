var
  MyForm:TCLForm;
  I:integer;
  startBtn:TCLButton;
  Procedure StartBtnOnClick;
  begin
    
    for I := 1 to 5 do
    begin
      case I of
        1:ShowMessage('Number 1');
        2:ShowMessage('Number 2');
        else
        begin
          ShowMessage('Another Number: '+IntToStr(I));
        end;
      end;
    end;  
    
  end;
begin
  MyForm := TCLForm.Create(Self);


  startBtn:= MyForm.AddNewButton(MyForm,'startBtn','Show');
  startBtn.TextSettings.Font.Size:=50;
  startBtn.Align := alCenter;
  startBtn.Height := 50;
  startBtn.Width := 100;
  MyForm.AddNewEvent(startBtn,tbeOnClick,'StartBtnOnClick');

  MyForm.Run;
end;
