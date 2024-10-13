with Forth_Stack;  -- Make Forth_Stack visible in the body

package body Forth_Dictionary is
   procedure Add_Word(D : in out Dictionary; Name : String; Code : Word_Access) is
   begin
      D.Count := D.Count + 1;
      D.Words(D.Count).Name := Name;
      D.Words(D.Count).Code := Code;
   end Add_Word;

   function Find_Word(D : Dictionary; Name : String) return Word_Access is
   begin
      for I in 1 .. D.Count loop
         if D.Words(I).Name = Name then
            return D.Words(I).Code;
         end if;
      end loop;
      return null;  -- If the word is not found
   end Find_Word;
end Forth_Dictionary;

