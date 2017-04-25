function PlayerOneTokenF(handles)

load('playableHand');
load('selection');


    handles.(tagPlay).Value = 1;




        set(hObject,'BackgroundColor',[0 1 1]);
    end
    
else
    set(hObject,'BackgroundColor',[0.9020 0.7804 0.2510])
end


end