package body Forth_Stack is
   procedure Push(S : in out Stack; Value : Integer) is
   begin
      S.Top := S.Top + 1;
      S.Data(S.Top) := Value;
   end Push;

   function Pop(S : in out Stack) return Integer is
      Result : Integer;
   begin
      Result := S.Data(S.Top);
      S.Top := S.Top - 1;
      return Result;
   end Pop;

   procedure Dup(S : in out Stack) is
   begin
      Push(S, S.Data(S.Top));
   end Dup;

   procedure Drop(S : in out Stack) is
   begin
      S.Top := S.Top - 1;
   end Drop;
end Forth_Stack;

