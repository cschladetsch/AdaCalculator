package Forth_Dictionary is
   -- We don't directly reference Forth_Stack here to avoid circular dependencies.
   type Word_Access is access procedure;  -- No Forth_Stack reference in the spec

   type Word is record
      Name : String (1 .. 10);
      Code : Word_Access;
   end record;

   type Dictionary_Array is array (Positive range <>) of Word;
   type Dictionary is record
      Words : Dictionary_Array (1 .. 20);  -- Fixed size for simplicity
      Count : Integer := 0;
   end record;

   procedure Add_Word(D : in out Dictionary; Name : String; Code : Word_Access);
   function Find_Word(D : Dictionary; Name : String) return Word_Access;

end Forth_Dictionary;

