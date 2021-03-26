on run argv	
  set onlywindow to false	
  tell application "iTerm"		
    activate		
    try			
      select first window			
      set onlywindow to true		
    on error			
      create window with default profile			
      select first window			
      set onlywindow to true		
    end try		
    tell the first window			
      if onlywindow is false then				
        create tab with default profile			
      end if			
      tell current session to write text (item 1 of argv)		
    end tell	
  end tell
end run
