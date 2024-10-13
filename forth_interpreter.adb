with Forth_Stack;
with Forth_Dictionary;
with Forth_Words;
with Ada.Text_IO;

use Forth_Dictionary;

procedure Forth_Interpreter is
   package TIO renames Ada.Text_IO;

   -- Initialize the stack and dictionary
   S : Forth_Stack.Stack;
   D : Forth_Dictionary.Dictionary;

   -- Procedure to execute a command
   procedure Execute_Command(Cmd : String) is
      Word : Word_Access;
   begin
      -- Try to find the word in the dictionary
      Word := Find_Word(D, Cmd);
      if Word /= null then
         Word.all(S);
      else
         declare
            Val : Integer;
         begin
            Val := Integer'Value(Cmd);
            Forth_Stack.Push(S, Val);
         exception
            when others =>
               TIO.Put_Line("Unknown word or invalid input: " & Cmd);
         end;
      end if;
   end Execute_Command;

   Cmd : String(1 .. 20);  -- Declare a fixed-size string for input
   Last : Natural;         -- For capturing the length of input

begin
   -- Add the basic Forth words to the dictionary
   Forth_Words.Add_Forth_Words(D);  -- Pass dictionary 'D' as an argument

   -- Interpreter loop
   while True loop
      TIO.Put("Forth> ");
      TIO.Get_Line(Cmd, Last);  -- Capture the length of the input
      Execute_Command(Cmd(1 .. Last));  -- Slice the string to correct length
   end loop;
end Forth_Interpreter;

