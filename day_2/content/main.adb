with Ada.Strings; use Ada.Strings;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   F : File_Type;
   File_Name : constant String := "../input/input2.txt";
   score1 : Integer := 0;
   score2 : Integer := 0;
   line : Unbounded_String;
   c1 : Character;
   c2 : Character;
begin
	Open (F, In_File, File_Name);
	while not End_Of_File (F) loop
		line := Get_Line(F);
		c1 := Element(line, 1);
		c2 := Element(line, 3);
		if c1 = 'A' then
			if c2 = 'X' then
				score1 := score1 + 1 + 3;
				score2 := score2 + 3 + 0;
			elsif c2 = 'Y' then
				score1 := score1 + 2 + 6;
				score2 := score2 + 1 + 3;
			else 
				score1 := score1 + 3 + 0;
				score2 := score2 + 2 + 6;
			end if;
		elsif c1 = 'B' then
			if c2 = 'X' then
				score1 := score1 + 1 + 0;
				score2 := score2 + 1 + 0;
			elsif c2 = 'Y' then
				score1 := score1 + 2 + 3;
				score2 := score2 + 2 + 3;
			else 
				score1 := score1 + 3 + 6;
				score2 := score2 + 3 + 6;
			end if;
		else
			if c2 = 'X' then
				score1 := score1 + 1 + 6;
				score2 := score2 + 2 + 0;
			elsif c2 = 'Y' then
				score1 := score1 + 2 + 0;
				score2 := score2 + 3 + 3;
			else 
				score1 := score1 + 3 + 3;
				score2 := score2 + 1 + 6;
			end if;
		end if;
   end loop;
   Put(score1, width => 0);
   Put_Line("");
   Put(score2, width => 0);
   Close (F);
end Main;