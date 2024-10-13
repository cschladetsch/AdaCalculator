with Forth_Dictionary;

package body Forth_Words is
   procedure Add_Forth_Words is
      D : Forth_Dictionary.Dictionary;
   begin
      -- Add words to the dictionary
      Forth_Dictionary.Add_Word(D, "word1", ...);
      Forth_Dictionary.Add_Word(D, "word2", ...);
   end Add_Forth_Words;
end Forth_Words;

