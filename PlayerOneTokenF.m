function PlayerOneTokenF(handles,hObject)



color=get(hObject,'BackgroundColor');
disp(num2str(color))

if color~=[0 1 1]
    if color~=[1 0 1]
        set(hObject,'BackgroundColor',[0 1 1]);
    end
    
else
    set(hObject,'BackgroundColor',[0.9020 0.7804 0.2510])
end


end