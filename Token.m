function Token(handles)



color=get(handles.R6C5,'BackgroundColor');
disp(color);

if color~=[1 0 0]
    if color~=[0 0 1]
        set(handles.R6C5,'BackgroundColor','red');
    end
    
else
    set(handles.R6C5,'BackgroundColor',[0.9020 0.7804 0.2510])
end


end