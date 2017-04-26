function PlayerTwoTokenF(handles,hObject)

color=get(hObject,'BackgroundColor');
disp(num2str(color))

if color~=[1 0 1]
    if color~=[0 1 1]
        set(hObject,'BackgroundColor',[1 0 1]);
    end
    
else
    set(hObject,'BackgroundColor',[0.9020 0.7804 0.2510])
end


end