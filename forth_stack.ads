package Forth_Stack is
   type Stack_Array is array (Positive range <>) of Integer;
   type Stack is record
      Data : Stack_Array (1 .. 100); -- Fixed size stack for simplicity
      Top  : Integer := 0;
   end record;

   procedure Push(S : in out Stack; Value : Integer);
   function Pop(S : in out Stack) return Integer;
   procedure Dup(S : in out Stack);
   procedure Drop(S : in out Stack);
end Forth_Stack;

