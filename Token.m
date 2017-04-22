function Token(handles, hObject)



color=get(hObject,'BackgroundColor');
disp(color);

if color~=[1 0 0]
    if color~=[0 0 1]
        set(hObject,'BackgroundColor','red');
    end
    
else
    set(hObject,'BackgroundColor',[0.9020 0.7804 0.2510])
end


end