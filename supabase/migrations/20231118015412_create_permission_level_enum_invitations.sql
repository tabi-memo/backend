create type permission_level_enum as enum ('view_only', 'editable');
alter table invitations
alter column permission_level
type permission_level_enum using
case
   when permission_level = 0 then 'view_only'::permission_level_enum
   when permission_level = 1 then 'editable'::permission_level_enum
end;
